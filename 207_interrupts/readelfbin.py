from pprint import pprint
def btoi(b):
    return int.from_bytes(b, "little")

def btoh(b):
    return int.from_bytes(b, "little")

def readelf(b):

  eh = { 
      "EI_MAG":b[0:4], "EI_CLASS":b[4:8], "EI_VERSION":b[6:10],
      "NothingAtAll":b[10:16], "type":b[16:18], "machine":b[18:20],
      "version":b[20:24], "entry":b[24:28], "phoff":b[28:32], "shoff":b[32:36],
      "NothingAtAll2":b[36:40], "ehsize":b[40:42], "phentsize":b[42:44],
      "phnum":b[44:46], "shentsize":b[46:48], "shnum":b[48:50], 
      "shstrndx":b[50:52] }

  parseHeader = lambda hb: { 
      "name":hb[0:4], "type":hb[4:8], "flags":hb[8:12], "address":hb[12:16],
      "offset":hb[16:20], "size":hb[20:24], "link":hb[24:28], "info":hb[28:32],
      "addralign":hb[32:36], "entsize":hb[36:40] }

  shentsize = btoi(eh["shentsize"]) 
  shnum = btoi(eh["shnum"]) 
  shoff = btoi(eh["shoff"]) 

  bheaders = [b[shoff+inx*shentsize:shoff+(inx+1)*shentsize] for inx in range(shnum)]
  sheaders = list(map(parseHeader,bheaders))
    
  #Type 3 in the section header table indicates a string table section
  shstrtabheader, strtabheader = filter(lambda sh:sh["type"]==b"\x03\x00\x00\x00", sheaders)

  strtaboff = btoi(strtabheader["offset"])
  strtabsize = btoi(strtabheader["size"])

  shstrtaboff = btoi(shstrtabheader["offset"])
  shstrtabsize = btoi(shstrtabheader["size"])

  shstrb = b[shstrtaboff:shstrtaboff+shstrtabsize]
  strtabb = b[strtaboff:strtaboff+strtabsize]
  sbin = {}
  for sheader in sheaders:
      inx = btoi(sheader["name"])
      name = shstrb[inx:].split(b"\x00")[0]
      sheader["name"] = name or b'<null>'
      if sheader["name"] in (b".data",b".text",b".rodata"):
          offset = btoi(sheader["offset"])
          sbin[sheader["name"]]=b[offset:offset+btoi(sheader["size"])]


  shstrtab = b[shstrtaboff:shstrtaboff+shstrtabsize].split(b"\x00")
  strtab = b[strtaboff:strtaboff+strtabsize].split(b"\x00")

  symtabheader = next(x for x in sheaders if x["type"] == b"\x02\x00\x00\x00")
  symtaboff = btoi(symtabheader["offset"]) 
  symtabsize = btoi(symtabheader["size"])
  symtabentsize = btoi(symtabheader["entsize"])

  parseSymTabEnt = lambda stehex: { "name": stehex[0:4], 
    "value": stehex[4:8], "size": stehex[8:12], "info": stehex[12:13], 
    "other": stehex[13:14], "shndx": stehex[14:16] }

  symtabbinents = [b[symtaboff+x*symtabentsize:symtaboff+(x+1)*symtabentsize] 
          for x in range(symtabsize // symtabentsize)]

  symtabents = list(map(parseSymTabEnt, symtabbinents))

  for symtabent in symtabents:
      if symtabent["info"] in (b"\x03",b"\x02",b"\x00"):
          symtabent["sheadername"] = sheaders[btoi(symtabent["shndx"])]["name"]
      if symtabent["info"] == b"\x03":
          symtabent["name"] = symtabent["sheadername"]
      else:
          inx = btoi(symtabent["name"])
          name = strtabb[inx:].split(b"\x00")[0]
          symtabent["name"] = name or b"<none>"

  parseRelTabEnt = lambda bent: { "offset":bent[0:4], "info":bent[4:8],
          "type":bent[4:5], "sym":symtabents[btoi(bent[5:6])]["name"] }

  REL_SECTION = 9
  i = (h for h in sheaders if btoi(h["type"]) == REL_SECTION)
  e = next(i, None)
  relentss = {}
  while e != None:
      offset = btoi(e["offset"])
      entsize = btoi(e["entsize"])
      size = btoi(e["size"])
      reltabbents = [b[offset+inx*entsize:offset+(inx+1)*entsize]
              for inx in range(size//entsize)]
      relents = [parseRelTabEnt(bent) for bent in reltabbents]
      relentss[e["name"]] = relents
      e = next(i, None)


  return {"b":b, "sbin":sbin, "relentss":relentss, "sheaders":sheaders,
          "eh":eh, "symtabents":symtabents}

def printsymtabents(symtabents):
    print("\n\nSymtab:")
    print(("{: <23}"*6).format(*symtabents[0].keys()))
    for symtabent in symtabents:
        vals = [x for x in symtabent.values()]
        print(("{: <23}" + "{: <23}"*5).format(vals[0].decode()[:20], *(btoi(x) for x in vals[1:])))
    print("Note: Certain Ndx values above 0xff00(>65280) are special indexes")
    print("0xfff2(65522) is SHN_COMMON, indicating certain uninitialized global vars")
    print("0xfff1 is SHN_ABS. ABS entries have absolute values and are unaffected by relocation")
    print("0 is SHN_UNDEF, meaning undefined")

def printsheaders(sheaders):
    print("\n\nSheaders(numbers in decimal for now):")
    print(("{: <16}"*10).format(*sheaders[0].keys()))
    for sheader in sheaders:
      vals = [x for x in sheader.values()]
      print(("{: <16}"*10).format(vals[0].decode()[:16],*(btoi(x) for x in vals[1:])))

def printrelentss(relentss):
    for relsec, relents in relentss.items():
        print(("Relocation section '{}' contains {} entry:").format(relsec,len(relents)))
        print(("{: <20}"*4).format("offset","info","type","sym"))
        for relent in relents:
            print(("{: <20}"*4).format(btoi(relent["offset"]),btoi(relent["info"]),btoi(relent["type"]),relent["sym"].decode()))

#Step 1: Set absolute offsets, the offsets that all the object files individual sections will have in the final linked executable.
#These are needed for calculating our relocations.
absoluteoffs = {}
def setAbsoluteOffsets(sheaderName, elfs, PC):
    global absoluteoffs
    for elf in elfs:
        section = next((x for x in elf["sheaders"] if x["name"] == sheaderName), None)
        if section:
            #if not "absoluteoffs" in elf:
            #    elf["absoluteoffs"] = {}
            #elf["absoluteoffs"][sheaderName] = PC
            absoluteoffs[elf["symtabents"][1]["name"] + sheaderName] = PC
            section["absoluteoff"] = PC
            PC += btoi(section["size"])

    return PC

#Step 2: Get all the global symbols from the various object files being linked so we can match them during relocation below.
def getGlobalSymbols(elfs, PC):
    globalsymbols = {}
    commonsymbols = {}
    for elf in elfs:
        globalsyments = [ent for ent in elf["symtabents"] if ((btoi(ent["value"]) != 0) or (btoi(ent["size"]) != 0)) and btoi(ent["shndx"]) < 2000]
        thiselfsglobalsymbols = {ent["name"]:elf["sheaders"][btoi(ent["shndx"])]["absoluteoff"] + btoi(ent["value"]) for ent in globalsyments}
        for commonsymbolent in (ent for ent in elf["symtabents"] 
                if ent["shndx"]== b"\xf2\xff" and ent["name"] not in globalsymbols):
            print(commonsymbolent["name"],"beforePC", hex(PC))
            commonsymbols[commonsymbolent["name"]] = PC
            align = btoi(commonsymbolent["value"])
            PC += align - (PC % align)
            PC += btoi(commonsymbolent["size"]) 
            print("afterPC", hex(PC))
        print([(x[0],hex(x[1])) for x in commonsymbols.items()])
        globalsymbols = {**globalsymbols, **thiselfsglobalsymbols, 
                **commonsymbols}
    return globalsymbols, PC

#relentName examples: .rel.text, .rel.rodata. 
#So this is the function that should actually do the work of updating sbin with the new reference locations.
#.rel.text would update the references(locations) in .text
#Precondition: We'll need to have run setAbsoluteOffsets above, which does a shallow loop through all the elf files to 
#determine what the offsets of all the files' sections will be in the final output executable. That information is vital to our relocation.
#We'll also need to getGlobalSymbols, so we can look up the locations of global symbols if the reference is global.
def relocate(elf, relentName, globalsymbols={}):
    for relent in elf["relentss"][relentName]:
        inx = relent["info"][1]
        symtabent = elf["symtabents"][inx]
        shndx = btoi(symtabent["shndx"])
        offset = btoi(relent["offset"])
        before = elf["sbin"][relentName[4:]][offset:offset+4] #The first slice turns .rel.text to .text. The second slice grabs the existing 32-bit value.
        #(I'm hardcoding to 32-bit reference for this toy linker.
        
        #If we don't have shndx=0 or high value shndx(which would indicate a global symbol),
        #then we know that we're referencing a spot in a section from this elf file.
        if(shndx > 0 and shndx < 20000): 
            absoluteoff = elf["sheaders"][shndx]["absoluteoff"]
            #Our relent indicates a symbol(either a section or a function/var name). We then use the shndx from that symbol entry to look up that section offset.
            #Here is the most important moment. Correctly determining "after". 
            after = absoluteoff + btoi(symtabent["value"])
            #Under certain circumstances, I need to add the existing relocation contents(the "before") to the "after" that I will replace it with.
            #I think this happens always iff type is 1.
        else:
            #An error here indicates an unresolved link.
            after = globalsymbols[symtabent["name"]]
        if relent["type"] == b'\x01': 
            after += btoi(before) #R_386_32, I think it works this way
        else: #R_386_PC32. Our address needs to be relative rather than absolute. 
            #print(elf["sheaders"][shndx])
            #print(symtabent)
            sourcesection = next(x for x in elf["sheaders"] if x["name"] == relentName[4:])
            absoluteoff = sourcesection["absoluteoff"]
            #The -4 bytes is needed because our offset needs to be from the end of instruction, not the beginning
            after -= absoluteoff + offset + 4 #R_386_PC32 means that we're doing a relative reference. Sectionoff + sectionsymboloff.
        #print(relent, "before", before, "after", hex(after))
        #And finally, the relocation. (Yes, there are much more efficient ways of doing this)
        elf["sbin"][relentName[4:]] = (elf["sbin"][relentName[4:]][:offset]
                                    + after.to_bytes(4,"little",signed=True)
                                    + elf["sbin"][relentName[4:]][offset+4:])

def prepare(fnames):
    PC = 0x1000
    elfs=[readelf(open(fname,"rb").read()) for fname in fnames]
    PC = setAbsoluteOffsets(b".text", elfs, PC)
    PC = setAbsoluteOffsets(b".rodata", elfs, PC)

    PC = ((PC + 0x1000) // 0x1000) * 0x1000
    PC = setAbsoluteOffsets(b".data", elfs, PC)
    
    #I might need to do .bss later, because COMMON symbols might actually
    #be initialized in other objects. But for now, I'll stick with this.
    #(Also, it works a little differently figuring out the bss section size.)
    #For example, the main IDT interrupts table is 2048 bytes, the symbol
    #being of ndx type COM(common). But this isn't reflected in the .bss size
    #in that file. For just a second, imma skip that.
    setAbsoluteOffsets(b".bss", elfs, PC)
    globalsymbols, PC = getGlobalSymbols(elfs, PC)
    print("finalPC:",hex(PC))
    for elf in elfs:
        if b".rel.text" in elf["relentss"]:
            relocate(elf, b".rel.text", globalsymbols)
        if b".rel.rodata" in elf["relentss"]:
            relocate(elf, b".rel.rodata", globalsymbols)
        if b".rel.data" in elf["relentss"]:
            relocate(elf, b".rel.data", globalsymbols)
    return elfs, globalsymbols

if __name__ == "__main__":
    import sys
    args = iter(sys.argv[1:])
    parsedargs = [(arg,next(args)) if "--" in arg else arg for arg in args]
    fnames = [x for x in parsedargs if type(x) is not tuple]
    print(fnames)

    elfs, globalsymbols = prepare(fnames)
            
    out = b""
    for sheader in (b".text",b".rodata",b".data",b".bss"):
        for i, elf in enumerate(elfs): 
            if sheader == b".data" and i == 0:
                align1k = (((len(out) + 0x1000) // 0x1000) * 0x1000)
                padding = align1k - len(out)
                out += b"\x00" * padding
            if sheader in elf["sbin"]:
                out += elf["sbin"][sheader]

    f = open("out","wb")
    f.write(out)
    f.close() #annnd scene.



'''
PC = 0x1000 #Hardcoding Ttext 0x1000
setAbsoluteOffsets(b".text", elfs, PC)
setAbsoluteOffsets(b".rodata", elfs, PC)
endReadSegment = PC
startWriteSegment = (((PC + 0x1000) // 0x1000) * 0x1000)
PC = startWriteSegment
setAbsoluteOffsets(b".data", elfs, PC)
globalsymbols = getGlobalSymbols(elfs)
setAbsoluteOffsets(b".bss", elfs, PC)
'''

#f = open("cpu/isr.o", "rb")
#elf = readelf(f.read())

#printsymtabents(elf["symtabents"])

#relocationtargets = []


#R_Type = ((uint8_t)(INFO))
#PC = Program Counter
#R_386_PC32 == 2    //Symbol + Offset - Section Offset
#R_386_32   == 1    //Symbol + Offset //Example, .rodata(final)+000000e8

#relocationtargets.extend([(rel["sym"], btoi(rel["offset"])) for rel in elf["relentss"][b".rel.data"]])

#print(relocationtargets)
#fnames = ("cpu/isr.o", "cpu/idt.o", "drivers/keyboard.o")
#elfs = [readelf(open(fname,"rb").read()) for fname in fnames]

#At this point, we know where we'll be placing all of the text and rodata sections. Step 2 is to place our global symbols. Any SHN_Common symbols that haven't been yet allocated will then need to be allocated in .bss. For the time being, I'll just assume all SHN_Common is zero-initialized in .bss, since I don't have a contrary example.
