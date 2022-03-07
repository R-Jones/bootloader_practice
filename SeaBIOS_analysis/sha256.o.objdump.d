
./sha256.o:     file format elf32-i386


Disassembly of section .text.__swab32_constant:

00000000 <__swab32_constant>:
   0:	86 e0                	xchg   %ah,%al
   2:	c1 c0 10             	rol    $0x10,%eax
   5:	86 e0                	xchg   %ah,%al
   7:	c3                   	ret    

Disassembly of section .text.sha256_block:

00000000 <sha256_block>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 44             	sub    $0x44,%esp
   7:	89 44 24 10          	mov    %eax,0x10(%esp)
   b:	31 c0                	xor    %eax,%eax
   d:	8b 7c 24 10          	mov    0x10(%esp),%edi
  11:	8b 3c 87             	mov    (%edi,%eax,4),%edi
  14:	89 3c 24             	mov    %edi,(%esp)
  17:	89 f9                	mov    %edi,%ecx
  19:	0f c9                	bswap  %ecx
  1b:	8b 5c 24 10          	mov    0x10(%esp),%ebx
  1f:	89 0c 83             	mov    %ecx,(%ebx,%eax,4)
  22:	40                   	inc    %eax
  23:	83 f8 10             	cmp    $0x10,%eax
  26:	75 e5                	jne    d <sha256_block+0xd>
  28:	89 de                	mov    %ebx,%esi
  2a:	89 d8                	mov    %ebx,%eax
  2c:	05 c0 00 00 00       	add    $0xc0,%eax
  31:	89 04 24             	mov    %eax,(%esp)
  34:	8b 46 38             	mov    0x38(%esi),%eax
  37:	b9 11 00 00 00       	mov    $0x11,%ecx
  3c:	d3 c8                	ror    %cl,%eax
  3e:	89 c3                	mov    %eax,%ebx
  40:	8b 46 38             	mov    0x38(%esi),%eax
  43:	b9 13 00 00 00       	mov    $0x13,%ecx
  48:	d3 c8                	ror    %cl,%eax
  4a:	89 c5                	mov    %eax,%ebp
  4c:	b9 07 00 00 00       	mov    $0x7,%ecx
  51:	8b 46 04             	mov    0x4(%esi),%eax
  54:	d3 c8                	ror    %cl,%eax
  56:	89 c7                	mov    %eax,%edi
  58:	b9 12 00 00 00       	mov    $0x12,%ecx
  5d:	8b 46 04             	mov    0x4(%esi),%eax
  60:	d3 c8                	ror    %cl,%eax
  62:	8b 0e                	mov    (%esi),%ecx
  64:	03 4e 24             	add    0x24(%esi),%ecx
  67:	31 eb                	xor    %ebp,%ebx
  69:	8b 6e 38             	mov    0x38(%esi),%ebp
  6c:	c1 ed 0a             	shr    $0xa,%ebp
  6f:	31 eb                	xor    %ebp,%ebx
  71:	01 cb                	add    %ecx,%ebx
  73:	31 c7                	xor    %eax,%edi
  75:	8b 46 04             	mov    0x4(%esi),%eax
  78:	c1 e8 03             	shr    $0x3,%eax
  7b:	31 c7                	xor    %eax,%edi
  7d:	01 fb                	add    %edi,%ebx
  7f:	89 5e 40             	mov    %ebx,0x40(%esi)
  82:	83 c6 04             	add    $0x4,%esi
  85:	39 34 24             	cmp    %esi,(%esp)
  88:	75 aa                	jne    34 <sha256_block+0x34>
  8a:	8b 02                	mov    (%edx),%eax
  8c:	89 44 24 18          	mov    %eax,0x18(%esp)
  90:	8b 42 04             	mov    0x4(%edx),%eax
  93:	89 44 24 1c          	mov    %eax,0x1c(%esp)
  97:	8b 42 08             	mov    0x8(%edx),%eax
  9a:	89 44 24 20          	mov    %eax,0x20(%esp)
  9e:	8b 42 0c             	mov    0xc(%edx),%eax
  a1:	89 44 24 24          	mov    %eax,0x24(%esp)
  a5:	8b 42 10             	mov    0x10(%edx),%eax
  a8:	89 44 24 28          	mov    %eax,0x28(%esp)
  ac:	8b 42 14             	mov    0x14(%edx),%eax
  af:	89 44 24 2c          	mov    %eax,0x2c(%esp)
  b3:	8b 42 18             	mov    0x18(%edx),%eax
  b6:	89 44 24 30          	mov    %eax,0x30(%esp)
  ba:	8b 42 1c             	mov    0x1c(%edx),%eax
  bd:	89 44 24 34          	mov    %eax,0x34(%esp)
  c1:	89 c5                	mov    %eax,%ebp
  c3:	8b 7c 24 30          	mov    0x30(%esp),%edi
  c7:	8b 44 24 2c          	mov    0x2c(%esp),%eax
  cb:	89 44 24 14          	mov    %eax,0x14(%esp)
  cf:	8b 44 24 28          	mov    0x28(%esp),%eax
  d3:	89 44 24 04          	mov    %eax,0x4(%esp)
  d7:	8b 44 24 24          	mov    0x24(%esp),%eax
  db:	89 44 24 38          	mov    %eax,0x38(%esp)
  df:	8b 44 24 20          	mov    0x20(%esp),%eax
  e3:	89 44 24 0c          	mov    %eax,0xc(%esp)
  e7:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  eb:	89 44 24 08          	mov    %eax,0x8(%esp)
  ef:	8b 44 24 18          	mov    0x18(%esp),%eax
  f3:	89 04 24             	mov    %eax,(%esp)
  f6:	31 db                	xor    %ebx,%ebx
  f8:	8b 44 24 04          	mov    0x4(%esp),%eax
  fc:	b9 06 00 00 00       	mov    $0x6,%ecx
 101:	d3 c8                	ror    %cl,%eax
 103:	89 c6                	mov    %eax,%esi
 105:	8b 44 24 04          	mov    0x4(%esp),%eax
 109:	b9 0b 00 00 00       	mov    $0xb,%ecx
 10e:	d3 c8                	ror    %cl,%eax
 110:	89 44 24 3c          	mov    %eax,0x3c(%esp)
 114:	b9 19 00 00 00       	mov    $0x19,%ecx
 119:	8b 44 24 04          	mov    0x4(%esp),%eax
 11d:	d3 c8                	ror    %cl,%eax
 11f:	8b 4c 24 10          	mov    0x10(%esp),%ecx
 123:	8b 0c 99             	mov    (%ecx,%ebx,4),%ecx
 126:	03 0c 9d 00 00 00 00 	add    0x0(,%ebx,4),%ecx
 12d:	33 74 24 3c          	xor    0x3c(%esp),%esi
 131:	31 c6                	xor    %eax,%esi
 133:	01 ce                	add    %ecx,%esi
 135:	8b 44 24 14          	mov    0x14(%esp),%eax
 139:	31 f8                	xor    %edi,%eax
 13b:	23 44 24 04          	and    0x4(%esp),%eax
 13f:	31 f8                	xor    %edi,%eax
 141:	01 c6                	add    %eax,%esi
 143:	8d 04 2e             	lea    (%esi,%ebp,1),%eax
 146:	89 44 24 3c          	mov    %eax,0x3c(%esp)
 14a:	b9 02 00 00 00       	mov    $0x2,%ecx
 14f:	8b 04 24             	mov    (%esp),%eax
 152:	d3 c8                	ror    %cl,%eax
 154:	89 c6                	mov    %eax,%esi
 156:	b9 0d 00 00 00       	mov    $0xd,%ecx
 15b:	8b 04 24             	mov    (%esp),%eax
 15e:	d3 c8                	ror    %cl,%eax
 160:	89 44 24 40          	mov    %eax,0x40(%esp)
 164:	b9 16 00 00 00       	mov    $0x16,%ecx
 169:	8b 04 24             	mov    (%esp),%eax
 16c:	d3 c8                	ror    %cl,%eax
 16e:	8b 6c 24 08          	mov    0x8(%esp),%ebp
 172:	0b 6c 24 0c          	or     0xc(%esp),%ebp
 176:	23 2c 24             	and    (%esp),%ebp
 179:	8b 4c 24 08          	mov    0x8(%esp),%ecx
 17d:	23 4c 24 0c          	and    0xc(%esp),%ecx
 181:	09 e9                	or     %ebp,%ecx
 183:	33 74 24 40          	xor    0x40(%esp),%esi
 187:	31 c6                	xor    %eax,%esi
 189:	01 f1                	add    %esi,%ecx
 18b:	8b 44 24 38          	mov    0x38(%esp),%eax
 18f:	03 44 24 3c          	add    0x3c(%esp),%eax
 193:	8b 74 24 3c          	mov    0x3c(%esp),%esi
 197:	01 ce                	add    %ecx,%esi
 199:	43                   	inc    %ebx
 19a:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
 19e:	89 4c 24 38          	mov    %ecx,0x38(%esp)
 1a2:	89 fd                	mov    %edi,%ebp
 1a4:	83 fb 40             	cmp    $0x40,%ebx
 1a7:	74 27                	je     1d0 <sha256_block+0x1d0>
 1a9:	8b 7c 24 14          	mov    0x14(%esp),%edi
 1ad:	8b 4c 24 04          	mov    0x4(%esp),%ecx
 1b1:	89 4c 24 14          	mov    %ecx,0x14(%esp)
 1b5:	89 44 24 04          	mov    %eax,0x4(%esp)
 1b9:	8b 44 24 08          	mov    0x8(%esp),%eax
 1bd:	89 44 24 0c          	mov    %eax,0xc(%esp)
 1c1:	8b 04 24             	mov    (%esp),%eax
 1c4:	89 44 24 08          	mov    %eax,0x8(%esp)
 1c8:	89 34 24             	mov    %esi,(%esp)
 1cb:	e9 28 ff ff ff       	jmp    f8 <sha256_block+0xf8>
 1d0:	8b 4c 24 18          	mov    0x18(%esp),%ecx
 1d4:	01 f1                	add    %esi,%ecx
 1d6:	89 0a                	mov    %ecx,(%edx)
 1d8:	8b 4c 24 1c          	mov    0x1c(%esp),%ecx
 1dc:	03 0c 24             	add    (%esp),%ecx
 1df:	89 4a 04             	mov    %ecx,0x4(%edx)
 1e2:	8b 4c 24 20          	mov    0x20(%esp),%ecx
 1e6:	03 4c 24 08          	add    0x8(%esp),%ecx
 1ea:	89 4a 08             	mov    %ecx,0x8(%edx)
 1ed:	8b 4c 24 24          	mov    0x24(%esp),%ecx
 1f1:	03 4c 24 0c          	add    0xc(%esp),%ecx
 1f5:	89 4a 0c             	mov    %ecx,0xc(%edx)
 1f8:	03 44 24 28          	add    0x28(%esp),%eax
 1fc:	89 42 10             	mov    %eax,0x10(%edx)
 1ff:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 203:	03 44 24 04          	add    0x4(%esp),%eax
 207:	89 42 14             	mov    %eax,0x14(%edx)
 20a:	8b 44 24 30          	mov    0x30(%esp),%eax
 20e:	03 44 24 14          	add    0x14(%esp),%eax
 212:	89 42 18             	mov    %eax,0x18(%edx)
 215:	8b 44 24 34          	mov    0x34(%esp),%eax
 219:	01 f8                	add    %edi,%eax
 21b:	89 42 1c             	mov    %eax,0x1c(%edx)
 21e:	83 c4 44             	add    $0x44,%esp
 221:	5b                   	pop    %ebx
 222:	5e                   	pop    %esi
 223:	5f                   	pop    %edi
 224:	5d                   	pop    %ebp
 225:	c3                   	ret    

Disassembly of section .text.sha256:

00000000 <sha256>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	81 ec 2c 01 00 00    	sub    $0x12c,%esp
   a:	89 04 24             	mov    %eax,(%esp)
   d:	89 d3                	mov    %edx,%ebx
   f:	89 4c 24 08          	mov    %ecx,0x8(%esp)
  13:	8d 7c 24 0c          	lea    0xc(%esp),%edi
  17:	be 00 00 00 00       	mov    $0x0,%esi
  1c:	b9 08 00 00 00       	mov    $0x8,%ecx
  21:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  23:	89 d5                	mov    %edx,%ebp
  25:	8b 04 24             	mov    (%esp),%eax
  28:	8d 34 18             	lea    (%eax,%ebx,1),%esi
  2b:	29 ee                	sub    %ebp,%esi
  2d:	83 fd 3f             	cmp    $0x3f,%ebp
  30:	76 1b                	jbe    4d <sha256+0x4d>
  32:	8d 44 24 2c          	lea    0x2c(%esp),%eax
  36:	b9 10 00 00 00       	mov    $0x10,%ecx
  3b:	89 c7                	mov    %eax,%edi
  3d:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  3f:	8d 54 24 0c          	lea    0xc(%esp),%edx
  43:	e8 fc ff ff ff       	call   44 <sha256+0x44>
  48:	83 ed 40             	sub    $0x40,%ebp
  4b:	eb d8                	jmp    25 <sha256+0x25>
  4d:	89 da                	mov    %ebx,%edx
  4f:	83 e2 c0             	and    $0xffffffc0,%edx
  52:	89 d8                	mov    %ebx,%eax
  54:	c1 e8 06             	shr    $0x6,%eax
  57:	89 c1                	mov    %eax,%ecx
  59:	c1 e1 09             	shl    $0x9,%ecx
  5c:	6b c0 c0             	imul   $0xffffffc0,%eax,%eax
  5f:	01 d8                	add    %ebx,%eax
  61:	89 df                	mov    %ebx,%edi
  63:	83 e7 3f             	and    $0x3f,%edi
  66:	66 89 7c 24 06       	mov    %di,0x6(%esp)
  6b:	83 e3 3f             	and    $0x3f,%ebx
  6e:	8d 2c d9             	lea    (%ecx,%ebx,8),%ebp
  71:	8b 34 24             	mov    (%esp),%esi
  74:	01 d6                	add    %edx,%esi
  76:	8d 7c 24 2c          	lea    0x2c(%esp),%edi
  7a:	89 c1                	mov    %eax,%ecx
  7c:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  7e:	c6 44 04 2c 80       	movb   $0x80,0x2c(%esp,%eax,1)
  83:	b9 3f 00 00 00       	mov    $0x3f,%ecx
  88:	29 d9                	sub    %ebx,%ecx
  8a:	85 c9                	test   %ecx,%ecx
  8c:	7e 0b                	jle    99 <sha256+0x99>
  8e:	8d 44 04 2d          	lea    0x2d(%esp,%eax,1),%eax
  92:	31 d2                	xor    %edx,%edx
  94:	e8 fc ff ff ff       	call   95 <sha256+0x95>
  99:	66 83 7c 24 06 37    	cmpw   $0x37,0x6(%esp)
  9f:	8d 74 24 0c          	lea    0xc(%esp),%esi
  a3:	76 1b                	jbe    c0 <sha256+0xc0>
  a5:	89 f2                	mov    %esi,%edx
  a7:	8d 44 24 2c          	lea    0x2c(%esp),%eax
  ab:	e8 fc ff ff ff       	call   ac <sha256+0xac>
  b0:	b9 3c 00 00 00       	mov    $0x3c,%ecx
  b5:	31 d2                	xor    %edx,%edx
  b7:	8d 44 24 2c          	lea    0x2c(%esp),%eax
  bb:	e8 fc ff ff ff       	call   bc <sha256+0xbc>
  c0:	31 c0                	xor    %eax,%eax
  c2:	0f c8                	bswap  %eax
  c4:	0f cd                	bswap  %ebp
  c6:	89 44 24 64          	mov    %eax,0x64(%esp)
  ca:	89 6c 24 68          	mov    %ebp,0x68(%esp)
  ce:	89 f2                	mov    %esi,%edx
  d0:	8d 44 24 2c          	lea    0x2c(%esp),%eax
  d4:	e8 fc ff ff ff       	call   d5 <sha256+0xd5>
  d9:	89 f0                	mov    %esi,%eax
  db:	8d 4c 24 2c          	lea    0x2c(%esp),%ecx
  df:	8b 10                	mov    (%eax),%edx
  e1:	0f ca                	bswap  %edx
  e3:	89 10                	mov    %edx,(%eax)
  e5:	83 c0 04             	add    $0x4,%eax
  e8:	39 c1                	cmp    %eax,%ecx
  ea:	75 f3                	jne    df <sha256+0xdf>
  ec:	b9 08 00 00 00       	mov    $0x8,%ecx
  f1:	8b 7c 24 08          	mov    0x8(%esp),%edi
  f5:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  f7:	81 c4 2c 01 00 00    	add    $0x12c,%esp
  fd:	5b                   	pop    %ebx
  fe:	5e                   	pop    %esi
  ff:	5f                   	pop    %edi
 100:	5d                   	pop    %ebp
 101:	c3                   	ret    
