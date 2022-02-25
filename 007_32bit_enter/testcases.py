f = open("32bit_main", "rb")
b = f.read() #read the binary
h = b.hex()

print(h)
print(len(h))

#new opcodes: 66(a prefix), 0f0116, ea7d7c0800

#66 is a special instruction prefix. "The operand-size prefix(66H) and The address-size prefix(67H) allow mixing of 32-bit and 16-bit operations"
#"These prefixes reverse the default size selected by the D flag in the code-segment descriptor. For example, the processor can interpret the (MOV mem, reg) instruction in any of four ways: ...." 
#See stackoverflow.com/questions/13173138/operand-size-prefix-in-16-bit-mode#answer-14660027
#Actually, because we set the gdt in this file, we can actually see that D flag(the size flag). gdt_code is at 0x37. Let's do that below.
#With the prefix out of the way...
#Opcode 89 is a MOV opcode(MOV r/m16/32 r16/32). It takes a MODRM. Even though we're in 32-bit mode, thanks to the 66 prefix, I think this is in 16-bit mode. So (MOV r/m16 r16). 02 is 00 000 010. Looking at our ModR/M table, this gives us MOV [BP+SI], AX
#The BP register is simply the stack base pointer.
#The SI register is the "Source Index register", used as"a pointer to a source in stream operations."
#This, along with the 8A03(mov al, [bp+di]) just a little earlier is a bit puzzling. In the code, these are mov al, [ebx] and mov [edx], ax. Where does the base stack pointer and si/di factor into it? (DI is "used as a pointer to a destination in stream oeprations.). Where are SI and DI set?
#ok! So it turns out that the index registers si and di(the "source" and "destination" index registers) auto-increment or auto-decrement according to how the Direction Flag(one of the CPU's FLAGS flags) is set.
#It seems NASM optimized this by using si and di.
#This still doesn't explain BP(The stack base pointer). How did the source and destination addresses get on the stack?
#Moreover, I'm seeing [bp+di] and [bp+si]. Obviously, di and si can't be the same, so they must've been initialized to different values.
#Alas, I'll need to study this more later.
#Mystery solved! After all that chasing my tail, I think the issue is simply that the dissassembler was erroneously using the MODRM table for 16-bit addressing instead of 32-bit. The 32-bit table shows the results that we would expect. It's still an interesting feature of assembly to know about and so I'll leave all of this here!
#(Update: And indeed, using ndisam -b 32 fixes it!)
assert "668902" in h

gdt_code_inx = int("37",16)*2
#The limit field that starts our gdt_code entry in our gdt table. It's FFFF because the code segment will span the full 4GB of memory.
assert h[inx:inx+4] == "ffff"

end_inx = gdt_code_inx + 8 * 2#The gdt segment descriptor is 8 bytes long. This is a hex representation, and 8 bytes in 16 hex, so we need to double
assert h[end_inx-2:end_inx] == "0000" #The last byte is the last fragment of the base field. Our base is just 0, so all of the fragments are all 0.

#the bin function will return 0b11001111. Need to slice off that 0b
flagsLimit = bin(int(h[end_inx-4:end_inx-2],16))[2:]
assert flagsLimit = "11001111"

#The latter 4 bits are our flags. And I -think- this is affected by endianness, because otherwise the flags(GDBL) would be "1111", which would mean the Long(L) flag would be set at the same time as the "Default Operand Size"(D) flag, which is supposed to be illegal. 
assert flagsLimit[1] == "1"#This should be checking our D flag, which means the 66 opcode prefix switches from 32-bit to 16-bit.

#0F is always the first byte in a Two-byte instruction. 0f01 is multiplexed. A MODRM of 16 indicates 00 010 110. The REG field in the middle serves as an opcode extension here. So we have 0f01 /2 which indicates the LGDT instruction, which is used to update the GDT table.
assert "0f0116477c" in h

#EA indicates a far jump instruction, with mnemonic ptr16:16/32, "jump far, absolute, address given in operand". Clearly, the first operand is the address of the jump(7C brings us 32bit-switch.asm:init_pm, and the second operand 08 would be our code segment). 
assert "ea7d7c0800" in h

#0f22 is a two-byte instruction with mnemonic (MOV CRn r32)(Move to/from Control Registers). 0f20 is a two-byte instruction with mnemonic (MOV r32 CRn). Both take MODRM. In both cases, the MODRM is c0 -> 11 000 000, with the center MODRM.reg and ending MODRM.rm fields indicating EAX and cr0.
assert "0f20c0" in h
assert "0f22c0" in h

#As above, the 66 prefix indicates Operand-size override. 83 is a multiplexed instruction that takes a MODRM using the center MODRM.reg field as the opcode instruction. In this case, c8 is 11 001 000. 83 /1 is an OR instruction with mnemonic (OR r/m16/32 imm8). The final 000 MOD.rm field indicates that we're ORing the eax register. What we're doing here is toggling the 32-bit mode bit in cr0 so that we can switch into protected mode.
assert "6683c801"
