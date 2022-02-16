f = open("boot_sect_main", "rb")
b = f.read() #read the binary
h = b.hex()
f.close()

print(h)
print(len(h))

#New opcodes: E8, BA, 60, 61, B9, 74, 7E, 04, 3C, 29, C1CA, 83

#If we look at the ndisasm output, it's showing statements after the final ret, but these really are our string data(Hello, World, Goodbye, 0x0000). ndisasm can't tell the difference.

#It seems that when there are %include statements, nasm will automatically take data sections and join them together at the end of the file delineated by '00'
assert '0x0000'.encode('ascii').hex() + '00' + 'Hello, World'.encode('ascii').hex() + '00' + 'Goodbye'.encode('ascii').hex() in h

assert len(h) == 1024 #Each hex character is 4 bits. A bootloader is always 512 bytes. 512 bytes is 4096 bits is 1024 hex
print('Test passed: Bootloader is 512 bytes long!')

assert "55aa" in h #55aa is the magic bootloader number
print('Test passed: Bootloader ends in magic number 55aa!')

#cd is an x86 opcode for 'int' that triggers interrupts.
#10 is the print interrupt.
assert h.count("cd10") == 3 
print('Test passed: Interrupt 10 instruction found 3 times!')

#Opcodes 60 and 61 are pusha and popa: "Push/Pop all general-purpose registers."

#Opcode 74 is for jz, 7E is for jng

#EB is the short jump(rel8). "Relative Short Displacement"(-128/+127 bytes)
#F1 == 241 == -15. EBF1 is at instruction address 0x28-0x29, so the next address would be 2A. The assembler wants to jump to 1b(mov al, [bx]). 0x2A - 15 == 0x1B. You can tell this is inside of a function loop because 1A is a pusha, and 2A is a popa. Instruction 0x1F would break out of the loop with 7409 which is a conditional jump which would go to 0x2A mentioned above. And of course, if I added or removed any code, it would change the displacement and break this assertion!
assert "ebf1" in h

#74 is a conditional jump opcode(JZ/JE rel8) which jumps if zero/equal(represented by zero flag == 1). This directly follows 3c00, a CMP statement which causes the zero flag to be set(or not). Recall the displacement above (241 == -15) was a negative displacement, but this one is positive, adding 0x09 to 0x21(the address immediately after this instruction) to get to 0x2A. 
assert "7409" in h

#3C is a CMP opcode(CMP AL imm8). In this case, it is comparing AL to 0x00. (This is our loop from boot_sect_print which is using 0x00 as the terminal value for the string. When the loop reaches the 0x00, this CMP becomes true and the zero flag gets set triggering the jump above.)
assert "3c00" in h

#7E is a conditional jump opcode(JLE/JNG rel8) which jumps short if less or equal(not greater)(indicated by ZF == 1 or (SF!=OF). SF is the sign flag, OF is the overflow flag. (Says one guide: "If you stare at it hard enough, you can read the definitions, work out exactly what SF and OF do, and convince yourself they do the right thing." Suffice it to say, we can just accept that this works. This meager 2 byte jump is the "jle step2" jump from our boot_sect_print_hex.asm file that needs to handle the case of non-numeric hex values.
assert "7e02" in h

#CMP AL imm8, as above. In this case, 0x39 is how we're testing whether the hex value needs to be converted as a numeral or alphabetic.
assert "3c39" in h

#E8 is a CALL opcode(mnemonic CALL rel16) that calls near, relative, or displaced relative to the next instruction. So here, the next instruction is 0x06 and we add 0x0014(we're little endian in our machine code). We thus jump to 0x1a.
assert "e81400" in h

#83 is a multiplexed opcode that uses MODRM for the opcode extension that selects the appropriate operation. C3 works out to 11 000 011. 000 or /0 indicates that this is an ADD instruction(ADD r/m16/32 imm8). 11 indicates no displacement. 011 indicates that we're adding to the bx register(wiki.osdev.org/index.php?title=X86_Instruction_Encoding#Registers). The final 01 is simply the immediate value we're adding to bx.
assert "83c301" in h

#Again the multiplexed 83 instruction. In this case, our MODRM is F9, or 11 111 001. That 111 or /7 indicates that this is instead of CMP instruction(CMP r/m16/32 imm8). 11 indicates no address reference and 001 indicates the cx register. 04 is the number that we're adding. (4 is our hex_loop loop count. We add 1 on each iteration and when we hit 4, we bail out of the loop)
assert "83f904" in h

#Again the multiplexed 83 instruction. 0xe0 is 11 100 000. In this case, we have /4 as our opcode extension, giving us an AND instruction(AND r/m16/32 imm8). 000 indicates the ax register. 0x0f is what we use to AND against our rotating hex doublebyte in this loop to be able to isolate just the final hex character.
assert "83e00f" in h

#C1 is a multiplexed opcode that uses the MODRM opcode extension. In this case, CA gives us 11 001 010. 001 or /1 gives us a ROR instruction(ROR r/m16/32 imm8). 010 indicates the dx register. 04 indicates that we are rotating 4 bits.
assert "c1ca04" in h

#B8+r is a series of MOV instructions(MOV r16/32 imm16/32) with the offset from B8 being equal to the same register value used in MODRM.
#Similarly, B0+r is the series of MOV instructions with mnemonic (MOV r8 imm8). This is actually convenient, because this means the entire B range is easily predictable register move operations.
#The below is simply moving 0xbeef into dx(0xBA = 0xB8 + 2. 010 -> dx)
assert "baefbe" in h
#001 -> CX
assert "b90000" in h

#04 is the opcode for (ADD AL imm8). This is simply adding 7 to AL.
assert "0407" in h

#29 is the opcode for (SUB r/m16/32 r16/32). It uses a MODRM byte to indicate registers. CB works out to 11 001 011. 001 indicates CX. 011 indicates BX. The dissassembly indicates that this is sub bx, cx. BX is the target register that holds the result of the calculation. This is code from our print_hex file. cx is the index of our loop and is subtracted from bx, which is set to be the end of our string data that we slowly populate with the ascii representations of the hex input. BX is used immediately after this to index into that string and update the ascii character determined in this iteration of the loop.
assert "29cb" in h
print("Found everything else! Woohoo!")

print("Running bootloader in qemu and testing output. This will take a few seconds:")
import subprocess
t = ""
try: 
    output = subprocess.check_output(["qemu-system-i386","-nographic","boot_sect_main"], stderr=subprocess.STDOUT, timeout=8)
except subprocess.TimeoutExpired as e:
    t = str(e.output)
    print(t)
#boot_sect_stack is a very simple program to demonstrate stack usage in assembly/x86 programming
assert "BEEF" in t
print("Good news! Found BEEF in qemu output!")
