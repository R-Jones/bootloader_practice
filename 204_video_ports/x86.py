
prognibbles = iter('b40eb041cd10b02ecd10b042cd10a02e00cd10b043cd10bb2e0081c3007c8a4701cd10b044cd10a02d7ccd10ebfe585900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055aa')

foo = (nib+next(prognibbles) for nib in prognibbles)

memory = {} #key = address as hex val(e.g. 0xbeef, 0xbeeg). value = contents of that memory byte(two hex)

regs = {"IP":0x7000, "CR0":{"PE":False},#Actually, since I'm testing this on bootloaders, I should leave PE off for now.
        "EAX":0x0*64,"ECX":0x0*64,"EDX":0x0*64,"EBX":0x0*64,
        "ESP":0x0*64,"EBP":0x0*64,"ESI":0x0*64,"EDI":0x0*64,
        }

import time
def fetch():
    while True:
        time.sleep(1)
        IP = regs["IP"]
        regs["IP"] = regs["IP"] + 1
        print(memory[IP])
        print("fetching a byte!", hex(memory[IP]))
        yield memory[IP]

opcodes = fetch()

for i, bytehex in enumerate(foo):
    memory[0x7000+i]=int(bytehex,16)

print(memory)

#Okay, so now for some sections handling these needed functions
#NOT_IMPLEMENTED
def NOT_IMPLEMENTED(**kwargs):
    print(kwargs)

def NOT_IMPLEMENTED_YET(**kwargs):
    print(kwargs)

#MODRM_EXTENSIONS!!

#Branching:
#Jumps(But most of these I'm handling separately), LOOPNZ, LOOPZ, LOOP, JECXZ
def LOOPNZ(**kwargs):
    print(kwargs)

def LOOPZ(**kwargs):
    print(kwargs)

def LOOP(**kwargs):
    print(kwargs)

def JECXZ(**kwargs):
    print(kwargs)

def CONDITIONAL_JMP(**kwargs):
    print(kwargs)

#Control Flow:
#CALL, JMP, HLT, CALLF, WAIT, RET, RETN, RETF, INT3/INT/INTO/IRET
def CALL(**kwargs):
    print(kwargs)

def JMP(**kwargs):
    print(kwargs)

def JMPF(**kwargs):
    print(kwargs)

def HLT(**kwargs):
    print(kwargs)

def CALLF(**kwargs):
    print(kwargs)

def WAIT(**kwargs):
    print(kwargs)

def RET(**kwargs):
    print(kwargs)

def RETN(**kwargs):
    print(kwargs)

def RETF(**kwargs):
    print(kwargs)

def INT3(**kwargs):
    print(kwargs)

def INT(**kwargs):
    print(kwargs)

def INTO(**kwargs):
    print(kwargs)

def IRET(**kwargs):
    print(kwargs)

def INT(**kwargs):
    print(kwargs)

#Status control
#CMC, CLC, STC, CLI, STI, CLD, STD, SAHF, LAHF

def CMC(**kwargs):
    print(kwargs)

def CLC(**kwargs):
    print(kwargs)

def STC(**kwargs):
    print(kwargs)

def CLI(**kwargs):
    print(kwargs)

def STI(**kwargs):
    print(kwargs)

def CLD(**kwargs):
    print(kwargs)

def STD(**kwargs):
    print(kwargs)

def SAHF(**kwargs):
    print(kwargs)

def LAHF(**kwargs):
    print(kwargs)

#Decimal Arithmetic(I can probably skip these? I think this was a 70s programmer thing)
#DAA, AAS, AAA, DAA

def DAA(**kwargs):
    print(kwargs)

def AAS(**kwargs):
    print(kwargs)

def AAA(**kwargs):
    print(kwargs)

def DAA(**kwargs):
    print(kwargs)

#Bit operations
#TEST

def TEST(**kwargs):
    print(kwargs)

def ROL(**kwargs):
    print(kwargs)

def ROR(**kwargs):
    print(kwargs)

def RCL(**kwargs):
    print(kwargs)

def RCR(**kwargs):
    print(kwargs)

def SHL(**kwargs):
    print(kwargs)

def SHR(**kwargs):
    print(kwargs)

def SAL(**kwargs):
    print(kwargs)

def SAR(**kwargs):
    print(kwargs)

#LOGIC
#AND, OR, XOR

def AND(**kwargs):
    print(kwargs)

def OR(**kwargs):
    print(kwargs)

def XOR(**kwargs):
    print(kwargs)

#Arithmetic
#ADD, ADC, SBB, SUB, INC, DEC, IMUL

def ADD(**kwargs):
    print(kwargs)

def ADC(**kwargs):
    print(kwargs)

def SBB(**kwargs):
    print(kwargs)

def SUB(**kwargs):
    print(kwargs)

def INC(**kwargs):
    print(kwargs)

def DEC(**kwargs):
    print(kwargs)

def IMUL(**kwargs):
    print(kwargs)

#Compare
#CMP

def CMP(**kwargs):
    print(kwargs)

#Input/Output
#IN, OUT, INS, OUTs

def IN(**kwargs):
    print(kwargs)

def OUT(**kwargs):
    print(kwargs)

def INS(**kwargs):
    print(kwargs)

def OUTS(**kwargs):
    print(kwargs)

#Strings #Why is this a thing?
#MOVS, CMPS, STOS, LODS, SCAS

def MOVS(**kwargs):
    print(kwargs)

def CMPS(**kwargs):
    print(kwargs)

def STOS(**kwargs):
    print(kwargs)

def LODS(**kwargs):
    print(kwargs)

def SCAS(**kwargs):
    print(kwargs)

#Stack Access
#PUSH, PUSHA, POP, POPA, PUSHF, POPF, ENTER, LEAVE

def PUSH(**kwargs):
    print(kwargs)

def PUSHA(**kwargs):
    print(kwargs)

def POP(**kwargs):
    print(kwargs)

def POPA(**kwargs):
    print(kwargs)

def PUSHF(**kwargs):
    print(kwargs)

def POPF(**kwargs):
    print(kwargs)

def ENTER(**kwargs):
    print(kwargs)

def LEAVE(**kwargs):
    print(kwargs)

#Moving Data
#XCHG, MOV, LEA, LDS, LES, XLAT

def XCHG(**kwargs):
    print(kwargs)

def MOV(**kwargs):
    kwargs["op1"](kwargs["op2"]())
    return kwargs

def LEA(**kwargs):
    print(kwargs)

def LDS(**kwargs):
    print(kwargs)

def LES(**kwargs):
    print(kwargs)

def XLAT(**kwargs):
    print(kwargs)

#Miscellaneous
def DAS(**kwargs):
    print(kwargs)
#Prefixes

#MODRM_OPTEXT
#80-83, C1, C2, D0-D3, F6, F7, FE, FF

MODRM_OPEXT = {}
#RM8, IMM8
MODRM_OPEXT["80"] = [ADD, OR, ADC, SBB, AND, SUB, XOR]


#RM1632, IMM1632
MODRM_OPEXT["81"] = [ADD, OR, ADC, SBB, AND, SUB, XOR]

#RM8, IMM8
MODRM_OPEXT["82"] = [ADD, OR, ADC, SBB, AND, SUB, XOR]

#RM1632, IMM8
MODRM_OPEXT["83"] = [ADD, OR, ADC, SBB, AND, SUB, XOR]

#RM8, IMM8
MODRM_OPEXT["C0"] = [ROL, ROR, RCL, RCR, SHL, SHR, SAL, SAR]

#RM1632, IMM8
MODRM_OPEXT["C1"] = [ROL, ROR, RCL, RCR, SHL, SHR, SAL, SAR]

#RM8, ONE
MODRM_OPEXT["D0"] = [ROL, ROR, RCL, RCR, SHL, SHR, SAL, SAR]
#RM1632, ONE
MODRM_OPEXT["D1"] = [ROL, ROR, RCL, RCR, SHL, SHR, SAL, SAR]
#RM8, CL
MODRM_OPEXT["D2"] = [ROL, ROR, RCL, RCR, SHL, SHR, SAL, SAR]
#RM1632, CL
MODRM_OPEXT["D3"] = [ROL, ROR, RCL, RCR, SHL, SHR, SAL, SAR]

#RM8, IMM8(Actually, these vary immensely for the below codes)
#MODRM_OPEXT["F6"] = [TEST, TEST, NOT, NEG, MUL, IMUL, DIV, IDIV]

#RM1632, IMM1632(Actually, these vary immensely for the below codes.
#MODRM_OPEXT["F7"] = [TEST, TEST, NOT, NEG, MUL, IMUL, DIV, IDIV]

#RM8
MODRM_OPEXT["FE"] = [INC, DEC]
#Alternately RM1632 and M161632
MODRM_OPEXT["FF"] = [INC, DEC, CALL, CALLF, JMP, JMPF, PUSH]

def MODRM_OPEXT_80(**kwargs):
    print(kwargs)

def MODRM_OPEXT_81(**kwargs):
    print(kwargs)

def MODRM_OPEXT_82(**kwargs):
    print(kwargs)

def MODRM_OPEXT_83(**kwargs):
    print(kwargs)

def MODRM_OPEXT_C0(**kwargs):
    print(kwargs)

def MODRM_OPEXT_C1(**kwargs):
    print(kwargs)

def MODRM_OPEXT_D0(**kwargs):
    print(kwargs)

def MODRM_OPEXT_D1(**kwargs):
    print(kwargs)

def MODRM_OPEXT_D2(**kwargs):
    print(kwargs)

def MODRM_OPEXT_D3(**kwargs):
    print(kwargs)

def MODRM_OPEXT_F6(**kwargs):
    print(kwargs)

def MODRM_OPEXT_F7(**kwargs):
    print(kwargs)

def MODRM_OPEXT_FE(**kwargs):
    print(kwargs)

def MODRM_OPEXT_FF(**kwargs):
    print(kwargs)

#Prefixes
#26, 2E, 36, 3E, 64, 65, 66, 
def PREFIX_26(**kwargs):
    print(kwargs)

def PREFIX_2E(**kwargs):
    print(kwargs)

def PREFIX_36(**kwargs):
    print(kwargs)

def PREFIX_3E(**kwargs):
    print(kwargs)

def PREFIX_64(**kwargs):
    print(kwargs)

def PREFIX_65(**kwargs):
    print(kwargs)

def PREFIX_66(**kwargs):
    print(kwargs)

def PREFIX_F0(**kwargs):
    print(kwargs)

def PREFIX_F2(**kwargs):
    print(kwargs)

def PREFIX_F3(**kwargs):
    print(kwargs)

#Regs and Constants
#EAX, AX, AL, AH, CS, ES, DS, SREG, DX, EBP, ECX
#A,C,D,B,SP,BP,SI,DI

#ALAH-AX---EAX
def AL(**kwargs):
    def addr(v):
        if(v):
            regs["EAX"] = ((v & 0xff) << 24) + (regs["EAX"] & 0x00ffffff)
        return regs["EAX"] >> 24
    key = [x for x in ("op1","op2","op3") if x not in kwargs][0]
    return {key: addr}

def AH(**kwargs):
    def addr(v):
        if(v):
            regs["EAX"] = (regs["EAX"] & 0xff000000) + ((v & 0xff) << 16) + (regs["EAX"] & 0xff)
        return (regs["EAX"] >> 16) & 0xff
        #Makes for a fun comparison between slicing and bit manipulation.
        #if(v):
        #    regs["EAX"] = regs["EAX"][:8] + v + regs["EAX"][16:]
        #return regs["EAX"][8:16]
    key = [x for x in ("op1","op2","op3") if x not in kwargs][0]
    return {key: addr}

def AX(**kwargs):
    print(kwargs)

def EAX(**kwargs):
    print(kwargs)

def CL(**kwargs):
    print(kwargs)

def CH(**kwargs):
    print(kwargs)

def CX(**kwargs):
    print(kwargs)

def ECX(**kwargs):
    print(kwargs)

def DL(**kwargs):
    print(kwargs)

def DH(**kwargs):
    print(kwargs)

def DX(**kwargs):
    print(kwargs)

def EDX(**kwargs):
    print(kwargs)

def BL(**kwargs):
    print(kwargs)

def BH(**kwargs):
    print(kwargs)

def BX(**kwargs):
    print(kwargs)

def EBX(**kwargs):
    print(kwargs)

def SP(**kwargs):
    print(kwargs)

def ESP(**kwargs):
    print(kwargs)

def BP(**kwargs):
    print(kwargs)

def EBP(**kwargs):
    print(kwargs)

def SI(**kwargs):
    print(kwargs)

def ESI(**kwargs):
    print(kwargs)

def DI(**kwargs):
    print(kwargs)

def EDI(**kwargs):
    print(kwargs)

def CS(**kwargs):
    print(kwargs)

def ES(**kwargs):
    print(kwargs)

def DS(**kwargs):
    print(kwargs)

def SREG(**kwargs):
    print(kwargs)

#Addressing Modes:
#MODRM, R8, R1632, RM8, RM16, RM1632, IMM8, IMM16, IMM1632, M8, M16, M, MOFFS8, MOFFS1632, REL8, REL1632, PTR161632
def R8(**kwargs):
    print(kwargs)

def R1632(**kwargs):
    print(kwargs)

def RM8(**kwargs):
    print(kwargs)

def RM16(**kwargs):
    print(kwargs)

def RM1632(**kwargs):
    print(kwargs)

def IMM8(**kwargs):
    def addr():
        return next(opcodes)
        
    key = [x for x in ("op1","op2","op3") if x not in kwargs][0]
    print(kwargs)
    return {key: addr}

def IMM16(**kwargs):
    print(kwargs)

def IMM1632(**kwargs):
    print(kwargs)

def M8(**kwargs):
    print(kwargs)

def M16(**kwargs):
    print(kwargs)

def M161632(**kwargs):
    print(kwargs)

def M(**kwargs):
    print(kwargs)

def MOFFS8(**kwargs):
    print(kwargs)

def MOFFS1632(**kwargs):
    print(kwargs)

def REL8(**kwargs):
    print(kwargs)

def REL1632(**kwargs):
    print(kwargs)

def PTR161632(**kwargs):
    print(kwargs)

#And finally MODRM
def MODRM(**kwargs):
    print(kwargs)

ophandlers = {}
#So, going through this, it's pretty clear that the CPU is using some octal to parse opcodes. You can notice the similarities and repitition. Maybe I could take another stab at this later doing it that way.
#The way I'm doing this is tossing the instruction at the end. My strategy will be to go through this, using MODRM, R8, RM8 etc. to build state. 
ophandlers[0x0] = {0x0:[MODRM, RM8, R8, ADD], 0x1:[MODRM, RM1632, R1632, ADD], 0x2:[MODRM, R8, RM8, ADD], 0x3:[MODRM, R1632, RM1632, ADD],
                   0x4:[AL, IMM8, ADD], 0x5:[EAX, IMM1632, ADD], 0x6:[ES, PUSH], 0x7:[ES, POP], 0x8:[MODRM, RM8, R8, OR], 0x9:[MODRM, RM1632, R1632, OR],
                   0xa:[MODRM, R8, RM8, OR], 0xb:[MODRM, RM1632, R1632, OR], 0xc:[AL, IMM8, OR], 0xd:[EAX, IMM1632, OR], 0xe:[CS, PUSH], 0xf:[NOT_IMPLEMENTED]}

ophandlers[0x1] = {0x0:[MODRM, RM8, R8, ADC], 0x1:[MODRM, RM1632, R1632, ADC], 0x2:[MODRM, R8, RM8, ADC], 0x3:[MODRM, R1632, RM1632, ADC],
                   0x4:[AL, IMM8, ADC], 0x5:[EAX, IMM1632, ADC], 0x6:[CS, PUSH], 0x7:[CS, POP], 0x8:[MODRM, RM8, R8, SBB], 0x9:[MODRM, RM1632, R1632, SBB],
                   0xa:[MODRM, R8, RM8, SBB], 0xb:[MODRM, RM1632, R1632, SBB], 0xc:[AL, IMM8, SBB], 0xd:[EAX, IMM1632, SBB], 0xe:[DS, PUSH], 0xf:[DS, POP]}

ophandlers[0x2] = {0x0:[MODRM, RM8, R8, AND], 0x1:[MODRM, RM1632, R1632, AND], 0x2:[MODRM, R8, RM8, AND], 0x3:[MODRM, R1632, RM1632, AND],
                   0x4:[AL, IMM8, AND], 0x5:[EAX, IMM1632, AND], 0x6:[PREFIX_26], 0x7:[AL,DAA], 0x8:[MODRM, RM8, R8, SUB], 0x9:[MODRM, RM1632, R1632, SUB],
                   0xa:[MODRM, R8, RM8, SUB], 0xb:[MODRM, RM1632, R1632, SUB], 0xc:[AL, IMM8, SUB], 0xd:[EAX, IMM1632, SUB], 0xe:[PREFIX_2E], 0xf:[AL, DAS]}

ophandlers[0x3] = {0x0:[MODRM, RM8, R8, XOR], 0x1:[MODRM, RM1632, R1632, XOR], 0x2:[MODRM, R8, RM8, XOR], 0x3:[MODRM, R1632, RM1632, XOR],
                   0x4:[AL, IMM8, XOR], 0x5:[EAX, IMM1632, XOR], 0x6:[PREFIX_36], 0x7:[AL,AH,AAA], 0x8:[MODRM, RM8, R8, CMP], 0x9:[MODRM, RM1632, R1632, CMP],
                   0xa:[MODRM, R8, RM8, CMP], 0xb:[MODRM, RM1632, R1632, CMP], 0xc:[AL, IMM8, CMP], 0xd:[EAX, IMM1632, CMP], 0xe:[PREFIX_3E], 0xf:[AL, AH, AAS]}

#TODO:The 4s and 5s are special in that they encode the target registers in the opcode itself. Another reason why I should be parsing these as octals. For now, I'll handle them specially. (I'm pretty sure that the octal values for the registers matches what I'll need to write for the MODRM parsing anyway!
#ophandlers[0x4] = 
#ophandlers[0x5] = 
ophandlers[0x6] = {0x0:[PUSHA],0x1:[POPA],0x2:[NOT_IMPLEMENTED],0x3:[NOT_IMPLEMENTED],0x4:[PREFIX_64],0x5:[PREFIX_65],0x6:[PREFIX_66],0x7:[NOT_IMPLEMENTED],
        0x8:[IMM1632, PUSH],0x9:[NOT_IMPLEMENTED_YET],0xa:[IMM8, PUSH],0xb:[NOT_IMPLEMENTED_YET],0xc:[M8,DX,INS],0xd:[M16,DX,INS],0xe:[DX,M8,OUTS],0xf:[DX,M16,OUTS]}

#TODO:The 7s are all jump instructions that vary based on various flags. This is something I can handle independently as well.
#ophandlers[0x7] =

ophandlers[0x8] = {0x0:[MODRM_OPEXT_80],0x1:[MODRM_OPEXT_81],0x2:[MODRM_OPEXT_82], 0x3:[MODRM_OPEXT_83], 0x4:[MODRM, RM8, R8, TEST], 0x5:[MODRM, RM1632, R1632, TEST], 
                 0x6:[MODRM, R8, RM8, XCHG], 0x7:[MODRM, R1632, RM1632, XCHG], 0x8:[MODRM, RM8, R8, MOV], 0x9:[MODRM, RM1632, R1632, MOV], 0xa:[MODRM, R8, RM8, MOV], 
                 0xb:[MODRM, R1632, RM1632, MOV], 0xc:[MODRM, M16, MOV], 0xd:[MODRM, R1632, M, LEA], 0xe:[MODRM, SREG, RM16, MOV], 0xf:[MODRM, RM1632, POP]} #eh

#TODO:The lower portion of this next one is a series of instructions. So let's handle this one separately too.
#ophandlers[9] = 

ophandlers[0xa] = {0x0:[AL, MOFFS8, MOV], 0x1:[EAX, MOFFS1632, MOV], 0x2:[MOFFS8, AL, MOV], 0x3:[MOFFS1632, EAX, MOV], 0x4:[M8, M8, MOVS], 0x5:[M16, M16, MOVS],
                   0x6:[M8, M8, CMPS], 0x7:[M16, M16, CMPS], 0x8:[AL, IMM8, TEST], 0x9:[EAX, IMM1632, TEST], 0xa:[M8, AL, STOS], 0xb:[M16, AX, STOS],
                   0xc:[AL, M8, LODS], 0xd:[AX, M16, LODS], 0xe:[M8, AL, SCAS], 0xf:[M8, AL, SCAS]}

#ophandlers[0xb] = 

ophandlers[0xc] = {0x0:[MODRM_OPEXT_C0], 0x1:[MODRM_OPEXT_C1], 0x2:[IMM16, RET], 0x3: [RET], 0x4:[MODRM, ES, R1632, M161632], 0x5:[MODRM, DS, R1632, M161632],
                   0x6:[MODRM, RM8, IMM8, MOV], 0x7:[MODRM, RM1632, IMM1632, MOV], 0x8:[EBP, IMM16, IMM8, ENTER], 0x9:[EBP, LEAVE], 
                   0xa:[IMM16, RETF], 0xb:[RETF], 0xc:[INT3], 0xd:[IMM8, INT], 0xe:[INTO], 0xf:[IRET]}

#All the floating point stuff is in the upper nibble of this one. Going to skip on that for now.
ophandlers[0xd] = {0x0:[MODRM_OPEXT_D0], 0x1:[MODRM_OPEXT_D1], 0x2:[MODRM_OPEXT_D2], 0x3:[MODRM_OPEXT_D3], 0x4:[NOT_IMPLEMENTED], 0x5:[NOT_IMPLEMENTED], 
                   0x6:[NOT_IMPLEMENTED], 0x7:[AL, M8, XLAT], 0x8:[NOT_IMPLEMENTED_YET], 0x9:[NOT_IMPLEMENTED_YET], 0xa:[NOT_IMPLEMENTED_YET],
                   0xb:[NOT_IMPLEMENTED_YET], 0xc:[NOT_IMPLEMENTED_YET], 0xd:[NOT_IMPLEMENTED_YET], 0xe:[NOT_IMPLEMENTED_YET], 0xf:[NOT_IMPLEMENTED_YET]}
                 
ophandlers[0xe] = {0x0:[ECX, REL8, LOOPNZ], 0x1:[ECX, REL8, LOOPZ], 0x2:[ECX, REL8, LOOP], 0x3:[REL8, ECX, JECXZ], 0x4:[AL, IMM8, IN], 0x5:[EAX, IMM8, IN], 
                   0x6:[IMM8, AL, OUT], 0x7:[IMM8, EAX, OUT], 0x8:[REL1632, CALL], 0x9:[REL1632, JMP], 0xa:[PTR161632, JMP], 0xb:[REL8, JMP], 0xc:[AL, DX, IN],
                   0xd:[EAX, DX, IN], 0xe:[DX, AL, OUT], 0xf:[DX, EAX, OUT]}

ophandlers[0xf] = {0x0:[PREFIX_F0],0x1:[NOT_IMPLEMENTED],0x2:[PREFIX_F2],0x3:[PREFIX_F3],0x4:[HLT],0x5:[CMC],0x6:[MODRM_OPEXT_F6],0x7:[MODRM_OPEXT_F7],0x8:[CLC],
                   0x9:[STC],0xa:[CLI],0xb:[STI],0xc:[CLD],0xd:[STD],0xe:[MODRM_OPEXT_FE], 0xf:[MODRM_OPEXT_FF]}

#parse modrm
#addressing modes
#Finally, feed op1, op2, ... operand pointers into the main instruction function. 
#def MOV(op1, op2):
#    op1(op2())
regmap8 = [AL, CL, DL, BL, AH, CH, DH, BH] #A bit of trivia. In long mode with REX prefix, the latter four change.
regmap16 = [AX, CX, DX, BX, SP, BP, SI, DI]
regmap32 = [EAX, ECX, EDX, EBX, ESP, EBP, ESI, EDI]

#A,C,D,B,SP,BP,SI,DI
def B_OP(opcode):
    val = opcode & 0x0f
    if val // 8:
        reg = regmap32[val%8] if regs["CR0"]["PE"] else regmap16[val%8]#hardcoded to 32bit for now
        addressing = [reg, IMM1632] 
    else:#R8, IMM8
        reg = regmap8[val%8]
        addressing = [reg, IMM8]

    execute([*addressing, MOV])

def FOUR_OP(opcode):
    val = int(opcode[1],16)
    reg = regmap32[val%8] if regs["CR0"]["PE"] else regmap16[val%8]#hardcoded to 32bit for now
    op = DEC if val // 8 else INC
    execute([R1632, op])

def FIVE_OP(opcode):
    val = int(opcode[1],16)
    reg = regmap32[val%8] if regs["CR0"]["PE"] else regmap16[val%8]#hardcoded to 32bit for now
    op = POP if val // 8 else PUSH
    execute([R1632, op])

conditionaljumpmap = [
        lambda: FLAGS["OF"], lambda: not FLAGS["OF"], #JO, JNO (jump short if (not) overflow)
        lambda: FLAGS["CF"], lambda: not FLAGS["CF"], #JB/JNAE/JC, JNB/JAE/JNC(Jump short if below/not above(not below/above) or equal/(not) carry)
        lambda: FLAGS["ZF"], lambda: not FLAGS["ZF"], #JZ/JE, JNZ/JNE (Jump short if zero/equal(not zero/not equal))
        lambda: FLAGS["CF"] or FLAGS["ZF"], lambda: (not FLAGS["CF"]) and (not FLAGS["ZF"]), #JBE/JNA, JNBE/JA(Below or equal(not below or equal))
        lambda: FLAGS["SF"], lambda: not FLAGS["SF"], #JS/JNS(Jump short if (not) sign
        lambda: FLAGS["PF"], lambda: not FLAGS["PF"], #JP/JPE, JNP/JPO(Jump short if (not) parity, jump short if parity even(odd)
        lambda: FLAGS["SF"] != FLAGS["OF"], lambda: FLAGS["SF"] == FLAGS["OF"], #JL/JNGE, JNL/JGE(Jump short if (not) less)
        lambda: FLAGS["ZF"] or (FLAGS["SF"] != FLAGS["OF"]), lambda: (not FLAGS["ZF"]) and (FLAGS["SF"]==FLAGS["OF"]) #JLE/JNG, JNLE/JG(not greater(greater))
            ]
#So here's going to be our conditional jumps. Honestly, I'm hoping there's some way that I can just reuse the single jump instruction.
def SEVEN_OP(opcode):
    val = int(opcode[1],16)
    condition = conditionaljumpmap[val] #Depending on the second nibble of our opcode, the condition for our conditional jump changes.
    execute([REL8, CONDITIONAL_JMP])
    
def execute(mnemonic, state={}):
    state["mnemonic"] = mnemonic
    for piece in mnemonic:
        print("Now Playing:",piece)
        retval = piece(**state)
        print("retval",retval)
        if(retval):
            state = {**state, **retval}
    return state

#ok, yeah. This is gonna get really tough if I try to stick with strings

for opcode in opcodes:
    print(opcode)
    print(regs)
    nibble = opcode >> 4
    
    if(nibble==0xb):
        B_OP(opcode)
    elif(nibble==4):
        FOUR_OP(opcode)
    elif(nibble==5):
        FIVE_OP(opcode)
    elif(nibble==7):
        SEVEN_OP(opcode)
    else:
        execute(ophandlers[nibble][opcode & 0x0f])
