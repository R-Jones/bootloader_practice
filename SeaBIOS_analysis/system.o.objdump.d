
./system.o:     file format elf32-i386


Disassembly of section .text.set_a20:

00000000 <set_a20>:
   0:	89 c1                	mov    %eax,%ecx
   2:	e4 92                	in     $0x92,%al
   4:	88 c2                	mov    %al,%dl
   6:	d0 ea                	shr    %dl
   8:	83 e2 01             	and    $0x1,%edx
   b:	84 c9                	test   %cl,%cl
   d:	0f 95 c1             	setne  %cl
  10:	38 ca                	cmp    %cl,%dl
  12:	74 05                	je     19 <set_a20+0x19>
  14:	83 f0 02             	xor    $0x2,%eax
  17:	e6 92                	out    %al,$0x92
  19:	88 d0                	mov    %dl,%al
  1b:	c3                   	ret    

Disassembly of section .text.set_code_success:

00000000 <set_code_success>:
   0:	c6 40 1d 00          	movb   $0x0,0x1d(%eax)
   4:	66 83 60 24 fe       	andw   $0xfffe,0x24(%eax)
   9:	c3                   	ret    

Disassembly of section .text.handle_1589:

00000000 <handle_1589>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 c3                	mov    %eax,%ebx
   4:	ba 00 00 00 00       	mov    $0x0,%edx
   9:	e8 fc ff ff ff       	call   a <handle_1589+0xa>
   e:	b8 01 00 00 00       	mov    $0x1,%eax
  13:	e8 fc ff ff ff       	call   14 <handle_1589+0x14>
  18:	0f b6 53 11          	movzbl 0x11(%ebx),%edx
  1c:	0f b6 43 10          	movzbl 0x10(%ebx),%eax
  20:	e8 fc ff ff ff       	call   21 <handle_1589+0x21>
  25:	0f b7 43 02          	movzwl 0x2(%ebx),%eax
  29:	c1 e0 04             	shl    $0x4,%eax
  2c:	0f b7 73 08          	movzwl 0x8(%ebx),%esi
  30:	c7 44 30 38 ff ff 00 	movl   $0xffff,0x38(%eax,%esi,1)
  37:	00 
  38:	c7 44 30 3c 0f 9b 00 	movl   $0x9b0f,0x3c(%eax,%esi,1)
  3f:	00 
  40:	c7 03 18 00 20 00    	movl   $0x200018,(%ebx)
  46:	66 c7 43 22 30 00    	movw   $0x30,0x22(%ebx)
  4c:	89 d8                	mov    %ebx,%eax
  4e:	e8 fc ff ff ff       	call   4f <handle_1589+0x4f>
  53:	26 67 66 0f 01 54 08 	lgdtw  %es:0x8(%si)
  5a:	26 67 66 0f 01 5c 10 	lidtw  %es:0x10(%si)
  61:	0f 20 c0             	mov    %cr0,%eax
  64:	83 c8 01             	or     $0x1,%eax
  67:	0f 22 c0             	mov    %eax,%cr0
  6a:	66 ea 70 00 38 00    	ljmpw  $0x38,$0x70
  70:	66 b8 28 00          	mov    $0x28,%ax
  74:	8e d8                	mov    %eax,%ds
  76:	8e d0                	mov    %eax,%ss
  78:	5b                   	pop    %ebx
  79:	5e                   	pop    %esi
  7a:	c3                   	ret    

Disassembly of section .text.handle_15:

00000000 <handle_15>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	57                   	push   %edi
   5:	89 c3                	mov    %eax,%ebx
   7:	ba 00 00 00 00       	mov    $0x0,%edx
   c:	e8 fc ff ff ff       	call   d <handle_15+0xd>
  11:	8a 43 1d             	mov    0x1d(%ebx),%al
  14:	3c 91                	cmp    $0x91,%al
  16:	77 55                	ja     6d <handle_15+0x6d>
  18:	3c 7e                	cmp    $0x7e,%al
  1a:	77 20                	ja     3c <handle_15+0x3c>
  1c:	3c 52                	cmp    $0x52,%al
  1e:	0f 84 a6 00 00 00    	je     ca <handle_15+0xca>
  24:	77 2b                	ja     51 <handle_15+0x51>
  26:	3c 24                	cmp    $0x24,%al
  28:	74 79                	je     a3 <handle_15+0xa3>
  2a:	3c 4f                	cmp    $0x4f,%al
  2c:	0f 85 d7 02 00 00    	jne    309 <handle_15+0x309>
  32:	66 83 4b 24 01       	orw    $0x1,0x24(%ebx)
  37:	e9 e3 02 00 00       	jmp    31f <handle_15+0x31f>
  3c:	83 e8 7f             	sub    $0x7f,%eax
  3f:	3c 12                	cmp    $0x12,%al
  41:	0f 87 c2 02 00 00    	ja     309 <handle_15+0x309>
  47:	0f b6 c0             	movzbl %al,%eax
  4a:	ff 24 85 00 00 00 00 	jmp    *0x0(,%eax,4)
  51:	3c 53                	cmp    $0x53,%al
  53:	0f 84 98 00 00 00    	je     f1 <handle_15+0xf1>
  59:	3c 5f                	cmp    $0x5f,%al
  5b:	0f 85 a8 02 00 00    	jne    309 <handle_15+0x309>
  61:	89 d8                	mov    %ebx,%eax
  63:	59                   	pop    %ecx
  64:	5b                   	pop    %ebx
  65:	5e                   	pop    %esi
  66:	5f                   	pop    %edi
  67:	5d                   	pop    %ebp
  68:	e9 fc ff ff ff       	jmp    69 <handle_15+0x69>
  6d:	3c c2                	cmp    $0xc2,%al
  6f:	0f 84 bc 01 00 00    	je     231 <handle_15+0x231>
  75:	77 1f                	ja     96 <handle_15+0x96>
  77:	3c c0                	cmp    $0xc0,%al
  79:	0f 84 9e 01 00 00    	je     21d <handle_15+0x21d>
  7f:	3c c1                	cmp    $0xc1,%al
  81:	0f 85 82 02 00 00    	jne    309 <handle_15+0x309>
  87:	66 a1 0e 04 00 00    	mov    0x40e,%ax
  8d:	66 89 43 02          	mov    %ax,0x2(%ebx)
  91:	e9 60 02 00 00       	jmp    2f6 <handle_15+0x2f6>
  96:	3c e8                	cmp    $0xe8,%al
  98:	0f 84 9f 01 00 00    	je     23d <handle_15+0x23d>
  9e:	e9 66 02 00 00       	jmp    309 <handle_15+0x309>
  a3:	8a 43 1c             	mov    0x1c(%ebx),%al
  a6:	3c 02                	cmp    $0x2,%al
  a8:	74 2c                	je     d6 <handle_15+0xd6>
  aa:	77 08                	ja     b4 <handle_15+0xb4>
  ac:	84 c0                	test   %al,%al
  ae:	75 10                	jne    c0 <handle_15+0xc0>
  b0:	31 c0                	xor    %eax,%eax
  b2:	eb 11                	jmp    c5 <handle_15+0xc5>
  b4:	3c 03                	cmp    $0x3,%al
  b6:	75 2a                	jne    e2 <handle_15+0xe2>
  b8:	66 c7 43 10 03 00    	movw   $0x3,0x10(%ebx)
  be:	eb 0a                	jmp    ca <handle_15+0xca>
  c0:	b8 01 00 00 00       	mov    $0x1,%eax
  c5:	e8 fc ff ff ff       	call   c6 <handle_15+0xc6>
  ca:	89 d8                	mov    %ebx,%eax
  cc:	5e                   	pop    %esi
  cd:	5b                   	pop    %ebx
  ce:	5e                   	pop    %esi
  cf:	5f                   	pop    %edi
  d0:	5d                   	pop    %ebp
  d1:	e9 fc ff ff ff       	jmp    d2 <handle_15+0xd2>
  d6:	e4 92                	in     $0x92,%al
  d8:	d0 e8                	shr    %al
  da:	83 e0 01             	and    $0x1,%eax
  dd:	88 43 1c             	mov    %al,0x1c(%ebx)
  e0:	eb e8                	jmp    ca <handle_15+0xca>
  e2:	b9 00 00 00 00       	mov    $0x0,%ecx
  e7:	ba 86 31 00 00       	mov    $0x3186,%edx
  ec:	e9 22 02 00 00       	jmp    313 <handle_15+0x313>
  f1:	89 d8                	mov    %ebx,%eax
  f3:	5b                   	pop    %ebx
  f4:	5b                   	pop    %ebx
  f5:	5e                   	pop    %esi
  f6:	5f                   	pop    %edi
  f7:	5d                   	pop    %ebp
  f8:	e9 fc ff ff ff       	jmp    f9 <handle_15+0xf9>
  fd:	89 d8                	mov    %ebx,%eax
  ff:	5a                   	pop    %edx
 100:	5b                   	pop    %ebx
 101:	5e                   	pop    %esi
 102:	5f                   	pop    %edi
 103:	5d                   	pop    %ebp
 104:	e9 fc ff ff ff       	jmp    105 <handle_15+0x105>
 109:	89 d8                	mov    %ebx,%eax
 10b:	5d                   	pop    %ebp
 10c:	5b                   	pop    %ebx
 10d:	5e                   	pop    %esi
 10e:	5f                   	pop    %edi
 10f:	5d                   	pop    %ebp
 110:	e9 fc ff ff ff       	jmp    111 <handle_15+0x111>
 115:	89 d8                	mov    %ebx,%eax
 117:	5f                   	pop    %edi
 118:	5b                   	pop    %ebx
 119:	5e                   	pop    %esi
 11a:	5f                   	pop    %edi
 11b:	5d                   	pop    %ebp
 11c:	e9 fc ff ff ff       	jmp    11d <handle_15+0x11d>
 121:	b8 01 00 00 00       	mov    $0x1,%eax
 126:	e8 fc ff ff ff       	call   127 <handle_15+0x127>
 12b:	88 44 24 03          	mov    %al,0x3(%esp)
 12f:	0f b7 6b 08          	movzwl 0x8(%ebx),%ebp
 133:	0f b7 73 02          	movzwl 0x2(%ebx),%esi
 137:	c1 e6 04             	shl    $0x4,%esi
 13a:	01 ee                	add    %ebp,%esi
 13c:	89 f0                	mov    %esi,%eax
 13e:	31 d2                	xor    %edx,%edx
 140:	0f a4 c2 10          	shld   $0x10,%eax,%edx
 144:	c1 e0 10             	shl    $0x10,%eax
 147:	83 c8 2f             	or     $0x2f,%eax
 14a:	89 46 08             	mov    %eax,0x8(%esi)
 14d:	89 d0                	mov    %edx,%eax
 14f:	80 cc 93             	or     $0x93,%ah
 152:	89 46 0c             	mov    %eax,0xc(%esi)
 155:	e8 fc ff ff ff       	call   156 <handle_15+0x156>
 15a:	f7 d8                	neg    %eax
 15c:	19 c0                	sbb    %eax,%eax
 15e:	25 00 00 8f 00       	and    $0x8f0000,%eax
 163:	c7 46 20 ff ff 00 00 	movl   $0xffff,0x20(%esi)
 16a:	89 c2                	mov    %eax,%edx
 16c:	81 ca 0f 9b 00 00    	or     $0x9b0f,%edx
 172:	89 56 24             	mov    %edx,0x24(%esi)
 175:	c7 46 28 ff ff 00 00 	movl   $0xffff,0x28(%esi)
 17c:	80 cc 93             	or     $0x93,%ah
 17f:	89 46 2c             	mov    %eax,0x2c(%esi)
 182:	31 f6                	xor    %esi,%esi
 184:	89 e8                	mov    %ebp,%eax
 186:	66 8b 4b 18          	mov    0x18(%ebx),%cx
 18a:	89 f7                	mov    %esi,%edi
 18c:	26 66 0f 01 50 08    	lgdtw  %es:0x8(%eax)
 192:	2e 66 0f 01 1d 00 00 	lidtw  %cs:0x0
 199:	00 00 
 19b:	0f 20 c0             	mov    %cr0,%eax
 19e:	83 c8 01             	or     $0x1,%eax
 1a1:	0f 22 c0             	mov    %eax,%cr0
 1a4:	66 ea aa 01 20 00    	ljmpw  $0x20,$0x1aa
 1aa:	66 b8 10 00          	mov    $0x10,%ax
 1ae:	8e d8                	mov    %eax,%ds
 1b0:	66 b8 18 00          	mov    $0x18,%ax
 1b4:	8e c0                	mov    %eax,%es
 1b6:	66 f7 c1 01 00       	test   $0x1,%cx
 1bb:	75 1d                	jne    1da <handle_15+0x1da>
 1bd:	66 d1 e9             	shr    %cx
 1c0:	67 f3 a5             	rep movsl %ds:(%si),%es:(%di)
 1c3:	66 b8 28 00          	mov    $0x28,%ax
 1c7:	8e d8                	mov    %eax,%ds
 1c9:	8e c0                	mov    %eax,%es
 1cb:	0f 20 c0             	mov    %cr0,%eax
 1ce:	83 e0 fe             	and    $0xfffffffe,%eax
 1d1:	0f 22 c0             	mov    %eax,%cr0
 1d4:	66 ea e0 01 00 f0    	ljmpw  $0xf000,$0x1e0
 1da:	67 66 f3 a5          	rep movsw %ds:(%si),%es:(%di)
 1de:	eb e3                	jmp    1c3 <handle_15+0x1c3>
 1e0:	2e 66 0f 01 1d 00 00 	lidtw  %cs:0x0
 1e7:	00 00 
 1e9:	66 8c d0             	mov    %ss,%ax
 1ec:	8e d8                	mov    %eax,%ds
 1ee:	0f b6 44 24 03       	movzbl 0x3(%esp),%eax
 1f3:	e9 cd fe ff ff       	jmp    c5 <handle_15+0xc5>
 1f8:	8b 15 00 00 00 00    	mov    0x0,%edx
 1fe:	b8 00 fc ff ff       	mov    $0xfffffc00,%eax
 203:	81 fa 00 00 00 04    	cmp    $0x4000000,%edx
 209:	77 09                	ja     214 <handle_15+0x214>
 20b:	8d 82 00 00 f0 ff    	lea    -0x100000(%edx),%eax
 211:	c1 e8 0a             	shr    $0xa,%eax
 214:	66 89 43 1c          	mov    %ax,0x1c(%ebx)
 218:	e9 d9 00 00 00       	jmp    2f6 <handle_15+0x2f6>
 21d:	66 c7 43 02 00 f0    	movw   $0xf000,0x2(%ebx)
 223:	b8 00 00 00 00       	mov    $0x0,%eax
 228:	66 89 43 10          	mov    %ax,0x10(%ebx)
 22c:	e9 99 fe ff ff       	jmp    ca <handle_15+0xca>
 231:	89 d8                	mov    %ebx,%eax
 233:	5e                   	pop    %esi
 234:	5b                   	pop    %ebx
 235:	5e                   	pop    %esi
 236:	5f                   	pop    %edi
 237:	5d                   	pop    %ebp
 238:	e9 fc ff ff ff       	jmp    239 <handle_15+0x239>
 23d:	8a 43 1c             	mov    0x1c(%ebx),%al
 240:	3c 01                	cmp    $0x1,%al
 242:	74 09                	je     24d <handle_15+0x24d>
 244:	3c 20                	cmp    $0x20,%al
 246:	74 3d                	je     285 <handle_15+0x285>
 248:	e9 b0 00 00 00       	jmp    2fd <handle_15+0x2fd>
 24d:	a1 00 00 00 00       	mov    0x0,%eax
 252:	3d 00 00 00 01       	cmp    $0x1000000,%eax
 257:	76 10                	jbe    269 <handle_15+0x269>
 259:	8d 90 00 00 00 ff    	lea    -0x1000000(%eax),%edx
 25f:	c1 ea 10             	shr    $0x10,%edx
 262:	b8 00 3c 00 00       	mov    $0x3c00,%eax
 267:	eb 0a                	jmp    273 <handle_15+0x273>
 269:	2d 00 00 10 00       	sub    $0x100000,%eax
 26e:	c1 e8 0a             	shr    $0xa,%eax
 271:	31 d2                	xor    %edx,%edx
 273:	66 89 43 18          	mov    %ax,0x18(%ebx)
 277:	66 89 53 14          	mov    %dx,0x14(%ebx)
 27b:	66 89 43 1c          	mov    %ax,0x1c(%ebx)
 27f:	66 89 53 10          	mov    %dx,0x10(%ebx)
 283:	eb 71                	jmp    2f6 <handle_15+0x2f6>
 285:	8b 35 00 00 00 00    	mov    0x0,%esi
 28b:	81 7b 14 50 41 4d 53 	cmpl   $0x534d4150,0x14(%ebx)
 292:	75 0e                	jne    2a2 <handle_15+0x2a2>
 294:	0f b7 43 10          	movzwl 0x10(%ebx),%eax
 298:	39 c6                	cmp    %eax,%esi
 29a:	7e 06                	jle    2a2 <handle_15+0x2a2>
 29c:	83 7b 18 13          	cmpl   $0x13,0x18(%ebx)
 2a0:	77 16                	ja     2b8 <handle_15+0x2b8>
 2a2:	b9 00 00 00 00       	mov    $0x0,%ecx
 2a7:	ba 86 27 01 00       	mov    $0x12786,%edx
 2ac:	89 d8                	mov    %ebx,%eax
 2ae:	5b                   	pop    %ebx
 2af:	5b                   	pop    %ebx
 2b0:	5e                   	pop    %esi
 2b1:	5f                   	pop    %edi
 2b2:	5d                   	pop    %ebp
 2b3:	e9 fc ff ff ff       	jmp    2b4 <handle_15+0x2b4>
 2b8:	0f b7 53 04          	movzwl 0x4(%ebx),%edx
 2bc:	0f b7 6b 02          	movzwl 0x2(%ebx),%ebp
 2c0:	6a 14                	push   $0x14
 2c2:	6b c0 14             	imul   $0x14,%eax,%eax
 2c5:	05 00 00 00 00       	add    $0x0,%eax
 2ca:	50                   	push   %eax
 2cb:	31 c9                	xor    %ecx,%ecx
 2cd:	89 e8                	mov    %ebp,%eax
 2cf:	e8 fc ff ff ff       	call   2d0 <handle_15+0x2d0>
 2d4:	0f b7 53 10          	movzwl 0x10(%ebx),%edx
 2d8:	4e                   	dec    %esi
 2d9:	5f                   	pop    %edi
 2da:	5d                   	pop    %ebp
 2db:	31 c0                	xor    %eax,%eax
 2dd:	39 f2                	cmp    %esi,%edx
 2df:	74 04                	je     2e5 <handle_15+0x2e5>
 2e1:	8b 43 10             	mov    0x10(%ebx),%eax
 2e4:	40                   	inc    %eax
 2e5:	89 43 10             	mov    %eax,0x10(%ebx)
 2e8:	c7 43 1c 50 41 4d 53 	movl   $0x534d4150,0x1c(%ebx)
 2ef:	c7 43 18 14 00 00 00 	movl   $0x14,0x18(%ebx)
 2f6:	66 83 63 24 fe       	andw   $0xfffe,0x24(%ebx)
 2fb:	eb 22                	jmp    31f <handle_15+0x31f>
 2fd:	b9 00 00 00 00       	mov    $0x0,%ecx
 302:	ba 86 3a 01 00       	mov    $0x13a86,%edx
 307:	eb 0a                	jmp    313 <handle_15+0x313>
 309:	b9 00 00 00 00       	mov    $0x0,%ecx
 30e:	ba 86 4a 01 00       	mov    $0x14a86,%edx
 313:	89 d8                	mov    %ebx,%eax
 315:	5b                   	pop    %ebx
 316:	5b                   	pop    %ebx
 317:	5e                   	pop    %esi
 318:	5f                   	pop    %edi
 319:	5d                   	pop    %ebp
 31a:	e9 fc ff ff ff       	jmp    31b <handle_15+0x31b>
 31f:	58                   	pop    %eax
 320:	5b                   	pop    %ebx
 321:	5e                   	pop    %esi
 322:	5f                   	pop    %edi
 323:	5d                   	pop    %ebp
 324:	c3                   	ret    
