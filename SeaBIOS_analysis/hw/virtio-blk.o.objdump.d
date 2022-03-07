
./virtio-blk.o:     file format elf32-i386


Disassembly of section .text.virtio_blk_op:

00000000 <virtio_blk_op>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	83 ec 2c             	sub    $0x2c,%esp
   6:	89 c1                	mov    %eax,%ecx
   8:	89 d7                	mov    %edx,%edi
   a:	8b 58 04             	mov    0x4(%eax),%ebx
   d:	8b 73 24             	mov    0x24(%ebx),%esi
  10:	89 54 24 04          	mov    %edx,0x4(%esp)
  14:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  1b:	00 
  1c:	8b 40 0c             	mov    0xc(%eax),%eax
  1f:	8b 51 10             	mov    0x10(%ecx),%edx
  22:	89 44 24 0c          	mov    %eax,0xc(%esp)
  26:	89 54 24 10          	mov    %edx,0x10(%esp)
  2a:	c6 44 24 03 02       	movb   $0x2,0x3(%esp)
  2f:	8d 44 24 04          	lea    0x4(%esp),%eax
  33:	89 44 24 14          	mov    %eax,0x14(%esp)
  37:	c7 44 24 18 10 00 00 	movl   $0x10,0x18(%esp)
  3e:	00 
  3f:	8b 01                	mov    (%ecx),%eax
  41:	89 44 24 1c          	mov    %eax,0x1c(%esp)
  45:	0f b7 43 1a          	movzwl 0x1a(%ebx),%eax
  49:	0f b7 51 0a          	movzwl 0xa(%ecx),%edx
  4d:	0f af c2             	imul   %edx,%eax
  50:	89 44 24 20          	mov    %eax,0x20(%esp)
  54:	8d 44 24 03          	lea    0x3(%esp),%eax
  58:	89 44 24 24          	mov    %eax,0x24(%esp)
  5c:	c7 44 24 28 01 00 00 	movl   $0x1,0x28(%esp)
  63:	00 
  64:	85 ff                	test   %edi,%edi
  66:	74 0d                	je     75 <virtio_blk_op+0x75>
  68:	6a 00                	push   $0x0
  6a:	6a 00                	push   $0x0
  6c:	6a 01                	push   $0x1
  6e:	b9 02 00 00 00       	mov    $0x2,%ecx
  73:	eb 0b                	jmp    80 <virtio_blk_op+0x80>
  75:	6a 00                	push   $0x0
  77:	6a 00                	push   $0x0
  79:	6a 02                	push   $0x2
  7b:	b9 01 00 00 00       	mov    $0x1,%ecx
  80:	8d 54 24 20          	lea    0x20(%esp),%edx
  84:	89 f0                	mov    %esi,%eax
  86:	e8 fc ff ff ff       	call   87 <virtio_blk_op+0x87>
  8b:	83 c4 0c             	add    $0xc,%esp
  8e:	83 c3 28             	add    $0x28,%ebx
  91:	b9 01 00 00 00       	mov    $0x1,%ecx
  96:	89 f2                	mov    %esi,%edx
  98:	89 d8                	mov    %ebx,%eax
  9a:	e8 fc ff ff ff       	call   9b <virtio_blk_op+0x9b>
  9f:	89 f0                	mov    %esi,%eax
  a1:	e8 fc ff ff ff       	call   a2 <virtio_blk_op+0xa2>
  a6:	85 c0                	test   %eax,%eax
  a8:	75 0c                	jne    b6 <virtio_blk_op+0xb6>
  aa:	b8 05 00 00 00       	mov    $0x5,%eax
  af:	e8 fc ff ff ff       	call   b0 <virtio_blk_op+0xb0>
  b4:	eb e9                	jmp    9f <virtio_blk_op+0x9f>
  b6:	31 d2                	xor    %edx,%edx
  b8:	89 f0                	mov    %esi,%eax
  ba:	e8 fc ff ff ff       	call   bb <virtio_blk_op+0xbb>
  bf:	89 d8                	mov    %ebx,%eax
  c1:	e8 fc ff ff ff       	call   c2 <virtio_blk_op+0xc2>
  c6:	8a 44 24 03          	mov    0x3(%esp),%al
  ca:	f6 d8                	neg    %al
  cc:	19 c0                	sbb    %eax,%eax
  ce:	83 e0 0c             	and    $0xc,%eax
  d1:	83 c4 2c             	add    $0x2c,%esp
  d4:	5b                   	pop    %ebx
  d5:	5e                   	pop    %esi
  d6:	5f                   	pop    %edi
  d7:	c3                   	ret    

Disassembly of section .text.init_virtio_blk:

00000000 <init_virtio_blk>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 28             	sub    $0x28,%esp
   7:	89 c6                	mov    %eax,%esi
   9:	50                   	push   %eax
   a:	68 00 00 00 00       	push   $0x0
   f:	e8 fc ff ff ff       	call   10 <init_virtio_blk+0x10>
  14:	b9 10 00 00 00       	mov    $0x10,%ecx
  19:	ba 6c 00 00 00       	mov    $0x6c,%edx
  1e:	b8 00 00 00 00       	mov    $0x0,%eax
  23:	e8 fc ff ff ff       	call   24 <init_virtio_blk+0x24>
  28:	59                   	pop    %ecx
  29:	5b                   	pop    %ebx
  2a:	85 c0                	test   %eax,%eax
  2c:	75 16                	jne    44 <init_virtio_blk+0x44>
  2e:	ba 00 00 00 00       	mov    $0x0,%edx
  33:	b8 69 00 00 00       	mov    $0x69,%eax
  38:	83 c4 28             	add    $0x28,%esp
  3b:	5b                   	pop    %ebx
  3c:	5e                   	pop    %esi
  3d:	5f                   	pop    %edi
  3e:	5d                   	pop    %ebp
  3f:	e9 fc ff ff ff       	jmp    40 <init_virtio_blk+0x40>
  44:	89 c3                	mov    %eax,%ebx
  46:	b9 6c 00 00 00       	mov    $0x6c,%ecx
  4b:	31 d2                	xor    %edx,%edx
  4d:	e8 fc ff ff ff       	call   4e <init_virtio_blk+0x4e>
  52:	c6 03 61             	movb   $0x61,(%ebx)
  55:	0f b7 06             	movzwl (%esi),%eax
  58:	89 43 14             	mov    %eax,0x14(%ebx)
  5b:	8d 43 28             	lea    0x28(%ebx),%eax
  5e:	89 04 24             	mov    %eax,(%esp)
  61:	89 f2                	mov    %esi,%edx
  63:	e8 fc ff ff ff       	call   64 <init_virtio_blk+0x64>
  68:	8d 4b 24             	lea    0x24(%ebx),%ecx
  6b:	31 d2                	xor    %edx,%edx
  6d:	8b 04 24             	mov    (%esp),%eax
  70:	e8 fc ff ff ff       	call   71 <init_virtio_blk+0x71>
  75:	85 c0                	test   %eax,%eax
  77:	79 08                	jns    81 <init_virtio_blk+0x81>
  79:	56                   	push   %esi
  7a:	68 19 00 00 00       	push   $0x19
  7f:	eb 1f                	jmp    a0 <init_virtio_blk+0xa0>
  81:	80 7b 68 00          	cmpb   $0x0,0x68(%ebx)
  85:	0f 84 f9 00 00 00    	je     184 <init_virtio_blk+0x184>
  8b:	8b 04 24             	mov    (%esp),%eax
  8e:	e8 fc ff ff ff       	call   8f <init_virtio_blk+0x8f>
  93:	89 c7                	mov    %eax,%edi
  95:	f6 c2 01             	test   $0x1,%dl
  98:	75 12                	jne    ac <init_virtio_blk+0xac>
  9a:	56                   	push   %esi
  9b:	68 3d 00 00 00       	push   $0x3d
  a0:	e8 fc ff ff ff       	call   a1 <init_virtio_blk+0xa1>
  a5:	58                   	pop    %eax
  a6:	5a                   	pop    %edx
  a7:	e9 b2 01 00 00       	jmp    25e <init_virtio_blk+0x25e>
  ac:	83 e7 40             	and    $0x40,%edi
  af:	89 d1                	mov    %edx,%ecx
  b1:	83 e1 03             	and    $0x3,%ecx
  b4:	89 fa                	mov    %edi,%edx
  b6:	8b 04 24             	mov    (%esp),%eax
  b9:	e8 fc ff ff ff       	call   ba <init_virtio_blk+0xba>
  be:	ba 0b 00 00 00       	mov    $0xb,%edx
  c3:	8b 04 24             	mov    (%esp),%eax
  c6:	e8 fc ff ff ff       	call   c7 <init_virtio_blk+0xc7>
  cb:	8b 04 24             	mov    (%esp),%eax
  ce:	e8 fc ff ff ff       	call   cf <init_virtio_blk+0xcf>
  d3:	a8 08                	test   $0x8,%al
  d5:	75 08                	jne    df <init_virtio_blk+0xdf>
  d7:	56                   	push   %esi
  d8:	68 6e 00 00 00       	push   $0x6e
  dd:	eb c1                	jmp    a0 <init_virtio_blk+0xa0>
  df:	8d 6b 4c             	lea    0x4c(%ebx),%ebp
  e2:	b9 08 00 00 00       	mov    $0x8,%ecx
  e7:	31 d2                	xor    %edx,%edx
  e9:	89 e8                	mov    %ebp,%eax
  eb:	e8 fc ff ff ff       	call   ec <init_virtio_blk+0xec>
  f0:	89 43 0c             	mov    %eax,0xc(%ebx)
  f3:	89 53 10             	mov    %edx,0x10(%ebx)
  f6:	85 ff                	test   %edi,%edi
  f8:	75 08                	jne    102 <init_virtio_blk+0x102>
  fa:	66 c7 43 1a 00 02    	movw   $0x200,0x1a(%ebx)
 100:	eb 23                	jmp    125 <init_virtio_blk+0x125>
 102:	b9 04 00 00 00       	mov    $0x4,%ecx
 107:	ba 14 00 00 00       	mov    $0x14,%edx
 10c:	89 e8                	mov    %ebp,%eax
 10e:	e8 fc ff ff ff       	call   10f <init_virtio_blk+0x10f>
 113:	66 89 43 1a          	mov    %ax,0x1a(%ebx)
 117:	66 3d 00 02          	cmp    $0x200,%ax
 11b:	74 08                	je     125 <init_virtio_blk+0x125>
 11d:	0f b7 c0             	movzwl %ax,%eax
 120:	e9 c2 00 00 00       	jmp    1e7 <init_virtio_blk+0x1e7>
 125:	ff 73 0c             	push   0xc(%ebx)
 128:	68 00 02 00 00       	push   $0x200
 12d:	56                   	push   %esi
 12e:	68 bf 00 00 00       	push   $0xbf
 133:	e8 fc ff ff ff       	call   134 <init_virtio_blk+0x134>
 138:	b9 02 00 00 00       	mov    $0x2,%ecx
 13d:	ba 10 00 00 00       	mov    $0x10,%edx
 142:	89 e8                	mov    %ebp,%eax
 144:	e8 fc ff ff ff       	call   145 <init_virtio_blk+0x145>
 149:	66 89 43 1e          	mov    %ax,0x1e(%ebx)
 14d:	b9 01 00 00 00       	mov    $0x1,%ecx
 152:	ba 12 00 00 00       	mov    $0x12,%edx
 157:	89 e8                	mov    %ebp,%eax
 159:	e8 fc ff ff ff       	call   15a <init_virtio_blk+0x15a>
 15e:	66 89 43 1c          	mov    %ax,0x1c(%ebx)
 162:	b9 01 00 00 00       	mov    $0x1,%ecx
 167:	ba 13 00 00 00       	mov    $0x13,%edx
 16c:	89 e8                	mov    %ebp,%eax
 16e:	e8 fc ff ff ff       	call   16f <init_virtio_blk+0x16f>
 173:	66 89 43 20          	mov    %ax,0x20(%ebx)
 177:	83 c4 10             	add    $0x10,%esp
 17a:	bf 0b 00 00 00       	mov    $0xb,%edi
 17f:	e9 93 00 00 00       	jmp    217 <init_virtio_blk+0x217>
 184:	bf 14 00 00 00       	mov    $0x14,%edi
 189:	8d 43 58             	lea    0x58(%ebx),%eax
 18c:	b9 01 00 00 00       	mov    $0x1,%ecx
 191:	89 fa                	mov    %edi,%edx
 193:	e8 fc ff ff ff       	call   194 <init_virtio_blk+0x194>
 198:	88 44 3c f4          	mov    %al,-0xc(%esp,%edi,1)
 19c:	47                   	inc    %edi
 19d:	83 ff 34             	cmp    $0x34,%edi
 1a0:	75 e7                	jne    189 <init_virtio_blk+0x189>
 1a2:	8b 04 24             	mov    (%esp),%eax
 1a5:	e8 fc ff ff ff       	call   1a6 <init_virtio_blk+0x1a6>
 1aa:	89 c2                	mov    %eax,%edx
 1ac:	b8 00 02 00 00       	mov    $0x200,%eax
 1b1:	80 e2 40             	and    $0x40,%dl
 1b4:	74 05                	je     1bb <init_virtio_blk+0x1bb>
 1b6:	0f b7 44 24 1c       	movzwl 0x1c(%esp),%eax
 1bb:	66 89 43 1a          	mov    %ax,0x1a(%ebx)
 1bf:	8b 54 24 08          	mov    0x8(%esp),%edx
 1c3:	89 53 0c             	mov    %edx,0xc(%ebx)
 1c6:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
 1ca:	89 4b 10             	mov    %ecx,0x10(%ebx)
 1cd:	52                   	push   %edx
 1ce:	50                   	push   %eax
 1cf:	56                   	push   %esi
 1d0:	68 bf 00 00 00       	push   $0xbf
 1d5:	e8 fc ff ff ff       	call   1d6 <init_virtio_blk+0x1d6>
 1da:	0f b7 43 1a          	movzwl 0x1a(%ebx),%eax
 1de:	83 c4 10             	add    $0x10,%esp
 1e1:	66 3d 00 02          	cmp    $0x200,%ax
 1e5:	74 11                	je     1f8 <init_virtio_blk+0x1f8>
 1e7:	50                   	push   %eax
 1e8:	56                   	push   %esi
 1e9:	68 92 00 00 00       	push   $0x92
 1ee:	e8 fc ff ff ff       	call   1ef <init_virtio_blk+0x1ef>
 1f3:	83 c4 0c             	add    $0xc,%esp
 1f6:	eb 66                	jmp    25e <init_virtio_blk+0x25e>
 1f8:	8b 44 24 18          	mov    0x18(%esp),%eax
 1fc:	66 89 43 1e          	mov    %ax,0x1e(%ebx)
 200:	0f b6 44 24 1a       	movzbl 0x1a(%esp),%eax
 205:	66 89 43 1c          	mov    %ax,0x1c(%ebx)
 209:	0f b6 44 24 1b       	movzbl 0x1b(%esp),%eax
 20e:	66 89 43 20          	mov    %ax,0x20(%ebx)
 212:	bf 03 00 00 00       	mov    $0x3,%edi
 217:	56                   	push   %esi
 218:	68 e5 00 00 00       	push   $0xe5
 21d:	6a 50                	push   $0x50
 21f:	e8 fc ff ff ff       	call   220 <init_virtio_blk+0x220>
 224:	89 44 24 10          	mov    %eax,0x10(%esp)
 228:	89 f0                	mov    %esi,%eax
 22a:	e8 fc ff ff ff       	call   22b <init_virtio_blk+0x22b>
 22f:	89 c1                	mov    %eax,%ecx
 231:	8b 54 24 10          	mov    0x10(%esp),%edx
 235:	89 d8                	mov    %ebx,%eax
 237:	e8 fc ff ff ff       	call   238 <init_virtio_blk+0x238>
 23c:	89 fa                	mov    %edi,%edx
 23e:	83 ca 04             	or     $0x4,%edx
 241:	0f b6 d2             	movzbl %dl,%edx
 244:	8b 44 24 0c          	mov    0xc(%esp),%eax
 248:	e8 fc ff ff ff       	call   249 <init_virtio_blk+0x249>
 24d:	8d 53 02             	lea    0x2(%ebx),%edx
 250:	89 f0                	mov    %esi,%eax
 252:	83 c4 34             	add    $0x34,%esp
 255:	5b                   	pop    %ebx
 256:	5e                   	pop    %esi
 257:	5f                   	pop    %edi
 258:	5d                   	pop    %ebp
 259:	e9 fc ff ff ff       	jmp    25a <init_virtio_blk+0x25a>
 25e:	8b 04 24             	mov    (%esp),%eax
 261:	e8 fc ff ff ff       	call   262 <init_virtio_blk+0x262>
 266:	8b 43 24             	mov    0x24(%ebx),%eax
 269:	e8 fc ff ff ff       	call   26a <init_virtio_blk+0x26a>
 26e:	89 d8                	mov    %ebx,%eax
 270:	83 c4 28             	add    $0x28,%esp
 273:	5b                   	pop    %ebx
 274:	5e                   	pop    %esi
 275:	5f                   	pop    %edi
 276:	5d                   	pop    %ebp
 277:	e9 fc ff ff ff       	jmp    278 <init_virtio_blk+0x278>

Disassembly of section .text.virtio_blk_process_op:

00000000 <virtio_blk_process_op>:
   0:	8a 50 08             	mov    0x8(%eax),%dl
   3:	80 fa 02             	cmp    $0x2,%dl
   6:	74 0c                	je     14 <virtio_blk_process_op+0x14>
   8:	80 fa 03             	cmp    $0x3,%dl
   b:	75 0e                	jne    1b <virtio_blk_process_op+0x1b>
   d:	ba 01 00 00 00       	mov    $0x1,%edx
  12:	eb 02                	jmp    16 <virtio_blk_process_op+0x16>
  14:	31 d2                	xor    %edx,%edx
  16:	e9 fc ff ff ff       	jmp    17 <virtio_blk_process_op+0x17>
  1b:	e9 fc ff ff ff       	jmp    1c <virtio_blk_process_op+0x1c>

Disassembly of section .text.init_virtio_blk_mmio:

00000000 <init_virtio_blk_mmio>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 08             	sub    $0x8,%esp
   7:	89 c6                	mov    %eax,%esi
   9:	50                   	push   %eax
   a:	68 f9 00 00 00       	push   $0xf9
   f:	e8 fc ff ff ff       	call   10 <init_virtio_blk_mmio+0x10>
  14:	b9 10 00 00 00       	mov    $0x10,%ecx
  19:	ba 6c 00 00 00       	mov    $0x6c,%edx
  1e:	b8 00 00 00 00       	mov    $0x0,%eax
  23:	e8 fc ff ff ff       	call   24 <init_virtio_blk_mmio+0x24>
  28:	5f                   	pop    %edi
  29:	5d                   	pop    %ebp
  2a:	85 c0                	test   %eax,%eax
  2c:	75 16                	jne    44 <init_virtio_blk_mmio+0x44>
  2e:	ba 00 00 00 00       	mov    $0x0,%edx
  33:	b8 cc 00 00 00       	mov    $0xcc,%eax
  38:	83 c4 08             	add    $0x8,%esp
  3b:	5b                   	pop    %ebx
  3c:	5e                   	pop    %esi
  3d:	5f                   	pop    %edi
  3e:	5d                   	pop    %ebp
  3f:	e9 fc ff ff ff       	jmp    40 <init_virtio_blk_mmio+0x40>
  44:	89 c3                	mov    %eax,%ebx
  46:	b9 6c 00 00 00       	mov    $0x6c,%ecx
  4b:	31 d2                	xor    %edx,%edx
  4d:	e8 fc ff ff ff       	call   4e <init_virtio_blk_mmio+0x4e>
  52:	c6 03 61             	movb   $0x61,(%ebx)
  55:	89 73 14             	mov    %esi,0x14(%ebx)
  58:	8d 43 28             	lea    0x28(%ebx),%eax
  5b:	89 04 24             	mov    %eax,(%esp)
  5e:	89 f2                	mov    %esi,%edx
  60:	e8 fc ff ff ff       	call   61 <init_virtio_blk_mmio+0x61>
  65:	8d 4b 24             	lea    0x24(%ebx),%ecx
  68:	31 d2                	xor    %edx,%edx
  6a:	8b 04 24             	mov    (%esp),%eax
  6d:	e8 fc ff ff ff       	call   6e <init_virtio_blk_mmio+0x6e>
  72:	85 c0                	test   %eax,%eax
  74:	79 08                	jns    7e <init_virtio_blk_mmio+0x7e>
  76:	56                   	push   %esi
  77:	68 16 01 00 00       	push   $0x116
  7c:	eb 3b                	jmp    b9 <init_virtio_blk_mmio+0xb9>
  7e:	8b 04 24             	mov    (%esp),%eax
  81:	e8 fc ff ff ff       	call   82 <init_virtio_blk_mmio+0x82>
  86:	83 e0 40             	and    $0x40,%eax
  89:	89 c5                	mov    %eax,%ebp
  8b:	89 d1                	mov    %edx,%ecx
  8d:	83 e1 01             	and    $0x1,%ecx
  90:	89 c2                	mov    %eax,%edx
  92:	8b 04 24             	mov    (%esp),%eax
  95:	e8 fc ff ff ff       	call   96 <init_virtio_blk_mmio+0x96>
  9a:	ba 0b 00 00 00       	mov    $0xb,%edx
  9f:	8b 04 24             	mov    (%esp),%eax
  a2:	e8 fc ff ff ff       	call   a3 <init_virtio_blk_mmio+0xa3>
  a7:	8b 04 24             	mov    (%esp),%eax
  aa:	e8 fc ff ff ff       	call   ab <init_virtio_blk_mmio+0xab>
  af:	a8 08                	test   $0x8,%al
  b1:	75 12                	jne    c5 <init_virtio_blk_mmio+0xc5>
  b3:	56                   	push   %esi
  b4:	68 3e 01 00 00       	push   $0x13e
  b9:	e8 fc ff ff ff       	call   ba <init_virtio_blk_mmio+0xba>
  be:	5e                   	pop    %esi
  bf:	5f                   	pop    %edi
  c0:	e9 e1 00 00 00       	jmp    1a6 <init_virtio_blk_mmio+0x1a6>
  c5:	8d 7b 4c             	lea    0x4c(%ebx),%edi
  c8:	b9 08 00 00 00       	mov    $0x8,%ecx
  cd:	31 d2                	xor    %edx,%edx
  cf:	89 f8                	mov    %edi,%eax
  d1:	e8 fc ff ff ff       	call   d2 <init_virtio_blk_mmio+0xd2>
  d6:	89 43 0c             	mov    %eax,0xc(%ebx)
  d9:	89 53 10             	mov    %edx,0x10(%ebx)
  dc:	85 ed                	test   %ebp,%ebp
  de:	75 08                	jne    e8 <init_virtio_blk_mmio+0xe8>
  e0:	66 c7 43 1a 00 02    	movw   $0x200,0x1a(%ebx)
  e6:	eb 32                	jmp    11a <init_virtio_blk_mmio+0x11a>
  e8:	b9 04 00 00 00       	mov    $0x4,%ecx
  ed:	ba 14 00 00 00       	mov    $0x14,%edx
  f2:	89 f8                	mov    %edi,%eax
  f4:	e8 fc ff ff ff       	call   f5 <init_virtio_blk_mmio+0xf5>
  f9:	66 89 43 1a          	mov    %ax,0x1a(%ebx)
  fd:	66 3d 00 02          	cmp    $0x200,%ax
 101:	74 17                	je     11a <init_virtio_blk_mmio+0x11a>
 103:	0f b7 c0             	movzwl %ax,%eax
 106:	50                   	push   %eax
 107:	56                   	push   %esi
 108:	68 61 01 00 00       	push   $0x161
 10d:	e8 fc ff ff ff       	call   10e <init_virtio_blk_mmio+0x10e>
 112:	83 c4 0c             	add    $0xc,%esp
 115:	e9 8c 00 00 00       	jmp    1a6 <init_virtio_blk_mmio+0x1a6>
 11a:	ff 73 0c             	push   0xc(%ebx)
 11d:	68 00 02 00 00       	push   $0x200
 122:	56                   	push   %esi
 123:	68 92 01 00 00       	push   $0x192
 128:	e8 fc ff ff ff       	call   129 <init_virtio_blk_mmio+0x129>
 12d:	b9 02 00 00 00       	mov    $0x2,%ecx
 132:	ba 10 00 00 00       	mov    $0x10,%edx
 137:	89 f8                	mov    %edi,%eax
 139:	e8 fc ff ff ff       	call   13a <init_virtio_blk_mmio+0x13a>
 13e:	66 89 43 1e          	mov    %ax,0x1e(%ebx)
 142:	b9 01 00 00 00       	mov    $0x1,%ecx
 147:	ba 12 00 00 00       	mov    $0x12,%edx
 14c:	89 f8                	mov    %edi,%eax
 14e:	e8 fc ff ff ff       	call   14f <init_virtio_blk_mmio+0x14f>
 153:	66 89 43 1c          	mov    %ax,0x1c(%ebx)
 157:	b9 01 00 00 00       	mov    $0x1,%ecx
 15c:	ba 13 00 00 00       	mov    $0x13,%edx
 161:	89 f8                	mov    %edi,%eax
 163:	e8 fc ff ff ff       	call   164 <init_virtio_blk_mmio+0x164>
 168:	66 89 43 20          	mov    %ax,0x20(%ebx)
 16c:	56                   	push   %esi
 16d:	68 bc 01 00 00       	push   $0x1bc
 172:	6a 50                	push   $0x50
 174:	e8 fc ff ff ff       	call   175 <init_virtio_blk_mmio+0x175>
 179:	89 44 24 20          	mov    %eax,0x20(%esp)
 17d:	89 f0                	mov    %esi,%eax
 17f:	e8 fc ff ff ff       	call   180 <init_virtio_blk_mmio+0x180>
 184:	89 c1                	mov    %eax,%ecx
 186:	8b 54 24 20          	mov    0x20(%esp),%edx
 18a:	89 d8                	mov    %ebx,%eax
 18c:	e8 fc ff ff ff       	call   18d <init_virtio_blk_mmio+0x18d>
 191:	ba 0f 00 00 00       	mov    $0xf,%edx
 196:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 19a:	83 c4 24             	add    $0x24,%esp
 19d:	5b                   	pop    %ebx
 19e:	5e                   	pop    %esi
 19f:	5f                   	pop    %edi
 1a0:	5d                   	pop    %ebp
 1a1:	e9 fc ff ff ff       	jmp    1a2 <init_virtio_blk_mmio+0x1a2>
 1a6:	8b 04 24             	mov    (%esp),%eax
 1a9:	e8 fc ff ff ff       	call   1aa <init_virtio_blk_mmio+0x1aa>
 1ae:	8b 43 24             	mov    0x24(%ebx),%eax
 1b1:	e8 fc ff ff ff       	call   1b2 <init_virtio_blk_mmio+0x1b2>
 1b6:	89 d8                	mov    %ebx,%eax
 1b8:	83 c4 08             	add    $0x8,%esp
 1bb:	5b                   	pop    %ebx
 1bc:	5e                   	pop    %esi
 1bd:	5f                   	pop    %edi
 1be:	5d                   	pop    %ebp
 1bf:	e9 fc ff ff ff       	jmp    1c0 <init_virtio_blk_mmio+0x1c0>

Disassembly of section .text.virtio_blk_setup:

00000000 <virtio_blk_setup>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	e8 fc ff ff ff       	call   3 <virtio_blk_setup+0x3>
   7:	89 c6                	mov    %eax,%esi
   9:	68 d0 01 00 00       	push   $0x1d0
   e:	e8 fc ff ff ff       	call   f <virtio_blk_setup+0xf>
  13:	a1 00 00 00 00       	mov    0x0,%eax
  18:	8d 58 fc             	lea    -0x4(%eax),%ebx
  1b:	59                   	pop    %ecx
  1c:	83 fb fc             	cmp    $0xfffffffc,%ebx
  1f:	74 4c                	je     6d <virtio_blk_setup+0x6d>
  21:	66 81 7b 10 f4 1a    	cmpw   $0x1af4,0x10(%ebx)
  27:	75 3c                	jne    65 <virtio_blk_setup+0x65>
  29:	66 8b 43 12          	mov    0x12(%ebx),%ax
  2d:	66 3d 42 10          	cmp    $0x1042,%ax
  31:	74 06                	je     39 <virtio_blk_setup+0x39>
  33:	66 3d 01 10          	cmp    $0x1001,%ax
  37:	75 2c                	jne    65 <virtio_blk_setup+0x65>
  39:	89 f0                	mov    %esi,%eax
  3b:	84 c0                	test   %al,%al
  3d:	74 1a                	je     59 <virtio_blk_setup+0x59>
  3f:	89 d8                	mov    %ebx,%eax
  41:	e8 fc ff ff ff       	call   42 <virtio_blk_setup+0x42>
  46:	85 c0                	test   %eax,%eax
  48:	79 0f                	jns    59 <virtio_blk_setup+0x59>
  4a:	53                   	push   %ebx
  4b:	68 e1 01 00 00       	push   $0x1e1
  50:	e8 fc ff ff ff       	call   51 <virtio_blk_setup+0x51>
  55:	58                   	pop    %eax
  56:	5a                   	pop    %edx
  57:	eb 0c                	jmp    65 <virtio_blk_setup+0x65>
  59:	89 da                	mov    %ebx,%edx
  5b:	b8 00 00 00 00       	mov    $0x0,%eax
  60:	e8 fc ff ff ff       	call   61 <virtio_blk_setup+0x61>
  65:	8b 5b 04             	mov    0x4(%ebx),%ebx
  68:	83 eb 04             	sub    $0x4,%ebx
  6b:	eb af                	jmp    1c <virtio_blk_setup+0x1c>
  6d:	5b                   	pop    %ebx
  6e:	5e                   	pop    %esi
  6f:	c3                   	ret    
