#prognibbles = iter('b40eb041cd10b02ecd10b042cd10a02e00cd10b043cd10bb2e0081c3007c8a4701cd10b044cd10a02d7ccd10ebfe585900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055aa')

prognibbles = iter('b40eb041cd10b02dcd10b042cd10a02d00cd10b043cd10bb2d0081c3007c8a07cd10b044cd10a02d7ccd10ebfe58000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055aa')
foo = (nib+next(prognibbles) for nib in prognibbles)

memory = {} #key = address as hex val(e.g. 0xbeef, 0xbeeg). value = contents of that memory byte(two hex)

regs = {"DS":0x0, "IP":0x0, "CR0":{"PE":False},#Actually, since I'm testing this on bootloaders, I should leave PE off for now.
#regs = {"DS":0x7000, "IP":0x7000, "CR0":{"PE":False},#Actually, since I'm testing this on bootloaders, I should leave PE off for now.
        "EAX":0x0*64,"ECX":0x0*64,"EDX":0x0*64,"EBX":0x0*64,
        "ESP":0x0*64,"EBP":0x0*64,"ESI":0x0*64,"EDI":0x0*64,
        }

for i, bytehex in enumerate(foo):
    #memory[0x7000+i]=int(bytehex,16)
    memory[i]=int(bytehex,16)

#The most complicated possible addressing mode we can have is "Base with Scaled Index + Displacement"
# LA = (SR) + (I)xS + (B) + A
#Linear Address, Segment Register, Index Register, Scaling factor, Base Register, Address
#youtu.be/XOnzjEd_dLg
#He gives the following example of a line of assembly that uses all of that: mov eax, [ebx * 4 + ecx + myArray]
#The Segment Register is implicit(And I'm just hardcoding DS, but there are prefixes that override this. But no hurry implementing that)
def setMem(addr, data, bytecount=1, state={}):
    addr = addr + regs["DS"] #We add our data segment offset. I set it to 0x7000 above just.
    if bytecount > 1:
        for i, d in enumerate(data):
            memory[addr+i] = d
    else:
        memory[addr] = data

def getMem(addr, bytecount=1, state={}):
    addr = addr + regs["DS"] #We add our data segment offset.
    if bytecount > 1:
        data = ((memory[addr+i] if ((addr + i) in memory) else 0xff) for i in range(bytecount))

debug = False
def dprint(*foo):
    if debug:
        print(foo)
def vprint(*foo):
    if debug:
        print(foo)
    else:
        print(foo)
        raise Exception("Not Implemented")

import time
def fetch():
    while True:
        #time.sleep(0.5)
        IP = regs["IP"]
        regs["IP"] = regs["IP"] + 1
        dprint(memory[IP])
        print("fetching a byte!", hex(memory[IP]))
        dprint("fetching a byte!", hex(memory[IP]))
        yield memory[IP]

opcodes = fetch()


dprint(memory)

#Okay, so now for some sections handling these needed functions
#NOT_IMPLEMENTED
def NOT_IMPLEMENTED(state):
    vprint(state)

def NOT_IMPLEMENTED_YET(state):
    vprint(state)

#MODRM_EXTENSIONS!!

#Branching:
#Jumps(But most of these I'm handling separately), LOOPNZ, LOOPZ, LOOP, JECXZ
def LOOPNZ(state):
    vprint(state)

def LOOPZ(state):
    vprint(state)

def LOOP(state):
    vprint(state)

def JECXZ(state):
    vprint(state)

def CONDITIONAL_JMP(state):
    vprint(state)

#Control Flow:
#CALL, JMP, HLT, CALLF, WAIT, RET, RETN, RETF, INT3/INT/INTO/IRET
def CALL(state):
    vprint(state)

def JMP(state):
    target = state["op1"]()
    dprint("JUMP, JUMP, JUMP, JUMP,",target, state)
    regs["IP"] = target
    #vprint(state)

def JMPF(state):
    vprint(state)

def HLT(state):
    vprint(state)

def CALLF(state):
    vprint(state)

def WAIT(state):
    vprint(state)

def RET(state):
    vprint(state)

def RETN(state):
    vprint(state)

def RETF(state):
    vprint(state)

def INT3(state):
    vprint(state)

def INT(state):
    val = state["op1"]()
    if val == 0x10:
        print(chr(regs["EAX"] >> 24)) #Print AL

def INTO(state):
    vprint(state)

def IRET(state):
    vprint(state)

#Status control
#CMC, CLC, STC, CLI, STI, CLD, STD, SAHF, LAHF

def CMC(state):
    vprint(state)

def CLC(state):
    vprint(state)

def STC(state):
    vprint(state)

def CLI(state):
    vprint(state)

def STI(state):
    vprint(state)

def CLD(state):
    vprint(state)

def STD(state):
    vprint(state)

def SAHF(state):
    vprint(state)

def LAHF(state):
    vprint(state)

#Decimal Arithmetic(I can probably skip these? I think this was a 70s programmer thing)
#DAA, AAS, AAA, DAA

def DAA(state):
    vprint(state)

def AAS(state):
    vprint(state)

def AAA(state):
    vprint(state)

def DAA(state):
    vprint(state)

#Bit operations
#TEST

def TEST(state):
    vprint(state)

def ROL(state):
    vprint(state)

def ROR(state):
    vprint(state)

def RCL(state):
    vprint(state)

def RCR(state):
    vprint(state)

def SHL(state):
    vprint(state)

def SHR(state):
    vprint(state)

def SAL(state):
    vprint(state)

def SAR(state):
    vprint(state)

#LOGIC
#AND, OR, XOR

def AND(state):
    vprint(state)

def OR(state):
    vprint(state)

def XOR(state):
    vprint(state)

#Arithmetic
#ADD, ADC, SBB, SUB, INC, DEC, IMUL

def ADD(state):
    state["op1"](state["op1"]() + state["op2"]())
    dprint(state)

def ADC(state):
    vprint(state)

def SBB(state):
    vprint(state)

def SUB(state):
    vprint(state)

def INC(state):
    vprint(state)

def DEC(state):
    vprint(state)

def IMUL(state):
    vprint(state)

#Compare
#CMP

def CMP(state):
    vprint(state)

#Input/Output
#IN, OUT, INS, OUTs

def IN(state):
    vprint(state)

def OUT(state):
    vprint(state)

def INS(state):
    vprint(state)

def OUTS(state):
    vprint(state)

#Strings #Why is this a thing?
#MOVS, CMPS, STOS, LODS, SCAS

def MOVS(state):
    vprint(state)

def CMPS(state):
    vprint(state)

def STOS(state):
    vprint(state)

def LODS(state):
    vprint(state)

def SCAS(state):
    vprint(state)

#Stack Access
#PUSH, PUSHA, POP, POPA, PUSHF, POPF, ENTER, LEAVE

def PUSH(state):
    vprint(state)

def PUSHA(state):
    vprint(state)

def POP(state):
    vprint(state)

def POPA(state):
    vprint(state)

def PUSHF(state):
    vprint(state)

def POPF(state):
    vprint(state)

def ENTER(state):
    vprint(state)

def LEAVE(state):
    vprint(state)

#Moving Data
#XCHG, MOV, LEA, LDS, LES, XLAT

def XCHG(state):
    vprint(state)

def MOV(state):
    state["op1"](state["op2"]())
    return state

def LEA(state):
    vprint(state)

def LDS(state):
    vprint(state)

def LES(state):
    vprint(state)

def XLAT(state):
    vprint(state)

#Miscellaneous
def DAS(state):
    vprint(state)
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

def MODRM_OPEXT_80(state):
    vprint(state)

def MODRM_OPEXT_81(state):
    dprint(state)
    state = MODRM(state)
    op = MODRM_OPEXT["81"][state["reg"]]
    oplist = [RM1632, IMM1632, op]
    execute(oplist, state)

def MODRM_OPEXT_82(state):
    vprint(state)

def MODRM_OPEXT_83(state):
    vprint(state)

def MODRM_OPEXT_C0(state):
    vprint(state)

def MODRM_OPEXT_C1(state):
    vprint(state)

def MODRM_OPEXT_D0(state):
    vprint(state)

def MODRM_OPEXT_D1(state):
    vprint(state)

def MODRM_OPEXT_D2(state):
    vprint(state)

def MODRM_OPEXT_D3(state):
    vprint(state)

def MODRM_OPEXT_F6(state):
    vprint(state)

def MODRM_OPEXT_F7(state):
    vprint(state)

def MODRM_OPEXT_FE(state):
    vprint(state)

def MODRM_OPEXT_FF(state):
    vprint(state)

#Prefixes
#26, 2E, 36, 3E, 64, 65, 66, 
def PREFIX_26(state):
    vprint(state)

def PREFIX_2E(state):
    vprint(state)

def PREFIX_36(state):
    vprint(state)

def PREFIX_3E(state):
    vprint(state)

def PREFIX_64(state):
    vprint(state)

def PREFIX_65(state):
    vprint(state)

def PREFIX_66(state):
    vprint(state)

def PREFIX_F0(state):
    vprint(state)

def PREFIX_F2(state):
    vprint(state)

def PREFIX_F3(state):
    vprint(state)

#Regs and Constants
#EAX, AX, AL, AH, CS, ES, DS, SREG, DX, EBP, ECX
#A,C,D,B,SP,BP,SI,DI

#Defining a word size to be the width according to the processor mode(real or protected)
def readWordFromInstructionPointer():
    width = 4 if regs["CR0"]["PE"] else 2
    val = sum(next(opcodes) << (i*8) for i in range(width)) 
    return val

#ALAH-AX---EAX
def AL(state):
    def addr(v=False):
        if(v):
            regs["EAX"] = ((v & 0xff) << 24) + (regs["EAX"] & 0x00ffffff)
        return regs["EAX"] >> 24
    #key = [x for x in ("op1","op2","op3") if x not in state][0]
    return addr

def AH(state):
    def addr(v=False):
        if(v):
            regs["EAX"] = (regs["EAX"] & 0xff000000) + ((v & 0xff) << 16) + (regs["EAX"] & 0xff)
        return (regs["EAX"] >> 16) & 0xff
        #Makes for a fun comparison between slicing and bit manipulation.
        #if(v):
        #    regs["EAX"] = regs["EAX"][:8] + v + regs["EAX"][16:]
        #return regs["EAX"][8:16]
    #key = [x for x in ("op1","op2","op3") if x not in state][0]
    return addr

def AX(state):
    vprint(state)

def EAX(state):
    vprint(state)

def CL(state):
    vprint(state)

def CH(state):
    vprint(state)

def CX(state):
    vprint(state)

def ECX(state):
    vprint(state)

def DL(state):
    vprint(state)

def DH(state):
    vprint(state)

def DX(state):
    vprint(state)

def EDX(state):
    vprint(state)

def BL(state):
    vprint(state)

def BH(state):
    def addr(v=False):
        if(v):
            regs["EBX"] = (regs["EBX"] & 0xff000000) + ((v & 0xff) << 16) + (regs["EBX"] & 0xff)
        return (regs["EBX"] >> 16) & 0xff
    return addr
    #vprint(state)

def BX(state):
    def addr(v=False):
        if(v):
            regs["EBX"] = (v << 16) + (regs["EAX"] & 0x0000ffff)
        return regs["EBX"] >> 16
    return addr
    vprint(state)

def EBX(state):
    vprint(state)

def SP(state):
    vprint(state)

def ESP(state):
    vprint(state)

def BP(state):
    vprint(state)

def EBP(state):
    vprint(state)

def SI(state):
    vprint(state)

def ESI(state):
    vprint(state)

def DI(state):
    vprint(state)

def EDI(state):
    vprint(state)

def CS(state):
    vprint(state)

def ES(state):
    vprint(state)

def DS(state):
    vprint(state)

def SREG(state):
    vprint(state)

regmap8 = [AL, CL, DL, BL, AH, CH, DH, BH] #A bit of trivia. In long mode with REX prefix, the latter four change.
regmap16 = [AX, CX, DX, BX, SP, BP, SI, DI]
regmap32 = [EAX, ECX, EDX, EBX, ESP, EBP, ESI, EDI]

#Addressing Modes:
#MODRM, R8, R1632, RM8, RM16, RM1632, IMM8, IMM16, IMM1632, M8, M16, M, MOFFS8, MOFFS1632, REL8, REL1632, PTR161632
def R8(state):
    reg = regmap8[state["rm"]]
    state["rm"] = state["reg"] 
    return reg(state)
    #vprint(state)

def R1632(state):
    vprint(state)

def RM8(state):
    dprint("RM8:",state)
    if state["mod"] == 0b11: #register-direct
        #reg = regmap32[state["rm"]] if regs["CR0"]["PE"] else regmap16[state["rm"]]
        reg = regmap8[state["rm"]]
        state["rm"] = state["reg"] 
        return reg(state)
    elif state["mod"]==0b00:#register-indirect addressing, no disp. (i.e. the register stores a memory address)
        reg_wrapper = regmap8[state["rm"]]
        reg = reg_wrapper(state)
        address = reg()#Explanation: I set up my register functions to work with my main execute pipeline. So it looks a little clumsy here.
        def addr(v=False):
            if(v):
                setMem(address, v, state=state)
            return getMem(address,1)
        state["rm"] = state["reg"]
        return addr
    elif state["mod"]==0b01: #register-indirect addressing with disp8(
        reg_wrapper = regmap8[state["rm"]] 
        reg = reg(state) #01 indicates that this is register-indirect addressing.
        address = reg()
        disp = next(opcodes)
        def addr(v=False):
            if(v):
                setMem(address, v, state=state, disp=disp)
            return getMem(address,1)
        state["rm"] = state["reg"] 
        return addr
    else:
        vprint(state)
    
    dprint(state)
    vprint(state)

def RM16(state):
    vprint(state)

        #When there are two registers encoded in the MODRM byte, the MOD value is used for the second one. I don't want these functions to be keeping track of if their first or second so instead I simply update state.
def RM1632(state):
    if state["mod"] == 0b11: #If this is true, then we know we're referencing a register.
        reg = regmap32[state["rm"]] if regs["CR0"]["PE"] else regmap16[state["rm"]]
        state["rm"] = state["mod"] 
        return reg(state)
    else:
        vprint(state)
    dprint(state)

def IMM8(state):
    def addr():
        return next(opcodes)
        #return next(opcodes)
        
    #key = [x for x in ("op1","op2","op3") if x not in state][0]
    dprint(state)
    return addr

def IMM16(state):
    vprint(state)

def IMM1632(state):
    dprint("barbarbar")
    #def imm():
    #    return readWordFromInstructionPointer()
    #return imm
    return readWordFromInstructionPointer
    #vprint(state)

def M8(state):
    vprint(state)

def M16(state):
    vprint(state)

def M161632(state):
    vprint(state)

def M(state):
    vprint(state)

#MOFFS8 is a no-MODRM straight up reference
#The number of bytes to read is based on the mode we're in! In 16 bit mode, you read 2 bytes. In 32, you'd read 4.
#TODO:I am somewhat puzzled why this is called MOFFS8. I think it's because this is only paired with operations that move 8 bits?(e.g. from/to AL/AH)
def MOFFS8(state):
    def addr(v=False):
        #address = next(opcodes)
        address = readWordFromInstructionPointer()
        #print(memory)
        if v:
            setMem(address, v, state=state)
            #memory[address] = v
        else:
            return getMem(address, v, state=state)
        #return memory[address]#just grabbing one byte. This will be more complicated next time.
    #key = [x for x in ("op1","op2","op3") if x not in state][0]
    return addr
    vprint(state)

def MOFFS1632(state):
    vprint(state)

def REL8(state):
    def addr():
        instruction_pointer = regs["IP"]#Note IP quietly increments during next(opcodes)
        unsigned= next(opcodes)
        signed = -(unsigned ^ 0b11111111) if (unsigned >> 7) else unsigned
        return instruction_pointer + signed
    return addr
    #vprint(state)

def REL1632(state):
    vprint(state)

def PTR161632(state):
    vprint(state)

#And finally MODRM
#A critical thing to understand about MODRM is that the final field(the RM field) is always the FIRST register to be used.
#When the MODRM field is describing two registers, then the REG field is used for the second register.
#And while it took a bit of looking around to confirm this, a mod value of 11 ALWAYS indicates that you're using modrm for registers.
def MODRM(state):
    modrmbyte = next(opcodes)
    mod = modrmbyte >> 6 #When Mod is 11, then we have direct addressing. Other values indicate indirect(displaced) addressing.
    reg = (modrmbyte >> 3) & 0x07
    rm = modrmbyte & 0x07
    dprint(mod,reg,rm,hex(modrmbyte))
    dprint(state)
    return {"mod":mod,"reg":reg,"rm":rm}

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
    val = opcode & 0x0f
    reg = regmap32[val%8] if regs["CR0"]["PE"] else regmap16[val%8]#hardcoded to 32bit for now
    op = DEC if val // 8 else INC
    execute([R1632, op])

def FIVE_OP(opcode):
    val = opcode & 0x0f
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
    #print("executestart",state)
    dprint(mnemonic)
    state["mnemonic"] = mnemonic
    i = 1
    for piece in mnemonic:
        dprint("Now Playing:",piece)
        retval = piece(state)
        dprint("retval",retval)
        if isinstance(retval, dict):
            state = {**state, **retval}
        elif callable(retval):
            state["op" + str(i)]=retval
            i = i + 1

        dprint("executeloop", state)
        #key = [x for x in ("op1","op2","op3") if x not in state][0]
        #state[key]=retval

    #return state
    state = {} #when this execute loop finishes, then we are -done-. Clear state.

for opcode in opcodes:
    input()
    dprint(opcode)
    dprint([hex(regs[x]) for x in regs if x not in ("CR0")])
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
