
./output.o:     file format elf32-i386


Disassembly of section .text.putc:

00000000 <putc>:
   0:	0f be d2             	movsbl %dl,%edx
   3:	ff 20                	jmp    *(%eax)

Disassembly of section .text.putuint:

00000000 <putuint>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	83 ec 0c             	sub    $0xc,%esp
   6:	89 c6                	mov    %eax,%esi
   8:	89 d1                	mov    %edx,%ecx
   a:	c6 44 24 0b 00       	movb   $0x0,0xb(%esp)
   f:	8d 5c 24 0a          	lea    0xa(%esp),%ebx
  13:	bf 0a 00 00 00       	mov    $0xa,%edi
  18:	89 c8                	mov    %ecx,%eax
  1a:	31 d2                	xor    %edx,%edx
  1c:	f7 f7                	div    %edi
  1e:	83 c2 30             	add    $0x30,%edx
  21:	88 13                	mov    %dl,(%ebx)
  23:	83 f9 09             	cmp    $0x9,%ecx
  26:	76 05                	jbe    2d <putuint+0x2d>
  28:	4b                   	dec    %ebx
  29:	89 c1                	mov    %eax,%ecx
  2b:	eb eb                	jmp    18 <putuint+0x18>
  2d:	85 db                	test   %ebx,%ebx
  2f:	75 05                	jne    36 <putuint+0x36>
  31:	bb 00 00 00 00       	mov    $0x0,%ebx
  36:	0f be 13             	movsbl (%ebx),%edx
  39:	84 d2                	test   %dl,%dl
  3b:	74 0a                	je     47 <putuint+0x47>
  3d:	89 f0                	mov    %esi,%eax
  3f:	e8 fc ff ff ff       	call   40 <putuint+0x40>
  44:	43                   	inc    %ebx
  45:	eb ef                	jmp    36 <putuint+0x36>
  47:	83 c4 0c             	add    $0xc,%esp
  4a:	5b                   	pop    %ebx
  4b:	5e                   	pop    %esi
  4c:	5f                   	pop    %edi
  4d:	c3                   	ret    

Disassembly of section .text.putsinglehex:

00000000 <putsinglehex>:
   0:	53                   	push   %ebx
   1:	8d 5a 30             	lea    0x30(%edx),%ebx
   4:	83 fa 09             	cmp    $0x9,%edx
   7:	76 0a                	jbe    13 <putsinglehex+0x13>
   9:	8d 5a 57             	lea    0x57(%edx),%ebx
   c:	85 c9                	test   %ecx,%ecx
   e:	74 03                	je     13 <putsinglehex+0x13>
  10:	8d 5a 37             	lea    0x37(%edx),%ebx
  13:	0f be d3             	movsbl %bl,%edx
  16:	5b                   	pop    %ebx
  17:	e9 fc ff ff ff       	jmp    18 <putsinglehex+0x18>

Disassembly of section .text.puthex:

00000000 <puthex>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	89 c6                	mov    %eax,%esi
   5:	89 d3                	mov    %edx,%ebx
   7:	8b 7c 24 10          	mov    0x10(%esp),%edi
   b:	49                   	dec    %ecx
   c:	83 f9 06             	cmp    $0x6,%ecx
   f:	77 07                	ja     18 <puthex+0x18>
  11:	ff 24 8d 00 00 00 00 	jmp    *0x0(,%ecx,4)
  18:	c1 ea 1c             	shr    $0x1c,%edx
  1b:	89 f9                	mov    %edi,%ecx
  1d:	e8 fc ff ff ff       	call   1e <puthex+0x1e>
  22:	89 da                	mov    %ebx,%edx
  24:	c1 ea 18             	shr    $0x18,%edx
  27:	83 e2 0f             	and    $0xf,%edx
  2a:	89 f9                	mov    %edi,%ecx
  2c:	89 f0                	mov    %esi,%eax
  2e:	e8 fc ff ff ff       	call   2f <puthex+0x2f>
  33:	89 da                	mov    %ebx,%edx
  35:	c1 ea 14             	shr    $0x14,%edx
  38:	83 e2 0f             	and    $0xf,%edx
  3b:	89 f9                	mov    %edi,%ecx
  3d:	89 f0                	mov    %esi,%eax
  3f:	e8 fc ff ff ff       	call   40 <puthex+0x40>
  44:	89 da                	mov    %ebx,%edx
  46:	c1 ea 10             	shr    $0x10,%edx
  49:	83 e2 0f             	and    $0xf,%edx
  4c:	89 f9                	mov    %edi,%ecx
  4e:	89 f0                	mov    %esi,%eax
  50:	e8 fc ff ff ff       	call   51 <puthex+0x51>
  55:	89 da                	mov    %ebx,%edx
  57:	c1 ea 0c             	shr    $0xc,%edx
  5a:	83 e2 0f             	and    $0xf,%edx
  5d:	89 f9                	mov    %edi,%ecx
  5f:	89 f0                	mov    %esi,%eax
  61:	e8 fc ff ff ff       	call   62 <puthex+0x62>
  66:	89 da                	mov    %ebx,%edx
  68:	c1 ea 08             	shr    $0x8,%edx
  6b:	83 e2 0f             	and    $0xf,%edx
  6e:	89 f9                	mov    %edi,%ecx
  70:	89 f0                	mov    %esi,%eax
  72:	e8 fc ff ff ff       	call   73 <puthex+0x73>
  77:	89 da                	mov    %ebx,%edx
  79:	c1 ea 04             	shr    $0x4,%edx
  7c:	83 e2 0f             	and    $0xf,%edx
  7f:	89 f9                	mov    %edi,%ecx
  81:	89 f0                	mov    %esi,%eax
  83:	e8 fc ff ff ff       	call   84 <puthex+0x84>
  88:	83 e3 0f             	and    $0xf,%ebx
  8b:	89 da                	mov    %ebx,%edx
  8d:	89 f9                	mov    %edi,%ecx
  8f:	89 f0                	mov    %esi,%eax
  91:	5b                   	pop    %ebx
  92:	5e                   	pop    %esi
  93:	5f                   	pop    %edi
  94:	e9 fc ff ff ff       	jmp    95 <puthex+0x95>

Disassembly of section .text.putprettyhex:

00000000 <putprettyhex>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 08             	sub    $0x8,%esp
   7:	89 d6                	mov    %edx,%esi
   9:	89 cb                	mov    %ecx,%ebx
   b:	8b 7c 24 20          	mov    0x20(%esp),%edi
   f:	8a 54 24 1c          	mov    0x1c(%esp),%dl
  13:	89 f5                	mov    %esi,%ebp
  15:	b9 01 00 00 00       	mov    $0x1,%ecx
  1a:	c1 ed 04             	shr    $0x4,%ebp
  1d:	74 03                	je     22 <putprettyhex+0x22>
  1f:	41                   	inc    %ecx
  20:	eb f8                	jmp    1a <putprettyhex+0x1a>
  22:	29 cb                	sub    %ecx,%ebx
  24:	0f be ea             	movsbl %dl,%ebp
  27:	85 db                	test   %ebx,%ebx
  29:	7e 18                	jle    43 <putprettyhex+0x43>
  2b:	89 4c 24 04          	mov    %ecx,0x4(%esp)
  2f:	89 ea                	mov    %ebp,%edx
  31:	89 04 24             	mov    %eax,(%esp)
  34:	e8 fc ff ff ff       	call   35 <putprettyhex+0x35>
  39:	4b                   	dec    %ebx
  3a:	8b 4c 24 04          	mov    0x4(%esp),%ecx
  3e:	8b 04 24             	mov    (%esp),%eax
  41:	eb e4                	jmp    27 <putprettyhex+0x27>
  43:	89 7c 24 1c          	mov    %edi,0x1c(%esp)
  47:	89 f2                	mov    %esi,%edx
  49:	83 c4 08             	add    $0x8,%esp
  4c:	5b                   	pop    %ebx
  4d:	5e                   	pop    %esi
  4e:	5f                   	pop    %edi
  4f:	5d                   	pop    %ebp
  50:	e9 fc ff ff ff       	jmp    51 <putprettyhex+0x51>

Disassembly of section .text.putc_str:

00000000 <putc_str>:
   0:	8b 48 04             	mov    0x4(%eax),%ecx
   3:	3b 48 08             	cmp    0x8(%eax),%ecx
   6:	73 05                	jae    d <putc_str+0xd>
   8:	88 11                	mov    %dl,(%ecx)
   a:	ff 40 04             	incl   0x4(%eax)
   d:	c3                   	ret    

Disassembly of section .text.debug_putc:

00000000 <debug_putc>:
   0:	50                   	push   %eax
   1:	0f be c2             	movsbl %dl,%eax
   4:	89 04 24             	mov    %eax,(%esp)
   7:	e8 fc ff ff ff       	call   8 <debug_putc+0x8>
   c:	8b 04 24             	mov    (%esp),%eax
   f:	e8 fc ff ff ff       	call   10 <debug_putc+0x10>
  14:	8b 04 24             	mov    (%esp),%eax
  17:	5a                   	pop    %edx
  18:	e9 fc ff ff ff       	jmp    19 <debug_putc+0x19>

Disassembly of section .text.screenc:

00000000 <screenc>:
   0:	ba 00 00 00 00       	mov    $0x0,%edx
   5:	0f b7 d2             	movzwl %dx,%edx
   8:	81 ca 00 00 00 f0    	or     $0xf0000000,%edx
   e:	39 15 40 00 00 00    	cmp    %edx,0x40
  14:	74 41                	je     57 <screenc+0x57>
  16:	53                   	push   %ebx
  17:	83 ec 28             	sub    $0x28,%esp
  1a:	89 c3                	mov    %eax,%ebx
  1c:	b9 26 00 00 00       	mov    $0x26,%ecx
  21:	31 d2                	xor    %edx,%edx
  23:	8d 44 24 02          	lea    0x2(%esp),%eax
  27:	e8 fc ff ff ff       	call   28 <screenc+0x28>
  2c:	66 c7 44 24 26 00 02 	movw   $0x200,0x26(%esp)
  33:	c6 44 24 1f 0e       	movb   $0xe,0x1f(%esp)
  38:	88 5c 24 1e          	mov    %bl,0x1e(%esp)
  3c:	c6 44 24 12 07       	movb   $0x7,0x12(%esp)
  41:	ba 00 00 00 00       	mov    $0x0,%edx
  46:	0f b7 d2             	movzwl %dx,%edx
  49:	8d 44 24 02          	lea    0x2(%esp),%eax
  4d:	e8 fc ff ff ff       	call   4e <screenc+0x4e>
  52:	83 c4 28             	add    $0x28,%esp
  55:	5b                   	pop    %ebx
  56:	c3                   	ret    
  57:	c3                   	ret    

Disassembly of section .text.screen_putc:

00000000 <screen_putc>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 d3                	mov    %edx,%ebx
   4:	0f be f2             	movsbl %dl,%esi
   7:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
   e:	74 0c                	je     1c <screen_putc+0x1c>
  10:	89 f2                	mov    %esi,%edx
  12:	b8 00 00 00 00       	mov    $0x0,%eax
  17:	e8 fc ff ff ff       	call   18 <screen_putc+0x18>
  1c:	80 fb 0a             	cmp    $0xa,%bl
  1f:	75 0a                	jne    2b <screen_putc+0x2b>
  21:	b8 0d 00 00 00       	mov    $0xd,%eax
  26:	e8 fc ff ff ff       	call   27 <screen_putc+0x27>
  2b:	89 f0                	mov    %esi,%eax
  2d:	5b                   	pop    %ebx
  2e:	5e                   	pop    %esi
  2f:	e9 fc ff ff ff       	jmp    30 <screen_putc+0x30>

Disassembly of section .text.bvprintf:

00000000 <bvprintf>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 08             	sub    $0x8,%esp
   7:	89 c3                	mov    %eax,%ebx
   9:	89 d7                	mov    %edx,%edi
   b:	89 cd                	mov    %ecx,%ebp
   d:	0f be 17             	movsbl (%edi),%edx
  10:	84 d2                	test   %dl,%dl
  12:	0f 84 51 02 00 00    	je     269 <bvprintf+0x269>
  18:	80 fa 25             	cmp    $0x25,%dl
  1b:	0f 85 33 02 00 00    	jne    254 <bvprintf+0x254>
  21:	8d 77 01             	lea    0x1(%edi),%esi
  24:	c6 04 24 20          	movb   $0x20,(%esp)
  28:	31 c9                	xor    %ecx,%ecx
  2a:	0f be 06             	movsbl (%esi),%eax
  2d:	8d 50 d0             	lea    -0x30(%eax),%edx
  30:	80 fa 09             	cmp    $0x9,%dl
  33:	77 1a                	ja     4f <bvprintf+0x4f>
  35:	3c 30                	cmp    $0x30,%al
  37:	75 04                	jne    3d <bvprintf+0x3d>
  39:	85 c9                	test   %ecx,%ecx
  3b:	74 09                	je     46 <bvprintf+0x46>
  3d:	6b d1 0a             	imul   $0xa,%ecx,%edx
  40:	8d 4c 02 d0          	lea    -0x30(%edx,%eax,1),%ecx
  44:	eb 06                	jmp    4c <bvprintf+0x4c>
  46:	c6 04 24 30          	movb   $0x30,(%esp)
  4a:	31 c9                	xor    %ecx,%ecx
  4c:	46                   	inc    %esi
  4d:	eb db                	jmp    2a <bvprintf+0x2a>
  4f:	31 d2                	xor    %edx,%edx
  51:	3c 6c                	cmp    $0x6c,%al
  53:	75 12                	jne    67 <bvprintf+0x67>
  55:	8a 46 01             	mov    0x1(%esi),%al
  58:	3c 6c                	cmp    $0x6c,%al
  5a:	74 03                	je     5f <bvprintf+0x5f>
  5c:	46                   	inc    %esi
  5d:	eb 08                	jmp    67 <bvprintf+0x67>
  5f:	8a 46 02             	mov    0x2(%esi),%al
  62:	83 c6 02             	add    $0x2,%esi
  65:	b2 01                	mov    $0x1,%dl
  67:	3c 64                	cmp    $0x64,%al
  69:	74 6c                	je     d7 <bvprintf+0xd7>
  6b:	7f 46                	jg     b3 <bvprintf+0xb3>
  6d:	3c 2e                	cmp    $0x2e,%al
  6f:	0f 84 98 01 00 00    	je     20d <bvprintf+0x20d>
  75:	7f 19                	jg     90 <bvprintf+0x90>
  77:	3c 25                	cmp    $0x25,%al
  79:	0f 85 d0 01 00 00    	jne    24f <bvprintf+0x24f>
  7f:	ba 25 00 00 00       	mov    $0x25,%edx
  84:	89 d8                	mov    %ebx,%eax
  86:	e8 fc ff ff ff       	call   87 <bvprintf+0x87>
  8b:	e9 d1 01 00 00       	jmp    261 <bvprintf+0x261>
  90:	3c 58                	cmp    $0x58,%al
  92:	0f 84 13 01 00 00    	je     1ab <bvprintf+0x1ab>
  98:	3c 63                	cmp    $0x63,%al
  9a:	0f 85 af 01 00 00    	jne    24f <bvprintf+0x24f>
  a0:	8d 7d 04             	lea    0x4(%ebp),%edi
  a3:	0f be 55 00          	movsbl 0x0(%ebp),%edx
  a7:	89 d8                	mov    %ebx,%eax
  a9:	e8 fc ff ff ff       	call   aa <bvprintf+0xaa>
  ae:	e9 ac 01 00 00       	jmp    25f <bvprintf+0x25f>
  b3:	3c 73                	cmp    $0x73,%al
  b5:	0f 84 7c 01 00 00    	je     237 <bvprintf+0x237>
  bb:	7f 09                	jg     c6 <bvprintf+0xc6>
  bd:	3c 70                	cmp    $0x70,%al
  bf:	74 58                	je     119 <bvprintf+0x119>
  c1:	e9 89 01 00 00       	jmp    24f <bvprintf+0x24f>
  c6:	3c 75                	cmp    $0x75,%al
  c8:	74 32                	je     fc <bvprintf+0xfc>
  ca:	3c 78                	cmp    $0x78,%al
  cc:	0f 84 d9 00 00 00    	je     1ab <bvprintf+0x1ab>
  d2:	e9 78 01 00 00       	jmp    24f <bvprintf+0x24f>
  d7:	8b 7d 00             	mov    0x0(%ebp),%edi
  da:	84 d2                	test   %dl,%dl
  dc:	75 05                	jne    e3 <bvprintf+0xe3>
  de:	83 c5 04             	add    $0x4,%ebp
  e1:	eb 03                	jmp    e6 <bvprintf+0xe6>
  e3:	83 c5 08             	add    $0x8,%ebp
  e6:	85 ff                	test   %edi,%edi
  e8:	79 0e                	jns    f8 <bvprintf+0xf8>
  ea:	ba 2d 00 00 00       	mov    $0x2d,%edx
  ef:	89 d8                	mov    %ebx,%eax
  f1:	e8 fc ff ff ff       	call   f2 <bvprintf+0xf2>
  f6:	f7 df                	neg    %edi
  f8:	89 fa                	mov    %edi,%edx
  fa:	eb 11                	jmp    10d <bvprintf+0x10d>
  fc:	8b 45 00             	mov    0x0(%ebp),%eax
  ff:	84 d2                	test   %dl,%dl
 101:	75 05                	jne    108 <bvprintf+0x108>
 103:	83 c5 04             	add    $0x4,%ebp
 106:	eb 03                	jmp    10b <bvprintf+0x10b>
 108:	83 c5 08             	add    $0x8,%ebp
 10b:	89 c2                	mov    %eax,%edx
 10d:	89 d8                	mov    %ebx,%eax
 10f:	e8 fc ff ff ff       	call   110 <bvprintf+0x110>
 114:	e9 48 01 00 00       	jmp    261 <bvprintf+0x261>
 119:	8d 7d 04             	lea    0x4(%ebp),%edi
 11c:	8b 6d 00             	mov    0x0(%ebp),%ebp
 11f:	80 7e 01 50          	cmpb   $0x50,0x1(%esi)
 123:	75 58                	jne    17d <bvprintf+0x17d>
 125:	46                   	inc    %esi
 126:	0f b6 55 01          	movzbl 0x1(%ebp),%edx
 12a:	6a 00                	push   $0x0
 12c:	b9 02 00 00 00       	mov    $0x2,%ecx
 131:	89 d8                	mov    %ebx,%eax
 133:	e8 fc ff ff ff       	call   134 <bvprintf+0x134>
 138:	ba 3a 00 00 00       	mov    $0x3a,%edx
 13d:	89 d8                	mov    %ebx,%eax
 13f:	e8 fc ff ff ff       	call   140 <bvprintf+0x140>
 144:	8a 55 00             	mov    0x0(%ebp),%dl
 147:	c0 ea 03             	shr    $0x3,%dl
 14a:	0f b6 d2             	movzbl %dl,%edx
 14d:	6a 00                	push   $0x0
 14f:	b9 02 00 00 00       	mov    $0x2,%ecx
 154:	89 d8                	mov    %ebx,%eax
 156:	e8 fc ff ff ff       	call   157 <bvprintf+0x157>
 15b:	ba 2e 00 00 00       	mov    $0x2e,%edx
 160:	89 d8                	mov    %ebx,%eax
 162:	e8 fc ff ff ff       	call   163 <bvprintf+0x163>
 167:	8b 55 00             	mov    0x0(%ebp),%edx
 16a:	83 e2 07             	and    $0x7,%edx
 16d:	31 c9                	xor    %ecx,%ecx
 16f:	89 d8                	mov    %ebx,%eax
 171:	e8 fc ff ff ff       	call   172 <bvprintf+0x172>
 176:	58                   	pop    %eax
 177:	5a                   	pop    %edx
 178:	e9 e2 00 00 00       	jmp    25f <bvprintf+0x25f>
 17d:	ba 30 00 00 00       	mov    $0x30,%edx
 182:	89 d8                	mov    %ebx,%eax
 184:	e8 fc ff ff ff       	call   185 <bvprintf+0x185>
 189:	ba 78 00 00 00       	mov    $0x78,%edx
 18e:	89 d8                	mov    %ebx,%eax
 190:	e8 fc ff ff ff       	call   191 <bvprintf+0x191>
 195:	6a 00                	push   $0x0
 197:	b9 08 00 00 00       	mov    $0x8,%ecx
 19c:	89 ea                	mov    %ebp,%edx
 19e:	89 d8                	mov    %ebx,%eax
 1a0:	e8 fc ff ff ff       	call   1a1 <bvprintf+0x1a1>
 1a5:	5d                   	pop    %ebp
 1a6:	e9 b4 00 00 00       	jmp    25f <bvprintf+0x25f>
 1ab:	3c 58                	cmp    $0x58,%al
 1ad:	0f 94 c0             	sete   %al
 1b0:	0f b6 c0             	movzbl %al,%eax
 1b3:	89 c7                	mov    %eax,%edi
 1b5:	8b 45 00             	mov    0x0(%ebp),%eax
 1b8:	89 44 24 04          	mov    %eax,0x4(%esp)
 1bc:	0f be 04 24          	movsbl (%esp),%eax
 1c0:	84 d2                	test   %dl,%dl
 1c2:	74 2f                	je     1f3 <bvprintf+0x1f3>
 1c4:	8d 55 08             	lea    0x8(%ebp),%edx
 1c7:	89 14 24             	mov    %edx,(%esp)
 1ca:	8b 55 04             	mov    0x4(%ebp),%edx
 1cd:	85 d2                	test   %edx,%edx
 1cf:	74 28                	je     1f9 <bvprintf+0x1f9>
 1d1:	83 e9 08             	sub    $0x8,%ecx
 1d4:	57                   	push   %edi
 1d5:	50                   	push   %eax
 1d6:	89 d8                	mov    %ebx,%eax
 1d8:	e8 fc ff ff ff       	call   1d9 <bvprintf+0x1d9>
 1dd:	57                   	push   %edi
 1de:	b9 08 00 00 00       	mov    $0x8,%ecx
 1e3:	8b 54 24 10          	mov    0x10(%esp),%edx
 1e7:	89 d8                	mov    %ebx,%eax
 1e9:	e8 fc ff ff ff       	call   1ea <bvprintf+0x1ea>
 1ee:	83 c4 0c             	add    $0xc,%esp
 1f1:	eb 15                	jmp    208 <bvprintf+0x208>
 1f3:	8d 55 04             	lea    0x4(%ebp),%edx
 1f6:	89 14 24             	mov    %edx,(%esp)
 1f9:	57                   	push   %edi
 1fa:	50                   	push   %eax
 1fb:	8b 54 24 0c          	mov    0xc(%esp),%edx
 1ff:	89 d8                	mov    %ebx,%eax
 201:	e8 fc ff ff ff       	call   202 <bvprintf+0x202>
 206:	59                   	pop    %ecx
 207:	5f                   	pop    %edi
 208:	8b 2c 24             	mov    (%esp),%ebp
 20b:	eb 54                	jmp    261 <bvprintf+0x261>
 20d:	80 7e 01 73          	cmpb   $0x73,0x1(%esi)
 211:	75 4e                	jne    261 <bvprintf+0x261>
 213:	8d 7d 04             	lea    0x4(%ebp),%edi
 216:	8b 6d 00             	mov    0x0(%ebp),%ebp
 219:	85 ed                	test   %ebp,%ebp
 21b:	75 05                	jne    222 <bvprintf+0x222>
 21d:	bd 00 00 00 00       	mov    $0x0,%ebp
 222:	0f be 55 00          	movsbl 0x0(%ebp),%edx
 226:	84 d2                	test   %dl,%dl
 228:	74 0a                	je     234 <bvprintf+0x234>
 22a:	89 d8                	mov    %ebx,%eax
 22c:	e8 fc ff ff ff       	call   22d <bvprintf+0x22d>
 231:	45                   	inc    %ebp
 232:	eb ee                	jmp    222 <bvprintf+0x222>
 234:	46                   	inc    %esi
 235:	eb 28                	jmp    25f <bvprintf+0x25f>
 237:	8d 7d 04             	lea    0x4(%ebp),%edi
 23a:	8b 6d 00             	mov    0x0(%ebp),%ebp
 23d:	0f be 55 00          	movsbl 0x0(%ebp),%edx
 241:	84 d2                	test   %dl,%dl
 243:	74 1a                	je     25f <bvprintf+0x25f>
 245:	89 d8                	mov    %ebx,%eax
 247:	e8 fc ff ff ff       	call   248 <bvprintf+0x248>
 24c:	45                   	inc    %ebp
 24d:	eb ee                	jmp    23d <bvprintf+0x23d>
 24f:	ba 25 00 00 00       	mov    $0x25,%edx
 254:	89 d8                	mov    %ebx,%eax
 256:	e8 fc ff ff ff       	call   257 <bvprintf+0x257>
 25b:	89 fe                	mov    %edi,%esi
 25d:	eb 02                	jmp    261 <bvprintf+0x261>
 25f:	89 fd                	mov    %edi,%ebp
 261:	8d 7e 01             	lea    0x1(%esi),%edi
 264:	e9 a4 fd ff ff       	jmp    d <bvprintf+0xd>
 269:	83 c4 08             	add    $0x8,%esp
 26c:	5b                   	pop    %ebx
 26d:	5e                   	pop    %esi
 26e:	5f                   	pop    %edi
 26f:	5d                   	pop    %ebp
 270:	c3                   	ret    

Disassembly of section .text.panic:

00000000 <panic>:
   0:	8d 4c 24 08          	lea    0x8(%esp),%ecx
   4:	8b 54 24 04          	mov    0x4(%esp),%edx
   8:	b8 00 00 00 00       	mov    $0x0,%eax
   d:	e8 fc ff ff ff       	call   e <panic+0xe>
  12:	e8 fc ff ff ff       	call   13 <panic+0x13>
  17:	fa                   	cli    
  18:	f4                   	hlt    
  19:	eb fd                	jmp    18 <panic+0x18>

Disassembly of section .text.__dprintf:

00000000 <__dprintf>:
   0:	53                   	push   %ebx
   1:	8b 44 24 08          	mov    0x8(%esp),%eax
   5:	8a 00                	mov    (%eax),%al
   7:	3c 5c                	cmp    $0x5c,%al
   9:	74 53                	je     5e <__dprintf+0x5e>
   b:	3c 2f                	cmp    $0x2f,%al
   d:	74 4f                	je     5e <__dprintf+0x5e>
   f:	e8 fc ff ff ff       	call   10 <__dprintf+0x10>
  14:	89 c3                	mov    %eax,%ebx
  16:	3d 00 00 00 00       	cmp    $0x0,%eax
  1b:	74 41                	je     5e <__dprintf+0x5e>
  1d:	ba 7c 00 00 00       	mov    $0x7c,%edx
  22:	b8 00 00 00 00       	mov    $0x0,%eax
  27:	e8 fc ff ff ff       	call   28 <__dprintf+0x28>
  2c:	6a 00                	push   $0x0
  2e:	b9 08 00 00 00       	mov    $0x8,%ecx
  33:	89 da                	mov    %ebx,%edx
  35:	b8 00 00 00 00       	mov    $0x0,%eax
  3a:	e8 fc ff ff ff       	call   3b <__dprintf+0x3b>
  3f:	ba 7c 00 00 00       	mov    $0x7c,%edx
  44:	b8 00 00 00 00       	mov    $0x0,%eax
  49:	e8 fc ff ff ff       	call   4a <__dprintf+0x4a>
  4e:	ba 20 00 00 00       	mov    $0x20,%edx
  53:	b8 00 00 00 00       	mov    $0x0,%eax
  58:	e8 fc ff ff ff       	call   59 <__dprintf+0x59>
  5d:	58                   	pop    %eax
  5e:	8d 4c 24 0c          	lea    0xc(%esp),%ecx
  62:	8b 54 24 08          	mov    0x8(%esp),%edx
  66:	b8 00 00 00 00       	mov    $0x0,%eax
  6b:	e8 fc ff ff ff       	call   6c <__dprintf+0x6c>
  70:	e8 fc ff ff ff       	call   71 <__dprintf+0x71>
  75:	5b                   	pop    %ebx
  76:	c3                   	ret    

Disassembly of section .text.debug_banner:

00000000 <debug_banner>:
   0:	68 00 00 00 00       	push   $0x0
   5:	68 07 00 00 00       	push   $0x7
   a:	e8 fc ff ff ff       	call   b <debug_banner+0xb>
   f:	68 00 00 00 00       	push   $0x0
  14:	68 1d 00 00 00       	push   $0x1d
  19:	e8 fc ff ff ff       	call   1a <debug_banner+0x1a>
  1e:	83 c4 10             	add    $0x10,%esp
  21:	c3                   	ret    

Disassembly of section .text.dump_regs:

00000000 <dump_regs>:
   0:	53                   	push   %ebx
   1:	85 c0                	test   %eax,%eax
   3:	75 0d                	jne    12 <dump_regs+0x12>
   5:	68 28 00 00 00       	push   $0x28
   a:	e8 fc ff ff ff       	call   b <dump_regs+0xb>
   f:	58                   	pop    %eax
  10:	eb 4f                	jmp    61 <dump_regs+0x61>
  12:	89 c3                	mov    %eax,%ebx
  14:	6a 00                	push   $0x0
  16:	0f b7 40 02          	movzwl 0x2(%eax),%eax
  1a:	50                   	push   %eax
  1b:	0f b7 03             	movzwl (%ebx),%eax
  1e:	50                   	push   %eax
  1f:	ff 73 14             	push   0x14(%ebx)
  22:	ff 73 18             	push   0x18(%ebx)
  25:	ff 73 10             	push   0x10(%ebx)
  28:	ff 73 1c             	push   0x1c(%ebx)
  2b:	68 30 00 00 00       	push   $0x30
  30:	e8 fc ff ff ff       	call   31 <dump_regs+0x31>
  35:	83 c4 20             	add    $0x20,%esp
  38:	0f b7 43 24          	movzwl 0x24(%ebx),%eax
  3c:	50                   	push   %eax
  3d:	0f b7 43 20          	movzwl 0x20(%ebx),%eax
  41:	50                   	push   %eax
  42:	0f b7 43 22          	movzwl 0x22(%ebx),%eax
  46:	50                   	push   %eax
  47:	8d 43 26             	lea    0x26(%ebx),%eax
  4a:	50                   	push   %eax
  4b:	ff 73 0c             	push   0xc(%ebx)
  4e:	ff 73 04             	push   0x4(%ebx)
  51:	ff 73 08             	push   0x8(%ebx)
  54:	68 6b 00 00 00       	push   $0x6b
  59:	e8 fc ff ff ff       	call   5a <dump_regs+0x5a>
  5e:	83 c4 20             	add    $0x20,%esp
  61:	5b                   	pop    %ebx
  62:	c3                   	ret    

Disassembly of section .text.printf:

00000000 <printf>:
   0:	8d 4c 24 08          	lea    0x8(%esp),%ecx
   4:	8b 54 24 04          	mov    0x4(%esp),%edx
   8:	b8 00 00 00 00       	mov    $0x0,%eax
   d:	e8 fc ff ff ff       	call   e <printf+0xe>
  12:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
  19:	74 05                	je     20 <printf+0x20>
  1b:	e8 fc ff ff ff       	call   1c <printf+0x1c>
  20:	c3                   	ret    

Disassembly of section .text.snprintf:

00000000 <snprintf>:
   0:	53                   	push   %ebx
   1:	83 ec 0c             	sub    $0xc,%esp
   4:	8b 5c 24 14          	mov    0x14(%esp),%ebx
   8:	8b 54 24 18          	mov    0x18(%esp),%edx
   c:	31 c0                	xor    %eax,%eax
   e:	85 d2                	test   %edx,%edx
  10:	74 34                	je     46 <snprintf+0x46>
  12:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  19:	89 5c 24 04          	mov    %ebx,0x4(%esp)
  1d:	01 da                	add    %ebx,%edx
  1f:	89 54 24 08          	mov    %edx,0x8(%esp)
  23:	8d 4c 24 20          	lea    0x20(%esp),%ecx
  27:	8b 54 24 1c          	mov    0x1c(%esp),%edx
  2b:	89 e0                	mov    %esp,%eax
  2d:	e8 fc ff ff ff       	call   2e <snprintf+0x2e>
  32:	8b 44 24 04          	mov    0x4(%esp),%eax
  36:	8b 54 24 08          	mov    0x8(%esp),%edx
  3a:	39 c2                	cmp    %eax,%edx
  3c:	77 03                	ja     41 <snprintf+0x41>
  3e:	8d 42 ff             	lea    -0x1(%edx),%eax
  41:	c6 00 00             	movb   $0x0,(%eax)
  44:	29 d8                	sub    %ebx,%eax
  46:	83 c4 0c             	add    $0xc,%esp
  49:	5b                   	pop    %ebx
  4a:	c3                   	ret    

Disassembly of section .text.hexdump:

00000000 <hexdump>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	89 c7                	mov    %eax,%edi
   5:	89 d3                	mov    %edx,%ebx
   7:	31 f6                	xor    %esi,%esi
   9:	85 db                	test   %ebx,%ebx
   b:	7e 6b                	jle    78 <hexdump+0x78>
   d:	f7 c6 07 00 00 00    	test   $0x7,%esi
  13:	75 39                	jne    4e <hexdump+0x4e>
  15:	ba 0a 00 00 00       	mov    $0xa,%edx
  1a:	b8 00 00 00 00       	mov    $0x0,%eax
  1f:	e8 fc ff ff ff       	call   20 <hexdump+0x20>
  24:	8d 14 b5 00 00 00 00 	lea    0x0(,%esi,4),%edx
  2b:	6a 00                	push   $0x0
  2d:	b9 08 00 00 00       	mov    $0x8,%ecx
  32:	b8 00 00 00 00       	mov    $0x0,%eax
  37:	e8 fc ff ff ff       	call   38 <hexdump+0x38>
  3c:	ba 3a 00 00 00       	mov    $0x3a,%edx
  41:	b8 00 00 00 00       	mov    $0x0,%eax
  46:	e8 fc ff ff ff       	call   47 <hexdump+0x47>
  4b:	5a                   	pop    %edx
  4c:	eb 0f                	jmp    5d <hexdump+0x5d>
  4e:	ba 20 00 00 00       	mov    $0x20,%edx
  53:	b8 00 00 00 00       	mov    $0x0,%eax
  58:	e8 fc ff ff ff       	call   59 <hexdump+0x59>
  5d:	8b 14 b7             	mov    (%edi,%esi,4),%edx
  60:	6a 00                	push   $0x0
  62:	b9 08 00 00 00       	mov    $0x8,%ecx
  67:	b8 00 00 00 00       	mov    $0x0,%eax
  6c:	e8 fc ff ff ff       	call   6d <hexdump+0x6d>
  71:	46                   	inc    %esi
  72:	83 eb 04             	sub    $0x4,%ebx
  75:	58                   	pop    %eax
  76:	eb 91                	jmp    9 <hexdump+0x9>
  78:	ba 0a 00 00 00       	mov    $0xa,%edx
  7d:	b8 00 00 00 00       	mov    $0x0,%eax
  82:	e8 fc ff ff ff       	call   83 <hexdump+0x83>
  87:	5b                   	pop    %ebx
  88:	5e                   	pop    %esi
  89:	5f                   	pop    %edi
  8a:	e9 fc ff ff ff       	jmp    8b <hexdump+0x8b>

Disassembly of section .text.__debug_isr:

00000000 <__debug_isr>:
   0:	53                   	push   %ebx
   1:	89 c3                	mov    %eax,%ebx
   3:	0f be 13             	movsbl (%ebx),%edx
   6:	84 d2                	test   %dl,%dl
   8:	74 0d                	je     17 <__debug_isr+0x17>
   a:	b8 00 00 00 00       	mov    $0x0,%eax
   f:	e8 fc ff ff ff       	call   10 <__debug_isr+0x10>
  14:	43                   	inc    %ebx
  15:	eb ec                	jmp    3 <__debug_isr+0x3>
  17:	ba 0a 00 00 00       	mov    $0xa,%edx
  1c:	b8 00 00 00 00       	mov    $0x0,%eax
  21:	e8 fc ff ff ff       	call   22 <__debug_isr+0x22>
  26:	5b                   	pop    %ebx
  27:	e9 fc ff ff ff       	jmp    28 <__debug_isr+0x28>

Disassembly of section .text.__debug_enter:

00000000 <__debug_enter>:
   0:	51                   	push   %ecx
   1:	89 04 24             	mov    %eax,(%esp)
   4:	52                   	push   %edx
   5:	68 a6 00 00 00       	push   $0xa6
   a:	e8 fc ff ff ff       	call   b <__debug_enter+0xb>
   f:	8b 44 24 08          	mov    0x8(%esp),%eax
  13:	83 c4 0c             	add    $0xc,%esp
  16:	e9 fc ff ff ff       	jmp    17 <__debug_enter+0x17>

Disassembly of section .text.__debug_stub:

00000000 <__debug_stub>:
   0:	83 ec 04             	sub    $0x4,%esp
   3:	89 04 24             	mov    %eax,(%esp)
   6:	52                   	push   %edx
   7:	51                   	push   %ecx
   8:	68 b1 00 00 00       	push   $0xb1
   d:	e8 fc ff ff ff       	call   e <__debug_stub+0xe>
  12:	8b 44 24 0c          	mov    0xc(%esp),%eax
  16:	83 c4 10             	add    $0x10,%esp
  19:	e9 fc ff ff ff       	jmp    1a <__debug_stub+0x1a>

Disassembly of section .text.__warn_invalid:

00000000 <__warn_invalid>:
   0:	83 ec 04             	sub    $0x4,%esp
   3:	89 04 24             	mov    %eax,(%esp)
   6:	52                   	push   %edx
   7:	51                   	push   %ecx
   8:	68 be 00 00 00       	push   $0xbe
   d:	e8 fc ff ff ff       	call   e <__warn_invalid+0xe>
  12:	8b 44 24 0c          	mov    0xc(%esp),%eax
  16:	83 c4 10             	add    $0x10,%esp
  19:	e9 fc ff ff ff       	jmp    1a <__warn_invalid+0x1a>

Disassembly of section .text.__warn_unimplemented:

00000000 <__warn_unimplemented>:
   0:	83 ec 04             	sub    $0x4,%esp
   3:	89 04 24             	mov    %eax,(%esp)
   6:	52                   	push   %edx
   7:	51                   	push   %ecx
   8:	68 ce 00 00 00       	push   $0xce
   d:	e8 fc ff ff ff       	call   e <__warn_unimplemented+0xe>
  12:	8b 44 24 0c          	mov    0xc(%esp),%eax
  16:	83 c4 10             	add    $0x10,%esp
  19:	e9 fc ff ff ff       	jmp    1a <__warn_unimplemented+0x1a>

Disassembly of section .text.__warn_internalerror:

00000000 <__warn_internalerror>:
   0:	50                   	push   %eax
   1:	52                   	push   %edx
   2:	68 e4 00 00 00       	push   $0xe4
   7:	e8 fc ff ff ff       	call   8 <__warn_internalerror+0x8>
   c:	83 c4 0c             	add    $0xc,%esp
   f:	c3                   	ret    

Disassembly of section .text.__warn_noalloc:

00000000 <__warn_noalloc>:
   0:	50                   	push   %eax
   1:	52                   	push   %edx
   2:	68 11 01 00 00       	push   $0x111
   7:	e8 fc ff ff ff       	call   8 <__warn_noalloc+0x8>
   c:	83 c4 0c             	add    $0xc,%esp
   f:	c3                   	ret    

Disassembly of section .text.znprintf:

00000000 <znprintf>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	83 ec 0c             	sub    $0xc,%esp
   5:	8b 74 24 18          	mov    0x18(%esp),%esi
   9:	31 db                	xor    %ebx,%ebx
   b:	85 f6                	test   %esi,%esi
   d:	74 71                	je     80 <znprintf+0x80>
   f:	b9 10 00 00 00       	mov    $0x10,%ecx
  14:	89 f2                	mov    %esi,%edx
  16:	b8 00 00 00 00       	mov    $0x0,%eax
  1b:	e8 fc ff ff ff       	call   1c <znprintf+0x1c>
  20:	89 c3                	mov    %eax,%ebx
  22:	85 c0                	test   %eax,%eax
  24:	75 28                	jne    4e <znprintf+0x4e>
  26:	b9 10 00 00 00       	mov    $0x10,%ecx
  2b:	89 f2                	mov    %esi,%edx
  2d:	b8 00 00 00 00       	mov    $0x0,%eax
  32:	e8 fc ff ff ff       	call   33 <znprintf+0x33>
  37:	89 c3                	mov    %eax,%ebx
  39:	85 c0                	test   %eax,%eax
  3b:	75 11                	jne    4e <znprintf+0x4e>
  3d:	ba 00 00 00 00       	mov    $0x0,%edx
  42:	b8 af 01 00 00       	mov    $0x1af,%eax
  47:	e8 fc ff ff ff       	call   48 <znprintf+0x48>
  4c:	eb 32                	jmp    80 <znprintf+0x80>
  4e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  55:	89 5c 24 04          	mov    %ebx,0x4(%esp)
  59:	01 de                	add    %ebx,%esi
  5b:	89 74 24 08          	mov    %esi,0x8(%esp)
  5f:	8d 4c 24 20          	lea    0x20(%esp),%ecx
  63:	8b 54 24 1c          	mov    0x1c(%esp),%edx
  67:	89 e0                	mov    %esp,%eax
  69:	e8 fc ff ff ff       	call   6a <znprintf+0x6a>
  6e:	8b 44 24 04          	mov    0x4(%esp),%eax
  72:	8b 54 24 08          	mov    0x8(%esp),%edx
  76:	39 c2                	cmp    %eax,%edx
  78:	77 03                	ja     7d <znprintf+0x7d>
  7a:	8d 42 ff             	lea    -0x1(%edx),%eax
  7d:	c6 00 00             	movb   $0x0,(%eax)
  80:	89 d8                	mov    %ebx,%eax
  82:	83 c4 0c             	add    $0xc,%esp
  85:	5b                   	pop    %ebx
  86:	5e                   	pop    %esi
  87:	c3                   	ret    

Disassembly of section .text.__warn_timeout:

00000000 <__warn_timeout>:
   0:	50                   	push   %eax
   1:	52                   	push   %edx
   2:	68 42 01 00 00       	push   $0x142
   7:	e8 fc ff ff ff       	call   8 <__warn_timeout+0x8>
   c:	83 c4 0c             	add    $0xc,%esp
   f:	c3                   	ret    

Disassembly of section .text.__set_invalid:

00000000 <__set_invalid>:
   0:	53                   	push   %ebx
   1:	89 c3                	mov    %eax,%ebx
   3:	e8 fc ff ff ff       	call   4 <__set_invalid+0x4>
   8:	66 83 4b 24 01       	orw    $0x1,0x24(%ebx)
   d:	5b                   	pop    %ebx
   e:	c3                   	ret    

Disassembly of section .text.__set_unimplemented:

00000000 <__set_unimplemented>:
   0:	53                   	push   %ebx
   1:	89 c3                	mov    %eax,%ebx
   3:	e8 fc ff ff ff       	call   4 <__set_unimplemented+0x4>
   8:	66 83 4b 24 01       	orw    $0x1,0x24(%ebx)
   d:	5b                   	pop    %ebx
   e:	c3                   	ret    

Disassembly of section .text.__set_code_invalid:

00000000 <__set_code_invalid>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 c3                	mov    %eax,%ebx
   4:	89 d6                	mov    %edx,%esi
   6:	c1 ea 08             	shr    $0x8,%edx
   9:	e8 fc ff ff ff       	call   a <__set_code_invalid+0xa>
   e:	89 f0                	mov    %esi,%eax
  10:	88 43 1d             	mov    %al,0x1d(%ebx)
  13:	66 83 4b 24 01       	orw    $0x1,0x24(%ebx)
  18:	5b                   	pop    %ebx
  19:	5e                   	pop    %esi
  1a:	c3                   	ret    

Disassembly of section .text.__set_code_unimplemented:

00000000 <__set_code_unimplemented>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 c3                	mov    %eax,%ebx
   4:	89 d6                	mov    %edx,%esi
   6:	c1 ea 08             	shr    $0x8,%edx
   9:	e8 fc ff ff ff       	call   a <__set_code_unimplemented+0xa>
   e:	89 f0                	mov    %esi,%eax
  10:	88 43 1d             	mov    %al,0x1d(%ebx)
  13:	66 83 4b 24 01       	orw    $0x1,0x24(%ebx)
  18:	5b                   	pop    %ebx
  19:	5e                   	pop    %esi
  1a:	c3                   	ret    
