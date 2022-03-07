
./pirtable.o:     file format elf32-i386


Disassembly of section .text.pirtable_setup:

00000000 <pirtable_setup>:
   0:	68 00 00 00 00       	push   $0x0
   5:	e8 fc ff ff ff       	call   6 <pirtable_setup+0x6>
   a:	c7 05 00 00 00 00 24 	movl   $0x52495024,0x0
  11:	50 49 52 
  14:	ba 80 00 00 00       	mov    $0x80,%edx
  19:	b8 00 00 00 00       	mov    $0x0,%eax
  1e:	e8 fc ff ff ff       	call   1f <pirtable_setup+0x1f>
  23:	28 05 1f 00 00 00    	sub    %al,0x1f
  29:	58                   	pop    %eax
  2a:	b8 00 00 00 00       	mov    $0x0,%eax
  2f:	e9 fc ff ff ff       	jmp    30 <pirtable_setup+0x30>
