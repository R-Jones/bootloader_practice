
./apm.o:     file format elf32-i386


Disassembly of section .text.apm_shutdown:

00000000 <apm_shutdown>:
   0:	a1 00 00 00 00       	mov    0x0,%eax
   5:	89 c2                	mov    %eax,%edx
   7:	66 85 c0             	test   %ax,%ax
   a:	74 07                	je     13 <apm_shutdown+0x13>
   c:	b8 00 20 00 00       	mov    $0x2000,%eax
  11:	66 ef                	out    %ax,(%dx)
  13:	fa                   	cli    
  14:	f4                   	hlt    
  15:	eb fd                	jmp    14 <apm_shutdown+0x14>

Disassembly of section .text.handle_1553:

00000000 <handle_1553>:
   0:	53                   	push   %ebx
   1:	89 c3                	mov    %eax,%ebx
   3:	80 78 1c 10          	cmpb   $0x10,0x1c(%eax)
   7:	0f 87 e0 00 00 00    	ja     ed <handle_1553+0xed>
   d:	0f b6 40 1c          	movzbl 0x1c(%eax),%eax
  11:	ff 24 85 00 00 00 00 	jmp    *0x0(,%eax,4)
  18:	66 c7 43 1c 02 01    	movw   $0x102,0x1c(%ebx)
  1e:	66 c7 43 10 4d 50    	movw   $0x504d,0x10(%ebx)
  24:	66 c7 43 18 03 00    	movw   $0x3,0x18(%ebx)
  2a:	e9 b7 00 00 00       	jmp    e6 <handle_1553+0xe6>
  2f:	b8 00 00 00 00       	mov    $0x0,%eax
  34:	66 89 43 10          	mov    %ax,0x10(%ebx)
  38:	66 c7 43 1c 00 f0    	movw   $0xf000,0x1c(%ebx)
  3e:	66 c7 43 08 f0 ff    	movw   $0xfff0,0x8(%ebx)
  44:	66 c7 43 18 00 f0    	movw   $0xf000,0x18(%ebx)
  4a:	eb 20                	jmp    6c <handle_1553+0x6c>
  4c:	66 c7 43 1c 00 f0    	movw   $0xf000,0x1c(%ebx)
  52:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
  59:	66 c7 43 18 00 f0    	movw   $0xf000,0x18(%ebx)
  5f:	c7 43 08 f0 ff f0 ff 	movl   $0xfff0fff0,0x8(%ebx)
  66:	66 c7 43 14 00 f0    	movw   $0xf000,0x14(%ebx)
  6c:	66 c7 43 04 f0 ff    	movw   $0xfff0,0x4(%ebx)
  72:	eb 72                	jmp    e6 <handle_1553+0xe6>
  74:	e8 fc ff ff ff       	call   75 <handle_1553+0x75>
  79:	eb 6b                	jmp    e6 <handle_1553+0xe6>
  7b:	66 83 7b 10 01       	cmpw   $0x1,0x10(%ebx)
  80:	75 64                	jne    e6 <handle_1553+0xe6>
  82:	66 8b 43 18          	mov    0x18(%ebx),%ax
  86:	66 83 f8 02          	cmp    $0x2,%ax
  8a:	74 11                	je     9d <handle_1553+0x9d>
  8c:	66 83 f8 03          	cmp    $0x3,%ax
  90:	74 18                	je     aa <handle_1553+0xaa>
  92:	66 48                	dec    %ax
  94:	75 50                	jne    e6 <handle_1553+0xe6>
  96:	68 00 00 00 00       	push   $0x0
  9b:	eb 05                	jmp    a2 <handle_1553+0xa2>
  9d:	68 15 00 00 00       	push   $0x15
  a2:	e8 fc ff ff ff       	call   a3 <handle_1553+0xa3>
  a7:	58                   	pop    %eax
  a8:	eb 3c                	jmp    e6 <handle_1553+0xe6>
  aa:	e8 fc ff ff ff       	call   ab <handle_1553+0xab>
  af:	66 c7 43 10 ff 01    	movw   $0x1ff,0x10(%ebx)
  b5:	66 c7 43 18 ff 80    	movw   $0x80ff,0x18(%ebx)
  bb:	66 c7 43 14 ff ff    	movw   $0xffff,0x14(%ebx)
  c1:	66 c7 43 08 00 00    	movw   $0x0,0x8(%ebx)
  c7:	eb 1d                	jmp    e6 <handle_1553+0xe6>
  c9:	c6 43 1d 80          	movb   $0x80,0x1d(%ebx)
  cd:	66 83 4b 24 01       	orw    $0x1,0x24(%ebx)
  d2:	eb 2b                	jmp    ff <handle_1553+0xff>
  d4:	66 c7 43 1c 02 01    	movw   $0x102,0x1c(%ebx)
  da:	eb 0a                	jmp    e6 <handle_1553+0xe6>
  dc:	c6 43 10 00          	movb   $0x0,0x10(%ebx)
  e0:	66 c7 43 18 00 00    	movw   $0x0,0x18(%ebx)
  e6:	66 83 63 24 fe       	andw   $0xfffe,0x24(%ebx)
  eb:	eb 12                	jmp    ff <handle_1553+0xff>
  ed:	b9 00 00 00 00       	mov    $0x0,%ecx
  f2:	ba b3 00 00 00       	mov    $0xb3,%edx
  f7:	89 d8                	mov    %ebx,%eax
  f9:	5b                   	pop    %ebx
  fa:	e9 fc ff ff ff       	jmp    fb <handle_1553+0xfb>
  ff:	5b                   	pop    %ebx
 100:	c3                   	ret    

Disassembly of section .text.handle_apm:

00000000 <handle_apm>:
   0:	52                   	push   %edx
   1:	ba 00 00 00 00       	mov    $0x0,%edx
   6:	89 04 24             	mov    %eax,(%esp)
   9:	e8 fc ff ff ff       	call   a <handle_apm+0xa>
   e:	8b 04 24             	mov    (%esp),%eax
  11:	59                   	pop    %ecx
  12:	e9 fc ff ff ff       	jmp    13 <handle_apm+0x13>
