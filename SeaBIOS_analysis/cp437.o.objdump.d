
./cp437.o:     file format elf32-i386


Disassembly of section .text.cp437_to_unicode:

00000000 <cp437_to_unicode>:
   0:	0f b6 c0             	movzbl %al,%eax
   3:	66 8b 84 00 00 00 00 	mov    0x0(%eax,%eax,1),%ax
   a:	00 
   b:	c3                   	ret    
