
./serialio.o:     file format elf32-i386


Disassembly of section .text.serial_debug_preinit:

00000000 <serial_debug_preinit>:
   0:	c3                   	ret    

Disassembly of section .text.serial_debug_putc:

00000000 <serial_debug_putc>:
   0:	c3                   	ret    

Disassembly of section .text.serial_debug_flush:

00000000 <serial_debug_flush>:
   0:	c3                   	ret    

Disassembly of section .text.qemu_debug_preinit:

00000000 <qemu_debug_preinit>:
   0:	f6 05 00 00 00 00 02 	testb  $0x2,0x0
   7:	75 15                	jne    1e <qemu_debug_preinit+0x1e>
   9:	66 8b 15 00 00 00 00 	mov    0x0,%dx
  10:	ec                   	in     (%dx),%al
  11:	3c e9                	cmp    $0xe9,%al
  13:	74 09                	je     1e <qemu_debug_preinit+0x1e>
  15:	66 c7 05 00 00 00 00 	movw   $0x0,0x0
  1c:	00 00 
  1e:	c3                   	ret    

Disassembly of section .text.qemu_debug_putc:

00000000 <qemu_debug_putc>:
   0:	66 8b 15 00 00 00 00 	mov    0x0,%dx
   7:	66 85 d2             	test   %dx,%dx
   a:	74 01                	je     d <qemu_debug_putc+0xd>
   c:	ee                   	out    %al,(%dx)
   d:	c3                   	ret    
