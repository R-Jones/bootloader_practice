f = open("boot_sect_stack", "rb")
b = f.read() #read the binary
h = b.hex()

print(h)
print(len(h))

#Previously seen opcodes used in this one: B0(mov), B4(mov), CD(int), EB(jmp), A0(ref mov) 
#New opcodes: 88(mov), 6a(push), 5b(pop), bd(mov)

assert len(h) == 1024 #Each hex character is 4 bits. A bootloader is always 512 bytes. 512 bytes is 4096 bits is 1024 hex
print('Test passed: Bootloader is 512 bytes long!')

assert "55aa" in h #55aa is the magic bootloader number
print('Test passed: Bootloader ends in magic number 55aa!')

#cd is an x86 opcode for 'int' that triggers interrupts.
#10 is the print interrupt.
assert h.count("cd10") == 6 
print('Test passed: Interrupt 10 instruction found 6 times!')

#a0 is a 'mov' opcode(mnemonic MOV AL,rmb). 0080 is the little endian representation of address 0x8000.  
assert "a00080" in h 

#6a: push imm8
for num in range(41, 44):
    assert "6a"+str(num) in h 
print("Test passed: Found push instructions for A, B, and C!")

#5B: Pop is opcode 58 + register value(bx is 011 == 3. 58 + 3 == 5B). So 5B(58 + 3) pops bx.
assert h.count("5b") == 3 
print("Test passed! Found 3 'pop bx' instructions")

#88 is a 'mov' opcode(mnemonic MOV rmb, rb), (MOV r8 r/m8)
#ok...so I -think- what's going on here is that D8 is a MODRM.
#D8 == 11 011 000
#In 8-bit, 000 is AL, 011 is BL. The 11 indicates register-direct addressing(no displacement)
#TODO:I could test this by changing up the registers being used and reassembling.
assert "88d8" in h

#BD is a 'mov' opcode(mnemonic MOV BP, iw). It writes a value to the base stack register bp.
assert "bd0080" in h

#From wiki:
#"Simpler processors store the stack pointer(sp?) in a regular hardware register and use the ALU to manipulate its value. Typically push and pop are translated into multiple micro-ops(en.wikipedia.org/wiki/Micro-operation), to separately add/subtrack the stack pointer, and perform the load/store in memory."
#"Newer processors contain a dedicated __stack engine__ to optimize stack operations

#jmp $, infinite loop
assert "ebfe" in h
print("jmp $ found!")

print("Running bootloader in qemu and testing output. This will take a few seconds:")
import subprocess
t = ""
try: 
    output = subprocess.check_output(["qemu-system-i386","-nographic","boot_sect_stack"], stderr=subprocess.STDOUT, timeout=8)
except subprocess.TimeoutExpired as e:
    t = str(e.output)
    print(t)
#boot_sect_stack is a very simple program to demonstrate stack usage in assembly/x86 programming
assert "CBA" in t
print("Good news! Found CBA in qemu output!")

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
