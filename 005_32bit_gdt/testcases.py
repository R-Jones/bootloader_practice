#So there was really no need to compile 32bit_gdt.asm to 32bit_gdt.o, but I just want to do a first attempt at understanding ELF.
#looking at 32bit_gdt.o.xxd and 32bit_gdt.o.readelf can help here.

f = open("32bit_gdt.o", "rb")
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

print("Keep in mind endianness for some of these")
for k in elf_header:
    print(k, ": ", "0x" + elf_header[k])

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

sheaders = [parseHeader(h[shoff+x*shentsize:shoff+(x+1)*shentsize])
               for x in range(shnum)]

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
print(("{: <12}"* 10).format(*sheaders[0].keys()))
for sheader in sheaders:
    #First, we need to replace the index value that we currently have as our header name with the name from shstr
    inx = int(sheader["name"],16)
    name = shstrhex[inx*2:].split('00',1)[0] #Again, we need inx*2 to reference into shstr because we're looking through a hex string, not bytes.
    sheader["name"] = bytearray.fromhex(name).decode() or '<null>'
    vals = ((v.lstrip('0') or '0') for v in sheader.values())
    print(("{: <12}" + "0x{: <10}"* 9).format(*vals))

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

symtabents = [parseSymTabEnt(h[symtaboff+x*symtabentsize:symtaboff+(x+1)*symtabentsize]) for x in range(symtabsize // symtabentsize)]

print("\n\nSymtab:")
print(("{: <19}"*6).format(*symtabents[0].keys()))
for symtabent in symtabents:
    inx = int(symtabent["name"],16)
    name = strtabhex[inx*2:].split('00',1)[0]
    symtabent["name"] = bytearray.fromhex(name).decode() or '<null>'
    vals = ((v.strip('0') or '0') for v in symtabent.values())

    #print(symtabent.values())
    print(("{: <18}" + "0x{: <18}"*5).format(*vals))

#According to objdump, this should be .text. Right now, the above code isn't able to properly parse that name.
assert symtabents[2]["name"] != '<null>'
