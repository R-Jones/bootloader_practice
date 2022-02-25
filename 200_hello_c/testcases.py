f = open("pointers.o", "rb")
b = f.read() #read the binary
h = b.hex()

print(h)
print(len(h))

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

print("All values are in hex unless noted otherwise.")
print("Keep in mind endianness for some of these.")
for k in elf_header:
    print(("{: <23}{: <23}").format(k, (unendian(elf_header[k]).lstrip('0') or '0') if k != "EI_MAG" else elf_header[k]))
    #print(k, ": ", elf_header[k])

shentsize = int(unendian(elf_header["shentsize"]),16) * 2#I have a hex string, and each byte is 2 hex. Hence, * 2
shnum = int(unendian(elf_header["shnum"]),16)
shoff = int(unendian(elf_header["shoff"]),16) * 2#I have a hex string and each byte is 2 hex. Hence, * 2.

#print("shentsize:",shentsize,", shnum:",shnum,", shoff:",shoff)

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
#print(h[strtaboff:strtaboff+strtabsize])

shstrhex = h[shstrtaboff:shstrtaboff+shstrtabsize]
strtabhex = h[strtaboff:strtaboff+strtabsize]

print("\n\nSheaders:")
print('shoff:','0x'+unendian(elf_header["shoff"]).lstrip('0'),*('\n'+hexheader for hexheader in shexheaders))
print(("{: <16}"* 10).format(*sheaders[0].keys()))
for sheader in sheaders:
    #First, we need to replace the index value that we currently have as our header name with the name from shstr
    inx = int(sheader["name"],16)
    name = shstrhex[inx*2:].split('00',1)[0] #Again, we need inx*2 to reference into shstr because we're looking through a hex string, not bytes.
    sheader["name"] = bytearray.fromhex(name).decode() or '<null>'
    vals = ((v.lstrip('0') or '0') for v in sheader.values())
    print(("{: <16}"* 10).format(*vals))

shstrtab = [bytearray.fromhex(s).decode() for s in h[shstrtaboff:shstrtaboff+shstrtabsize].split("00")]
strtab = [bytearray.fromhex(s).decode() for s in h[strtaboff:strtaboff+strtabsize].split("00")]
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
print("\n\nSymtab:")
print(*('\n'+hexent for hexent in symtabhexents))
print(("{: <23}"*6).format(*symtabents[0].keys()))
for symtabent in symtabents:
    if symtabent["info"][-1] == "3":
        symtabent["name"] = sheaders[int(symtabent["shndx"], 16)]["name"]
    else:
       inx = int(symtabent["name"],16)
       name = strtabhex[inx*2:].split('00',1)[0]
       symtabent["name"] = bytearray.fromhex(name).decode() or '<none>'
    vals = ((v.strip('0') or '0') for v in symtabent.values())

    #print(symtabent.values())
    print(("{: <23}" + "{: <23}"*5).format(*vals))


#tab = n_split_iter(iter(h[symtaboff:symtaboff+symtabsize]), symtabentsize)
#print(*('\n'+x for x in tab))
#print(*('\n'+h[symtaboff+x*symtabentsize
#According to objdump, this should be .text. Right now, the above code isn't able to properly parse that name.
#assert symtabents[2]["name"] != '<null>'

print('\n\nRel Tables:')

REL = "9"
i = (h for h in sheaders if h["type"].lstrip('0') == REL)
e = next(i,None)
while e != None:
    #print(e)
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
    print(("{: <20}"*4).format("offset","info","type","sym"))
    print(*(("{: <20}"*4+"\n").format(*relent.values()) for relent in relents))
    e = next(i,None)
