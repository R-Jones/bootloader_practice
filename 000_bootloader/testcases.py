f = open("bootloader", "rb")
b = f.read() #read the binary
h = b.hex()

print(h)
print(len(h))

assert len(h) == 1024 #Each hex character is 4 bits. A bootloader is always 512 bytes. 512 bytes is 4096 bits is 1024 hex
print('Test passed: Bootloader is 512 bytes long!')

assert "55aa" in h #55aa is the magic bootloader number
print('Test passed: Bootloader ends in magic number 55aa!')

#cd is an x86 opcode for 'int' that triggers interrupts.
#10 is the print interrupt.
assert h.count("cd10") == 6 
print('Test passed: Interrupt 10 instruction found 5 times!')

#0x48 == 72 == ascii 'H', the first character in our "Hello"
#B0 is one of the MOV opcodes. Moves Ib(imm8?) into al
#imm8 stands for "immediate 8"(immediate byte?). There is also imm16(immediate word) and imm32(immediate doubleword).
#scs.stanford.edu/05au-cs240c/lab/i386/s17_02.htm
#mathemainzel.info/files/x86asmref.html#mov
#Finally, there seems to be some meaning to the madness of the various mov opcodes, but I'm not sure if this is outdated:
#gist.github.com/seanjensengrey/f971c20d05d4d0efc0781f2f3c0353da
assert "b048" in h
print("Test passed: Found MOV al, 'H'!")

#ebfe is an infinite loop. EB is the opcode for jump. FE makes it jump to itself(why?)
#The reason for this seems to be because the FE is relative to the next statement. 
#Each hex is 4 bits, four hex is 16 bits or 2 bytes. 
#So "ebfe" itself is 2 bytes long so jumping back 2 bytes places us back at its start. (0x00 - 2 == 0xFE)
assert "ebfe" in h
print("jmp $ found!")

print("Running bootloader in qemu and testing output. This will take a few seconds:")
import subprocess
#global output
t = ""
try: 
    output = subprocess.check_output(["qemu-system-i386","-nographic","bootloader"], stderr=subprocess.STDOUT, timeout=8)
except subprocess.TimeoutExpired as e:
    t = str(e.output)
    print(t)
assert "Hello" in t
print("Good news! Found Hello in qemu output!")

"""
[bits 16]
mov ah, 0x0e ; tty mode
mov al, 'H'
int 0x10
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
int 0x10 ; 'l' is still on al, remember?
mov al, 'o'
int 0x10
mov al, '!'
int 0x10

jmp $ ; jump to current address = infinite loop

; padding and magic number
times 510-($-$$) db 0 ;times is nasm specific. It causes the instruction to be assembled multiple times. This is filling out the necessary 512 bootloader bytes.
dw 0xaa55 ;Bootloader magic number
"""
