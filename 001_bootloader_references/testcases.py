f = open("boot_sect_memory", "rb")
b = f.read() #read the binary
h = b.hex()

print(h)
print(len(h))

#Previously seen opcodes used in this one: B0(mov), B4(mov), CD(int), EB(jmp)
#New opcodes: A0(ref mov), 8A(MOV rb,rmb),BB(MOV BX, iw), 81C3(add?) 

assert len(h) == 1024 #Each hex character is 4 bits. A bootloader is always 512 bytes. 512 bytes is 4096 bits is 1024 hex
print('Test passed: Bootloader is 512 bytes long!')

assert "55aa" in h #55aa is the magic bootloader number
print('Test passed: Bootloader ends in magic number 55aa!')

#cd is an x86 opcode for 'int' that triggers interrupts.
#10 is the print interrupt.
assert h.count("cd10") == 8 
print('Test passed: Interrupt 10 instruction found 8 times!')

#a0 is a 'mov' opcode(mnemonic MOV AL,rmb). 2d00 is the little endian representation of address 0x002d. This is our "foo". 
#This corresponds to the line "mov al, [foo]" in our assembly file(which ndisasm lists as "mov al, [0x2d]" 
#We're trying(and failing) with this opcode to fetch the 'X' at 0x2d in our file and store it in the al register.
#It fails because this address is relative to the start of our file, but the cpu uses it to try to index into all of main memory.
assert "a02d00" in h 

#bb is a 'mov' opcode(MOV BX, iw). Same explanation of 2d above. Here, our 2d00 is being interpreted by the cpu as an immediate word instead of as a reference. This is from the part of our assembly program where we add this 2d to 7c00 to get a true reference to "foo" in memory.
assert "bb2d00" in h

#81c3007c: This is our "add bx, 0x7c00". 81 is the opcode for "add"(among other things). The key to demystifying this is the ModR/M byte.
#c3 = 11000011. ModR/M is split up like so: 11 000 011, with the second of those being the /0 that determines what operation our 81 opcode maps to.
#Opcode 81 is multiplexed across 8 possible operations with the center 3 bits of MODRM(a.k.a. MODRM.reg) serving as the opcode extension.
#The starting 11 of "11 000 011" indicates "register-direct" address mode.
#The final 011 indicates BX in 16-bit(real mode). Other values of those final 3 bits indicate different registers. 
#http://wiki.osdev.org/index.php?title=X86_Instruction_Encoding#Registers
assert "81c3007c" in h

#Corresponds to mov al, [bx] TODO:Flesh this out
#Actually, this is another of the MODRM ones. In this case, the middle field indicates register 000, a.k.a. al?
#Hrm, I think the 07, which turns into 00000111, or 00 000 111, by the table at ref.x86asm.net/coder32.html#modrm_byte_16
#ends up meaning the middle 000 indicate the al and the final 111 therefore represents the [BX]. 
#If the first two bits(the mod) were 01, then we would instead be encoding "mov al, [bx]+disp8"
#I should experiment with that later.
assert "8a07" in h

#0x48 == 72 == ascii 'H', the first character in our "Hello"
#B0 is one of the MOV opcodes. Moves Ib(imm8?) into al
#imm8 stands for "immediate 8"(immediate byte?). There is also imm16(immediate word) and imm32(immediate doubleword).
#scs.stanford.edu/05au-cs240c/lab/i386/s17_02.htm
#mathemainzel.info/files/x86asmref.html#mov
#Finally, there seems to be some meaning to the madness of the various mov opcodes, but I'm not sure if this is outdated:
#gist.github.com/seanjensengrey/f971c20d05d4d0efc0781f2f3c0353da
for num in range(41, 45):
    assert "b0"+str(num) in h
print("Test passed: Found instructions b0xx for 41-44(hex for ABCD)")

#ebfe is an infinite loop. EB is the opcode for jump. FE makes it jump to itself(why?)
#The reason for this seems to be because the FE is relative to the next statement. 
#Each hex is 4 bits, four hex is 16 bits or 2 bytes. 
#So "ebfe" itself is 2 bytes long so jumping back 2 bytes places us back at its start. (0x00 - 2 == 0xFE)
assert "ebfe" in h
print("jmp $ found!")

print("Running bootloader in qemu and testing output. This will take a few seconds:")
import subprocess
t = ""
try: 
    output = subprocess.check_output(["qemu-system-i386","-nographic","boot_sect_memory"], stderr=subprocess.STDOUT, timeout=8)
except subprocess.TimeoutExpired as e:
    t = str(e.output)
    print(t)
assert "CXDX" in t
print("Good news! Found CXDX in qemu output!")
for string in ["AX","BX"]:
    assert string not in t 

"""
mov ah, 0x0e 

mov al, "A" 
int 0x10
mov al, foo
int 0x10

mov al, "B" 
int 0x10
mov al, [foo] 
int 0x10

mov al, "C" 
int 0x10
mov bx, foo 
add bx, 0x7c00 
mov al, [bx] 
int 0x10

mov al, "D" 
int 0x10
mov al, [0x7c2d] 
int 0x10

jmp $ 

foo:
    db "X" 

times 510-($-$$) db 0 
dw 0xaa55 
"""

#what's really fun about this is that we can write completely in machine code, no need for assembly, and run it. This corresponds to the above(assuming I haven't changed anything)
#I tossed an a Y(hex code 0x59) after the original X. The 5859 below. I also swapped out the "mov al, [bx]"(8a07) for "mov al, [bx+1]"(8a4701)
#Recall that the 07 is the MODRM byte. Switching to 47 means that we have switched the first four bits from 0000 to 0100. If we look to the table from the below site, you can see with the updated Mod value we're now indicating our 'effective address' as [BX]+disp8. Then we pass in 01 as the displacement. 
#ref.x86asm.net/coder32.html#modrm_byte_16
#So now, since we have a displacement of 1 byte in the original [bx] reference, we should be fetching the 59(Y) instead of 58(the X)
h = 'b40eb041cd10b02ecd10b042cd10a02e00cd10b043cd10bb2e0081c3007c8a4701cd10b044cd10a02d7ccd10ebfe585900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055aa'
f = open("tempbl","wb")
f.write(bytes.fromhex(h))
f.close()
bytes.fromhex(h)
t = ""
print("Running tempbl in qemu and testing output. This will take a few seconds:")
try: 
    output = subprocess.check_output(["qemu-system-i386","-nographic","tempbl"], stderr=subprocess.STDOUT, timeout=8)
except subprocess.TimeoutExpired as e:
    t = str(e.output)
    print(t)
    import os
    os.remove("tempbl")

assert "CYD" in t #Whereas before we had CXD. With our new displacement, we're grabbing 59 instead of 58 and can expect to have CYD in our output instead.
print("Success! CYD in tempbl!")
