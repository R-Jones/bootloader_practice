f = open("bootloader_segmentation", "rb")
b = f.read() #read the binary
h = b.hex()

print(h)
print(len(h))

#New opcode: 26A0

assert len(h) == 1024 #Each hex character is 4 bits. A bootloader is always 512 bytes. 512 bytes is 4096 bits is 1024 hex
print('Test passed: Bootloader is 512 bytes long!')

assert "55aa" in h #55aa is the magic bootloader number
print('Test passed: Bootloader ends in magic number 55aa!')

#a0 is a MOV opcode(mnemonic MOV AL, rmb), 26 is the ES segment override prefix
#ref.x86asm.net/coder32.html#x26
assert "26a03800" in h

#jmp $, infinite loop
assert "ebfe" in h
print("jmp $ found!")

print("Running bootloader in qemu and testing output. This will take a few seconds:")
import subprocess
t = ""
try: 
    output = subprocess.check_output(["qemu-system-i386","-nographic","bootloader_segmentation"], stderr=subprocess.STDOUT, timeout=8)
except subprocess.TimeoutExpired as e:
    t = str(e.output)
    print(t)
assert "B^C" in t
print("Good news! Found C^D in qemu output!")
#es defaults to 0x000(why?). So [es:foo] is the same as [foo] to start, which is just the relative address, not the absolute physical one we need.
assert "C^D" not in t
print("Good news! Didn't find C^D in qemu output!")
assert "D^E" in t
print("Good news! Found E^F in qemu output!")

#NOTE: It seems memory segmentation is the old way of accessing memory regions. All the major operating systems now use paging. Just keep this in mind.

"""
mov ah, 0x0e ;tty

mov al, 'A'
int 0x10
mov al, [foo]
int 0x10 ; already saw this doesn't work

mov bx, 0x7c0 ; remember, the segment is automatically <<4 ?
mov ds, bx
; WARNING: from now on all memory references will be offset by 'ds' implicitly

mov al, 'B'
int 0x10
mov al, [foo]
int 0x10

mov al, 'C'
int 0x10
mov al, [es:foo]
int 0x10 ; doesn't look right... isn't 'es' currently 0x000?

mov al, 'D'
int 0x10
mov bx, 0x7c0
mov es, bx
mov al, [es:foo]
int 0x10
mov al, 'E'
int 0x10

jmp $

foo:
    db "X"

times 510 - ($-$$) db 0
dw 0xaa55
"""
#TODO: Play with some extra raw machine code here.
"""
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
"""
