#for great justice, efbeadde -> deadbeef
def unendian(endianed):
    from functools import reduce
    return reduce(
            lambda acc,cur:acc+cur,
            [x+y for x,y in zip(endianed, endianed[1:])][::-2],
            "")
    return reduced

#[iterable]*n = [iterable,iterable,iterable]. zip(*["foo","bar","bat"])=zip("foo","bar","bat")
#list(zip("foo","bar","bat")) == [('f','b','b'),('o','a','a'),('o','r','t')]
#''.join(('f','b','b')) == "fbb"
#Zip interleaves("zips together") the elements of its parameters.
#When those parameters are references to the same iterable, then we get the desired behavior of zip taking n elements at a time,
#since it's popping the elements off that iterable. Since map in python3 is also an iterator, the return value of this function is a stream too.
def n_split_iter(iterable, n):
    return map(''.join, zip(*[iterable]*n))
    
def readelf(fname, verbose=False):
    
    def vprint(*foo):
        if verbose:
            print(*foo)

    f = open(fname, "rb")
    print(fname)
    #f = open("kernel/kernel.o", "rb")
    b = f.read() #read the binary
    h = b.hex()
    
    vprint(h)
    vprint(len(h))
    
    elf_header = {
            "EI_MAG":h[0:8],
            "EI_CLASS":h[8:12],
            "EI_VERSION":h[12:20],
            "NothingAtAll":h[20:32],
            "type":h[32:36],
            "machine":h[36:40],
            "version":h[40:48],
            "entry":h[48:56],
            "phoff":h[56:64],
            "shoff":h[64:72],
            "NothingAtAll2":h[72:80],
            "ehsize":h[80:84],
            "phentsize":h[84:88],
            "phnum":h[88:92],
            "shentsize":h[92:96],
            "shnum":h[96:100],
            "shstrndx":h[100:104]
            }
    
    vprint("All values are in hex unless noted otherwise.")
    vprint("Keep in mind endianness for some of these.")
    for k in elf_header:
        vprint(("{: <23}{: <23}").format(k, (unendian(elf_header[k]).lstrip('0') or '0') if k != "EI_MAG" else elf_header[k]))
        #vprint(k, ": ", elf_header[k])
    
    shentsize = int(unendian(elf_header["shentsize"]),16) * 2#I have a hex string, and each byte is 2 hex. Hence, * 2
    shnum = int(unendian(elf_header["shnum"]),16)
    shoff = int(unendian(elf_header["shoff"]),16) * 2#I have a hex string and each byte is 2 hex. Hence, * 2.
    
    #vprint("shentsize:",shentsize,", shnum:",shnum,", shoff:",shoff)
    
    def parseHeader(headerhex):
        return {
                "name":unendian(headerhex[0:8]),
                "type":unendian(headerhex[8:16]),
                "flags":unendian(headerhex[16:24]),
                "address":unendian(headerhex[24:32]),
                "offset":unendian(headerhex[32:40]),
                "size":unendian(headerhex[40:48]),
                "link":unendian(headerhex[48:56]),
                "info":unendian(headerhex[56:64]),
                "addralign":unendian(headerhex[64:72]),
                "entsize":unendian(headerhex[72:80]),
                }
    
    #sheaders = [parseHeader(h[shoff+x*shentsize:shoff+(x+1)*shentsize]) for x in range(shnum)]
    shexheaders = [h[shoff+x*shentsize:shoff+(x+1)*shentsize] for x in range(shnum)]
    sheaders = [parseHeader(hexheader) for hexheader in shexheaders]
    
    shstrtabheader, strtabheader = (x for x in sheaders if int(x["type"],16) == 3) #A type value of 3 indicates strtab.
    #Unfortunately, it seems there is no other way to determine shstrtab from strtab except for which one comes first. 
    #Ah, actually there's a value in the header that helps to indicate which is the shstrtab.
    shstrtaboff = int(shstrtabheader["offset"], 16) * 2#Again, we need to double the offset since I'm indexing into a hex array instead of a byte array.
    shstrtabsize = int(shstrtabheader["size"], 16) * 2#And again
    
    strtaboff = int(strtabheader["offset"], 16) * 2#again
    strtabsize = int(strtabheader["size"], 16) * 2#again
    #vprint(h[strtaboff:strtaboff+strtabsize])
    
    shstrhex = h[shstrtaboff:shstrtaboff+shstrtabsize]
    strtabhex = h[strtaboff:strtaboff+strtabsize]
    shex = {} #A dictionary to store the actual code for relevant sections.
    
    vprint("\n\nSheaders:")
    vprint('shoff:','0x'+unendian(elf_header["shoff"]).lstrip('0'),*('\n'+hexheader for hexheader in shexheaders))
    vprint(("{: <16}"* 10).format(*sheaders[0].keys()))
    for sheader in sheaders:
        #First, we need to replace the index value that we currently have as our header name with the name from shstr
        inx = int(sheader["name"],16)
        name = shstrhex[inx*2:].split('00',1)[0] #Again, we need inx*2 to reference into shstr because we're looking through a hex string, not bytes.
        sheader["name"] = bytearray.fromhex(name).decode() or '<null>'
        if sheader["name"] in (".data",".text"):
            offset = int(sheader["offset"],16)*2
            shex[sheader["name"]]=h[offset:offset+int(sheader["size"], 16)*2]
            print(shex[sheader["name"]],sheader["name"])

        vals = ((v.lstrip('0') or '0') for v in sheader.values())
        vprint(("{: <16}"* 10).format(*vals))

    take2 = lambda iterstring: next(iterstring, '0') + next(iterstring, '0')
    
    shstrtab = [bytearray.fromhex(s).decode() for s in h[shstrtaboff:shstrtaboff+shstrtabsize].split("00")]
    print(h[strtaboff:strtaboff+strtabsize].split("00"))

    ih = iter(h[shstrtaboff:shstrtaboff+shstrtabsize])
    def takeTill00(took2): return (took2 + takeTill00(take2(ih))) if (took2 and took2 != '00') else ''
    #strtab = [bytearray.fromhex(s).decode() for s in h[strtaboff:strtaboff+strtabsize].split("00")]
    strtab = [bytearray.fromhex(s).decode() for s in [takeTill00(x + next(ih)) for x in ih]]
    #print(strtab)
    #symtab = [bytearray.fromhex(s).decode() for s in h[symtaboff:symtaboff+symtabsize].split("00")]
    
        
    symtabheader = next(x for x in sheaders if int(x["type"],16) == 2) #A type value of 2 indicates symtab.
    symtaboff = int(symtabheader["offset"], 16) * 2#again
    symtabsize = int(symtabheader["size"], 16) * 2#again
    symtabentsize = int(symtabheader["entsize"],16) * 2#again
    #symtab = [h[symtaboff:symtaboff+symtabsize]]
    
    def parseSymTabEnt(stehex): 
        return {
            "name": unendian(stehex[0:8]),
            "value": unendian(stehex[8:16]),
            "size": unendian(stehex[16:24]),
            "info": stehex[24:26],
            "other": stehex[26:28],
            "shndx": unendian(stehex[28:32]),
            }
    
    symtabhexents = [h[symtaboff+x*symtabentsize:symtaboff+(x+1)*symtabentsize] for x in range(symtabsize // symtabentsize)]
    #symtabents = [parseSymTabEnt(h[symtaboff+x*symtabentsize:symtaboff+(x+1)*symtabentsize]) for x in range(symtabsize // symtabentsize)]
    symtabents = [parseSymTabEnt(hexent) for hexent in symtabhexents]
    vprint("\n\nSymtab:")
    vprint(*('\n'+hexent for hexent in symtabhexents))
    vprint(("{: <23}"*6).format(*symtabents[0].keys()))
    for symtabent in symtabents:
        if symtabent["info"][-1] in ("3","2","0"):
            symtabent["sheadername"] = sheaders[int(symtabent["shndx"], 16)]["name"]
        if symtabent["info"][-1] == "3":
            #symtabent["name"] = sheaders[int(symtabent["shndx"], 16)]["name"]
            symtabent["name"] = symtabent["sheadername"]
        else:
           inx = int(symtabent["name"],16)
           name = strtabhex[inx*2:].split('00',1)[0]
           symtabent["name"] = bytearray.fromhex(name).decode() or '<none>'
        vals = ((v.strip('0') or '0') for v in symtabent.values())
    
        #vprint(symtabent.values())
        vprint(("{: <23}" + "{: <23}"*5).format(*vals))
    
    
    #tab = n_split_iter(iter(h[symtaboff:symtaboff+symtabsize]), symtabentsize)
    #vprint(*('\n'+x for x in tab))
    #vprint(*('\n'+h[symtaboff+x*symtabentsize
    #According to objdump, this should be .text. Right now, the above code isn't able to properly parse that name.
    #assert symtabents[2]["name"] != '<null>'
    
    vprint('\n\nRel Tables:')
    
    REL = "9"
    i = (h for h in sheaders if h["type"].lstrip('0') == REL)
    e = next(i,None)
    relentss = {}
    while e != None:
        #vprint(e)
        offset = int(e["offset"],16)*2#Again, since we have a string of hex chars.
        entsize = int(e["entsize"],16)*2
        size = int(e["size"],16)*2
        reltabhexents = [h[offset+x*entsize:offset+(x+1)*entsize] 
                            for x in range(size//entsize)]
    
        #docs.oracle.com/cd/E23824_01/html/819-0690/chapter6-54839.html
        relents = [{
            "offset":unendian(hexent[0:8]),
            "info":unendian(hexent[8:16]),
            "type":hexent[8:10],
            "sym":symtabents[int(hexent[10:12],16)]["name"], #the reltab hexent[10:12] gives the symtab entry with the right name.
            } for hexent in reltabhexents]
        relentss[e["name"]] = relents
        vprint(("Relocation section '{}' at offset {} contains {} entry:").format(e["name"],e["offset"].lstrip('0'),len(relents)))
        vprint(("{: <20}"*4).format("offset","info","type","sym"))
        vprint(*(("{: <20}"*4+'\n').format(*relent.values()) for relent in relents))
        e = next(i,None)
    
    vprint(relentss)

    return {"h":h, "shex": shex, "fname":fname, "relentss":relentss, "sheaders":sheaders, "elf_header":elf_header, "symtabents":symtabents}

def printrelentss(relentss):
    for relsec, relents in relentss.items():
        print(("Relocation section '{}' contains {} entry:").format(relsec,len(relents)))
        print(("{: <20}"*4).format("offset","info","type","sym"))
        print(*(("{: <20}"*4+'\n').format(*relent.values()) for relent in relents))

def printsymtabents(symtabents):
    print("\n\nSymtab:")
    print(("{: <23}"*6).format(*symtabents[0].keys()))
    for symtabent in symtabents:
        vals = ((v.strip('0') or '0') for v in symtabent.values())
        print(("{: <23}" + "{: <23}"*5).format(*vals))

def printsheaders(sheaders):
    print("\n\nSheaders:")
    print(("{: <16}"*10).format(*sheaders[0].keys()))
    for sheader in sheaders:
        vals = ((v.lstrip('0') or '0') for v in sheader.values())
        print(("{: <16}"* 10).format(*vals))

if __name__ == "__main__":
    import sys
    #print(sys.argv)
    args = iter(sys.argv[1:])
    parsedargs = [(arg,next(args)) if "--" in arg else arg for arg in args]
    import pprint
    retvals = {}
    offset = 0
    globalsymbols = {}
    elfs = {}
    relocationtargets = []
    shexess = []

    for fname in (x for x in parsedargs if type(x) is not tuple):
        print('-'*20 + '\n' + fname + '\n' + '-'*20)
        #retval = readelf(fname, True)
        elf = readelf(fname)
        shexess.append(elf["shex"])
        elfs[fname] = elf
        

        if ".rel.text" in elf["relentss"]:
            print(".text relent:",elf["relentss"][".rel.text"])
            #TODO: This works when I'm only using .text, but will need to be improved(moved up to the "for sheader" block) if I wanted to have this work with other sections
            relocationtargets.extend([(rel["sym"], int(rel["offset"], 16) + offset) for rel in elf["relentss"][".rel.text"]])

        printrelentss(elf["relentss"])


        for sheader in (e for e in elf["sheaders"] if e["name"] in (".text",".data")): #TODO:going to try to omit eh_frame for now.
            sheader["absoluteoffset"] = offset
            print(sheader)
            offset = offset + int(sheader["size"],16) #TODO: The way I have this set up, if it's getting size from things other than .text, things will probably break.
        #for e in [e for e in elf["symtabents"] if e["info"][-1]=='2']: #'2' is 
        
        for symtabent in elf["symtabents"]:
            if symtabent["info"][0] == '1' and int(symtabent["shndx"], 16) == 1: #0x1 means Global in the first nibble of info.
                symtabent["absoluteoffset"] = int(symtabent["value"], 16) + int(elf["sheaders"][int(symtabent["shndx"],16)]["absoluteoffset"])
                print(symtabent)
                globalsymbols[symtabent["name"]] = symtabent["absoluteoffset"] #TODO: What happens if two files have identically named functions?

        
        print(globalsymbols)
        
        #printsymtabents(elf["symtabents"])
        #printsheaders(elf["sheaders"])
    print("section hex data", shexess)
    print("section symbol data", globalsymbols)
    print("relocation targets", relocationtargets)
    text = ''.join(s[".text"] for s in shexess)
    for sym,dest in relocationtargets:
        source = globalsymbols[sym]
        print("before:",text[dest*2-12:dest*2+12])
        print("source:",source,", dest:",dest)
        off = source - (dest + 4) #Note, the +4 is because the offset needs to be from AFTER the address for the call instruction
        bytesoff = off.to_bytes(4,"little",signed=True)#yes, yes, this entire file should be in bytes. I'm still getting my mojo back.
        hexoff = bytesoff.hex()
        print(hexoff)
        text = text[:dest*2] + hexoff + text[dest*2+8:]

    #moment of truth!

    print(text)
    f = open("kernel.bin","wb")
    f.write(bytearray.fromhex(text))
    f.close()
