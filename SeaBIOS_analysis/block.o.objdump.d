
./block.o:     file format elf32-i386


Disassembly of section .text.fill_generic_edd:

00000000 <fill_generic_edd>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 2c             	sub    $0x2c,%esp
   7:	89 c3                	mov    %eax,%ebx
   9:	89 4c 24 18          	mov    %ecx,0x18(%esp)
   d:	8b 44 24 40          	mov    0x40(%esp),%eax
  11:	89 44 24 04          	mov    %eax,0x4(%esp)
  15:	89 d8                	mov    %ebx,%eax
  17:	c1 e8 10             	shr    $0x10,%eax
  1a:	89 44 24 24          	mov    %eax,0x24(%esp)
  1e:	0f b7 f3             	movzwl %bx,%esi
  21:	89 c3                	mov    %eax,%ebx
  23:	c1 e3 04             	shl    $0x4,%ebx
  26:	8d 04 1e             	lea    (%esi,%ebx,1),%eax
  29:	89 44 24 0c          	mov    %eax,0xc(%esp)
  2d:	66 8b 38             	mov    (%eax),%di
  30:	b8 01 00 00 00       	mov    $0x1,%eax
  35:	66 83 ff 19          	cmp    $0x19,%di
  39:	0f 86 39 02 00 00    	jbe    278 <fill_generic_edd+0x278>
  3f:	8b 42 1c             	mov    0x1c(%edx),%eax
  42:	66 89 44 24 12       	mov    %ax,0x12(%esp)
  47:	8b 42 20             	mov    0x20(%edx),%eax
  4a:	66 89 44 24 14       	mov    %ax,0x14(%esp)
  4f:	8b 42 0c             	mov    0xc(%edx),%eax
  52:	89 04 24             	mov    %eax,(%esp)
  55:	8b 42 10             	mov    0x10(%edx),%eax
  58:	89 44 24 08          	mov    %eax,0x8(%esp)
  5c:	0f b7 42 1a          	movzwl 0x1a(%edx),%eax
  60:	66 89 44 24 16       	mov    %ax,0x16(%esp)
  65:	50                   	push   %eax
  66:	ff 74 24 04          	push   0x4(%esp)
  6a:	0f b7 44 24 1c       	movzwl 0x1c(%esp),%eax
  6f:	89 44 24 24          	mov    %eax,0x24(%esp)
  73:	50                   	push   %eax
  74:	0f b7 6c 24 1e       	movzwl 0x1e(%esp),%ebp
  79:	55                   	push   %ebp
  7a:	0f b7 42 1e          	movzwl 0x1e(%edx),%eax
  7e:	89 44 24 30          	mov    %eax,0x30(%esp)
  82:	50                   	push   %eax
  83:	0f b6 12             	movzbl (%edx),%edx
  86:	52                   	push   %edx
  87:	0f b7 d7             	movzwl %di,%edx
  8a:	52                   	push   %edx
  8b:	68 1c 00 00 00       	push   $0x1c
  90:	e8 fc ff ff ff       	call   91 <fill_generic_edd+0x91>
  95:	8b 44 24 2c          	mov    0x2c(%esp),%eax
  99:	66 c7 00 1a 00       	movw   $0x1a,(%eax)
  9e:	8d 4c 1e 04          	lea    0x4(%esi,%ebx,1),%ecx
  a2:	8d 44 1e 0c          	lea    0xc(%esi,%ebx,1),%eax
  a6:	89 44 24 48          	mov    %eax,0x48(%esp)
  aa:	83 c4 20             	add    $0x20,%esp
  ad:	83 7c 24 08 ff       	cmpl   $0xffffffff,0x8(%esp)
  b2:	75 1d                	jne    d1 <fill_generic_edd+0xd1>
  b4:	83 3c 24 ff          	cmpl   $0xffffffff,(%esp)
  b8:	75 17                	jne    d1 <fill_generic_edd+0xd1>
  ba:	8d 44 1e 02          	lea    0x2(%esi,%ebx,1),%eax
  be:	66 c7 00 74 00       	movw   $0x74,(%eax)
  c3:	c7 01 ff ff ff ff    	movl   $0xffffffff,(%ecx)
  c9:	83 ca ff             	or     $0xffffffff,%edx
  cc:	83 c8 ff             	or     $0xffffffff,%eax
  cf:	eb 4c                	jmp    11d <fill_generic_edd+0x11d>
  d1:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  d5:	f7 e5                	mul    %ebp
  d7:	69 ea ff 3f 00 00    	imul   $0x3fff,%edx,%ebp
  dd:	89 6c 24 1c          	mov    %ebp,0x1c(%esp)
  e1:	bd ff 3f 00 00       	mov    $0x3fff,%ebp
  e6:	f7 e5                	mul    %ebp
  e8:	03 54 24 1c          	add    0x1c(%esp),%edx
  ec:	3b 04 24             	cmp    (%esp),%eax
  ef:	89 d0                	mov    %edx,%eax
  f1:	1b 44 24 08          	sbb    0x8(%esp),%eax
  f5:	72 0b                	jb     102 <fill_generic_edd+0x102>
  f7:	8b 44 24 20          	mov    0x20(%esp),%eax
  fb:	ba 02 00 00 00       	mov    $0x2,%edx
 100:	eb 07                	jmp    109 <fill_generic_edd+0x109>
 102:	31 d2                	xor    %edx,%edx
 104:	b8 ff 3f 00 00       	mov    $0x3fff,%eax
 109:	8d 6c 1e 02          	lea    0x2(%esi,%ebx,1),%ebp
 10d:	66 89 55 00          	mov    %dx,0x0(%ebp)
 111:	89 01                	mov    %eax,(%ecx)
 113:	0f b7 54 24 12       	movzwl 0x12(%esp),%edx
 118:	0f b7 44 24 14       	movzwl 0x14(%esp),%eax
 11d:	8d 4c 1e 08          	lea    0x8(%esi,%ebx,1),%ecx
 121:	89 11                	mov    %edx,(%ecx)
 123:	8d 4c 1e 0c          	lea    0xc(%esi,%ebx,1),%ecx
 127:	89 01                	mov    %eax,(%ecx)
 129:	8b 04 24             	mov    (%esp),%eax
 12c:	89 44 1e 10          	mov    %eax,0x10(%esi,%ebx,1)
 130:	8b 44 24 08          	mov    0x8(%esp),%eax
 134:	89 44 1e 14          	mov    %eax,0x14(%esi,%ebx,1)
 138:	66 8b 44 24 16       	mov    0x16(%esp),%ax
 13d:	66 89 44 1e 18       	mov    %ax,0x18(%esi,%ebx,1)
 142:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
 147:	0f 84 29 01 00 00    	je     276 <fill_generic_edd+0x276>
 14d:	66 83 ff 1d          	cmp    $0x1d,%di
 151:	0f 86 1f 01 00 00    	jbe    276 <fill_generic_edd+0x276>
 157:	8b 44 24 0c          	mov    0xc(%esp),%eax
 15b:	66 c7 00 1e 00       	movw   $0x1e,(%eax)
 160:	8b 44 24 18          	mov    0x18(%esp),%eax
 164:	89 44 1e 1a          	mov    %eax,0x1a(%esi,%ebx,1)
 168:	80 7c 24 04 00       	cmpb   $0x0,0x4(%esp)
 16d:	0f 84 03 01 00 00    	je     276 <fill_generic_edd+0x276>
 173:	66 83 ff 41          	cmp    $0x41,%di
 177:	0f 86 f9 00 00 00    	jbe    276 <fill_generic_edd+0x276>
 17d:	66 c7 44 1e 1e dd be 	movw   $0xbedd,0x1e(%esi,%ebx,1)
 184:	66 83 ff 4a          	cmp    $0x4a,%di
 188:	0f 94 c0             	sete   %al
 18b:	8d 04 c5 24 00 00 00 	lea    0x24(,%eax,8),%eax
 192:	88 44 1e 20          	mov    %al,0x20(%esi,%ebx,1)
 196:	c6 44 1e 21 00       	movb   $0x0,0x21(%esi,%ebx,1)
 19b:	66 c7 44 1e 22 00 00 	movw   $0x0,0x22(%esi,%ebx,1)
 1a2:	8a 54 24 04          	mov    0x4(%esp),%dl
 1a6:	83 e2 0f             	and    $0xf,%edx
 1a9:	b8 00 00 00 00       	mov    $0x0,%eax
 1ae:	80 fa 02             	cmp    $0x2,%dl
 1b1:	75 13                	jne    1c6 <fill_generic_edd+0x1c6>
 1b3:	b8 05 00 00 00       	mov    $0x5,%eax
 1b8:	66 83 ff 4a          	cmp    $0x4a,%di
 1bc:	74 08                	je     1c6 <fill_generic_edd+0x1c6>
 1be:	81 64 24 44 ff ff ff 	andl   $0xffffff,0x44(%esp)
 1c5:	00 
 1c6:	0f b7 4c 24 24       	movzwl 0x24(%esp),%ecx
 1cb:	89 0c 24             	mov    %ecx,(%esp)
 1ce:	8d 56 24             	lea    0x24(%esi),%edx
 1d1:	6a 04                	push   $0x4
 1d3:	50                   	push   %eax
 1d4:	b9 00 f0 00 00       	mov    $0xf000,%ecx
 1d9:	8b 44 24 08          	mov    0x8(%esp),%eax
 1dd:	e8 fc ff ff ff       	call   1de <fill_generic_edd+0x1de>
 1e2:	8b 44 24 4c          	mov    0x4c(%esp),%eax
 1e6:	89 44 1e 30          	mov    %eax,0x30(%esi,%ebx,1)
 1ea:	c7 44 1e 34 00 00 00 	movl   $0x0,0x34(%esi,%ebx,1)
 1f1:	00 
 1f2:	8a 44 24 0c          	mov    0xc(%esp),%al
 1f6:	83 e0 f0             	and    $0xfffffff0,%eax
 1f9:	5a                   	pop    %edx
 1fa:	59                   	pop    %ecx
 1fb:	ba 0a 00 00 00       	mov    $0xa,%edx
 200:	3c 20                	cmp    $0x20,%al
 202:	75 05                	jne    209 <fill_generic_edd+0x209>
 204:	ba 13 00 00 00       	mov    $0x13,%edx
 209:	8d 46 28             	lea    0x28(%esi),%eax
 20c:	6a 08                	push   $0x8
 20e:	52                   	push   %edx
 20f:	b9 00 f0 00 00       	mov    $0xf000,%ecx
 214:	89 c2                	mov    %eax,%edx
 216:	8b 44 24 08          	mov    0x8(%esp),%eax
 21a:	e8 fc ff ff ff       	call   21b <fill_generic_edd+0x21b>
 21f:	8d 4c 1e 38          	lea    0x38(%esi,%ebx,1),%ecx
 223:	8b 44 24 50          	mov    0x50(%esp),%eax
 227:	31 d2                	xor    %edx,%edx
 229:	8d 6e 1e             	lea    0x1e(%esi),%ebp
 22c:	83 c4 08             	add    $0x8,%esp
 22f:	89 01                	mov    %eax,(%ecx)
 231:	89 51 04             	mov    %edx,0x4(%ecx)
 234:	66 83 ff 4a          	cmp    $0x4a,%di
 238:	75 27                	jne    261 <fill_generic_edd+0x261>
 23a:	c7 44 1e 40 00 00 00 	movl   $0x0,0x40(%esi,%ebx,1)
 241:	00 
 242:	c7 44 1e 44 00 00 00 	movl   $0x0,0x44(%esi,%ebx,1)
 249:	00 
 24a:	b9 2b 00 00 00       	mov    $0x2b,%ecx
 24f:	89 ea                	mov    %ebp,%edx
 251:	8b 04 24             	mov    (%esp),%eax
 254:	e8 fc ff ff ff       	call   255 <fill_generic_edd+0x255>
 259:	f7 d8                	neg    %eax
 25b:	88 44 1e 49          	mov    %al,0x49(%esi,%ebx,1)
 25f:	eb 15                	jmp    276 <fill_generic_edd+0x276>
 261:	b9 23 00 00 00       	mov    $0x23,%ecx
 266:	89 ea                	mov    %ebp,%edx
 268:	8b 04 24             	mov    (%esp),%eax
 26b:	e8 fc ff ff ff       	call   26c <fill_generic_edd+0x26c>
 270:	f7 d8                	neg    %eax
 272:	88 44 1e 41          	mov    %al,0x41(%esi,%ebx,1)
 276:	31 c0                	xor    %eax,%eax
 278:	83 c4 2c             	add    $0x2c,%esp
 27b:	5b                   	pop    %ebx
 27c:	5e                   	pop    %esi
 27d:	5f                   	pop    %edi
 27e:	5d                   	pop    %ebp
 27f:	c3                   	ret    

Disassembly of section .text.add_drive:

00000000 <add_drive>:
   0:	53                   	push   %ebx
   1:	89 c3                	mov    %eax,%ebx
   3:	0f b6 02             	movzbl (%edx),%eax
   6:	3c 0f                	cmp    $0xf,%al
   8:	76 10                	jbe    1a <add_drive+0x1a>
   a:	ba 00 00 00 00       	mov    $0x0,%edx
   f:	b8 f8 00 00 00       	mov    $0xf8,%eax
  14:	5b                   	pop    %ebx
  15:	e9 fc ff ff ff       	jmp    16 <add_drive+0x16>
  1a:	89 0c 83             	mov    %ecx,(%ebx,%eax,4)
  1d:	fe 02                	incb   (%edx)
  1f:	5b                   	pop    %ebx
  20:	c3                   	ret    

Disassembly of section .text.getDrive:

00000000 <getDrive>:
   0:	80 fa 0f             	cmp    $0xf,%dl
   3:	77 13                	ja     18 <getDrive+0x18>
   5:	0f b6 c0             	movzbl %al,%eax
   8:	0f b6 d2             	movzbl %dl,%edx
   b:	c1 e0 04             	shl    $0x4,%eax
   e:	01 d0                	add    %edx,%eax
  10:	8b 04 85 00 00 00 00 	mov    0x0(,%eax,4),%eax
  17:	c3                   	ret    
  18:	31 c0                	xor    %eax,%eax
  1a:	c3                   	ret    

Disassembly of section .text.getDriveId:

00000000 <getDriveId>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 d3                	mov    %edx,%ebx
   4:	31 c9                	xor    %ecx,%ecx
   6:	0f b6 f0             	movzbl %al,%esi
   9:	89 ca                	mov    %ecx,%edx
   b:	89 f0                	mov    %esi,%eax
   d:	e8 fc ff ff ff       	call   e <getDriveId+0xe>
  12:	39 c3                	cmp    %eax,%ebx
  14:	74 09                	je     1f <getDriveId+0x1f>
  16:	41                   	inc    %ecx
  17:	83 f9 10             	cmp    $0x10,%ecx
  1a:	75 ed                	jne    9 <getDriveId+0x9>
  1c:	83 c9 ff             	or     $0xffffffff,%ecx
  1f:	89 c8                	mov    %ecx,%eax
  21:	5b                   	pop    %ebx
  22:	5e                   	pop    %esi
  23:	c3                   	ret    

Disassembly of section .text.create_bounce_buf:

00000000 <create_bounce_buf>:
   0:	53                   	push   %ebx
   1:	31 db                	xor    %ebx,%ebx
   3:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
   a:	75 31                	jne    3d <create_bounce_buf+0x3d>
   c:	b9 10 00 00 00       	mov    $0x10,%ecx
  11:	ba 00 08 00 00       	mov    $0x800,%edx
  16:	b8 00 00 00 00       	mov    $0x0,%eax
  1b:	e8 fc ff ff ff       	call   1c <create_bounce_buf+0x1c>
  20:	85 c0                	test   %eax,%eax
  22:	75 14                	jne    38 <create_bounce_buf+0x38>
  24:	ba 00 00 00 00       	mov    $0x0,%edx
  29:	b8 3d 00 00 00       	mov    $0x3d,%eax
  2e:	e8 fc ff ff ff       	call   2f <create_bounce_buf+0x2f>
  33:	83 cb ff             	or     $0xffffffff,%ebx
  36:	eb 05                	jmp    3d <create_bounce_buf+0x3d>
  38:	a3 00 00 00 00       	mov    %eax,0x0
  3d:	89 d8                	mov    %ebx,%eax
  3f:	5b                   	pop    %ebx
  40:	c3                   	ret    

Disassembly of section .text.map_hd_drive:

00000000 <map_hd_drive>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 10             	sub    $0x10,%esp
   7:	89 c3                	mov    %eax,%ebx
   9:	0f b6 05 75 04 00 00 	movzbl 0x475,%eax
  10:	88 44 24 0f          	mov    %al,0xf(%esp)
  14:	89 44 24 08          	mov    %eax,0x8(%esp)
  18:	50                   	push   %eax
  19:	53                   	push   %ebx
  1a:	68 72 00 00 00       	push   $0x72
  1f:	e8 fc ff ff ff       	call   20 <map_hd_drive+0x20>
  24:	89 d9                	mov    %ebx,%ecx
  26:	ba 75 04 00 00       	mov    $0x475,%edx
  2b:	b8 40 00 00 00       	mov    $0x40,%eax
  30:	e8 fc ff ff ff       	call   31 <map_hd_drive+0x31>
  35:	83 c4 0c             	add    $0xc,%esp
  38:	66 81 7b 02 ff 00    	cmpw   $0xff,0x2(%ebx)
  3e:	77 13                	ja     53 <map_hd_drive+0x53>
  40:	66 8b 43 06          	mov    0x6(%ebx),%ax
  44:	8d 50 ff             	lea    -0x1(%eax),%edx
  47:	b0 04                	mov    $0x4,%al
  49:	66 83 fa 3e          	cmp    $0x3e,%dx
  4d:	0f 86 9c 00 00 00    	jbe    ef <map_hd_drive+0xef>
  53:	80 3b 20             	cmpb   $0x20,(%ebx)
  56:	75 23                	jne    7b <map_hd_drive+0x7b>
  58:	8b 43 14             	mov    0x14(%ebx),%eax
  5b:	c1 e8 02             	shr    $0x2,%eax
  5e:	83 c0 39             	add    $0x39,%eax
  61:	0f b6 c0             	movzbl %al,%eax
  64:	e8 fc ff ff ff       	call   65 <map_hd_drive+0x65>
  69:	0f b6 c0             	movzbl %al,%eax
  6c:	8b 4b 14             	mov    0x14(%ebx),%ecx
  6f:	83 e1 03             	and    $0x3,%ecx
  72:	01 c9                	add    %ecx,%ecx
  74:	d3 f8                	sar    %cl,%eax
  76:	83 e0 03             	and    $0x3,%eax
  79:	eb 74                	jmp    ef <map_hd_drive+0xef>
  7b:	0f b7 73 1c          	movzwl 0x1c(%ebx),%esi
  7f:	0f b7 53 1e          	movzwl 0x1e(%ebx),%edx
  83:	89 d1                	mov    %edx,%ecx
  85:	8b 43 20             	mov    0x20(%ebx),%eax
  88:	66 89 04 24          	mov    %ax,(%esp)
  8c:	0f b7 c6             	movzwl %si,%eax
  8f:	f7 e2                	mul    %edx
  91:	0f b7 3c 24          	movzwl (%esp),%edi
  95:	89 d5                	mov    %edx,%ebp
  97:	0f af ef             	imul   %edi,%ebp
  9a:	f7 e7                	mul    %edi
  9c:	01 ea                	add    %ebp,%edx
  9e:	8b 7b 10             	mov    0x10(%ebx),%edi
  a1:	39 43 0c             	cmp    %eax,0xc(%ebx)
  a4:	19 d7                	sbb    %edx,%edi
  a6:	72 45                	jb     ed <map_hd_drive+0xed>
  a8:	66 85 c9             	test   %cx,%cx
  ab:	0f 94 c0             	sete   %al
  ae:	66 85 f6             	test   %si,%si
  b1:	0f 94 c2             	sete   %dl
  b4:	09 d0                	or     %edx,%eax
  b6:	66 83 3c 24 00       	cmpw   $0x0,(%esp)
  bb:	0f 94 c2             	sete   %dl
  be:	08 d0                	or     %dl,%al
  c0:	75 2b                	jne    ed <map_hd_drive+0xed>
  c2:	66 81 f9 00 04       	cmp    $0x400,%cx
  c7:	0f 96 c2             	setbe  %dl
  ca:	66 83 fe 10          	cmp    $0x10,%si
  ce:	0f 96 c0             	setbe  %al
  d1:	84 c2                	test   %al,%dl
  d3:	74 09                	je     de <map_hd_drive+0xde>
  d5:	31 c0                	xor    %eax,%eax
  d7:	66 83 3c 24 3f       	cmpw   $0x3f,(%esp)
  dc:	76 11                	jbe    ef <map_hd_drive+0xef>
  de:	0f af ce             	imul   %esi,%ecx
  e1:	81 f9 01 00 02 00    	cmp    $0x20001,%ecx
  e7:	0f 9c c0             	setl   %al
  ea:	40                   	inc    %eax
  eb:	eb 02                	jmp    ef <map_hd_drive+0xef>
  ed:	b0 01                	mov    $0x1,%al
  ef:	88 43 19             	mov    %al,0x19(%ebx)
  f2:	8b 7b 1c             	mov    0x1c(%ebx),%edi
  f5:	66 89 7c 24 0c       	mov    %di,0xc(%esp)
  fa:	66 8b 4b 1e          	mov    0x1e(%ebx),%cx
  fe:	8b 7b 20             	mov    0x20(%ebx),%edi
 101:	66 89 7c 24 04       	mov    %di,0x4(%esp)
 106:	8b 7b 0c             	mov    0xc(%ebx),%edi
 109:	89 3c 24             	mov    %edi,(%esp)
 10c:	8b 53 10             	mov    0x10(%ebx),%edx
 10f:	3c 03                	cmp    $0x3,%al
 111:	0f 84 a3 00 00 00    	je     1ba <map_hd_drive+0x1ba>
 117:	3c 04                	cmp    $0x4,%al
 119:	0f 84 eb 00 00 00    	je     20a <map_hd_drive+0x20a>
 11f:	3c 01                	cmp    $0x1,%al
 121:	74 1c                	je     13f <map_hd_drive+0x13f>
 123:	3c 02                	cmp    $0x2,%al
 125:	0f 84 b4 00 00 00    	je     1df <map_hd_drive+0x1df>
 12b:	8b 6c 24 04          	mov    0x4(%esp),%ebp
 12f:	89 c8                	mov    %ecx,%eax
 131:	8b 74 24 0c          	mov    0xc(%esp),%esi
 135:	ba 5b 00 00 00       	mov    $0x5b,%edx
 13a:	e9 f7 00 00 00       	jmp    236 <map_hd_drive+0x236>
 13f:	b8 00 04 fb 00       	mov    $0xfb0400,%eax
 144:	3b 04 24             	cmp    (%esp),%eax
 147:	b8 00 00 00 00       	mov    $0x0,%eax
 14c:	19 d0                	sbb    %edx,%eax
 14e:	0f 82 c8 00 00 00    	jb     21c <map_hd_drive+0x21c>
 154:	be 3f 00 00 00       	mov    $0x3f,%esi
 159:	8b 04 24             	mov    (%esp),%eax
 15c:	31 d2                	xor    %edx,%edx
 15e:	f7 f6                	div    %esi
 160:	89 c5                	mov    %eax,%ebp
 162:	be ff 00 00 00       	mov    $0xff,%esi
 167:	81 3c 24 ff fb 7e 00 	cmpl   $0x7efbff,(%esp)
 16e:	77 35                	ja     1a5 <map_hd_drive+0x1a5>
 170:	be 00 fc 00 00       	mov    $0xfc00,%esi
 175:	8b 04 24             	mov    (%esp),%eax
 178:	31 d2                	xor    %edx,%edx
 17a:	f7 f6                	div    %esi
 17c:	be 80 00 00 00       	mov    $0x80,%esi
 181:	81 3c 24 ff fb 3f 00 	cmpl   $0x3ffbff,(%esp)
 188:	77 1b                	ja     1a5 <map_hd_drive+0x1a5>
 18a:	be 40 00 00 00       	mov    $0x40,%esi
 18f:	66 83 f8 20          	cmp    $0x20,%ax
 193:	77 10                	ja     1a5 <map_hd_drive+0x1a5>
 195:	be 20 00 00 00       	mov    $0x20,%esi
 19a:	66 83 f8 10          	cmp    $0x10,%ax
 19e:	77 05                	ja     1a5 <map_hd_drive+0x1a5>
 1a0:	be 10 00 00 00       	mov    $0x10,%esi
 1a5:	0f b7 fe             	movzwl %si,%edi
 1a8:	89 e8                	mov    %ebp,%eax
 1aa:	31 d2                	xor    %edx,%edx
 1ac:	f7 f7                	div    %edi
 1ae:	ba 60 00 00 00       	mov    $0x60,%edx
 1b3:	bd 3f 00 00 00       	mov    $0x3f,%ebp
 1b8:	eb 7c                	jmp    236 <map_hd_drive+0x236>
 1ba:	66 83 7c 24 0c 10    	cmpw   $0x10,0xc(%esp)
 1c0:	75 2a                	jne    1ec <map_hd_drive+0x1ec>
 1c2:	0f b7 c1             	movzwl %cx,%eax
 1c5:	66 81 f9 ff ef       	cmp    $0xefff,%cx
 1ca:	76 05                	jbe    1d1 <map_hd_drive+0x1d1>
 1cc:	b8 ff ef 00 00       	mov    $0xefff,%eax
 1d1:	c1 e0 04             	shl    $0x4,%eax
 1d4:	be 0f 00 00 00       	mov    $0xf,%esi
 1d9:	31 d2                	xor    %edx,%edx
 1db:	f7 f6                	div    %esi
 1dd:	eb 13                	jmp    1f2 <map_hd_drive+0x1f2>
 1df:	89 c8                	mov    %ecx,%eax
 1e1:	8b 74 24 0c          	mov    0xc(%esp),%esi
 1e5:	ba 4e 00 00 00       	mov    $0x4e,%edx
 1ea:	eb 0b                	jmp    1f7 <map_hd_drive+0x1f7>
 1ec:	89 c8                	mov    %ecx,%eax
 1ee:	8b 74 24 0c          	mov    0xc(%esp),%esi
 1f2:	ba 54 00 00 00       	mov    $0x54,%edx
 1f7:	66 3d 00 04          	cmp    $0x400,%ax
 1fb:	76 35                	jbe    232 <map_hd_drive+0x232>
 1fd:	66 d1 e8             	shr    %ax
 200:	d1 e6                	shl    %esi
 202:	66 83 fe 7f          	cmp    $0x7f,%si
 206:	76 ef                	jbe    1f7 <map_hd_drive+0x1f7>
 208:	eb 28                	jmp    232 <map_hd_drive+0x232>
 20a:	8b 43 04             	mov    0x4(%ebx),%eax
 20d:	66 8b 73 02          	mov    0x2(%ebx),%si
 211:	66 8b 6b 06          	mov    0x6(%ebx),%bp
 215:	ba 64 00 00 00       	mov    $0x64,%edx
 21a:	eb 1a                	jmp    236 <map_hd_drive+0x236>
 21c:	ba 60 00 00 00       	mov    $0x60,%edx
 221:	bd 3f 00 00 00       	mov    $0x3f,%ebp
 226:	b8 00 04 00 00       	mov    $0x400,%eax
 22b:	be ff 00 00 00       	mov    $0xff,%esi
 230:	eb 04                	jmp    236 <map_hd_drive+0x236>
 232:	8b 6c 24 04          	mov    0x4(%esp),%ebp
 236:	89 c7                	mov    %eax,%edi
 238:	66 3d 00 04          	cmp    $0x400,%ax
 23c:	76 05                	jbe    243 <map_hd_drive+0x243>
 23e:	bf 00 04 00 00       	mov    $0x400,%edi
 243:	ff 34 24             	push   (%esp)
 246:	0f b7 c5             	movzwl %bp,%eax
 249:	50                   	push   %eax
 24a:	0f b7 c6             	movzwl %si,%eax
 24d:	50                   	push   %eax
 24e:	0f b7 c7             	movzwl %di,%eax
 251:	50                   	push   %eax
 252:	52                   	push   %edx
 253:	0f b7 44 24 18       	movzwl 0x18(%esp),%eax
 258:	50                   	push   %eax
 259:	0f b7 44 24 24       	movzwl 0x24(%esp),%eax
 25e:	50                   	push   %eax
 25f:	0f b7 c1             	movzwl %cx,%eax
 262:	50                   	push   %eax
 263:	53                   	push   %ebx
 264:	68 8d 00 00 00       	push   $0x8d
 269:	e8 fc ff ff ff       	call   26a <map_hd_drive+0x26a>
 26e:	66 89 73 02          	mov    %si,0x2(%ebx)
 272:	66 89 7b 04          	mov    %di,0x4(%ebx)
 276:	66 89 6b 06          	mov    %bp,0x6(%ebx)
 27a:	83 c4 28             	add    $0x28,%esp
 27d:	83 7c 24 08 01       	cmpl   $0x1,0x8(%esp)
 282:	0f 8f cc 00 00 00    	jg     354 <map_hd_drive+0x354>
 288:	66 8b 43 1e          	mov    0x1e(%ebx),%ax
 28c:	66 89 04 24          	mov    %ax,(%esp)
 290:	8b 4b 1c             	mov    0x1c(%ebx),%ecx
 293:	8b 43 20             	mov    0x20(%ebx),%eax
 296:	66 89 44 24 0c       	mov    %ax,0xc(%esp)
 29b:	0f b7 1d 0e 04 00 00 	movzwl 0x40e,%ebx
 2a2:	c1 e3 04             	shl    $0x4,%ebx
 2a5:	0f b6 54 24 0f       	movzbl 0xf(%esp),%edx
 2aa:	89 d0                	mov    %edx,%eax
 2ac:	c1 e0 04             	shl    $0x4,%eax
 2af:	8d 44 03 3d          	lea    0x3d(%ebx,%eax,1),%eax
 2b3:	89 44 24 04          	mov    %eax,0x4(%esp)
 2b7:	c1 e2 04             	shl    $0x4,%edx
 2ba:	01 d3                	add    %edx,%ebx
 2bc:	66 c7 43 42 ff ff    	movw   $0xffff,0x42(%ebx)
 2c2:	66 83 f9 09          	cmp    $0x9,%cx
 2c6:	19 d2                	sbb    %edx,%edx
 2c8:	83 e2 f8             	and    $0xfffffff8,%edx
 2cb:	83 ea 38             	sub    $0x38,%edx
 2ce:	88 53 45             	mov    %dl,0x45(%ebx)
 2d1:	8b 04 24             	mov    (%esp),%eax
 2d4:	66 89 43 49          	mov    %ax,0x49(%ebx)
 2d8:	66 89 7b 3d          	mov    %di,0x3d(%ebx)
 2dc:	89 f2                	mov    %esi,%edx
 2de:	88 53 3f             	mov    %dl,0x3f(%ebx)
 2e1:	89 ea                	mov    %ebp,%edx
 2e3:	88 53 4b             	mov    %dl,0x4b(%ebx)
 2e6:	66 39 f1             	cmp    %si,%cx
 2e9:	0f 95 44 24 0f       	setne  0xf(%esp)
 2ee:	66 39 6c 24 0c       	cmp    %bp,0xc(%esp)
 2f3:	0f 95 c2             	setne  %dl
 2f6:	0a 54 24 0f          	or     0xf(%esp),%dl
 2fa:	75 05                	jne    301 <map_hd_drive+0x301>
 2fc:	66 39 f8             	cmp    %di,%ax
 2ff:	74 26                	je     327 <map_hd_drive+0x327>
 301:	8b 04 24             	mov    (%esp),%eax
 304:	66 89 43 46          	mov    %ax,0x46(%ebx)
 308:	88 4b 48             	mov    %cl,0x48(%ebx)
 30b:	8a 44 24 0c          	mov    0xc(%esp),%al
 30f:	88 43 41             	mov    %al,0x41(%ebx)
 312:	c6 43 40 a0          	movb   $0xa0,0x40(%ebx)
 316:	ba 10 00 00 00       	mov    $0x10,%edx
 31b:	8b 44 24 04          	mov    0x4(%esp),%eax
 31f:	e8 fc ff ff ff       	call   320 <map_hd_drive+0x320>
 324:	28 43 4c             	sub    %al,0x4c(%ebx)
 327:	66 a1 0e 04 00 00    	mov    0x40e,%ax
 32d:	83 7c 24 08 00       	cmpl   $0x0,0x8(%esp)
 332:	75 11                	jne    345 <map_hd_drive+0x345>
 334:	66 c7 05 04 01 00 00 	movw   $0x3d,0x104
 33b:	3d 00 
 33d:	66 a3 06 01 00 00    	mov    %ax,0x106
 343:	eb 0f                	jmp    354 <map_hd_drive+0x354>
 345:	66 c7 05 18 01 00 00 	movw   $0x4d,0x118
 34c:	4d 00 
 34e:	66 a3 1a 01 00 00    	mov    %ax,0x11a
 354:	83 c4 10             	add    $0x10,%esp
 357:	5b                   	pop    %ebx
 358:	5e                   	pop    %esi
 359:	5f                   	pop    %edi
 35a:	5d                   	pop    %ebp
 35b:	c3                   	ret    

Disassembly of section .text.map_cd_drive:

00000000 <map_cd_drive>:
   0:	52                   	push   %edx
   1:	50                   	push   %eax
   2:	89 44 24 04          	mov    %eax,0x4(%esp)
   6:	68 c8 00 00 00       	push   $0xc8
   b:	e8 fc ff ff ff       	call   c <map_cd_drive+0xc>
  10:	8b 4c 24 08          	mov    0x8(%esp),%ecx
  14:	ba 00 00 00 00       	mov    $0x0,%edx
  19:	b8 80 00 00 00       	mov    $0x80,%eax
  1e:	83 c4 0c             	add    $0xc,%esp
  21:	e9 fc ff ff ff       	jmp    22 <map_cd_drive+0x22>

Disassembly of section .text.map_floppy_drive:

00000000 <map_floppy_drive>:
   0:	52                   	push   %edx
   1:	50                   	push   %eax
   2:	89 44 24 04          	mov    %eax,0x4(%esp)
   6:	68 dd 00 00 00       	push   $0xdd
   b:	e8 fc ff ff ff       	call   c <map_floppy_drive+0xc>
  10:	8b 4c 24 08          	mov    0x8(%esp),%ecx
  14:	ba 00 00 00 00       	mov    $0x0,%edx
  19:	b8 00 00 00 00       	mov    $0x0,%eax
  1e:	e8 fc ff ff ff       	call   1f <map_floppy_drive+0x1f>
  23:	59                   	pop    %ecx
  24:	58                   	pop    %eax
  25:	80 3d 00 00 00 00 01 	cmpb   $0x1,0x0
  2c:	75 1a                	jne    48 <map_floppy_drive+0x48>
  2e:	a1 10 04 00 00       	mov    0x410,%eax
  33:	83 e0 be             	and    $0xffffffbe,%eax
  36:	83 c8 01             	or     $0x1,%eax
  39:	66 a3 10 04 00 00    	mov    %ax,0x410
  3f:	c6 05 8f 04 00 00 07 	movb   $0x7,0x48f
  46:	eb 11                	jmp    59 <map_floppy_drive+0x59>
  48:	76 0f                	jbe    59 <map_floppy_drive+0x59>
  4a:	66 83 0d 10 04 00 00 	orw    $0x41,0x410
  51:	41 
  52:	c6 05 8f 04 00 00 77 	movb   $0x77,0x48f
  59:	58                   	pop    %eax
  5a:	c3                   	ret    

Disassembly of section .text.fill_edd:

00000000 <fill_edd>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 0c             	sub    $0xc,%esp
   7:	89 04 24             	mov    %eax,(%esp)
   a:	89 d6                	mov    %edx,%esi
   c:	8a 12                	mov    (%edx),%dl
   e:	80 fa 21             	cmp    $0x21,%dl
  11:	77 0b                	ja     1e <fill_edd+0x1e>
  13:	80 fa 1f             	cmp    $0x1f,%dl
  16:	0f 86 4b 01 00 00    	jbe    167 <fill_edd+0x167>
  1c:	eb 35                	jmp    53 <fill_edd+0x53>
  1e:	83 ea 60             	sub    $0x60,%edx
  21:	80 fa 01             	cmp    $0x1,%dl
  24:	0f 87 3d 01 00 00    	ja     167 <fill_edd+0x167>
  2a:	8b 46 14             	mov    0x14(%esi),%eax
  2d:	6a 00                	push   $0x0
  2f:	89 c2                	mov    %eax,%edx
  31:	83 e2 07             	and    $0x7,%edx
  34:	c1 e2 10             	shl    $0x10,%edx
  37:	0f b6 cc             	movzbl %ah,%ecx
  3a:	09 ca                	or     %ecx,%edx
  3c:	66 c1 e8 03          	shr    $0x3,%ax
  40:	83 e0 1f             	and    $0x1f,%eax
  43:	c1 e0 08             	shl    $0x8,%eax
  46:	09 d0                	or     %edx,%eax
  48:	50                   	push   %eax
  49:	6a 22                	push   $0x22
  4b:	83 c9 ff             	or     $0xffffffff,%ecx
  4e:	e9 1c 01 00 00       	jmp    16f <fill_edd+0x16f>
  53:	8b 46 24             	mov    0x24(%esi),%eax
  56:	8a 5e 28             	mov    0x28(%esi),%bl
  59:	88 5c 24 07          	mov    %bl,0x7(%esp)
  5d:	66 8b 48 02          	mov    0x2(%eax),%cx
  61:	0f b6 68 06          	movzbl 0x6(%eax),%ebp
  65:	0f b7 18             	movzwl (%eax),%ebx
  68:	8b 78 0c             	mov    0xc(%eax),%edi
  6b:	8a 40 07             	mov    0x7(%eax),%al
  6e:	88 44 24 08          	mov    %al,0x8(%esp)
  72:	b8 60 00 00 00       	mov    $0x60,%eax
  77:	80 fa 20             	cmp    $0x20,%dl
  7a:	75 23                	jne    9f <fill_edd+0x9f>
  7c:	8a 56 19             	mov    0x19(%esi),%dl
  7f:	31 c0                	xor    %eax,%eax
  81:	f6 c2 fb             	test   $0xfb,%dl
  84:	74 19                	je     9f <fill_edd+0x9f>
  86:	b8 08 02 00 00       	mov    $0x208,%eax
  8b:	80 fa 01             	cmp    $0x1,%dl
  8e:	74 0f                	je     9f <fill_edd+0x9f>
  90:	b8 08 00 00 00       	mov    $0x8,%eax
  95:	80 fa 03             	cmp    $0x3,%dl
  98:	75 05                	jne    9f <fill_edd+0x9f>
  9a:	b8 08 06 00 00       	mov    $0x608,%eax
  9f:	83 c8 10             	or     $0x10,%eax
  a2:	66 89 1d 00 00 00 00 	mov    %bx,0x0
  a9:	83 c1 02             	add    $0x2,%ecx
  ac:	66 89 0d 02 00 00 00 	mov    %cx,0x2
  b3:	80 7c 24 07 01       	cmpb   $0x1,0x7(%esp)
  b8:	19 d2                	sbb    %edx,%edx
  ba:	83 e2 f0             	and    $0xfffffff0,%edx
  bd:	83 ea 10             	sub    $0x10,%edx
  c0:	88 15 04 00 00 00    	mov    %dl,0x4
  c6:	c6 05 05 00 00 00 cb 	movb   $0xcb,0x5
  cd:	89 e9                	mov    %ebp,%ecx
  cf:	88 0d 06 00 00 00    	mov    %cl,0x6
  d5:	c6 05 07 00 00 00 01 	movb   $0x1,0x7
  dc:	66 c7 05 08 00 00 00 	movw   $0x0,0x8
  e3:	00 00 
  e5:	66 a3 0a 00 00 00    	mov    %ax,0xa
  eb:	66 c7 05 0c 00 00 00 	movw   $0x0,0xc
  f2:	00 00 
  f4:	c6 05 0e 00 00 00 11 	movb   $0x11,0xe
  fb:	bd 00 00 00 00       	mov    $0x0,%ebp
 100:	0f b7 ed             	movzwl %bp,%ebp
 103:	b9 0f 00 00 00       	mov    $0xf,%ecx
 108:	ba 00 00 00 00       	mov    $0x0,%edx
 10d:	89 e8                	mov    %ebp,%eax
 10f:	e8 fc ff ff ff       	call   110 <fill_edd+0x110>
 114:	f7 d8                	neg    %eax
 116:	a2 0f 00 00 00       	mov    %al,0xf
 11b:	b8 01 00 00 00       	mov    $0x1,%eax
 120:	85 ff                	test   %edi,%edi
 122:	78 29                	js     14d <fill_edd+0x14d>
 124:	89 fb                	mov    %edi,%ebx
 126:	83 e3 07             	and    $0x7,%ebx
 129:	c1 e3 10             	shl    $0x10,%ebx
 12c:	89 f8                	mov    %edi,%eax
 12e:	0f b6 c4             	movzbl %ah,%eax
 131:	09 c3                	or     %eax,%ebx
 133:	66 c1 ef 03          	shr    $0x3,%di
 137:	83 e7 1f             	and    $0x1f,%edi
 13a:	c1 e7 08             	shl    $0x8,%edi
 13d:	09 fb                	or     %edi,%ebx
 13f:	8b 44 24 08          	mov    0x8(%esp),%eax
 143:	c1 e0 18             	shl    $0x18,%eax
 146:	09 c3                	or     %eax,%ebx
 148:	b8 02 00 00 00       	mov    $0x2,%eax
 14d:	c1 e5 10             	shl    $0x10,%ebp
 150:	b9 00 00 00 00       	mov    $0x0,%ecx
 155:	0f b7 c9             	movzwl %cx,%ecx
 158:	09 e9                	or     %ebp,%ecx
 15a:	0f b6 54 24 07       	movzbl 0x7(%esp),%edx
 15f:	52                   	push   %edx
 160:	53                   	push   %ebx
 161:	83 c8 10             	or     $0x10,%eax
 164:	50                   	push   %eax
 165:	eb 08                	jmp    16f <fill_edd+0x16f>
 167:	6a 00                	push   $0x0
 169:	6a 00                	push   $0x0
 16b:	6a 00                	push   $0x0
 16d:	31 c9                	xor    %ecx,%ecx
 16f:	89 f2                	mov    %esi,%edx
 171:	8b 44 24 0c          	mov    0xc(%esp),%eax
 175:	e8 fc ff ff ff       	call   176 <fill_edd+0x176>
 17a:	83 c4 0c             	add    $0xc,%esp
 17d:	83 c4 0c             	add    $0xc,%esp
 180:	5b                   	pop    %ebx
 181:	5e                   	pop    %esi
 182:	5f                   	pop    %edi
 183:	5d                   	pop    %ebp
 184:	c3                   	ret    

Disassembly of section .text.block_setup:

00000000 <block_setup>:
   0:	e8 fc ff ff ff       	call   1 <block_setup+0x1>
   5:	e8 fc ff ff ff       	call   6 <block_setup+0x6>
   a:	e8 fc ff ff ff       	call   b <block_setup+0xb>
   f:	e8 fc ff ff ff       	call   10 <block_setup+0x10>
  14:	e8 fc ff ff ff       	call   15 <block_setup+0x15>
  19:	e8 fc ff ff ff       	call   1a <block_setup+0x1a>
  1e:	e8 fc ff ff ff       	call   1f <block_setup+0x1f>
  23:	e8 fc ff ff ff       	call   24 <block_setup+0x24>
  28:	e8 fc ff ff ff       	call   29 <block_setup+0x29>
  2d:	e8 fc ff ff ff       	call   2e <block_setup+0x2e>
  32:	e8 fc ff ff ff       	call   33 <block_setup+0x33>
  37:	e8 fc ff ff ff       	call   38 <block_setup+0x38>
  3c:	e9 fc ff ff ff       	jmp    3d <block_setup+0x3d>

Disassembly of section .text.default_process_op:

00000000 <default_process_op>:
   0:	8a 48 08             	mov    0x8(%eax),%cl
   3:	80 f9 10             	cmp    $0x10,%cl
   6:	77 0d                	ja     15 <default_process_op+0x15>
   8:	b8 b1 00 01 00       	mov    $0x100b1,%eax
   d:	d3 e8                	shr    %cl,%eax
   f:	f7 d0                	not    %eax
  11:	83 e0 01             	and    $0x1,%eax
  14:	c3                   	ret    
  15:	b8 01 00 00 00       	mov    $0x1,%eax
  1a:	c3                   	ret    

Disassembly of section .text.runtime.src/block.c.571:

00000000 <process_op_32>:
   0:	8b 50 04             	mov    0x4(%eax),%edx
   3:	8a 12                	mov    (%edx),%dl
   5:	80 fa 71             	cmp    $0x71,%dl
   8:	74 58                	je     62 <process_op_32+0x62>
   a:	77 20                	ja     2c <process_op_32+0x2c>
   c:	80 fa 60             	cmp    $0x60,%dl
   f:	74 60                	je     71 <process_op_32+0x71>
  11:	77 0f                	ja     22 <process_op_32+0x22>
  13:	80 fa 50             	cmp    $0x50,%dl
  16:	74 34                	je     4c <process_op_32+0x4c>
  18:	80 fa 51             	cmp    $0x51,%dl
  1b:	75 59                	jne    76 <process_op_32+0x76>
  1d:	e9 fc ff ff ff       	jmp    1e <process_op_32+0x1e>
  22:	80 fa 61             	cmp    $0x61,%dl
  25:	75 36                	jne    5d <process_op_32+0x5d>
  27:	e9 fc ff ff ff       	jmp    28 <process_op_32+0x28>
  2c:	80 fa 90             	cmp    $0x90,%dl
  2f:	74 20                	je     51 <process_op_32+0x51>
  31:	77 0f                	ja     42 <process_op_32+0x42>
  33:	80 fa 73             	cmp    $0x73,%dl
  36:	74 34                	je     6c <process_op_32+0x6c>
  38:	80 fa 83             	cmp    $0x83,%dl
  3b:	75 19                	jne    56 <process_op_32+0x56>
  3d:	e9 fc ff ff ff       	jmp    3e <process_op_32+0x3e>
  42:	80 fa 91             	cmp    $0x91,%dl
  45:	75 5c                	jne    a3 <process_op_32+0xa3>
  47:	e9 fc ff ff ff       	jmp    48 <process_op_32+0x48>
  4c:	e9 fc ff ff ff       	jmp    4d <process_op_32+0x4d>
  51:	e9 fc ff ff ff       	jmp    52 <process_op_32+0x52>
  56:	80 fa 80             	cmp    $0x80,%dl
  59:	74 39                	je     94 <process_op_32+0x94>
  5b:	77 23                	ja     80 <process_op_32+0x80>
  5d:	80 fa 70             	cmp    $0x70,%dl
  60:	75 05                	jne    67 <process_op_32+0x67>
  62:	e9 fc ff ff ff       	jmp    63 <process_op_32+0x63>
  67:	80 fa 72             	cmp    $0x72,%dl
  6a:	75 0a                	jne    76 <process_op_32+0x76>
  6c:	e9 fc ff ff ff       	jmp    6d <process_op_32+0x6d>
  71:	e9 fc ff ff ff       	jmp    72 <process_op_32+0x72>
  76:	80 fa 21             	cmp    $0x21,%dl
  79:	75 28                	jne    a3 <process_op_32+0xa3>
  7b:	e9 fc ff ff ff       	jmp    7c <process_op_32+0x7c>
  80:	80 fa 82             	cmp    $0x82,%dl
  83:	74 14                	je     99 <process_op_32+0x99>
  85:	80 fa 84             	cmp    $0x84,%dl
  88:	74 14                	je     9e <process_op_32+0x9e>
  8a:	80 fa 81             	cmp    $0x81,%dl
  8d:	75 14                	jne    a3 <process_op_32+0xa3>
  8f:	e9 fc ff ff ff       	jmp    90 <process_op_32+0x90>
  94:	e9 fc ff ff ff       	jmp    95 <process_op_32+0x95>
  99:	e9 fc ff ff ff       	jmp    9a <process_op_32+0x9a>
  9e:	e9 fc ff ff ff       	jmp    9f <process_op_32+0x9f>
  a3:	b8 01 00 00 00       	mov    $0x1,%eax
  a8:	c3                   	ret    

Disassembly of section .text.process_op:

00000000 <process_op>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	51                   	push   %ecx
   3:	89 c3                	mov    %eax,%ebx
   5:	0f b6 40 08          	movzbl 0x8(%eax),%eax
   9:	50                   	push   %eax
   a:	0f b7 43 0a          	movzwl 0xa(%ebx),%eax
   e:	50                   	push   %eax
   f:	ff 33                	push   (%ebx)
  11:	ff 73 0c             	push   0xc(%ebx)
  14:	ff 73 04             	push   0x4(%ebx)
  17:	68 f6 00 00 00       	push   $0xf6
  1c:	e8 fc ff ff ff       	call   1d <process_op+0x1d>
  21:	0f b6 43 08          	movzbl 0x8(%ebx),%eax
  25:	50                   	push   %eax
  26:	0f b7 43 0a          	movzwl 0xa(%ebx),%eax
  2a:	50                   	push   %eax
  2b:	ff 33                	push   (%ebx)
  2d:	ff 73 0c             	push   0xc(%ebx)
  30:	ff 73 04             	push   0x4(%ebx)
  33:	68 f6 00 00 00       	push   $0xf6
  38:	e8 fc ff ff ff       	call   39 <process_op+0x39>
  3d:	83 c4 30             	add    $0x30,%esp
  40:	0f b6 43 08          	movzbl 0x8(%ebx),%eax
  44:	50                   	push   %eax
  45:	0f b7 43 0a          	movzwl 0xa(%ebx),%eax
  49:	50                   	push   %eax
  4a:	ff 33                	push   (%ebx)
  4c:	ff 73 0c             	push   0xc(%ebx)
  4f:	ff 73 04             	push   0x4(%ebx)
  52:	68 f6 00 00 00       	push   $0xf6
  57:	e8 fc ff ff ff       	call   58 <process_op+0x58>
  5c:	0f b6 43 08          	movzbl 0x8(%ebx),%eax
  60:	50                   	push   %eax
  61:	0f b7 43 0a          	movzwl 0xa(%ebx),%eax
  65:	50                   	push   %eax
  66:	ff 33                	push   (%ebx)
  68:	ff 73 0c             	push   0xc(%ebx)
  6b:	ff 73 04             	push   0x4(%ebx)
  6e:	68 f6 00 00 00       	push   $0xf6
  73:	e8 fc ff ff ff       	call   74 <process_op+0x74>
  78:	0f b7 53 0a          	movzwl 0xa(%ebx),%edx
  7c:	8b 43 04             	mov    0x4(%ebx),%eax
  7f:	0f b7 40 1a          	movzwl 0x1a(%eax),%eax
  83:	0f af c2             	imul   %edx,%eax
  86:	83 c4 30             	add    $0x30,%esp
  89:	3d 00 00 01 00       	cmp    $0x10000,%eax
  8e:	7e 0d                	jle    9d <process_op+0x9d>
  90:	66 c7 43 0a 00 00    	movw   $0x0,0xa(%ebx)
  96:	b8 09 00 00 00       	mov    $0x9,%eax
  9b:	eb 3e                	jmp    db <process_op+0xdb>
  9d:	89 d6                	mov    %edx,%esi
  9f:	89 d8                	mov    %ebx,%eax
  a1:	e8 fc ff ff ff       	call   a2 <process_op+0xa2>
  a6:	89 04 24             	mov    %eax,(%esp)
  a9:	0f b6 53 08          	movzbl 0x8(%ebx),%edx
  ad:	52                   	push   %edx
  ae:	0f b7 53 0a          	movzwl 0xa(%ebx),%edx
  b2:	52                   	push   %edx
  b3:	ff 33                	push   (%ebx)
  b5:	ff 73 0c             	push   0xc(%ebx)
  b8:	ff 73 04             	push   0x4(%ebx)
  bb:	68 22 01 00 00       	push   $0x122
  c0:	e8 fc ff ff ff       	call   c1 <process_op+0xc1>
  c5:	83 c4 18             	add    $0x18,%esp
  c8:	8b 04 24             	mov    (%esp),%eax
  cb:	85 c0                	test   %eax,%eax
  cd:	74 0c                	je     db <process_op+0xdb>
  cf:	66 3b 73 0a          	cmp    0xa(%ebx),%si
  d3:	75 06                	jne    db <process_op+0xdb>
  d5:	66 c7 43 0a 00 00    	movw   $0x0,0xa(%ebx)
  db:	5a                   	pop    %edx
  dc:	5b                   	pop    %ebx
  dd:	5e                   	pop    %esi
  de:	c3                   	ret    
