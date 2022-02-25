
pointers.o:     file format elf32-i386


Disassembly of section .text:

00000000 <func>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 10             	sub    $0x10,%esp
   6:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
   d:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10:	8a 40 03             	mov    0x3(%eax),%al
  13:	c9                   	leave  
  14:	c3                   	ret    
