
./pcibios.o:     file format elf32-i386


Disassembly of section .text.set_code_success:

00000000 <set_code_success>:
   0:	c6 40 1d 00          	movb   $0x0,0x1d(%eax)
   4:	66 83 60 24 fe       	andw   $0xfffe,0x24(%eax)
   9:	c3                   	ret    

Disassembly of section .text.handle_1ab1:

00000000 <handle_1ab1>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	55                   	push   %ebp
   5:	89 c3                	mov    %eax,%ebx
   7:	8a 40 1c             	mov    0x1c(%eax),%al
   a:	48                   	dec    %eax
   b:	3c 0d                	cmp    $0xd,%al
   d:	0f 87 03 02 00 00    	ja     216 <handle_1ab1+0x216>
  13:	0f b6 c0             	movzbl %al,%eax
  16:	ff 24 85 00 00 00 00 	jmp    *0x0(,%eax,4)
  1d:	66 c7 43 10 10 02    	movw   $0x210,0x10(%ebx)
  23:	a1 00 00 00 00       	mov    0x0,%eax
  28:	88 43 18             	mov    %al,0x18(%ebx)
  2b:	c7 43 14 50 43 49 20 	movl   $0x20494350,0x14(%ebx)
  32:	c7 43 04 00 00 0f 00 	movl   $0xf0000,0x4(%ebx)
  39:	eb 1a                	jmp    55 <handle_1ab1+0x55>
  3b:	0f b7 7b 18          	movzwl 0x18(%ebx),%edi
  3f:	c1 e7 10             	shl    $0x10,%edi
  42:	0f b7 43 14          	movzwl 0x14(%ebx),%eax
  46:	09 c7                	or     %eax,%edi
  48:	0f b7 6b 08          	movzwl 0x8(%ebx),%ebp
  4c:	83 ce ff             	or     $0xffffffff,%esi
  4f:	eb 33                	jmp    84 <handle_1ab1+0x84>
  51:	66 89 4b 10          	mov    %cx,0x10(%ebx)
  55:	89 d8                	mov    %ebx,%eax
  57:	5f                   	pop    %edi
  58:	5b                   	pop    %ebx
  59:	5e                   	pop    %esi
  5a:	5f                   	pop    %edi
  5b:	5d                   	pop    %ebp
  5c:	e9 fc ff ff ff       	jmp    5d <handle_1ab1+0x5d>
  61:	0f b7 c1             	movzwl %cx,%eax
  64:	89 0c 24             	mov    %ecx,(%esp)
  67:	31 d2                	xor    %edx,%edx
  69:	e8 fc ff ff ff       	call   6a <handle_1ab1+0x6a>
  6e:	39 c7                	cmp    %eax,%edi
  70:	8b 0c 24             	mov    (%esp),%ecx
  73:	74 25                	je     9a <handle_1ab1+0x9a>
  75:	89 f2                	mov    %esi,%edx
  77:	89 c8                	mov    %ecx,%eax
  79:	e8 fc ff ff ff       	call   7a <handle_1ab1+0x7a>
  7e:	89 c1                	mov    %eax,%ecx
  80:	85 c0                	test   %eax,%eax
  82:	79 dd                	jns    61 <handle_1ab1+0x61>
  84:	3b 35 00 00 00 00    	cmp    0x0,%esi
  8a:	7d 15                	jge    a1 <handle_1ab1+0xa1>
  8c:	46                   	inc    %esi
  8d:	89 f0                	mov    %esi,%eax
  8f:	c1 e0 08             	shl    $0x8,%eax
  92:	0f b7 c0             	movzwl %ax,%eax
  95:	48                   	dec    %eax
  96:	89 f2                	mov    %esi,%edx
  98:	eb df                	jmp    79 <handle_1ab1+0x79>
  9a:	85 ed                	test   %ebp,%ebp
  9c:	74 b3                	je     51 <handle_1ab1+0x51>
  9e:	4d                   	dec    %ebp
  9f:	eb d4                	jmp    75 <handle_1ab1+0x75>
  a1:	b9 00 00 00 00       	mov    $0x0,%ecx
  a6:	ba 86 3c 00 00       	mov    $0x3c86,%edx
  ab:	e9 26 01 00 00       	jmp    1d6 <handle_1ab1+0x1d6>
  b0:	0f b7 7b 08          	movzwl 0x8(%ebx),%edi
  b4:	8b 43 18             	mov    0x18(%ebx),%eax
  b7:	89 04 24             	mov    %eax,(%esp)
  ba:	83 ce ff             	or     $0xffffffff,%esi
  bd:	3b 35 00 00 00 00    	cmp    0x0,%esi
  c3:	7d 42                	jge    107 <handle_1ab1+0x107>
  c5:	46                   	inc    %esi
  c6:	89 f0                	mov    %esi,%eax
  c8:	c1 e0 08             	shl    $0x8,%eax
  cb:	0f b7 c0             	movzwl %ax,%eax
  ce:	48                   	dec    %eax
  cf:	89 f2                	mov    %esi,%edx
  d1:	e8 fc ff ff ff       	call   d2 <handle_1ab1+0xd2>
  d6:	89 c5                	mov    %eax,%ebp
  d8:	85 c0                	test   %eax,%eax
  da:	78 e1                	js     bd <handle_1ab1+0xbd>
  dc:	0f b7 c5             	movzwl %bp,%eax
  df:	ba 08 00 00 00       	mov    $0x8,%edx
  e4:	e8 fc ff ff ff       	call   e5 <handle_1ab1+0xe5>
  e9:	c1 e8 08             	shr    $0x8,%eax
  ec:	39 04 24             	cmp    %eax,(%esp)
  ef:	75 10                	jne    101 <handle_1ab1+0x101>
  f1:	85 ff                	test   %edi,%edi
  f3:	74 03                	je     f8 <handle_1ab1+0xf8>
  f5:	4f                   	dec    %edi
  f6:	eb 09                	jmp    101 <handle_1ab1+0x101>
  f8:	66 89 6b 10          	mov    %bp,0x10(%ebx)
  fc:	e9 54 ff ff ff       	jmp    55 <handle_1ab1+0x55>
 101:	89 f2                	mov    %esi,%edx
 103:	89 e8                	mov    %ebp,%eax
 105:	eb ca                	jmp    d1 <handle_1ab1+0xd1>
 107:	b9 00 00 00 00       	mov    $0x0,%ecx
 10c:	ba 86 54 00 00       	mov    $0x5486,%edx
 111:	e9 c0 00 00 00       	jmp    1d6 <handle_1ab1+0x1d6>
 116:	0f b7 53 04          	movzwl 0x4(%ebx),%edx
 11a:	0f b7 43 10          	movzwl 0x10(%ebx),%eax
 11e:	e8 fc ff ff ff       	call   11f <handle_1ab1+0x11f>
 123:	88 43 18             	mov    %al,0x18(%ebx)
 126:	e9 2a ff ff ff       	jmp    55 <handle_1ab1+0x55>
 12b:	0f b7 53 04          	movzwl 0x4(%ebx),%edx
 12f:	0f b7 43 10          	movzwl 0x10(%ebx),%eax
 133:	e8 fc ff ff ff       	call   134 <handle_1ab1+0x134>
 138:	66 89 43 18          	mov    %ax,0x18(%ebx)
 13c:	e9 14 ff ff ff       	jmp    55 <handle_1ab1+0x55>
 141:	0f b7 53 04          	movzwl 0x4(%ebx),%edx
 145:	0f b7 43 10          	movzwl 0x10(%ebx),%eax
 149:	e8 fc ff ff ff       	call   14a <handle_1ab1+0x14a>
 14e:	89 43 18             	mov    %eax,0x18(%ebx)
 151:	e9 ff fe ff ff       	jmp    55 <handle_1ab1+0x55>
 156:	0f b6 4b 18          	movzbl 0x18(%ebx),%ecx
 15a:	0f b7 53 04          	movzwl 0x4(%ebx),%edx
 15e:	0f b7 43 10          	movzwl 0x10(%ebx),%eax
 162:	e8 fc ff ff ff       	call   163 <handle_1ab1+0x163>
 167:	e9 e9 fe ff ff       	jmp    55 <handle_1ab1+0x55>
 16c:	0f b7 4b 18          	movzwl 0x18(%ebx),%ecx
 170:	0f b7 53 04          	movzwl 0x4(%ebx),%edx
 174:	0f b7 43 10          	movzwl 0x10(%ebx),%eax
 178:	e8 fc ff ff ff       	call   179 <handle_1ab1+0x179>
 17d:	e9 d3 fe ff ff       	jmp    55 <handle_1ab1+0x55>
 182:	8b 4b 18             	mov    0x18(%ebx),%ecx
 185:	0f b7 53 04          	movzwl 0x4(%ebx),%edx
 189:	0f b7 43 10          	movzwl 0x10(%ebx),%eax
 18d:	e8 fc ff ff ff       	call   18e <handle_1ab1+0x18e>
 192:	e9 be fe ff ff       	jmp    55 <handle_1ab1+0x55>
 197:	8b 35 00 00 00 00    	mov    0x0,%esi
 19d:	85 f6                	test   %esi,%esi
 19f:	75 0c                	jne    1ad <handle_1ab1+0x1ad>
 1a1:	b9 00 00 00 00       	mov    $0x0,%ecx
 1a6:	ba 81 8d 00 00       	mov    $0x8d81,%edx
 1ab:	eb 29                	jmp    1d6 <handle_1ab1+0x1d6>
 1ad:	0f b7 4b 04          	movzwl 0x4(%ebx),%ecx
 1b1:	0f b7 53 02          	movzwl 0x2(%ebx),%edx
 1b5:	c1 e2 04             	shl    $0x4,%edx
 1b8:	01 ca                	add    %ecx,%edx
 1ba:	66 8b 3a             	mov    (%edx),%di
 1bd:	66 8b 46 06          	mov    0x6(%esi),%ax
 1c1:	83 e8 20             	sub    $0x20,%eax
 1c4:	66 89 02             	mov    %ax,(%edx)
 1c7:	66 39 c7             	cmp    %ax,%di
 1ca:	73 16                	jae    1e2 <handle_1ab1+0x1e2>
 1cc:	b9 00 00 00 00       	mov    $0x0,%ecx
 1d1:	ba 89 9d 00 00       	mov    $0x9d89,%edx
 1d6:	89 d8                	mov    %ebx,%eax
 1d8:	5e                   	pop    %esi
 1d9:	5b                   	pop    %ebx
 1da:	5e                   	pop    %esi
 1db:	5f                   	pop    %edi
 1dc:	5d                   	pop    %ebp
 1dd:	e9 fc ff ff ff       	jmp    1de <handle_1ab1+0x1de>
 1e2:	0f b7 7b 02          	movzwl 0x2(%ebx),%edi
 1e6:	c1 e7 04             	shl    $0x4,%edi
 1e9:	0f b7 54 39 02       	movzwl 0x2(%ecx,%edi,1),%edx
 1ee:	0f b7 7c 39 04       	movzwl 0x4(%ecx,%edi,1),%edi
 1f3:	0f b7 c0             	movzwl %ax,%eax
 1f6:	50                   	push   %eax
 1f7:	8d 46 20             	lea    0x20(%esi),%eax
 1fa:	50                   	push   %eax
 1fb:	31 c9                	xor    %ecx,%ecx
 1fd:	89 f8                	mov    %edi,%eax
 1ff:	e8 fc ff ff ff       	call   200 <handle_1ab1+0x200>
 204:	66 8b 46 0a          	mov    0xa(%esi),%ax
 208:	66 89 43 10          	mov    %ax,0x10(%ebx)
 20c:	89 d8                	mov    %ebx,%eax
 20e:	83 c4 0c             	add    $0xc,%esp
 211:	e9 42 fe ff ff       	jmp    58 <handle_1ab1+0x58>
 216:	b9 00 00 00 00       	mov    $0x0,%ecx
 21b:	ba 81 b3 00 00       	mov    $0xb381,%edx
 220:	89 d8                	mov    %ebx,%eax
 222:	5b                   	pop    %ebx
 223:	5b                   	pop    %ebx
 224:	5e                   	pop    %esi
 225:	5f                   	pop    %edi
 226:	5d                   	pop    %ebp
 227:	e9 fc ff ff ff       	jmp    228 <handle_1ab1+0x228>

Disassembly of section .text.handle_pcibios:

00000000 <handle_pcibios>:
   0:	52                   	push   %edx
   1:	ba 00 00 00 00       	mov    $0x0,%edx
   6:	89 04 24             	mov    %eax,(%esp)
   9:	e8 fc ff ff ff       	call   a <handle_pcibios+0xa>
   e:	8b 04 24             	mov    (%esp),%eax
  11:	59                   	pop    %ecx
  12:	e9 fc ff ff ff       	jmp    13 <handle_pcibios+0x13>

Disassembly of section .text.bios32_init:

00000000 <bios32_init>:
   0:	68 00 00 00 00       	push   $0x0
   5:	e8 fc ff ff ff       	call   6 <bios32_init+0x6>
   a:	c7 05 04 00 00 00 00 	movl   $0x0,0x4
  11:	00 00 00 
  14:	ba 10 00 00 00       	mov    $0x10,%edx
  19:	b8 00 00 00 00       	mov    $0x0,%eax
  1e:	e8 fc ff ff ff       	call   1f <bios32_init+0x1f>
  23:	28 05 0a 00 00 00    	sub    %al,0xa
  29:	58                   	pop    %eax
  2a:	c3                   	ret    
