
./disk.o:     file format elf32-i386


Disassembly of section .text.__disk_ret_unimplemented:

00000000 <__disk_ret_unimplemented>:
   0:	80 78 14 00          	cmpb   $0x0,0x14(%eax)
   4:	78 09                	js     f <__disk_ret_unimplemented+0xf>
   6:	c6 05 41 04 00 00 01 	movb   $0x1,0x441
   d:	eb 07                	jmp    16 <__disk_ret_unimplemented+0x16>
   f:	c6 05 74 04 00 00 01 	movb   $0x1,0x474
  16:	e9 fc ff ff ff       	jmp    17 <__disk_ret_unimplemented+0x17>

Disassembly of section .text.__disk_ret:

00000000 <__disk_ret>:
   0:	80 78 14 00          	cmpb   $0x0,0x14(%eax)
   4:	78 08                	js     e <__disk_ret+0xe>
   6:	88 15 41 04 00 00    	mov    %dl,0x441
   c:	eb 06                	jmp    14 <__disk_ret+0x14>
   e:	88 15 74 04 00 00    	mov    %dl,0x474
  14:	84 d2                	test   %dl,%dl
  16:	74 05                	je     1d <__disk_ret+0x1d>
  18:	e9 fc ff ff ff       	jmp    19 <__disk_ret+0x19>
  1d:	c6 40 1d 00          	movb   $0x0,0x1d(%eax)
  21:	66 83 60 24 fe       	andw   $0xfffe,0x24(%eax)
  26:	c3                   	ret    

Disassembly of section .text.__disk_stub:

00000000 <__disk_stub>:
   0:	53                   	push   %ebx
   1:	83 ec 08             	sub    $0x8,%esp
   4:	89 d3                	mov    %edx,%ebx
   6:	89 4c 24 04          	mov    %ecx,0x4(%esp)
   a:	89 04 24             	mov    %eax,(%esp)
   d:	e8 fc ff ff ff       	call   e <__disk_stub+0xe>
  12:	c1 e3 08             	shl    $0x8,%ebx
  15:	89 da                	mov    %ebx,%edx
  17:	8b 4c 24 04          	mov    0x4(%esp),%ecx
  1b:	8b 04 24             	mov    (%esp),%eax
  1e:	83 c4 08             	add    $0x8,%esp
  21:	5b                   	pop    %ebx
  22:	e9 fc ff ff ff       	jmp    23 <__disk_stub+0x23>

Disassembly of section .text.getLCHS:

00000000 <getLCHS>:
   0:	53                   	push   %ebx
   1:	39 05 00 00 00 00    	cmp    %eax,0x0
   7:	75 29                	jne    32 <getLCHS+0x32>
   9:	8a 15 11 00 00 00    	mov    0x11,%dl
   f:	0f b6 1d 12 00 00 00 	movzbl 0x12,%ebx
  16:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
  1d:	66 25 00 03          	and    $0x300,%ax
  21:	8d 5c 03 01          	lea    0x1(%ebx,%eax,1),%ebx
  25:	0f b6 0d 10 00 00 00 	movzbl 0x10,%ecx
  2c:	41                   	inc    %ecx
  2d:	83 e2 3f             	and    $0x3f,%edx
  30:	eb 0b                	jmp    3d <getLCHS+0x3d>
  32:	8b 58 04             	mov    0x4(%eax),%ebx
  35:	66 8b 48 02          	mov    0x2(%eax),%cx
  39:	66 8b 50 06          	mov    0x6(%eax),%dx
  3d:	c1 e3 10             	shl    $0x10,%ebx
  40:	0f b7 c1             	movzwl %cx,%eax
  43:	09 d8                	or     %ebx,%eax
  45:	0f b7 d2             	movzwl %dx,%edx
  48:	5b                   	pop    %ebx
  49:	c3                   	ret    

Disassembly of section .text.disk_1305:

00000000 <disk_1305>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 c3                	mov    %eax,%ebx
   6:	89 d6                	mov    %edx,%esi
   8:	b9 00 00 00 00       	mov    $0x0,%ecx
   d:	ba f9 00 00 00       	mov    $0xf9,%edx
  12:	e8 fc ff ff ff       	call   13 <disk_1305+0x13>
  17:	89 f0                	mov    %esi,%eax
  19:	e8 fc ff ff ff       	call   1a <disk_1305+0x1a>
  1e:	89 c1                	mov    %eax,%ecx
  20:	89 d6                	mov    %edx,%esi
  22:	0f b6 43 1c          	movzbl 0x1c(%ebx),%eax
  26:	0f b6 53 15          	movzbl 0x15(%ebx),%edx
  2a:	0f b6 6b 19          	movzbl 0x19(%ebx),%ebp
  2e:	89 cf                	mov    %ecx,%edi
  30:	c1 ef 10             	shr    $0x10,%edi
  33:	66 39 fd             	cmp    %di,%bp
  36:	73 0e                	jae    46 <disk_1305+0x46>
  38:	84 c0                	test   %al,%al
  3a:	74 0a                	je     46 <disk_1305+0x46>
  3c:	66 39 ca             	cmp    %cx,%dx
  3f:	73 05                	jae    46 <disk_1305+0x46>
  41:	66 39 f0             	cmp    %si,%ax
  44:	76 15                	jbe    5b <disk_1305+0x5b>
  46:	b9 00 00 00 00       	mov    $0x0,%ecx
  4b:	ba 01 03 01 00       	mov    $0x10301,%edx
  50:	89 d8                	mov    %ebx,%eax
  52:	5b                   	pop    %ebx
  53:	5e                   	pop    %esi
  54:	5f                   	pop    %edi
  55:	5d                   	pop    %ebp
  56:	e9 fc ff ff ff       	jmp    57 <disk_1305+0x57>
  5b:	e8 fc ff ff ff       	call   5c <disk_1305+0x5c>

Disassembly of section .text.disk_1308:

00000000 <disk_1308>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	56                   	push   %esi
   5:	89 c6                	mov    %eax,%esi
   7:	89 d7                	mov    %edx,%edi
   9:	89 d0                	mov    %edx,%eax
   b:	e8 fc ff ff ff       	call   c <disk_1308+0xc>
  10:	89 d5                	mov    %edx,%ebp
  12:	89 c2                	mov    %eax,%edx
  14:	c1 ea 10             	shr    $0x10,%edx
  17:	48                   	dec    %eax
  18:	66 89 44 24 02       	mov    %ax,0x2(%esp)
  1d:	8a 4e 14             	mov    0x14(%esi),%cl
  20:	84 c9                	test   %cl,%cl
  22:	78 31                	js     55 <disk_1308+0x55>
  24:	8a 1d 00 00 00 00    	mov    0x0,%bl
  2a:	0f b6 05 01 00 00 00 	movzbl 0x1,%eax
  31:	d1 e0                	shl    %eax
  33:	39 3d 00 00 00 00    	cmp    %edi,0x0
  39:	74 04                	je     3f <disk_1308+0x3f>
  3b:	0f b6 47 01          	movzbl 0x1(%edi),%eax
  3f:	4a                   	dec    %edx
  40:	66 89 46 10          	mov    %ax,0x10(%esi)
  44:	66 c7 46 02 00 f0    	movw   $0xf000,0x2(%esi)
  4a:	b8 00 00 00 00       	mov    $0x0,%eax
  4f:	66 89 46 04          	mov    %ax,0x4(%esi)
  53:	eb 26                	jmp    7b <disk_1308+0x7b>
  55:	80 f9 df             	cmp    $0xdf,%cl
  58:	77 0b                	ja     65 <disk_1308+0x65>
  5a:	8a 1d 75 04 00 00    	mov    0x475,%bl
  60:	83 ea 02             	sub    $0x2,%edx
  63:	eb 16                	jmp    7b <disk_1308+0x7b>
  65:	b9 00 00 00 00       	mov    $0x0,%ecx
  6a:	ba 01 2d 01 00       	mov    $0x12d01,%edx
  6f:	89 f0                	mov    %esi,%eax
  71:	5b                   	pop    %ebx
  72:	5b                   	pop    %ebx
  73:	5e                   	pop    %esi
  74:	5f                   	pop    %edi
  75:	5d                   	pop    %ebp
  76:	e9 fc ff ff ff       	jmp    77 <disk_1308+0x77>
  7b:	80 3d 01 00 00 00 00 	cmpb   $0x0,0x1
  82:	74 17                	je     9b <disk_1308+0x9b>
  84:	a0 02 00 00 00       	mov    0x2,%al
  89:	31 c8                	xor    %ecx,%eax
  8b:	3c 80                	cmp    $0x80,%al
  8d:	80 d3 00             	adc    $0x0,%bl
  90:	84 c9                	test   %cl,%cl
  92:	78 07                	js     9b <disk_1308+0x9b>
  94:	80 fb 02             	cmp    $0x2,%bl
  97:	76 02                	jbe    9b <disk_1308+0x9b>
  99:	b3 02                	mov    $0x2,%bl
  9b:	c6 46 1c 00          	movb   $0x0,0x1c(%esi)
  9f:	88 56 19             	mov    %dl,0x19(%esi)
  a2:	66 c1 ea 02          	shr    $0x2,%dx
  a6:	83 e2 c0             	and    $0xffffffc0,%edx
  a9:	89 e9                	mov    %ebp,%ecx
  ab:	83 e1 3f             	and    $0x3f,%ecx
  ae:	09 ca                	or     %ecx,%edx
  b0:	88 56 18             	mov    %dl,0x18(%esi)
  b3:	8a 44 24 02          	mov    0x2(%esp),%al
  b7:	88 46 15             	mov    %al,0x15(%esi)
  ba:	b9 00 00 00 00       	mov    $0x0,%ecx
  bf:	ba 00 40 01 00       	mov    $0x14000,%edx
  c4:	89 f0                	mov    %esi,%eax
  c6:	e8 fc ff ff ff       	call   c7 <disk_1308+0xc7>
  cb:	88 5e 14             	mov    %bl,0x14(%esi)
  ce:	58                   	pop    %eax
  cf:	5b                   	pop    %ebx
  d0:	5e                   	pop    %esi
  d1:	5f                   	pop    %edi
  d2:	5d                   	pop    %ebp
  d3:	c3                   	ret    

Disassembly of section .text.disk_1315:

00000000 <disk_1315>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 c3                	mov    %eax,%ebx
   4:	89 d6                	mov    %edx,%esi
   6:	b9 00 00 00 00       	mov    $0x0,%ecx
   b:	ba 00 79 01 00       	mov    $0x17900,%edx
  10:	e8 fc ff ff ff       	call   11 <disk_1315+0x11>
  15:	8a 43 14             	mov    0x14(%ebx),%al
  18:	83 c0 80             	add    $0xffffff80,%eax
  1b:	b2 01                	mov    $0x1,%dl
  1d:	3c 5f                	cmp    $0x5f,%al
  1f:	77 28                	ja     49 <disk_1315+0x49>
  21:	89 f0                	mov    %esi,%eax
  23:	e8 fc ff ff ff       	call   24 <disk_1315+0x24>
  28:	89 d1                	mov    %edx,%ecx
  2a:	0f b7 d0             	movzwl %ax,%edx
  2d:	0f b7 c9             	movzwl %cx,%ecx
  30:	0f af d1             	imul   %ecx,%edx
  33:	c1 e8 10             	shr    $0x10,%eax
  36:	48                   	dec    %eax
  37:	0f af d0             	imul   %eax,%edx
  3a:	89 d0                	mov    %edx,%eax
  3c:	c1 e8 10             	shr    $0x10,%eax
  3f:	66 89 43 18          	mov    %ax,0x18(%ebx)
  43:	66 89 53 14          	mov    %dx,0x14(%ebx)
  47:	b2 03                	mov    $0x3,%dl
  49:	88 53 1d             	mov    %dl,0x1d(%ebx)
  4c:	5b                   	pop    %ebx
  4d:	5e                   	pop    %esi
  4e:	c3                   	ret    

Disassembly of section .text.disk_1346.constprop.0:

00000000 <disk_1346.constprop.0>:
   0:	53                   	push   %ebx
   1:	83 ec 28             	sub    $0x28,%esp
   4:	89 c3                	mov    %eax,%ebx
   6:	0f b6 40 14          	movzbl 0x14(%eax),%eax
   a:	3c df                	cmp    $0xdf,%al
   c:	77 0c                	ja     1a <disk_1346.constprop.0+0x1a>
   e:	b9 00 00 00 00       	mov    $0x0,%ecx
  13:	ba b2 02 02 00       	mov    $0x202b2,%edx
  18:	eb 13                	jmp    2d <disk_1346.constprop.0+0x2d>
  1a:	80 b8 20 ff ff ff 00 	cmpb   $0x0,-0xe0(%eax)
  21:	74 15                	je     38 <disk_1346.constprop.0+0x38>
  23:	b9 00 00 00 00       	mov    $0x0,%ecx
  28:	ba b1 09 02 00       	mov    $0x209b1,%edx
  2d:	89 d8                	mov    %ebx,%eax
  2f:	83 c4 28             	add    $0x28,%esp
  32:	5b                   	pop    %ebx
  33:	e9 fc ff ff ff       	jmp    34 <disk_1346.constprop.0+0x34>
  38:	b9 26 00 00 00       	mov    $0x26,%ecx
  3d:	31 d2                	xor    %edx,%edx
  3f:	8d 44 24 02          	lea    0x2(%esp),%eax
  43:	e8 fc ff ff ff       	call   44 <disk_1346.constprop.0+0x44>
  48:	c6 44 24 1f 52       	movb   $0x52,0x1f(%esp)
  4d:	8a 43 14             	mov    0x14(%ebx),%al
  50:	88 44 24 16          	mov    %al,0x16(%esp)
  54:	ba 00 00 00 00       	mov    $0x0,%edx
  59:	0f b7 d2             	movzwl %dx,%edx
  5c:	8d 44 24 02          	lea    0x2(%esp),%eax
  60:	e8 fc ff ff ff       	call   61 <disk_1346.constprop.0+0x61>
  65:	b9 00 00 00 00       	mov    $0x0,%ecx
  6a:	80 7c 24 1f 00       	cmpb   $0x0,0x1f(%esp)
  6f:	75 0c                	jne    7d <disk_1346.constprop.0+0x7d>
  71:	ba 00 1b 02 00       	mov    $0x21b00,%edx
  76:	f6 44 24 26 01       	testb  $0x1,0x26(%esp)
  7b:	74 05                	je     82 <disk_1346.constprop.0+0x82>
  7d:	ba b1 18 02 00       	mov    $0x218b1,%edx
  82:	89 d8                	mov    %ebx,%eax
  84:	e8 fc ff ff ff       	call   85 <disk_1346.constprop.0+0x85>
  89:	83 c4 28             	add    $0x28,%esp
  8c:	5b                   	pop    %ebx
  8d:	c3                   	ret    

Disassembly of section .text.extended_access.constprop.0:

00000000 <extended_access.constprop.0>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	56                   	push   %esi
   3:	0f b7 58 08          	movzwl 0x8(%eax),%ebx
   7:	0f b7 08             	movzwl (%eax),%ecx
   a:	c1 e1 04             	shl    $0x4,%ecx
   d:	8b 72 0c             	mov    0xc(%edx),%esi
  10:	39 74 0b 08          	cmp    %esi,0x8(%ebx,%ecx,1)
  14:	8b 74 0b 0c          	mov    0xc(%ebx,%ecx,1),%esi
  18:	1b 72 10             	sbb    0x10(%edx),%esi
  1b:	72 21                	jb     3e <extended_access.constprop.0+0x3e>
  1d:	b9 00 00 00 00       	mov    $0x0,%ecx
  22:	ba ac 00 00 00       	mov    $0xac,%edx
  27:	89 04 24             	mov    %eax,(%esp)
  2a:	e8 fc ff ff ff       	call   2b <extended_access.constprop.0+0x2b>
  2f:	b9 00 00 00 00       	mov    $0x0,%ecx
  34:	ba 01 ad 00 00       	mov    $0xad01,%edx
  39:	8b 04 24             	mov    (%esp),%eax
  3c:	eb 12                	jmp    50 <extended_access.constprop.0+0x50>
  3e:	66 83 7c 0b 02 00    	cmpw   $0x0,0x2(%ebx,%ecx,1)
  44:	75 12                	jne    58 <extended_access.constprop.0+0x58>
  46:	b9 00 00 00 00       	mov    $0x0,%ecx
  4b:	ba 00 b5 00 00       	mov    $0xb500,%edx
  50:	5b                   	pop    %ebx
  51:	5b                   	pop    %ebx
  52:	5e                   	pop    %esi
  53:	e9 fc ff ff ff       	jmp    54 <extended_access.constprop.0+0x54>
  58:	e8 fc ff ff ff       	call   59 <extended_access.constprop.0+0x59>

Disassembly of section .text.basic_access.constprop.0:

00000000 <basic_access.constprop.0>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	56                   	push   %esi
   4:	89 c6                	mov    %eax,%esi
   6:	89 d0                	mov    %edx,%eax
   8:	0f b6 5e 19          	movzbl 0x19(%esi),%ebx
   c:	0f b6 7e 18          	movzbl 0x18(%esi),%edi
  10:	89 f9                	mov    %edi,%ecx
  12:	83 e1 3f             	and    $0x3f,%ecx
  15:	8a 56 15             	mov    0x15(%esi),%dl
  18:	88 54 24 02          	mov    %dl,0x2(%esp)
  1c:	8a 56 1c             	mov    0x1c(%esi),%dl
  1f:	fe ca                	dec    %dl
  21:	78 04                	js     27 <basic_access.constprop.0+0x27>
  23:	84 c9                	test   %cl,%cl
  25:	75 1d                	jne    44 <basic_access.constprop.0+0x44>
  27:	b9 00 00 00 00       	mov    $0x0,%ecx
  2c:	ba 84 00 00 00       	mov    $0x84,%edx
  31:	89 f0                	mov    %esi,%eax
  33:	e8 fc ff ff ff       	call   34 <basic_access.constprop.0+0x34>
  38:	b9 00 00 00 00       	mov    $0x0,%ecx
  3d:	ba 01 85 00 00       	mov    $0x8501,%edx
  42:	eb 52                	jmp    96 <basic_access.constprop.0+0x96>
  44:	88 4c 24 03          	mov    %cl,0x3(%esp)
  48:	e8 fc ff ff ff       	call   49 <basic_access.constprop.0+0x49>
  4d:	c1 e7 02             	shl    $0x2,%edi
  50:	66 81 e7 00 03       	and    $0x300,%di
  55:	09 df                	or     %ebx,%edi
  57:	89 c3                	mov    %eax,%ebx
  59:	c1 eb 10             	shr    $0x10,%ebx
  5c:	66 39 df             	cmp    %bx,%di
  5f:	73 1a                	jae    7b <basic_access.constprop.0+0x7b>
  61:	0f b6 5c 24 02       	movzbl 0x2(%esp),%ebx
  66:	66 39 c3             	cmp    %ax,%bx
  69:	0f 93 c0             	setae  %al
  6c:	0f b6 4c 24 03       	movzbl 0x3(%esp),%ecx
  71:	66 39 d1             	cmp    %dx,%cx
  74:	0f 97 c2             	seta   %dl
  77:	08 c2                	or     %al,%dl
  79:	74 26                	je     a1 <basic_access.constprop.0+0xa1>
  7b:	b9 00 00 00 00       	mov    $0x0,%ecx
  80:	ba 8f 00 00 00       	mov    $0x8f,%edx
  85:	89 f0                	mov    %esi,%eax
  87:	e8 fc ff ff ff       	call   88 <basic_access.constprop.0+0x88>
  8c:	b9 00 00 00 00       	mov    $0x0,%ecx
  91:	ba 01 90 00 00       	mov    $0x9001,%edx
  96:	89 f0                	mov    %esi,%eax
  98:	5b                   	pop    %ebx
  99:	5b                   	pop    %ebx
  9a:	5e                   	pop    %esi
  9b:	5f                   	pop    %edi
  9c:	e9 fc ff ff ff       	jmp    9d <basic_access.constprop.0+0x9d>
  a1:	e8 fc ff ff ff       	call   a2 <basic_access.constprop.0+0xa2>

Disassembly of section .text.disk_13:

00000000 <disk_13>:
   0:	53                   	push   %ebx
   1:	89 c3                	mov    %eax,%ebx
   3:	c6 05 8e 04 00 00 00 	movb   $0x0,0x48e
   a:	0f b6 40 1d          	movzbl 0x1d(%eax),%eax
   e:	3c 16                	cmp    $0x16,%al
  10:	77 07                	ja     19 <disk_13+0x19>
  12:	ff 24 85 00 00 00 00 	jmp    *0x0(,%eax,4)
  19:	83 e8 41             	sub    $0x41,%eax
  1c:	3c 0d                	cmp    $0xd,%al
  1e:	0f 87 53 02 00 00    	ja     277 <disk_13+0x277>
  24:	0f b6 c0             	movzbl %al,%eax
  27:	ff 24 85 5c 00 00 00 	jmp    *0x5c(,%eax,4)
  2e:	e8 fc ff ff ff       	call   2f <disk_13+0x2f>
  33:	80 7b 14 00          	cmpb   $0x0,0x14(%ebx)
  37:	78 08                	js     41 <disk_13+0x41>
  39:	8a 15 41 04 00 00    	mov    0x441,%dl
  3f:	eb 06                	jmp    47 <disk_13+0x47>
  41:	8a 15 74 04 00 00    	mov    0x474,%dl
  47:	88 53 1d             	mov    %dl,0x1d(%ebx)
  4a:	66 8b 43 24          	mov    0x24(%ebx),%ax
  4e:	84 d2                	test   %dl,%dl
  50:	74 05                	je     57 <disk_13+0x57>
  52:	83 c8 01             	or     $0x1,%eax
  55:	eb 03                	jmp    5a <disk_13+0x5a>
  57:	83 e0 fe             	and    $0xfffffffe,%eax
  5a:	66 89 43 24          	mov    %ax,0x24(%ebx)
  5e:	e9 26 02 00 00       	jmp    289 <disk_13+0x289>
  63:	89 d8                	mov    %ebx,%eax
  65:	5b                   	pop    %ebx
  66:	e9 fc ff ff ff       	jmp    67 <disk_13+0x67>
  6b:	89 d8                	mov    %ebx,%eax
  6d:	5b                   	pop    %ebx
  6e:	e9 fc ff ff ff       	jmp    6f <disk_13+0x6f>
  73:	89 d8                	mov    %ebx,%eax
  75:	5b                   	pop    %ebx
  76:	e9 fc ff ff ff       	jmp    77 <disk_13+0x77>
  7b:	b9 00 00 00 00       	mov    $0x0,%ecx
  80:	ba 48 01 00 00       	mov    $0x148,%edx
  85:	eb 0a                	jmp    91 <disk_13+0x91>
  87:	b9 00 00 00 00       	mov    $0x0,%ecx
  8c:	ba 4f 01 00 00       	mov    $0x14f,%edx
  91:	89 d8                	mov    %ebx,%eax
  93:	5b                   	pop    %ebx
  94:	e9 fc ff ff ff       	jmp    95 <disk_13+0x95>
  99:	b9 00 00 00 00       	mov    $0x0,%ecx
  9e:	ba 56 01 00 00       	mov    $0x156,%edx
  a3:	eb ec                	jmp    91 <disk_13+0x91>
  a5:	b9 00 00 00 00       	mov    $0x0,%ecx
  aa:	ba 6b 01 00 00       	mov    $0x16b,%edx
  af:	eb e0                	jmp    91 <disk_13+0x91>
  b1:	b9 00 00 00 00       	mov    $0x0,%ecx
  b6:	ba 72 01 00 00       	mov    $0x172,%edx
  bb:	eb d4                	jmp    91 <disk_13+0x91>
  bd:	89 d8                	mov    %ebx,%eax
  bf:	5b                   	pop    %ebx
  c0:	e9 fc ff ff ff       	jmp    c1 <disk_13+0xc1>
  c5:	b9 00 00 00 00       	mov    $0x0,%ecx
  ca:	ba 01 91 01 00       	mov    $0x19101,%edx
  cf:	80 7b 14 00          	cmpb   $0x0,0x14(%ebx)
  d3:	0f 88 96 01 00 00    	js     26f <disk_13+0x26f>
  d9:	ba 06 94 01 00       	mov    $0x19406,%edx
  de:	e9 8c 01 00 00       	jmp    26f <disk_13+0x26f>
  e3:	66 c7 43 10 55 aa    	movw   $0xaa55,0x10(%ebx)
  e9:	66 c7 43 18 07 00    	movw   $0x7,0x18(%ebx)
  ef:	b9 00 00 00 00       	mov    $0x0,%ecx
  f4:	ba 00 9d 01 00       	mov    $0x19d00,%edx
  f9:	89 d8                	mov    %ebx,%eax
  fb:	e8 fc ff ff ff       	call   fc <disk_13+0xfc>
 100:	c6 43 1d 30          	movb   $0x30,0x1d(%ebx)
 104:	e9 80 01 00 00       	jmp    289 <disk_13+0x289>
 109:	89 d8                	mov    %ebx,%eax
 10b:	5b                   	pop    %ebx
 10c:	e9 fc ff ff ff       	jmp    10d <disk_13+0x10d>
 111:	0f b6 43 14          	movzbl 0x14(%ebx),%eax
 115:	3c df                	cmp    $0xdf,%al
 117:	77 0f                	ja     128 <disk_13+0x128>
 119:	b9 00 00 00 00       	mov    $0x0,%ecx
 11e:	ba 00 f0 01 00       	mov    $0x1f000,%edx
 123:	e9 47 01 00 00       	jmp    26f <disk_13+0x26f>
 128:	8a 53 1c             	mov    0x1c(%ebx),%dl
 12b:	80 fa 01             	cmp    $0x1,%dl
 12e:	74 45                	je     175 <disk_13+0x175>
 130:	80 fa 02             	cmp    $0x2,%dl
 133:	74 79                	je     1ae <disk_13+0x1ae>
 135:	84 d2                	test   %dl,%dl
 137:	0f 85 8b 00 00 00    	jne    1c8 <disk_13+0x1c8>
 13d:	8a 90 20 ff ff ff    	mov    -0xe0(%eax),%dl
 143:	80 fa ff             	cmp    $0xff,%dl
 146:	75 13                	jne    15b <disk_13+0x15b>
 148:	c6 43 1c 01          	movb   $0x1,0x1c(%ebx)
 14c:	b9 00 00 00 00       	mov    $0x0,%ecx
 151:	ba b4 c1 01 00       	mov    $0x1c1b4,%edx
 156:	e9 14 01 00 00       	jmp    26f <disk_13+0x26f>
 15b:	42                   	inc    %edx
 15c:	88 90 20 ff ff ff    	mov    %dl,-0xe0(%eax)
 162:	c6 43 1c 01          	movb   $0x1,0x1c(%ebx)
 166:	b9 00 00 00 00       	mov    $0x0,%ecx
 16b:	ba 00 c6 01 00       	mov    $0x1c600,%edx
 170:	e9 fa 00 00 00       	jmp    26f <disk_13+0x26f>
 175:	8a 90 20 ff ff ff    	mov    -0xe0(%eax),%dl
 17b:	84 d2                	test   %dl,%dl
 17d:	75 13                	jne    192 <disk_13+0x192>
 17f:	c6 43 1c 00          	movb   $0x0,0x1c(%ebx)
 183:	b9 00 00 00 00       	mov    $0x0,%ecx
 188:	ba b0 d1 01 00       	mov    $0x1d1b0,%edx
 18d:	e9 dd 00 00 00       	jmp    26f <disk_13+0x26f>
 192:	4a                   	dec    %edx
 193:	88 90 20 ff ff ff    	mov    %dl,-0xe0(%eax)
 199:	84 d2                	test   %dl,%dl
 19b:	0f 95 43 1c          	setne  0x1c(%ebx)
 19f:	b9 00 00 00 00       	mov    $0x0,%ecx
 1a4:	ba 00 d7 01 00       	mov    $0x1d700,%edx
 1a9:	e9 c1 00 00 00       	jmp    26f <disk_13+0x26f>
 1ae:	80 b8 20 ff ff ff 00 	cmpb   $0x0,-0xe0(%eax)
 1b5:	0f 95 43 1c          	setne  0x1c(%ebx)
 1b9:	b9 00 00 00 00       	mov    $0x0,%ecx
 1be:	ba 00 e1 01 00       	mov    $0x1e100,%edx
 1c3:	e9 a7 00 00 00       	jmp    26f <disk_13+0x26f>
 1c8:	b9 00 00 00 00       	mov    $0x0,%ecx
 1cd:	ba 01 e7 01 00       	mov    $0x1e701,%edx
 1d2:	e9 aa 00 00 00       	jmp    281 <disk_13+0x281>
 1d7:	89 d8                	mov    %ebx,%eax
 1d9:	5b                   	pop    %ebx
 1da:	e9 fc ff ff ff       	jmp    1db <disk_13+0x1db>
 1df:	0f b7 0b             	movzwl (%ebx),%ecx
 1e2:	c1 e1 10             	shl    $0x10,%ecx
 1e5:	0f b7 43 08          	movzwl 0x8(%ebx),%eax
 1e9:	09 c8                	or     %ecx,%eax
 1eb:	e8 fc ff ff ff       	call   1ec <disk_13+0x1ec>
 1f0:	0d 00 2a 02 00       	or     $0x22a00,%eax
 1f5:	89 c2                	mov    %eax,%edx
 1f7:	b9 00 00 00 00       	mov    $0x0,%ecx
 1fc:	eb 71                	jmp    26f <disk_13+0x26f>
 1fe:	b9 00 00 00 00       	mov    $0x0,%ecx
 203:	ba 00 33 02 00       	mov    $0x23300,%edx
 208:	80 7b 14 df          	cmpb   $0xdf,0x14(%ebx)
 20c:	76 61                	jbe    26f <disk_13+0x26f>
 20e:	ba 36 02 00 00       	mov    $0x236,%edx
 213:	89 d8                	mov    %ebx,%eax
 215:	e8 fc ff ff ff       	call   216 <disk_13+0x216>
 21a:	c6 43 1d 06          	movb   $0x6,0x1d(%ebx)
 21e:	eb 69                	jmp    289 <disk_13+0x289>
 220:	8a 43 1c             	mov    0x1c(%ebx),%al
 223:	3c 04                	cmp    $0x4,%al
 225:	74 32                	je     259 <disk_13+0x259>
 227:	77 14                	ja     23d <disk_13+0x23d>
 229:	3c 01                	cmp    $0x1,%al
 22b:	74 20                	je     24d <disk_13+0x24d>
 22d:	3c 03                	cmp    $0x3,%al
 22f:	75 34                	jne    265 <disk_13+0x265>
 231:	b9 00 00 00 00       	mov    $0x0,%ecx
 236:	ba 00 44 02 00       	mov    $0x24400,%edx
 23b:	eb 32                	jmp    26f <disk_13+0x26f>
 23d:	3c 06                	cmp    $0x6,%al
 23f:	75 24                	jne    265 <disk_13+0x265>
 241:	b9 00 00 00 00       	mov    $0x0,%ecx
 246:	ba 00 50 02 00       	mov    $0x25000,%edx
 24b:	eb 22                	jmp    26f <disk_13+0x26f>
 24d:	b9 00 00 00 00       	mov    $0x0,%ecx
 252:	ba 00 3e 02 00       	mov    $0x23e00,%edx
 257:	eb 16                	jmp    26f <disk_13+0x26f>
 259:	b9 00 00 00 00       	mov    $0x0,%ecx
 25e:	ba 00 4a 02 00       	mov    $0x24a00,%edx
 263:	eb 0a                	jmp    26f <disk_13+0x26f>
 265:	b9 00 00 00 00       	mov    $0x0,%ecx
 26a:	ba 01 56 02 00       	mov    $0x25601,%edx
 26f:	89 d8                	mov    %ebx,%eax
 271:	5b                   	pop    %ebx
 272:	e9 fc ff ff ff       	jmp    273 <disk_13+0x273>
 277:	b9 00 00 00 00       	mov    $0x0,%ecx
 27c:	ba 01 69 02 00       	mov    $0x26901,%edx
 281:	89 d8                	mov    %ebx,%eax
 283:	5b                   	pop    %ebx
 284:	e9 fc ff ff ff       	jmp    285 <disk_13+0x285>
 289:	5b                   	pop    %ebx
 28a:	c3                   	ret    

Disassembly of section .text.handle_legacy_disk:

00000000 <handle_legacy_disk>:
   0:	53                   	push   %ebx
   1:	89 c3                	mov    %eax,%ebx
   3:	84 d2                	test   %dl,%dl
   5:	78 35                	js     3c <handle_legacy_disk+0x3c>
   7:	0f b6 d2             	movzbl %dl,%edx
   a:	31 c0                	xor    %eax,%eax
   c:	e8 fc ff ff ff       	call   d <handle_legacy_disk+0xd>
  11:	89 c2                	mov    %eax,%edx
  13:	85 c0                	test   %eax,%eax
  15:	74 55                	je     6c <handle_legacy_disk+0x6c>
  17:	8a 4b 1d             	mov    0x1d(%ebx),%cl
  1a:	80 f9 16             	cmp    $0x16,%cl
  1d:	77 0b                	ja     2a <handle_legacy_disk+0x2a>
  1f:	b8 3f 01 60 00       	mov    $0x60013f,%eax
  24:	d3 e8                	shr    %cl,%eax
  26:	a8 01                	test   $0x1,%al
  28:	75 3a                	jne    64 <handle_legacy_disk+0x64>
  2a:	b9 00 00 00 00       	mov    $0x0,%ecx
  2f:	ba 01 69 02 00       	mov    $0x26901,%edx
  34:	89 d8                	mov    %ebx,%eax
  36:	5b                   	pop    %ebx
  37:	e9 fc ff ff ff       	jmp    38 <handle_legacy_disk+0x38>
  3c:	80 fa df             	cmp    $0xdf,%dl
  3f:	76 0d                	jbe    4e <handle_legacy_disk+0x4e>
  41:	83 c2 20             	add    $0x20,%edx
  44:	0f b6 d2             	movzbl %dl,%edx
  47:	b8 02 00 00 00       	mov    $0x2,%eax
  4c:	eb 0b                	jmp    59 <handle_legacy_disk+0x59>
  4e:	83 c2 80             	add    $0xffffff80,%edx
  51:	0f b6 d2             	movzbl %dl,%edx
  54:	b8 01 00 00 00       	mov    $0x1,%eax
  59:	e8 fc ff ff ff       	call   5a <handle_legacy_disk+0x5a>
  5e:	89 c2                	mov    %eax,%edx
  60:	85 c0                	test   %eax,%eax
  62:	74 08                	je     6c <handle_legacy_disk+0x6c>
  64:	89 d8                	mov    %ebx,%eax
  66:	5b                   	pop    %ebx
  67:	e9 fc ff ff ff       	jmp    68 <handle_legacy_disk+0x68>
  6c:	b9 00 00 00 00       	mov    $0x0,%ecx
  71:	ba 01 d9 02 00       	mov    $0x2d901,%edx
  76:	89 d8                	mov    %ebx,%eax
  78:	5b                   	pop    %ebx
  79:	e9 fc ff ff ff       	jmp    7a <handle_legacy_disk+0x7a>

Disassembly of section .text.handle_40:

00000000 <handle_40>:
   0:	52                   	push   %edx
   1:	ba 00 00 00 00       	mov    $0x0,%edx
   6:	89 04 24             	mov    %eax,(%esp)
   9:	e8 fc ff ff ff       	call   a <handle_40+0xa>
   e:	8b 04 24             	mov    (%esp),%eax
  11:	0f b6 50 14          	movzbl 0x14(%eax),%edx
  15:	59                   	pop    %ecx
  16:	e9 fc ff ff ff       	jmp    17 <handle_40+0x17>

Disassembly of section .text.handle_13:

00000000 <handle_13>:
   0:	53                   	push   %ebx
   1:	89 c3                	mov    %eax,%ebx
   3:	ba 00 00 00 00       	mov    $0x0,%edx
   8:	e8 fc ff ff ff       	call   9 <handle_13+0x9>
   d:	8a 53 14             	mov    0x14(%ebx),%dl
  10:	8a 4b 1d             	mov    0x1d(%ebx),%cl
  13:	80 f9 4b             	cmp    $0x4b,%cl
  16:	75 3c                	jne    54 <handle_13+0x54>
  18:	b9 00 00 00 00       	mov    $0x0,%ecx
  1d:	0f b7 53 08          	movzwl 0x8(%ebx),%edx
  21:	0f b7 03             	movzwl (%ebx),%eax
  24:	6a 13                	push   $0x13
  26:	68 00 00 00 00       	push   $0x0
  2b:	0f b7 c9             	movzwl %cx,%ecx
  2e:	e8 fc ff ff ff       	call   2f <handle_13+0x2f>
  33:	58                   	pop    %eax
  34:	5a                   	pop    %edx
  35:	80 7b 1c 00          	cmpb   $0x0,0x1c(%ebx)
  39:	75 07                	jne    42 <handle_13+0x42>
  3b:	c6 05 01 00 00 00 00 	movb   $0x0,0x1
  42:	b9 00 00 00 00       	mov    $0x0,%ecx
  47:	ba 00 b4 02 00       	mov    $0x2b400,%edx
  4c:	89 d8                	mov    %ebx,%eax
  4e:	5b                   	pop    %ebx
  4f:	e9 fc ff ff ff       	jmp    50 <handle_13+0x50>
  54:	80 3d 01 00 00 00 00 	cmpb   $0x0,0x1
  5b:	74 3a                	je     97 <handle_13+0x97>
  5d:	a0 02 00 00 00       	mov    0x2,%al
  62:	38 c2                	cmp    %al,%dl
  64:	75 25                	jne    8b <handle_13+0x8b>
  66:	8b 15 00 00 00 00    	mov    0x0,%edx
  6c:	80 f9 16             	cmp    $0x16,%cl
  6f:	76 12                	jbe    83 <handle_13+0x83>
  71:	b9 00 00 00 00       	mov    $0x0,%ecx
  76:	ba 01 69 02 00       	mov    $0x26901,%edx
  7b:	89 d8                	mov    %ebx,%eax
  7d:	5b                   	pop    %ebx
  7e:	e9 fc ff ff ff       	jmp    7f <handle_13+0x7f>
  83:	89 d8                	mov    %ebx,%eax
  85:	5b                   	pop    %ebx
  86:	e9 fc ff ff ff       	jmp    87 <handle_13+0x87>
  8b:	80 fa df             	cmp    $0xdf,%dl
  8e:	77 07                	ja     97 <handle_13+0x97>
  90:	31 d0                	xor    %edx,%eax
  92:	3c 80                	cmp    $0x80,%al
  94:	80 da 00             	sbb    $0x0,%dl
  97:	0f b6 d2             	movzbl %dl,%edx
  9a:	89 d8                	mov    %ebx,%eax
  9c:	5b                   	pop    %ebx
  9d:	e9 fc ff ff ff       	jmp    9e <handle_13+0x9e>

Disassembly of section .text.handle_76:

00000000 <handle_76>:
   0:	b8 00 00 00 00       	mov    $0x0,%eax
   5:	e8 fc ff ff ff       	call   6 <handle_76+0x6>
   a:	c6 05 8e 04 00 00 ff 	movb   $0xff,0x48e
  11:	b0 20                	mov    $0x20,%al
  13:	e6 a0                	out    %al,$0xa0
  15:	e6 20                	out    %al,$0x20
  17:	c3                   	ret    
