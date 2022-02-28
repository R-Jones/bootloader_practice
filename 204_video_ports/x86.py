prognibbles = iter('b40eb041cd10b02ecd10b042cd10a02e00cd10b043cd10bb2e0081c3007c8a4701cd10b044cd10a02d7ccd10ebfe585900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055aa')

foo = (nib+next(prognibbles) for nib in prognibbles)

memory = {} #key = address as hex val(e.g. 0xbeef, 0xbeeg). value = contents of that memory byte(two hex)

regs = {"IP":0x7000}

for i, bytehex in enumerate(foo):
    memory[0x7000+i]=bytehex

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
    print(kwargs)

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

def EAX(**kwargs):
    print(kwargs)

def ECX(**kwargs):
    print(kwargs)

def EDX(**kwargs):
    print(kwargs)

def EBX(**kwargs):
    print(kwargs)

def ESP(**kwargs):
    print(kwargs)

def EBP(**kwargs):
    print(kwargs)

def ESI(**kwargs):
    print(kwargs)

def EDI(**kwargs):
    print(kwargs)


def AX(**kwargs):
    print(kwargs)

def AL(**kwargs):
    print(kwargs)

def AH(**kwargs):
    print(kwargs)

def CS(**kwargs):
    print(kwargs)

def ES(**kwargs):
    print(kwargs)

def DS(**kwargs):
    print(kwargs)

def SREG(**kwargs):
    print(kwargs)

def DX(**kwargs):
    print(kwargs)

def EBP(**kwargs):
    print(kwargs)

def ECX(**kwargs):
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
    print(kwargs)

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
ophandlers["0"] = {"0":[MODRM, RM8, R8, ADD], "1":[MODRM, RM1632, R1632, ADD], "2":[MODRM, R8, RM8, ADD], "3":[MODRM, R1632, RM1632, ADD],
                   "4":[AL, IMM8, ADD], "5":[EAX, IMM1632, ADD], "6":[ES, PUSH], "7":[ES, POP], "8":[MODRM, RM8, R8, OR], "9":[MODRM, RM1632, R1632, OR],
                   "a":[MODRM, R8, RM8, OR], "b":[MODRM, RM1632, R1632, OR], "c":[AL, IMM8, OR], "d":[EAX, IMM1632, OR], "e":[CS, PUSH], "f":[NOT_IMPLEMENTED]}

ophandlers["1"] = {"0":[MODRM, RM8, R8, ADC], "1":[MODRM, RM1632, R1632, ADC], "2":[MODRM, R8, RM8, ADC], "3":[MODRM, R1632, RM1632, ADC],
                   "4":[AL, IMM8, ADC], "5":[EAX, IMM1632, ADC], "6":[CS, PUSH], "7":[CS, POP], "8":[MODRM, RM8, R8, SBB], "9":[MODRM, RM1632, R1632, SBB],
                   "a":[MODRM, R8, RM8, SBB], "b":[MODRM, RM1632, R1632, SBB], "c":[AL, IMM8, SBB], "d":[EAX, IMM1632, SBB], "e":[DS, PUSH], "f":[DS, POP]}

ophandlers["2"] = {"0":[MODRM, RM8, R8, AND], "1":[MODRM, RM1632, R1632, AND], "2":[MODRM, R8, RM8, AND], "3":[MODRM, R1632, RM1632, AND],
                   "4":[AL, IMM8, AND], "5":[EAX, IMM1632, AND], "6":[PREFIX_26], "7":[AL,DAA], "8":[MODRM, RM8, R8, SUB], "9":[MODRM, RM1632, R1632, SUB],
                   "a":[MODRM, R8, RM8, SUB], "b":[MODRM, RM1632, R1632, SUB], "c":[AL, IMM8, SUB], "d":[EAX, IMM1632, SUB], "e":[PREFIX_2E], "f":[AL, DAS]}

ophandlers["3"] = {"0":[MODRM, RM8, R8, XOR], "1":[MODRM, RM1632, R1632, XOR], "2":[MODRM, R8, RM8, XOR], "3":[MODRM, R1632, RM1632, XOR],
                   "4":[AL, IMM8, XOR], "5":[EAX, IMM1632, XOR], "6":[PREFIX_36], "7":[AL,AH,AAA], "8":[MODRM, RM8, R8, CMP], "9":[MODRM, RM1632, R1632, CMP],
                   "a":[MODRM, R8, RM8, CMP], "b":[MODRM, RM1632, R1632, CMP], "c":[AL, IMM8, CMP], "d":[EAX, IMM1632, CMP], "e":[PREFIX_3E], "f":[AL, AH, AAS]}

#TODO:The 4s and 5s are special in that they encode the target registers in the opcode itself. Another reason why I should be parsing these as octals. For now, I'll handle them specially. (I'm pretty sure that the octal values for the registers matches what I'll need to write for the MODRM parsing anyway!
#ophandlers["4"] = 
#ophandlers["5"] = 
ophandlers["6"] = {"0":[PUSHA],"1":[POPA],"2":[NOT_IMPLEMENTED],"3":[NOT_IMPLEMENTED],"4":[PREFIX_64],"5":[PREFIX_65],"6":[PREFIX_66],"7":[NOT_IMPLEMENTED],
        "8":[IMM1632, PUSH],"9":[NOT_IMPLEMENTED_YET],"a":[IMM8, PUSH],"b":[NOT_IMPLEMENTED_YET],"c":[M8,DX,INS],"d":[M16,DX,INS],"e":[DX,M8,OUTS],"f":[DX,M16,OUTS]}

#TODO:The 7s are all jump instructions that vary based on various flags. This is something I can handle independently as well.
#ophandlers["7"] =

ophandlers["8"] = {"0":[MODRM_OPEXT_80],"1":[MODRM_OPEXT_81],"2":[MODRM_OPEXT_82], "3":[MODRM_OPEXT_83], "4":[MODRM, RM8, R8, TEST], "5":[MODRM, RM1632, R1632, TEST], 
                 "6":[MODRM, R8, RM8, XCHG], "7":[MODRM, R1632, RM1632, XCHG], "8":[MODRM, RM8, R8, MOV], "9":[MODRM, RM1632, R1632, MOV], "a":[MODRM, R8, RM8, MOV], 
                 "b":[MODRM, R1632, RM1632, MOV], "c":[MODRM, M16, MOV], "d":[MODRM, R1632, M, LEA], "e":[MODRM, SREG, RM16, MOV], "f":[MODRM, RM1632, POP]} #eh

#TODO:The lower portion of this next one is a series of instructions. So let's handle this one separately too.
#ophandlers[9] = 

ophandlers["a"] = {"0":[AL, MOFFS8, MOV], "1":[EAX, MOFFS1632, MOV], "2":[MOFFS8, AL, MOV], "3":[MOFFS1632, EAX, MOV], "4":[M8, M8, MOVS], "5":[M16, M16, MOVS],
                   "6":[M8, M8, CMPS], "7":[M16, M16, CMPS], "8":[AL, IMM8, TEST], "9":[EAX, IMM1632, TEST], "a":[M8, AL, STOS], "b":[M16, AX, STOS],
                   "c":[AL, M8, LODS], "d":[AX, M16, LODS], "e":[M8, AL, SCAS], "f":[M8, AL, SCAS]}

#ophandlers["b"] = 

ophandlers["c"] = {"0":[MODRM_OPEXT_C0], "1":[MODRM_OPEXT_C1], "2":[IMM16, RET], "3": [RET], "4":[MODRM, ES, R1632, M161632], "5":[MODRM, DS, R1632, M161632],
                   "6":[MODRM, RM8, IMM8, MOV], "7":[MODRM, RM1632, IMM1632, MOV], "8":[EBP, IMM16, IMM8, ENTER], "9":[EBP, LEAVE], 
                   "a":[IMM16, RETF], "b":[RETF], "c":[INT3], "d":[IMM8, INT], "e":[INTO], "f":[IRET]}

#All the floating point stuff is in the upper nibble of this one. Going to skip on that for now.
ophandlers["d"] = {"0":[MODRM_OPEXT_D0], "1":[MODRM_OPEXT_D1], "2":[MODRM_OPEXT_D2], "3":[MODRM_OPEXT_D3], "4":[NOT_IMPLEMENTED], "5":[NOT_IMPLEMENTED], 
                   "6":[NOT_IMPLEMENTED], "7":[AL, M8, XLAT], "8":[NOT_IMPLEMENTED_YET], "9":[NOT_IMPLEMENTED_YET], "a":[NOT_IMPLEMENTED_YET],
                   "b":[NOT_IMPLEMENTED_YET], "c":[NOT_IMPLEMENTED_YET], "d":[NOT_IMPLEMENTED_YET], "e":[NOT_IMPLEMENTED_YET], "f":[NOT_IMPLEMENTED_YET]}
                 
ophandlers["e"] = {"0":[ECX, REL8, LOOPNZ], "1":[ECX, REL8, LOOPZ], "2":[ECX, REL8, LOOP], "3":[REL8, ECX, JECXZ], "4":[AL, IMM8, IN], "5":[EAX, IMM8, IN], 
                   "6":[IMM8, AL, OUT], "7":[IMM8, EAX, OUT], "8":[REL1632, CALL], "9":[REL1632, JMP], "a":[PTR161632, JMP], "b":[REL8, JMP], "c":[AL, DX, IN],
                   "d":[EAX, DX, IN], "e":[DX, AL, OUT], "f":[DX, EAX, OUT]}

ophandlers["f"] = {"0":[PREFIX_F0],"1":[NOT_IMPLEMENTED],"2":[PREFIX_F2],"3":[PREFIX_F3],"4":[HLT],"5":[CMC],"6":[MODRM_OPEXT_F6],"7":[MODRM_OPEXT_F7],"8":[CLC],
                   "9":[STC],"a":[CLI],"b":[STI],"c":[CLD],"d":[STD],"e":[MODRM_OPEXT_FE], "f":[MODRM_OPEXT_FF]}

#parse modrm
#addressing modes
#Finally, feed op1, op2, ... operand pointers into the main instruction function. 
#def MOV(op1, op2):
#    op1(op2())
regmap = [EAX, ECX, EDX, EBX, ESP, EBP, ESI, EDI]

#A,C,D,B,SP,BP,SI,DI
def B_OP(opcode):
    val = int(opcode[1],16)
    reg = regmap[val%8]
    addressing = [R1632, IMM1632] if val // 8 else [R8, IMM8] 
    execute([*addressing, MOV])

def FOUR_OP(opcode):
    val = int(opcode[1],16)
    reg = regmap[val%8]
    op = DEC if val // 8 else INC
    execute([R1632, op])

def FIVE_OP(opcode):
    val = int(opcode[1],16)
    reg = regmap[val%8]
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
        retval = piece(**state)
        if(retval):
            state = {**state, **retval}
    return state

import time
def fetch():
    while True:
        time.sleep(0.5)
        IP = regs["IP"]
        regs["IP"] = regs["IP"] + 1
        yield memory[IP]
opcodes = fetch()

for opcode in opcodes:
    print(opcode)
    if(opcode[0]=="b"):
        B_OP(opcode)
    elif(opcode[0]=="4"):
        FOUR_OP(opcode)
    elif(opcode[0]=="5"):
        FIVE_OP(opcode)
    elif(opcode[0]=="7"):
        SEVEN_OP(opcode)
    else:
        execute(ophandlers[opcode[0]][opcode[1]])
