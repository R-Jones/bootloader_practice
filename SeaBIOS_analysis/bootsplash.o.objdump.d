
./bootsplash.o:     file format elf32-i386


Disassembly of section .text.call16_int10:

00000000 <call16_int10>:
   0:	52                   	push   %edx
   1:	66 c7 40 24 00 02    	movw   $0x200,0x24(%eax)
   7:	89 04 24             	mov    %eax,(%esp)
   a:	e8 fc ff ff ff       	call   b <call16_int10+0xb>
   f:	ba 00 00 00 00       	mov    $0x0,%edx
  14:	0f b7 d2             	movzwl %dx,%edx
  17:	8b 04 24             	mov    (%esp),%eax
  1a:	e8 fc ff ff ff       	call   1b <call16_int10+0x1b>
  1f:	59                   	pop    %ecx
  20:	e9 fc ff ff ff       	jmp    21 <call16_int10+0x21>

Disassembly of section .text.enable_vga_console:

00000000 <enable_vga_console>:
   0:	83 ec 28             	sub    $0x28,%esp
   3:	68 00 00 00 00       	push   $0x0
   8:	e8 fc ff ff ff       	call   9 <enable_vga_console+0x9>
   d:	b9 26 00 00 00       	mov    $0x26,%ecx
  12:	31 d2                	xor    %edx,%edx
  14:	8d 44 24 06          	lea    0x6(%esp),%eax
  18:	e8 fc ff ff ff       	call   19 <enable_vga_console+0x19>
  1d:	66 c7 44 24 22 03 00 	movw   $0x3,0x22(%esp)
  24:	8d 44 24 06          	lea    0x6(%esp),%eax
  28:	e8 fc ff ff ff       	call   29 <enable_vga_console+0x29>
  2d:	68 00 00 00 00       	push   $0x0
  32:	68 22 00 00 00       	push   $0x22
  37:	e8 fc ff ff ff       	call   38 <enable_vga_console+0x38>
  3c:	e8 fc ff ff ff       	call   3d <enable_vga_console+0x3d>
  41:	83 c4 34             	add    $0x34,%esp
  44:	c3                   	ret    

Disassembly of section .text.enable_bootsplash:

00000000 <enable_bootsplash>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 78             	sub    $0x78,%esp
   7:	68 38 00 00 00       	push   $0x38
   c:	e8 fc ff ff ff       	call   d <enable_bootsplash+0xd>
  11:	8d 54 24 20          	lea    0x20(%esp),%edx
  15:	b8 51 00 00 00       	mov    $0x51,%eax
  1a:	e8 fc ff ff ff       	call   1b <enable_bootsplash+0x1b>
  1f:	89 44 24 0c          	mov    %eax,0xc(%esp)
  23:	5d                   	pop    %ebp
  24:	c6 44 24 19 00       	movb   $0x0,0x19(%esp)
  29:	85 c0                	test   %eax,%eax
  2b:	75 1f                	jne    4c <enable_bootsplash+0x4c>
  2d:	8d 54 24 1c          	lea    0x1c(%esp),%edx
  31:	b8 60 00 00 00       	mov    $0x60,%eax
  36:	e8 fc ff ff ff       	call   37 <enable_bootsplash+0x37>
  3b:	89 44 24 08          	mov    %eax,0x8(%esp)
  3f:	85 c0                	test   %eax,%eax
  41:	0f 84 aa 04 00 00    	je     4f1 <enable_bootsplash+0x4f1>
  47:	c6 44 24 19 01       	movb   $0x1,0x19(%esp)
  4c:	68 6f 00 00 00       	push   $0x6f
  51:	e8 fc ff ff ff       	call   52 <enable_bootsplash+0x52>
  56:	b9 10 00 00 00       	mov    $0x10,%ecx
  5b:	ba 00 01 00 00       	mov    $0x100,%edx
  60:	b8 00 00 00 00       	mov    $0x0,%eax
  65:	e8 fc ff ff ff       	call   66 <enable_bootsplash+0x66>
  6a:	89 c3                	mov    %eax,%ebx
  6c:	b9 10 00 00 00       	mov    $0x10,%ecx
  71:	ba 00 01 00 00       	mov    $0x100,%edx
  76:	b8 00 00 00 00       	mov    $0x0,%eax
  7b:	e8 fc ff ff ff       	call   7c <enable_bootsplash+0x7c>
  80:	89 c6                	mov    %eax,%esi
  82:	5f                   	pop    %edi
  83:	85 db                	test   %ebx,%ebx
  85:	74 04                	je     8b <enable_bootsplash+0x8b>
  87:	85 c0                	test   %eax,%eax
  89:	75 11                	jne    9c <enable_bootsplash+0x9c>
  8b:	ba 00 00 00 00       	mov    $0x0,%edx
  90:	b8 79 00 00 00       	mov    $0x79,%eax
  95:	e8 fc ff ff ff       	call   96 <enable_bootsplash+0x96>
  9a:	eb 5b                	jmp    f7 <enable_bootsplash+0xf7>
  9c:	b9 00 01 00 00       	mov    $0x100,%ecx
  a1:	31 d2                	xor    %edx,%edx
  a3:	89 d8                	mov    %ebx,%eax
  a5:	e8 fc ff ff ff       	call   a6 <enable_bootsplash+0xa6>
  aa:	c7 03 56 42 45 32    	movl   $0x32454256,(%ebx)
  b0:	b9 26 00 00 00       	mov    $0x26,%ecx
  b5:	31 d2                	xor    %edx,%edx
  b7:	8d 44 24 2c          	lea    0x2c(%esp),%eax
  bb:	e8 fc ff ff ff       	call   bc <enable_bootsplash+0xbc>
  c0:	66 c7 44 24 48 00 4f 	movw   $0x4f00,0x48(%esp)
  c7:	89 d8                	mov    %ebx,%eax
  c9:	83 e0 0f             	and    $0xf,%eax
  cc:	66 89 44 24 30       	mov    %ax,0x30(%esp)
  d1:	89 d8                	mov    %ebx,%eax
  d3:	c1 e8 04             	shr    $0x4,%eax
  d6:	66 89 44 24 2e       	mov    %ax,0x2e(%esp)
  db:	8d 44 24 2c          	lea    0x2c(%esp),%eax
  df:	e8 fc ff ff ff       	call   e0 <enable_bootsplash+0xe0>
  e4:	81 3b 56 45 53 41    	cmpl   $0x41534556,(%ebx)
  ea:	74 21                	je     10d <enable_bootsplash+0x10d>
  ec:	68 89 00 00 00       	push   $0x89
  f1:	e8 fc ff ff ff       	call   f2 <enable_bootsplash+0xf2>
  f6:	59                   	pop    %ecx
  f7:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  fe:	00 
  ff:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 106:	31 ff                	xor    %edi,%edi
 108:	e9 b5 03 00 00       	jmp    4c2 <enable_bootsplash+0x4c2>
 10d:	66 8b 43 04          	mov    0x4(%ebx),%ax
 111:	0f b7 53 1c          	movzwl 0x1c(%ebx),%edx
 115:	c1 e2 04             	shl    $0x4,%edx
 118:	0f b7 4b 1a          	movzwl 0x1a(%ebx),%ecx
 11c:	01 ca                	add    %ecx,%edx
 11e:	52                   	push   %edx
 11f:	0f b7 53 18          	movzwl 0x18(%ebx),%edx
 123:	c1 e2 04             	shl    $0x4,%edx
 126:	0f b7 4b 16          	movzwl 0x16(%ebx),%ecx
 12a:	01 ca                	add    %ecx,%edx
 12c:	52                   	push   %edx
 12d:	0f b6 d0             	movzbl %al,%edx
 130:	52                   	push   %edx
 131:	66 c1 e8 08          	shr    $0x8,%ax
 135:	0f b7 c0             	movzwl %ax,%eax
 138:	50                   	push   %eax
 139:	68 99 00 00 00       	push   $0x99
 13e:	e8 fc ff ff ff       	call   13f <enable_bootsplash+0x13f>
 143:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%esp)
 14a:	00 
 14b:	83 c4 14             	add    $0x14,%esp
 14e:	80 7c 24 19 00       	cmpb   $0x0,0x19(%esp)
 153:	75 6d                	jne    1c2 <enable_bootsplash+0x1c2>
 155:	e8 fc ff ff ff       	call   156 <enable_bootsplash+0x156>
 15a:	89 04 24             	mov    %eax,(%esp)
 15d:	85 c0                	test   %eax,%eax
 15f:	75 11                	jne    172 <enable_bootsplash+0x172>
 161:	ba 00 00 00 00       	mov    $0x0,%edx
 166:	b8 97 00 00 00       	mov    $0x97,%eax
 16b:	e8 fc ff ff ff       	call   16c <enable_bootsplash+0x16c>
 170:	eb 29                	jmp    19b <enable_bootsplash+0x19b>
 172:	68 bc 00 00 00       	push   $0xbc
 177:	e8 fc ff ff ff       	call   178 <enable_bootsplash+0x178>
 17c:	8b 54 24 0c          	mov    0xc(%esp),%edx
 180:	8b 44 24 04          	mov    0x4(%esp),%eax
 184:	e8 fc ff ff ff       	call   185 <enable_bootsplash+0x185>
 189:	5a                   	pop    %edx
 18a:	85 c0                	test   %eax,%eax
 18c:	74 1a                	je     1a8 <enable_bootsplash+0x1a8>
 18e:	50                   	push   %eax
 18f:	68 d5 00 00 00       	push   $0xd5
 194:	e8 fc ff ff ff       	call   195 <enable_bootsplash+0x195>
 199:	5f                   	pop    %edi
 19a:	5d                   	pop    %ebp
 19b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 1a2:	00 
 1a3:	e9 5e ff ff ff       	jmp    106 <enable_bootsplash+0x106>
 1a8:	8d 4c 24 24          	lea    0x24(%esp),%ecx
 1ac:	8d 54 24 20          	lea    0x20(%esp),%edx
 1b0:	8b 04 24             	mov    (%esp),%eax
 1b3:	e8 fc ff ff ff       	call   1b4 <enable_bootsplash+0x1b4>
 1b8:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 1bf:	00 
 1c0:	eb 71                	jmp    233 <enable_bootsplash+0x233>
 1c2:	e8 fc ff ff ff       	call   1c3 <enable_bootsplash+0x1c3>
 1c7:	89 44 24 04          	mov    %eax,0x4(%esp)
 1cb:	85 c0                	test   %eax,%eax
 1cd:	75 14                	jne    1e3 <enable_bootsplash+0x1e3>
 1cf:	ba 00 00 00 00       	mov    $0x0,%edx
 1d4:	b8 a5 00 00 00       	mov    $0xa5,%eax
 1d9:	e8 fc ff ff ff       	call   1da <enable_bootsplash+0x1da>
 1de:	e9 1c ff ff ff       	jmp    ff <enable_bootsplash+0xff>
 1e3:	68 00 01 00 00       	push   $0x100
 1e8:	e8 fc ff ff ff       	call   1e9 <enable_bootsplash+0x1e9>
 1ed:	8b 4c 24 20          	mov    0x20(%esp),%ecx
 1f1:	8b 54 24 0c          	mov    0xc(%esp),%edx
 1f5:	8b 44 24 08          	mov    0x8(%esp),%eax
 1f9:	e8 fc ff ff ff       	call   1fa <enable_bootsplash+0x1fa>
 1fe:	59                   	pop    %ecx
 1ff:	85 c0                	test   %eax,%eax
 201:	74 12                	je     215 <enable_bootsplash+0x215>
 203:	50                   	push   %eax
 204:	68 19 01 00 00       	push   $0x119
 209:	e8 fc ff ff ff       	call   20a <enable_bootsplash+0x20a>
 20e:	58                   	pop    %eax
 20f:	5a                   	pop    %edx
 210:	e9 ea fe ff ff       	jmp    ff <enable_bootsplash+0xff>
 215:	8d 44 24 28          	lea    0x28(%esp),%eax
 219:	50                   	push   %eax
 21a:	8d 4c 24 28          	lea    0x28(%esp),%ecx
 21e:	8d 54 24 24          	lea    0x24(%esp),%edx
 222:	8b 44 24 08          	mov    0x8(%esp),%eax
 226:	e8 fc ff ff ff       	call   227 <enable_bootsplash+0x227>
 22b:	58                   	pop    %eax
 22c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 233:	8b 44 24 28          	mov    0x28(%esp),%eax
 237:	89 44 24 10          	mov    %eax,0x10(%esp)
 23b:	8b 7c 24 24          	mov    0x24(%esp),%edi
 23f:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 243:	57                   	push   %edi
 244:	55                   	push   %ebp
 245:	68 43 01 00 00       	push   $0x143
 24a:	e8 fc ff ff ff       	call   24b <enable_bootsplash+0x24b>
 24f:	0f b7 43 10          	movzwl 0x10(%ebx),%eax
 253:	c1 e0 04             	shl    $0x4,%eax
 256:	0f b7 53 0e          	movzwl 0xe(%ebx),%edx
 25a:	01 d0                	add    %edx,%eax
 25c:	89 44 24 20          	mov    %eax,0x20(%esp)
 260:	89 f0                	mov    %esi,%eax
 262:	c1 e8 04             	shr    $0x4,%eax
 265:	66 89 44 24 26       	mov    %ax,0x26(%esp)
 26a:	83 c4 0c             	add    $0xc,%esp
 26d:	8b 44 24 14          	mov    0x14(%esp),%eax
 271:	66 8b 00             	mov    (%eax),%ax
 274:	66 89 44 24 0e       	mov    %ax,0xe(%esp)
 279:	66 40                	inc    %ax
 27b:	75 2a                	jne    2a7 <enable_bootsplash+0x2a7>
 27d:	57                   	push   %edi
 27e:	55                   	push   %ebp
 27f:	68 6c 01 00 00       	push   $0x16c
 284:	e8 fc ff ff ff       	call   285 <enable_bootsplash+0x285>
 289:	ff 74 24 34          	push   0x34(%esp)
 28d:	ff 74 24 34          	push   0x34(%esp)
 291:	ff 74 24 34          	push   0x34(%esp)
 295:	68 9d 01 00 00       	push   $0x19d
 29a:	e8 fc ff ff ff       	call   29b <enable_bootsplash+0x29b>
 29f:	83 c4 1c             	add    $0x1c,%esp
 2a2:	e9 5f fe ff ff       	jmp    106 <enable_bootsplash+0x106>
 2a7:	b9 26 00 00 00       	mov    $0x26,%ecx
 2ac:	31 d2                	xor    %edx,%edx
 2ae:	8d 44 24 52          	lea    0x52(%esp),%eax
 2b2:	e8 fc ff ff ff       	call   2b3 <enable_bootsplash+0x2b3>
 2b7:	66 c7 44 24 6e 01 4f 	movw   $0x4f01,0x6e(%esp)
 2be:	66 8b 44 24 0e       	mov    0xe(%esp),%ax
 2c3:	66 89 44 24 6a       	mov    %ax,0x6a(%esp)
 2c8:	89 f0                	mov    %esi,%eax
 2ca:	83 e0 0f             	and    $0xf,%eax
 2cd:	66 89 44 24 56       	mov    %ax,0x56(%esp)
 2d2:	66 8b 44 24 1a       	mov    0x1a(%esp),%ax
 2d7:	66 89 44 24 54       	mov    %ax,0x54(%esp)
 2dc:	8d 44 24 52          	lea    0x52(%esp),%eax
 2e0:	e8 fc ff ff ff       	call   2e1 <enable_bootsplash+0x2e1>
 2e5:	66 83 7c 24 6e 4f    	cmpw   $0x4f,0x6e(%esp)
 2eb:	74 10                	je     2fd <enable_bootsplash+0x2fd>
 2ed:	68 d3 01 00 00       	push   $0x1d3
 2f2:	e8 fc ff ff ff       	call   2f3 <enable_bootsplash+0x2f3>
 2f7:	58                   	pop    %eax
 2f8:	e9 cf 00 00 00       	jmp    3cc <enable_bootsplash+0x3cc>
 2fd:	0f b7 46 12          	movzwl 0x12(%esi),%eax
 301:	39 c5                	cmp    %eax,%ebp
 303:	0f 85 c3 00 00 00    	jne    3cc <enable_bootsplash+0x3cc>
 309:	0f b7 46 14          	movzwl 0x14(%esi),%eax
 30d:	39 c7                	cmp    %eax,%edi
 30f:	0f 85 b7 00 00 00    	jne    3cc <enable_bootsplash+0x3cc>
 315:	8a 46 19             	mov    0x19(%esi),%al
 318:	83 7c 24 10 00       	cmpl   $0x0,0x10(%esp)
 31d:	75 27                	jne    346 <enable_bootsplash+0x346>
 31f:	8d 48 f0             	lea    -0x10(%eax),%ecx
 322:	80 f9 10             	cmp    $0x10,%cl
 325:	0f 87 a1 00 00 00    	ja     3cc <enable_bootsplash+0x3cc>
 32b:	ba 01 01 01 00       	mov    $0x10101,%edx
 330:	d3 ea                	shr    %cl,%edx
 332:	80 e2 01             	and    $0x1,%dl
 335:	0f 84 91 00 00 00    	je     3cc <enable_bootsplash+0x3cc>
 33b:	80 7e 21 05          	cmpb   $0x5,0x21(%esi)
 33f:	75 0e                	jne    34f <enable_bootsplash+0x34f>
 341:	e9 86 00 00 00       	jmp    3cc <enable_bootsplash+0x3cc>
 346:	0f b6 d0             	movzbl %al,%edx
 349:	39 54 24 10          	cmp    %edx,0x10(%esp)
 34d:	75 7d                	jne    3cc <enable_bootsplash+0x3cc>
 34f:	8b 7e 28             	mov    0x28(%esi),%edi
 352:	89 7c 24 14          	mov    %edi,0x14(%esp)
 356:	0f b6 e8             	movzbl %al,%ebp
 359:	0f b7 44 24 0e       	movzwl 0xe(%esp),%eax
 35e:	50                   	push   %eax
 35f:	68 e5 01 00 00       	push   $0x1e5
 364:	e8 fc ff ff ff       	call   365 <enable_bootsplash+0x365>
 369:	ff 74 24 1c          	push   0x1c(%esp)
 36d:	68 f1 01 00 00       	push   $0x1f1
 372:	e8 fc ff ff ff       	call   373 <enable_bootsplash+0x373>
 377:	0f b7 46 10          	movzwl 0x10(%esi),%eax
 37b:	50                   	push   %eax
 37c:	68 02 02 00 00       	push   $0x202
 381:	e8 fc ff ff ff       	call   382 <enable_bootsplash+0x382>
 386:	55                   	push   %ebp
 387:	68 1a 02 00 00       	push   $0x21a
 38c:	e8 fc ff ff ff       	call   38d <enable_bootsplash+0x38d>
 391:	0f b7 46 10          	movzwl 0x10(%esi),%eax
 395:	0f af 44 24 44       	imul   0x44(%esp),%eax
 39a:	89 44 24 30          	mov    %eax,0x30(%esp)
 39e:	83 c4 20             	add    $0x20,%esp
 3a1:	b9 10 00 00 00       	mov    $0x10,%ecx
 3a6:	89 c2                	mov    %eax,%edx
 3a8:	b8 00 00 00 00       	mov    $0x0,%eax
 3ad:	e8 fc ff ff ff       	call   3ae <enable_bootsplash+0x3ae>
 3b2:	89 c7                	mov    %eax,%edi
 3b4:	85 c0                	test   %eax,%eax
 3b6:	75 1e                	jne    3d6 <enable_bootsplash+0x3d6>
 3b8:	ba 00 00 00 00       	mov    $0x0,%edx
 3bd:	b8 c7 00 00 00       	mov    $0xc7,%eax
 3c2:	e8 fc ff ff ff       	call   3c3 <enable_bootsplash+0x3c3>
 3c7:	e9 f6 00 00 00       	jmp    4c2 <enable_bootsplash+0x4c2>
 3cc:	83 44 24 14 02       	addl   $0x2,0x14(%esp)
 3d1:	e9 97 fe ff ff       	jmp    26d <enable_bootsplash+0x26d>
 3d6:	80 7c 24 19 00       	cmpb   $0x0,0x19(%esp)
 3db:	75 32                	jne    40f <enable_bootsplash+0x40f>
 3dd:	68 2e 02 00 00       	push   $0x22e
 3e2:	e8 fc ff ff ff       	call   3e3 <enable_bootsplash+0x3e3>
 3e7:	0f b7 46 10          	movzwl 0x10(%esi),%eax
 3eb:	50                   	push   %eax
 3ec:	55                   	push   %ebp
 3ed:	ff 74 24 30          	push   0x30(%esp)
 3f1:	8b 4c 24 30          	mov    0x30(%esp),%ecx
 3f5:	89 fa                	mov    %edi,%edx
 3f7:	8b 44 24 10          	mov    0x10(%esp),%eax
 3fb:	e8 fc ff ff ff       	call   3fc <enable_bootsplash+0x3fc>
 400:	83 c4 10             	add    $0x10,%esp
 403:	85 c0                	test   %eax,%eax
 405:	74 3f                	je     446 <enable_bootsplash+0x446>
 407:	50                   	push   %eax
 408:	68 4c 02 00 00       	push   $0x24c
 40d:	eb 30                	jmp    43f <enable_bootsplash+0x43f>
 40f:	68 75 02 00 00       	push   $0x275
 414:	e8 fc ff ff ff       	call   415 <enable_bootsplash+0x415>
 419:	0f b7 46 10          	movzwl 0x10(%esi),%eax
 41d:	50                   	push   %eax
 41e:	55                   	push   %ebp
 41f:	ff 74 24 30          	push   0x30(%esp)
 423:	8b 4c 24 30          	mov    0x30(%esp),%ecx
 427:	89 fa                	mov    %edi,%edx
 429:	8b 44 24 14          	mov    0x14(%esp),%eax
 42d:	e8 fc ff ff ff       	call   42e <enable_bootsplash+0x42e>
 432:	83 c4 10             	add    $0x10,%esp
 435:	85 c0                	test   %eax,%eax
 437:	74 0d                	je     446 <enable_bootsplash+0x446>
 439:	50                   	push   %eax
 43a:	68 93 02 00 00       	push   $0x293
 43f:	e8 fc ff ff ff       	call   440 <enable_bootsplash+0x440>
 444:	eb 7a                	jmp    4c0 <enable_bootsplash+0x4c0>
 446:	68 bb 02 00 00       	push   $0x2bb
 44b:	e8 fc ff ff ff       	call   44c <enable_bootsplash+0x44c>
 450:	b9 26 00 00 00       	mov    $0x26,%ecx
 455:	31 d2                	xor    %edx,%edx
 457:	8d 44 24 30          	lea    0x30(%esp),%eax
 45b:	e8 fc ff ff ff       	call   45c <enable_bootsplash+0x45c>
 460:	66 c7 44 24 4c 02 4f 	movw   $0x4f02,0x4c(%esp)
 467:	66 8b 44 24 12       	mov    0x12(%esp),%ax
 46c:	80 cc 40             	or     $0x40,%ah
 46f:	66 89 44 24 40       	mov    %ax,0x40(%esp)
 474:	8d 44 24 30          	lea    0x30(%esp),%eax
 478:	e8 fc ff ff ff       	call   479 <enable_bootsplash+0x479>
 47d:	5d                   	pop    %ebp
 47e:	66 83 7c 24 48 4f    	cmpw   $0x4f,0x48(%esp)
 484:	74 0d                	je     493 <enable_bootsplash+0x493>
 486:	68 d7 02 00 00       	push   $0x2d7
 48b:	e8 fc ff ff ff       	call   48c <enable_bootsplash+0x48c>
 490:	59                   	pop    %ecx
 491:	eb 2f                	jmp    4c2 <enable_bootsplash+0x4c2>
 493:	68 e9 02 00 00       	push   $0x2e9
 498:	e8 fc ff ff ff       	call   499 <enable_bootsplash+0x499>
 49d:	8b 4c 24 14          	mov    0x14(%esp),%ecx
 4a1:	89 fa                	mov    %edi,%edx
 4a3:	8b 44 24 18          	mov    0x18(%esp),%eax
 4a7:	e8 fc ff ff ff       	call   4a8 <enable_bootsplash+0x4a8>
 4ac:	68 05 03 00 00       	push   $0x305
 4b1:	e8 fc ff ff ff       	call   4b2 <enable_bootsplash+0x4b2>
 4b6:	c7 05 00 00 00 00 01 	movl   $0x1,0x0
 4bd:	00 00 00 
 4c0:	58                   	pop    %eax
 4c1:	5a                   	pop    %edx
 4c2:	8b 44 24 08          	mov    0x8(%esp),%eax
 4c6:	e8 fc ff ff ff       	call   4c7 <enable_bootsplash+0x4c7>
 4cb:	89 f8                	mov    %edi,%eax
 4cd:	e8 fc ff ff ff       	call   4ce <enable_bootsplash+0x4ce>
 4d2:	89 d8                	mov    %ebx,%eax
 4d4:	e8 fc ff ff ff       	call   4d5 <enable_bootsplash+0x4d5>
 4d9:	89 f0                	mov    %esi,%eax
 4db:	e8 fc ff ff ff       	call   4dc <enable_bootsplash+0x4dc>
 4e0:	8b 04 24             	mov    (%esp),%eax
 4e3:	e8 fc ff ff ff       	call   4e4 <enable_bootsplash+0x4e4>
 4e8:	8b 44 24 04          	mov    0x4(%esp),%eax
 4ec:	e8 fc ff ff ff       	call   4ed <enable_bootsplash+0x4ed>
 4f1:	83 c4 78             	add    $0x78,%esp
 4f4:	5b                   	pop    %ebx
 4f5:	5e                   	pop    %esi
 4f6:	5f                   	pop    %edi
 4f7:	5d                   	pop    %ebp
 4f8:	c3                   	ret    

Disassembly of section .text.disable_bootsplash:

00000000 <disable_bootsplash>:
   0:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
   7:	74 0f                	je     18 <disable_bootsplash+0x18>
   9:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
  10:	00 00 00 
  13:	e9 fc ff ff ff       	jmp    14 <disable_bootsplash+0x14>
  18:	c3                   	ret    
