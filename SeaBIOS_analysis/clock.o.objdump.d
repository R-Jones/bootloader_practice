
./clock.o:     file format elf32-i386


Disassembly of section .text.clear_usertimer:

00000000 <clear_usertimer>:
   0:	f6 05 a0 04 00 00 01 	testb  $0x1,0x4a0
   7:	74 0c                	je     15 <clear_usertimer+0x15>
   9:	c6 05 a0 04 00 00 00 	movb   $0x0,0x4a0
  10:	e9 fc ff ff ff       	jmp    11 <clear_usertimer+0x11>
  15:	c3                   	ret    

Disassembly of section .text.clock_setup:

00000000 <clock_setup>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	68 00 00 00 00       	push   $0x0
   7:	e8 fc ff ff ff       	call   8 <clock_setup+0x8>
   c:	e8 fc ff ff ff       	call   d <clock_setup+0xd>
  11:	e8 fc ff ff ff       	call   12 <clock_setup+0x12>
  16:	e8 fc ff ff ff       	call   17 <clock_setup+0x17>
  1b:	31 c0                	xor    %eax,%eax
  1d:	e8 fc ff ff ff       	call   1e <clock_setup+0x1e>
  22:	88 c3                	mov    %al,%bl
  24:	b8 02 00 00 00       	mov    $0x2,%eax
  29:	e8 fc ff ff ff       	call   2a <clock_setup+0x2a>
  2e:	89 c6                	mov    %eax,%esi
  30:	b8 04 00 00 00       	mov    $0x4,%eax
  35:	e8 fc ff ff ff       	call   36 <clock_setup+0x36>
  3a:	88 c2                	mov    %al,%dl
  3c:	c0 ea 04             	shr    $0x4,%dl
  3f:	0f b6 d2             	movzbl %dl,%edx
  42:	6b d2 0a             	imul   $0xa,%edx,%edx
  45:	83 e0 0f             	and    $0xf,%eax
  48:	01 d0                	add    %edx,%eax
  4a:	6b c0 3c             	imul   $0x3c,%eax,%eax
  4d:	89 f2                	mov    %esi,%edx
  4f:	c0 ea 04             	shr    $0x4,%dl
  52:	0f b6 d2             	movzbl %dl,%edx
  55:	6b d2 0a             	imul   $0xa,%edx,%edx
  58:	83 e6 0f             	and    $0xf,%esi
  5b:	01 f2                	add    %esi,%edx
  5d:	01 d0                	add    %edx,%eax
  5f:	6b c0 3c             	imul   $0x3c,%eax,%eax
  62:	88 da                	mov    %bl,%dl
  64:	c0 ea 04             	shr    $0x4,%dl
  67:	0f b6 d2             	movzbl %dl,%edx
  6a:	6b d2 0a             	imul   $0xa,%edx,%edx
  6d:	83 e3 0f             	and    $0xf,%ebx
  70:	01 da                	add    %ebx,%edx
  72:	01 d0                	add    %edx,%eax
  74:	69 c0 e8 03 00 00    	imul   $0x3e8,%eax,%eax
  7a:	e8 fc ff ff ff       	call   7b <clock_setup+0x7b>
  7f:	b9 b0 00 18 00       	mov    $0x1800b0,%ecx
  84:	31 d2                	xor    %edx,%edx
  86:	f7 f1                	div    %ecx
  88:	89 15 6c 04 00 00    	mov    %edx,0x46c
  8e:	b8 32 00 00 00       	mov    $0x32,%eax
  93:	e8 fc ff ff ff       	call   94 <clock_setup+0x94>
  98:	a2 00 00 00 00       	mov    %al,0x0
  9d:	ba 00 00 00 00       	mov    $0x0,%edx
  a2:	0f b7 d2             	movzwl %dx,%edx
  a5:	81 ca 00 00 00 f0    	or     $0xf0000000,%edx
  ab:	31 c0                	xor    %eax,%eax
  ad:	e8 fc ff ff ff       	call   ae <clock_setup+0xae>
  b2:	ba 00 00 00 00       	mov    $0x0,%edx
  b7:	0f b7 d2             	movzwl %dx,%edx
  ba:	81 ca 00 00 00 f0    	or     $0xf0000000,%edx
  c0:	58                   	pop    %eax
  c1:	b8 08 00 00 00       	mov    $0x8,%eax
  c6:	5b                   	pop    %ebx
  c7:	5e                   	pop    %esi
  c8:	e9 fc ff ff ff       	jmp    c9 <clock_setup+0xc9>

Disassembly of section .text.handle_1a:

00000000 <handle_1a>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	52                   	push   %edx
   3:	89 c3                	mov    %eax,%ebx
   5:	ba 00 00 00 00       	mov    $0x0,%edx
   a:	e8 fc ff ff ff       	call   b <handle_1a+0xb>
   f:	8a 43 1d             	mov    0x1d(%ebx),%al
  12:	3c 07                	cmp    $0x7,%al
  14:	77 0f                	ja     25 <handle_1a+0x25>
  16:	48                   	dec    %eax
  17:	3c 06                	cmp    $0x6,%al
  19:	77 2f                	ja     4a <handle_1a+0x4a>
  1b:	0f b6 c0             	movzbl %al,%eax
  1e:	ff 24 85 00 00 00 00 	jmp    *0x0(,%eax,4)
  25:	3c bb                	cmp    $0xbb,%al
  27:	0f 85 88 02 00 00    	jne    2b5 <handle_1a+0x2b5>
  2d:	68 0c 00 00 00       	push   $0xc
  32:	e8 fc ff ff ff       	call   33 <handle_1a+0x33>
  37:	31 c9                	xor    %ecx,%ecx
  39:	89 da                	mov    %ebx,%edx
  3b:	b8 00 00 00 00       	mov    $0x0,%eax
  40:	83 c4 08             	add    $0x8,%esp
  43:	5b                   	pop    %ebx
  44:	5e                   	pop    %esi
  45:	e9 fc ff ff ff       	jmp    46 <handle_1a+0x46>
  4a:	e8 fc ff ff ff       	call   4b <handle_1a+0x4b>
  4f:	a1 6c 04 00 00       	mov    0x46c,%eax
  54:	89 c2                	mov    %eax,%edx
  56:	c1 ea 10             	shr    $0x10,%edx
  59:	66 89 53 18          	mov    %dx,0x18(%ebx)
  5d:	66 89 43 14          	mov    %ax,0x14(%ebx)
  61:	a0 70 04 00 00       	mov    0x470,%al
  66:	88 43 1c             	mov    %al,0x1c(%ebx)
  69:	c6 05 70 04 00 00 00 	movb   $0x0,0x470
  70:	e9 37 02 00 00       	jmp    2ac <handle_1a+0x2ac>
  75:	0f b7 43 18          	movzwl 0x18(%ebx),%eax
  79:	c1 e0 10             	shl    $0x10,%eax
  7c:	0f b7 53 14          	movzwl 0x14(%ebx),%edx
  80:	09 d0                	or     %edx,%eax
  82:	a3 6c 04 00 00       	mov    %eax,0x46c
  87:	c6 05 70 04 00 00 00 	movb   $0x0,0x470
  8e:	c6 43 1d 00          	movb   $0x0,0x1d(%ebx)
  92:	e9 15 02 00 00       	jmp    2ac <handle_1a+0x2ac>
  97:	e8 fc ff ff ff       	call   98 <handle_1a+0x98>
  9c:	85 c0                	test   %eax,%eax
  9e:	74 0f                	je     af <handle_1a+0xaf>
  a0:	b9 00 00 00 00       	mov    $0x0,%ecx
  a5:	ba 62 00 00 00       	mov    $0x62,%edx
  aa:	e9 c5 00 00 00       	jmp    174 <handle_1a+0x174>
  af:	31 c0                	xor    %eax,%eax
  b1:	e8 fc ff ff ff       	call   b2 <handle_1a+0xb2>
  b6:	88 43 15             	mov    %al,0x15(%ebx)
  b9:	b8 02 00 00 00       	mov    $0x2,%eax
  be:	e8 fc ff ff ff       	call   bf <handle_1a+0xbf>
  c3:	88 43 18             	mov    %al,0x18(%ebx)
  c6:	b8 04 00 00 00       	mov    $0x4,%eax
  cb:	e8 fc ff ff ff       	call   cc <handle_1a+0xcc>
  d0:	88 43 19             	mov    %al,0x19(%ebx)
  d3:	b8 0b 00 00 00       	mov    $0xb,%eax
  d8:	e8 fc ff ff ff       	call   d9 <handle_1a+0xd9>
  dd:	83 e0 01             	and    $0x1,%eax
  e0:	88 43 14             	mov    %al,0x14(%ebx)
  e3:	c6 43 1d 00          	movb   $0x0,0x1d(%ebx)
  e7:	8a 43 19             	mov    0x19(%ebx),%al
  ea:	e9 ba 01 00 00       	jmp    2a9 <handle_1a+0x2a9>
  ef:	e8 fc ff ff ff       	call   f0 <handle_1a+0xf0>
  f4:	85 c0                	test   %eax,%eax
  f6:	74 05                	je     fd <handle_1a+0xfd>
  f8:	e8 fc ff ff ff       	call   f9 <handle_1a+0xf9>
  fd:	0f b6 53 15          	movzbl 0x15(%ebx),%edx
 101:	31 c0                	xor    %eax,%eax
 103:	e8 fc ff ff ff       	call   104 <handle_1a+0x104>
 108:	0f b6 53 18          	movzbl 0x18(%ebx),%edx
 10c:	b8 02 00 00 00       	mov    $0x2,%eax
 111:	e8 fc ff ff ff       	call   112 <handle_1a+0x112>
 116:	0f b6 53 19          	movzbl 0x19(%ebx),%edx
 11a:	b8 04 00 00 00       	mov    $0x4,%eax
 11f:	e8 fc ff ff ff       	call   120 <handle_1a+0x120>
 124:	b8 0b 00 00 00       	mov    $0xb,%eax
 129:	e8 fc ff ff ff       	call   12a <handle_1a+0x12a>
 12e:	8a 4b 14             	mov    0x14(%ebx),%cl
 131:	83 e1 01             	and    $0x1,%ecx
 134:	83 e0 60             	and    $0x60,%eax
 137:	09 c1                	or     %eax,%ecx
 139:	83 c9 02             	or     $0x2,%ecx
 13c:	0f be d1             	movsbl %cl,%edx
 13f:	88 4c 24 03          	mov    %cl,0x3(%esp)
 143:	b8 0b 00 00 00       	mov    $0xb,%eax
 148:	e8 fc ff ff ff       	call   149 <handle_1a+0x149>
 14d:	c6 43 1d 00          	movb   $0x0,0x1d(%ebx)
 151:	8a 4c 24 03          	mov    0x3(%esp),%cl
 155:	88 4b 1c             	mov    %cl,0x1c(%ebx)
 158:	e9 4f 01 00 00       	jmp    2ac <handle_1a+0x2ac>
 15d:	c6 43 1d 00          	movb   $0x0,0x1d(%ebx)
 161:	e8 fc ff ff ff       	call   162 <handle_1a+0x162>
 166:	85 c0                	test   %eax,%eax
 168:	74 14                	je     17e <handle_1a+0x17e>
 16a:	b9 00 00 00 00       	mov    $0x0,%ecx
 16f:	ba 93 00 00 00       	mov    $0x93,%edx
 174:	89 d8                	mov    %ebx,%eax
 176:	5e                   	pop    %esi
 177:	5b                   	pop    %ebx
 178:	5e                   	pop    %esi
 179:	e9 fc ff ff ff       	jmp    17a <handle_1a+0x17a>
 17e:	b8 09 00 00 00       	mov    $0x9,%eax
 183:	e8 fc ff ff ff       	call   184 <handle_1a+0x184>
 188:	88 43 18             	mov    %al,0x18(%ebx)
 18b:	b8 08 00 00 00       	mov    $0x8,%eax
 190:	e8 fc ff ff ff       	call   191 <handle_1a+0x191>
 195:	88 43 15             	mov    %al,0x15(%ebx)
 198:	b8 07 00 00 00       	mov    $0x7,%eax
 19d:	e8 fc ff ff ff       	call   19e <handle_1a+0x19e>
 1a2:	88 43 14             	mov    %al,0x14(%ebx)
 1a5:	a0 00 00 00 00       	mov    0x0,%al
 1aa:	88 43 19             	mov    %al,0x19(%ebx)
 1ad:	e9 f7 00 00 00       	jmp    2a9 <handle_1a+0x2a9>
 1b2:	e8 fc ff ff ff       	call   1b3 <handle_1a+0x1b3>
 1b7:	85 c0                	test   %eax,%eax
 1b9:	74 11                	je     1cc <handle_1a+0x1cc>
 1bb:	e8 fc ff ff ff       	call   1bc <handle_1a+0x1bc>
 1c0:	b9 00 00 00 00       	mov    $0x0,%ecx
 1c5:	ba ae 00 00 00       	mov    $0xae,%edx
 1ca:	eb a8                	jmp    174 <handle_1a+0x174>
 1cc:	0f b6 53 18          	movzbl 0x18(%ebx),%edx
 1d0:	b8 09 00 00 00       	mov    $0x9,%eax
 1d5:	e8 fc ff ff ff       	call   1d6 <handle_1a+0x1d6>
 1da:	0f b6 53 15          	movzbl 0x15(%ebx),%edx
 1de:	b8 08 00 00 00       	mov    $0x8,%eax
 1e3:	e8 fc ff ff ff       	call   1e4 <handle_1a+0x1e4>
 1e8:	0f b6 53 14          	movzbl 0x14(%ebx),%edx
 1ec:	b8 07 00 00 00       	mov    $0x7,%eax
 1f1:	e8 fc ff ff ff       	call   1f2 <handle_1a+0x1f2>
 1f6:	8a 43 19             	mov    0x19(%ebx),%al
 1f9:	a2 00 00 00 00       	mov    %al,0x0
 1fe:	b8 0b 00 00 00       	mov    $0xb,%eax
 203:	e8 fc ff ff ff       	call   204 <handle_1a+0x204>
 208:	89 c6                	mov    %eax,%esi
 20a:	83 e6 7f             	and    $0x7f,%esi
 20d:	89 c2                	mov    %eax,%edx
 20f:	83 e2 7f             	and    $0x7f,%edx
 212:	e9 82 00 00 00       	jmp    299 <handle_1a+0x299>
 217:	b8 0b 00 00 00       	mov    $0xb,%eax
 21c:	e8 fc ff ff ff       	call   21d <handle_1a+0x21d>
 221:	89 c6                	mov    %eax,%esi
 223:	66 c7 43 1c 00 00    	movw   $0x0,0x1c(%ebx)
 229:	a8 20                	test   $0x20,%al
 22b:	74 0f                	je     23c <handle_1a+0x23c>
 22d:	b9 00 00 00 00       	mov    $0x0,%ecx
 232:	ba cf 00 00 00       	mov    $0xcf,%edx
 237:	e9 38 ff ff ff       	jmp    174 <handle_1a+0x174>
 23c:	e8 fc ff ff ff       	call   23d <handle_1a+0x23d>
 241:	85 c0                	test   %eax,%eax
 243:	74 05                	je     24a <handle_1a+0x24a>
 245:	e8 fc ff ff ff       	call   246 <handle_1a+0x246>
 24a:	0f b6 53 15          	movzbl 0x15(%ebx),%edx
 24e:	b8 01 00 00 00       	mov    $0x1,%eax
 253:	e8 fc ff ff ff       	call   254 <handle_1a+0x254>
 258:	0f b6 53 18          	movzbl 0x18(%ebx),%edx
 25c:	b8 03 00 00 00       	mov    $0x3,%eax
 261:	e8 fc ff ff ff       	call   262 <handle_1a+0x262>
 266:	0f b6 53 19          	movzbl 0x19(%ebx),%edx
 26a:	b8 05 00 00 00       	mov    $0x5,%eax
 26f:	e8 fc ff ff ff       	call   270 <handle_1a+0x270>
 274:	89 f2                	mov    %esi,%edx
 276:	83 e2 5f             	and    $0x5f,%edx
 279:	83 ca 20             	or     $0x20,%edx
 27c:	b8 0b 00 00 00       	mov    $0xb,%eax
 281:	e8 fc ff ff ff       	call   282 <handle_1a+0x282>
 286:	eb 24                	jmp    2ac <handle_1a+0x2ac>
 288:	b8 0b 00 00 00       	mov    $0xb,%eax
 28d:	e8 fc ff ff ff       	call   28e <handle_1a+0x28e>
 292:	89 c6                	mov    %eax,%esi
 294:	89 f2                	mov    %esi,%edx
 296:	83 e2 5f             	and    $0x5f,%edx
 299:	b8 0b 00 00 00       	mov    $0xb,%eax
 29e:	e8 fc ff ff ff       	call   29f <handle_1a+0x29f>
 2a3:	c6 43 1d 00          	movb   $0x0,0x1d(%ebx)
 2a7:	89 f0                	mov    %esi,%eax
 2a9:	88 43 1c             	mov    %al,0x1c(%ebx)
 2ac:	66 83 63 24 fe       	andw   $0xfffe,0x24(%ebx)
 2b1:	58                   	pop    %eax
 2b2:	5b                   	pop    %ebx
 2b3:	5e                   	pop    %esi
 2b4:	c3                   	ret    
 2b5:	b9 00 00 00 00       	mov    $0x0,%ecx
 2ba:	ba 02 01 00 00       	mov    $0x102,%edx
 2bf:	89 d8                	mov    %ebx,%eax
 2c1:	5b                   	pop    %ebx
 2c2:	5b                   	pop    %ebx
 2c3:	5e                   	pop    %esi
 2c4:	e9 fc ff ff ff       	jmp    2c5 <handle_1a+0x2c5>

Disassembly of section .text.handle_08:

00000000 <handle_08>:
   0:	83 ec 28             	sub    $0x28,%esp
   3:	b8 00 00 00 00       	mov    $0x0,%eax
   8:	e8 fc ff ff ff       	call   9 <handle_08+0x9>
   d:	a1 6c 04 00 00       	mov    0x46c,%eax
  12:	40                   	inc    %eax
  13:	3d af 00 18 00       	cmp    $0x1800af,%eax
  18:	76 08                	jbe    22 <handle_08+0x22>
  1a:	fe 05 70 04 00 00    	incb   0x470
  20:	31 c0                	xor    %eax,%eax
  22:	a3 6c 04 00 00       	mov    %eax,0x46c
  27:	e8 fc ff ff ff       	call   28 <handle_08+0x28>
  2c:	e8 fc ff ff ff       	call   2d <handle_08+0x2d>
  31:	e8 fc ff ff ff       	call   32 <handle_08+0x32>
  36:	e8 fc ff ff ff       	call   37 <handle_08+0x37>
  3b:	b9 26 00 00 00       	mov    $0x26,%ecx
  40:	31 d2                	xor    %edx,%edx
  42:	8d 44 24 02          	lea    0x2(%esp),%eax
  46:	e8 fc ff ff ff       	call   47 <handle_08+0x47>
  4b:	66 c7 44 24 26 00 02 	movw   $0x200,0x26(%esp)
  52:	ba 00 00 00 00       	mov    $0x0,%edx
  57:	0f b7 d2             	movzwl %dx,%edx
  5a:	8d 44 24 02          	lea    0x2(%esp),%eax
  5e:	e8 fc ff ff ff       	call   5f <handle_08+0x5f>
  63:	b0 20                	mov    $0x20,%al
  65:	e6 20                	out    %al,$0x20
  67:	83 c4 28             	add    $0x28,%esp
  6a:	c3                   	ret    

Disassembly of section .text.clock_poll_irq:

00000000 <clock_poll_irq>:
   0:	c3                   	ret    

Disassembly of section .text.irqtimer_calc_ticks:

00000000 <irqtimer_calc_ticks>:
   0:	8b 15 6c 04 00 00    	mov    0x46c,%edx
   6:	8d 44 02 01          	lea    0x1(%edx,%eax,1),%eax
   a:	b9 b0 00 18 00       	mov    $0x1800b0,%ecx
   f:	31 d2                	xor    %edx,%edx
  11:	f7 f1                	div    %ecx
  13:	89 d0                	mov    %edx,%eax
  15:	c3                   	ret    

Disassembly of section .text.irqtimer_calc:

00000000 <irqtimer_calc>:
   0:	85 c0                	test   %eax,%eax
   2:	74 0a                	je     e <irqtimer_calc+0xe>
   4:	e8 fc ff ff ff       	call   5 <irqtimer_calc+0x5>
   9:	e9 fc ff ff ff       	jmp    a <irqtimer_calc+0xa>
   e:	a1 6c 04 00 00       	mov    0x46c,%eax
  13:	c3                   	ret    

Disassembly of section .text.irqtimer_check:

00000000 <irqtimer_check>:
   0:	89 c2                	mov    %eax,%edx
   2:	a1 6c 04 00 00       	mov    0x46c,%eax
   7:	05 b0 00 18 00       	add    $0x1800b0,%eax
   c:	29 d0                	sub    %edx,%eax
   e:	b9 b0 00 18 00       	mov    $0x1800b0,%ecx
  13:	31 d2                	xor    %edx,%edx
  15:	f7 f1                	div    %ecx
  17:	31 c0                	xor    %eax,%eax
  19:	81 fa 57 00 0c 00    	cmp    $0xc0057,%edx
  1f:	0f 96 c0             	setbe  %al
  22:	c3                   	ret    

Disassembly of section .text.handle_1586:

00000000 <handle_1586>:
   0:	53                   	push   %ebx
   1:	52                   	push   %edx
   2:	89 c3                	mov    %eax,%ebx
   4:	c6 44 24 03 00       	movb   $0x0,0x3(%esp)
   9:	0f b7 40 18          	movzwl 0x18(%eax),%eax
   d:	c1 e0 10             	shl    $0x10,%eax
  10:	0f b7 53 14          	movzwl 0x14(%ebx),%edx
  14:	09 d0                	or     %edx,%eax
  16:	f6 05 a0 04 00 00 01 	testb  $0x1,0x4a0
  1d:	74 13                	je     32 <handle_1586+0x32>
  1f:	b9 00 00 00 00       	mov    $0x0,%ecx
  24:	ba 83 95 01 00       	mov    $0x19583,%edx
  29:	89 d8                	mov    %ebx,%eax
  2b:	e8 fc ff ff ff       	call   2c <handle_1586+0x2c>
  30:	eb 38                	jmp    6a <handle_1586+0x6a>
  32:	8d 54 24 03          	lea    0x3(%esp),%edx
  36:	c6 05 a0 04 00 00 01 	movb   $0x1,0x4a0
  3d:	66 89 15 98 04 00 00 	mov    %dx,0x498
  44:	66 c7 05 9a 04 00 00 	movw   $0x0,0x49a
  4b:	00 00 
  4d:	a3 9c 04 00 00       	mov    %eax,0x49c
  52:	e8 fc ff ff ff       	call   53 <handle_1586+0x53>
  57:	80 7c 24 03 00       	cmpb   $0x0,0x3(%esp)
  5c:	75 07                	jne    65 <handle_1586+0x65>
  5e:	e8 fc ff ff ff       	call   5f <handle_1586+0x5f>
  63:	eb f2                	jmp    57 <handle_1586+0x57>
  65:	66 83 63 24 fe       	andw   $0xfffe,0x24(%ebx)
  6a:	58                   	pop    %eax
  6b:	5b                   	pop    %ebx
  6c:	c3                   	ret    

Disassembly of section .text.handle_1583:

00000000 <handle_1583>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 c3                	mov    %eax,%ebx
   4:	8a 40 1c             	mov    0x1c(%eax),%al
   7:	84 c0                	test   %al,%al
   9:	74 0b                	je     16 <handle_1583+0x16>
   b:	fe c8                	dec    %al
   d:	75 5e                	jne    6d <handle_1583+0x6d>
   f:	e8 fc ff ff ff       	call   10 <handle_1583+0x10>
  14:	eb 50                	jmp    66 <handle_1583+0x66>
  16:	66 8b 4b 10          	mov    0x10(%ebx),%cx
  1a:	66 8b 53 02          	mov    0x2(%ebx),%dx
  1e:	0f b7 43 18          	movzwl 0x18(%ebx),%eax
  22:	c1 e0 10             	shl    $0x10,%eax
  25:	0f b7 73 14          	movzwl 0x14(%ebx),%esi
  29:	09 f0                	or     %esi,%eax
  2b:	f6 05 a0 04 00 00 01 	testb  $0x1,0x4a0
  32:	74 13                	je     47 <handle_1583+0x47>
  34:	b9 00 00 00 00       	mov    $0x0,%ecx
  39:	ba 86 a4 01 00       	mov    $0x1a486,%edx
  3e:	89 d8                	mov    %ebx,%eax
  40:	5b                   	pop    %ebx
  41:	5e                   	pop    %esi
  42:	e9 fc ff ff ff       	jmp    43 <handle_1583+0x43>
  47:	c6 05 a0 04 00 00 01 	movb   $0x1,0x4a0
  4e:	66 89 0d 98 04 00 00 	mov    %cx,0x498
  55:	66 89 15 9a 04 00 00 	mov    %dx,0x49a
  5c:	a3 9c 04 00 00       	mov    %eax,0x49c
  61:	e8 fc ff ff ff       	call   62 <handle_1583+0x62>
  66:	66 83 63 24 fe       	andw   $0xfffe,0x24(%ebx)
  6b:	eb 14                	jmp    81 <handle_1583+0x81>
  6d:	b9 00 00 00 00       	mov    $0x0,%ecx
  72:	ba 86 b4 01 00       	mov    $0x1b486,%edx
  77:	89 d8                	mov    %ebx,%eax
  79:	e8 fc ff ff ff       	call   7a <handle_1583+0x7a>
  7e:	fe 4b 1c             	decb   0x1c(%ebx)
  81:	5b                   	pop    %ebx
  82:	5e                   	pop    %esi
  83:	c3                   	ret    

Disassembly of section .text.handle_70:

00000000 <handle_70>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	83 ec 28             	sub    $0x28,%esp
   5:	b8 00 00 00 00       	mov    $0x0,%eax
   a:	e8 fc ff ff ff       	call   b <handle_70+0xb>
   f:	b8 0b 00 00 00       	mov    $0xb,%eax
  14:	e8 fc ff ff ff       	call   15 <handle_70+0x15>
  19:	89 c6                	mov    %eax,%esi
  1b:	b8 0c 00 00 00       	mov    $0xc,%eax
  20:	e8 fc ff ff ff       	call   21 <handle_70+0x21>
  25:	83 e6 60             	and    $0x60,%esi
  28:	74 73                	je     9d <handle_70+0x9d>
  2a:	88 c3                	mov    %al,%bl
  2c:	a8 20                	test   $0x20,%al
  2e:	74 28                	je     58 <handle_70+0x58>
  30:	b9 26 00 00 00       	mov    $0x26,%ecx
  35:	31 d2                	xor    %edx,%edx
  37:	8d 44 24 02          	lea    0x2(%esp),%eax
  3b:	e8 fc ff ff ff       	call   3c <handle_70+0x3c>
  40:	66 c7 44 24 26 00 02 	movw   $0x200,0x26(%esp)
  47:	ba 00 00 00 00       	mov    $0x0,%edx
  4c:	0f b7 d2             	movzwl %dx,%edx
  4f:	8d 44 24 02          	lea    0x2(%esp),%eax
  53:	e8 fc ff ff ff       	call   54 <handle_70+0x54>
  58:	80 e3 40             	and    $0x40,%bl
  5b:	74 40                	je     9d <handle_70+0x9d>
  5d:	e8 fc ff ff ff       	call   5e <handle_70+0x5e>
  62:	80 3d a0 04 00 00 00 	cmpb   $0x0,0x4a0
  69:	74 32                	je     9d <handle_70+0x9d>
  6b:	a1 9c 04 00 00       	mov    0x49c,%eax
  70:	3d d0 03 00 00       	cmp    $0x3d0,%eax
  75:	77 1c                	ja     93 <handle_70+0x93>
  77:	0f b7 05 9a 04 00 00 	movzwl 0x49a,%eax
  7e:	c1 e0 04             	shl    $0x4,%eax
  81:	0f b7 15 98 04 00 00 	movzwl 0x498,%edx
  88:	80 0c 10 80          	orb    $0x80,(%eax,%edx,1)
  8c:	e8 fc ff ff ff       	call   8d <handle_70+0x8d>
  91:	eb 0a                	jmp    9d <handle_70+0x9d>
  93:	2d d1 03 00 00       	sub    $0x3d1,%eax
  98:	a3 9c 04 00 00       	mov    %eax,0x49c
  9d:	b0 20                	mov    $0x20,%al
  9f:	e6 a0                	out    %al,$0xa0
  a1:	e6 20                	out    %al,$0x20
  a3:	83 c4 28             	add    $0x28,%esp
  a6:	5b                   	pop    %ebx
  a7:	5e                   	pop    %esi
  a8:	c3                   	ret    
