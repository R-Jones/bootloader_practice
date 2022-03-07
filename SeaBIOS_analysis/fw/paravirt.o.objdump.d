
./paravirt.o:     file format elf32-i386


Disassembly of section .text.__swab32_constant:

00000000 <__swab32_constant>:
   0:	86 e0                	xchg   %ah,%al
   2:	c1 c0 10             	rol    $0x10,%eax
   5:	86 e0                	xchg   %ah,%al
   7:	c3                   	ret    

Disassembly of section .text.cpu_to_be32:

00000000 <be32_to_cpu>:
   0:	0f c8                	bswap  %eax
   2:	c3                   	ret    

Disassembly of section .text.qemu_cfg_dma_transfer:

00000000 <qemu_cfg_dma_transfer>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	83 ec 10             	sub    $0x10,%esp
   5:	89 d6                	mov    %edx,%esi
   7:	89 ca                	mov    %ecx,%edx
   9:	31 c9                	xor    %ecx,%ecx
   b:	0f c9                	bswap  %ecx
   d:	0f c8                	bswap  %eax
   f:	89 4c 24 08          	mov    %ecx,0x8(%esp)
  13:	89 44 24 0c          	mov    %eax,0xc(%esp)
  17:	89 f0                	mov    %esi,%eax
  19:	e8 fc ff ff ff       	call   1a <qemu_cfg_dma_transfer+0x1a>
  1e:	89 44 24 04          	mov    %eax,0x4(%esp)
  22:	89 d0                	mov    %edx,%eax
  24:	e8 fc ff ff ff       	call   25 <qemu_cfg_dma_transfer+0x25>
  29:	89 04 24             	mov    %eax,(%esp)
  2c:	89 e0                	mov    %esp,%eax
  2e:	e8 fc ff ff ff       	call   2f <qemu_cfg_dma_transfer+0x2f>
  33:	ba 18 05 00 00       	mov    $0x518,%edx
  38:	ef                   	out    %eax,(%dx)
  39:	8b 04 24             	mov    (%esp),%eax
  3c:	e8 fc ff ff ff       	call   3d <qemu_cfg_dma_transfer+0x3d>
  41:	83 e0 fe             	and    $0xfffffffe,%eax
  44:	74 07                	je     4d <qemu_cfg_dma_transfer+0x4d>
  46:	e8 fc ff ff ff       	call   47 <qemu_cfg_dma_transfer+0x47>
  4b:	eb ec                	jmp    39 <qemu_cfg_dma_transfer+0x39>
  4d:	83 c4 10             	add    $0x10,%esp
  50:	5b                   	pop    %ebx
  51:	5e                   	pop    %esi
  52:	c3                   	ret    

Disassembly of section .text.qemu_cfg_read.part.0:

00000000 <qemu_cfg_read.part.0>:
   0:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
   7:	74 0a                	je     13 <qemu_cfg_read.part.0+0x13>
   9:	b9 02 00 00 00       	mov    $0x2,%ecx
   e:	e9 fc ff ff ff       	jmp    f <qemu_cfg_read.part.0+0xf>
  13:	57                   	push   %edi
  14:	89 d1                	mov    %edx,%ecx
  16:	89 c7                	mov    %eax,%edi
  18:	ba 11 05 00 00       	mov    $0x511,%edx
  1d:	f3 6c                	rep insb (%dx),%es:(%edi)
  1f:	5f                   	pop    %edi
  20:	c3                   	ret    

Disassembly of section .text.qemu_cfg_skip:

00000000 <qemu_cfg_skip>:
   0:	89 c2                	mov    %eax,%edx
   2:	85 c0                	test   %eax,%eax
   4:	74 22                	je     28 <qemu_cfg_skip+0x28>
   6:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
   d:	75 09                	jne    18 <qemu_cfg_skip+0x18>
   f:	89 c1                	mov    %eax,%ecx
  11:	ba 11 05 00 00       	mov    $0x511,%edx
  16:	eb 0c                	jmp    24 <qemu_cfg_skip+0x24>
  18:	b9 04 00 00 00       	mov    $0x4,%ecx
  1d:	31 c0                	xor    %eax,%eax
  1f:	e9 fc ff ff ff       	jmp    20 <qemu_cfg_skip+0x20>
  24:	ec                   	in     (%dx),%al
  25:	49                   	dec    %ecx
  26:	75 fc                	jne    24 <qemu_cfg_skip+0x24>
  28:	c3                   	ret    

Disassembly of section .text.qemu_romfile_add:

00000000 <qemu_romfile_add>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	53                   	push   %ebx
   5:	89 04 24             	mov    %eax,(%esp)
   8:	89 d7                	mov    %edx,%edi
   a:	89 ce                	mov    %ecx,%esi
   c:	8b 6c 24 18          	mov    0x18(%esp),%ebp
  10:	b9 10 00 00 00       	mov    $0x10,%ecx
  15:	ba 94 00 00 00       	mov    $0x94,%edx
  1a:	b8 00 00 00 00       	mov    $0x0,%eax
  1f:	e8 fc ff ff ff       	call   20 <qemu_romfile_add+0x20>
  24:	89 c3                	mov    %eax,%ebx
  26:	85 c0                	test   %eax,%eax
  28:	75 2e                	jne    58 <qemu_romfile_add+0x58>
  2a:	b9 10 00 00 00       	mov    $0x10,%ecx
  2f:	ba 94 00 00 00       	mov    $0x94,%edx
  34:	b8 00 00 00 00       	mov    $0x0,%eax
  39:	e8 fc ff ff ff       	call   3a <qemu_romfile_add+0x3a>
  3e:	89 c3                	mov    %eax,%ebx
  40:	85 c0                	test   %eax,%eax
  42:	75 14                	jne    58 <qemu_romfile_add+0x58>
  44:	ba 00 00 00 00       	mov    $0x0,%edx
  49:	b8 ad 01 00 00       	mov    $0x1ad,%eax
  4e:	59                   	pop    %ecx
  4f:	5b                   	pop    %ebx
  50:	5e                   	pop    %esi
  51:	5f                   	pop    %edi
  52:	5d                   	pop    %ebp
  53:	e9 fc ff ff ff       	jmp    54 <qemu_romfile_add+0x54>
  58:	b9 94 00 00 00       	mov    $0x94,%ecx
  5d:	31 d2                	xor    %edx,%edx
  5f:	89 d8                	mov    %ebx,%eax
  61:	e8 fc ff ff ff       	call   62 <qemu_romfile_add+0x62>
  66:	8d 43 04             	lea    0x4(%ebx),%eax
  69:	b9 80 00 00 00       	mov    $0x80,%ecx
  6e:	8b 14 24             	mov    (%esp),%edx
  71:	e8 fc ff ff ff       	call   72 <qemu_romfile_add+0x72>
  76:	89 ab 84 00 00 00    	mov    %ebp,0x84(%ebx)
  7c:	89 bb 8c 00 00 00    	mov    %edi,0x8c(%ebx)
  82:	89 b3 90 00 00 00    	mov    %esi,0x90(%ebx)
  88:	c7 83 88 00 00 00 00 	movl   $0x0,0x88(%ebx)
  8f:	00 00 00 
  92:	89 d8                	mov    %ebx,%eax
  94:	5a                   	pop    %edx
  95:	5b                   	pop    %ebx
  96:	5e                   	pop    %esi
  97:	5f                   	pop    %edi
  98:	5d                   	pop    %ebp
  99:	e9 fc ff ff ff       	jmp    9a <qemu_romfile_add+0x9a>

Disassembly of section .text.qemu_cfg_read_entry:

00000000 <qemu_cfg_read_entry>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 c3                	mov    %eax,%ebx
   4:	89 d0                	mov    %edx,%eax
   6:	89 ce                	mov    %ecx,%esi
   8:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
   f:	74 13                	je     24 <qemu_cfg_read_entry+0x24>
  11:	c1 e0 10             	shl    $0x10,%eax
  14:	83 c8 0a             	or     $0xa,%eax
  17:	89 c1                	mov    %eax,%ecx
  19:	89 f2                	mov    %esi,%edx
  1b:	89 d8                	mov    %ebx,%eax
  1d:	5b                   	pop    %ebx
  1e:	5e                   	pop    %esi
  1f:	e9 fc ff ff ff       	jmp    20 <qemu_cfg_read_entry+0x20>
  24:	ba 10 05 00 00       	mov    $0x510,%edx
  29:	66 ef                	out    %ax,(%dx)
  2b:	85 c9                	test   %ecx,%ecx
  2d:	74 0b                	je     3a <qemu_cfg_read_entry+0x3a>
  2f:	89 ca                	mov    %ecx,%edx
  31:	89 d8                	mov    %ebx,%eax
  33:	5b                   	pop    %ebx
  34:	5e                   	pop    %esi
  35:	e9 fc ff ff ff       	jmp    36 <qemu_cfg_read_entry+0x36>
  3a:	5b                   	pop    %ebx
  3b:	5e                   	pop    %esi
  3c:	c3                   	ret    

Disassembly of section .text.qemu_cfg_detect:

00000000 <qemu_cfg_detect>:
   0:	8b 0d 00 00 00 00    	mov    0x0,%ecx
   6:	85 c9                	test   %ecx,%ecx
   8:	75 72                	jne    7c <qemu_cfg_detect+0x7c>
   a:	56                   	push   %esi
   b:	53                   	push   %ebx
   c:	56                   	push   %esi
   d:	31 c0                	xor    %eax,%eax
   f:	ba 10 05 00 00       	mov    $0x510,%edx
  14:	66 ef                	out    %ax,(%dx)
  16:	31 db                	xor    %ebx,%ebx
  18:	ba 11 05 00 00       	mov    $0x511,%edx
  1d:	ec                   	in     (%dx),%al
  1e:	0f b6 c0             	movzbl %al,%eax
  21:	0f be b3 00 00 00 00 	movsbl 0x0(%ebx),%esi
  28:	39 f0                	cmp    %esi,%eax
  2a:	75 56                	jne    82 <qemu_cfg_detect+0x82>
  2c:	43                   	inc    %ebx
  2d:	83 fb 04             	cmp    $0x4,%ebx
  30:	75 eb                	jne    1d <qemu_cfg_detect+0x1d>
  32:	68 05 00 00 00       	push   $0x5
  37:	e8 fc ff ff ff       	call   38 <qemu_cfg_detect+0x38>
  3c:	c7 05 00 00 00 00 01 	movl   $0x1,0x0
  43:	00 00 00 
  46:	b9 04 00 00 00       	mov    $0x4,%ecx
  4b:	ba 01 00 00 00       	mov    $0x1,%edx
  50:	8d 44 24 04          	lea    0x4(%esp),%eax
  54:	e8 fc ff ff ff       	call   55 <qemu_cfg_detect+0x55>
  59:	5b                   	pop    %ebx
  5a:	f6 04 24 02          	testb  $0x2,(%esp)
  5e:	74 15                	je     75 <qemu_cfg_detect+0x75>
  60:	68 18 00 00 00       	push   $0x18
  65:	e8 fc ff ff ff       	call   66 <qemu_cfg_detect+0x66>
  6a:	c7 05 00 00 00 00 01 	movl   $0x1,0x0
  71:	00 00 00 
  74:	59                   	pop    %ecx
  75:	b9 01 00 00 00       	mov    $0x1,%ecx
  7a:	eb 06                	jmp    82 <qemu_cfg_detect+0x82>
  7c:	b8 01 00 00 00       	mov    $0x1,%eax
  81:	c3                   	ret    
  82:	89 c8                	mov    %ecx,%eax
  84:	5a                   	pop    %edx
  85:	5b                   	pop    %ebx
  86:	5e                   	pop    %esi
  87:	c3                   	ret    

Disassembly of section .text.qemu_cfg_read_file:

00000000 <qemu_cfg_read_file>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 d6                	mov    %edx,%esi
   4:	8b 90 84 00 00 00    	mov    0x84(%eax),%edx
   a:	39 ca                	cmp    %ecx,%edx
   c:	77 46                	ja     54 <qemu_cfg_read_file+0x54>
   e:	89 c3                	mov    %eax,%ebx
  10:	8b 88 90 00 00 00    	mov    0x90(%eax),%ecx
  16:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
  1c:	85 c9                	test   %ecx,%ecx
  1e:	75 0d                	jne    2d <qemu_cfg_read_file+0x2d>
  20:	89 d1                	mov    %edx,%ecx
  22:	89 c2                	mov    %eax,%edx
  24:	89 f0                	mov    %esi,%eax
  26:	e8 fc ff ff ff       	call   27 <qemu_cfg_read_file+0x27>
  2b:	eb 1f                	jmp    4c <qemu_cfg_read_file+0x4c>
  2d:	ba 10 05 00 00       	mov    $0x510,%edx
  32:	66 ef                	out    %ax,(%dx)
  34:	89 c8                	mov    %ecx,%eax
  36:	e8 fc ff ff ff       	call   37 <qemu_cfg_read_file+0x37>
  3b:	8b 93 84 00 00 00    	mov    0x84(%ebx),%edx
  41:	85 d2                	test   %edx,%edx
  43:	74 07                	je     4c <qemu_cfg_read_file+0x4c>
  45:	89 f0                	mov    %esi,%eax
  47:	e8 fc ff ff ff       	call   48 <qemu_cfg_read_file+0x48>
  4c:	8b 83 84 00 00 00    	mov    0x84(%ebx),%eax
  52:	eb 03                	jmp    57 <qemu_cfg_read_file+0x57>
  54:	83 c8 ff             	or     $0xffffffff,%eax
  57:	5b                   	pop    %ebx
  58:	5e                   	pop    %esi
  59:	c3                   	ret    

Disassembly of section .text.qemu_cfg_enabled:

00000000 <qemu_cfg_enabled>:
   0:	a1 00 00 00 00       	mov    0x0,%eax
   5:	c3                   	ret    

Disassembly of section .text.qemu_cfg_dma_enabled:

00000000 <qemu_cfg_dma_enabled>:
   0:	a1 00 00 00 00       	mov    0x0,%eax
   5:	c3                   	ret    

Disassembly of section .text.qemu_preinit:

00000000 <qemu_preinit>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 70             	sub    $0x70,%esp
   7:	e8 fc ff ff ff       	call   8 <qemu_preinit+0x8>
   c:	31 d2                	xor    %edx,%edx
   e:	31 c0                	xor    %eax,%eax
  10:	e8 fc ff ff ff       	call   11 <qemu_preinit+0x11>
  15:	0f b7 f0             	movzwl %ax,%esi
  18:	8d 46 ff             	lea    -0x1(%esi),%eax
  1b:	66 83 f8 fd          	cmp    $0xfffd,%ax
  1f:	77 6e                	ja     8f <qemu_preinit+0x8f>
  21:	ba 02 00 00 00       	mov    $0x2,%edx
  26:	31 c0                	xor    %eax,%eax
  28:	e8 fc ff ff ff       	call   29 <qemu_preinit+0x29>
  2d:	0f b7 d8             	movzwl %ax,%ebx
  30:	ba 2c 00 00 00       	mov    $0x2c,%edx
  35:	31 c0                	xor    %eax,%eax
  37:	e8 fc ff ff ff       	call   38 <qemu_preinit+0x38>
  3c:	89 c7                	mov    %eax,%edi
  3e:	ba 2e 00 00 00       	mov    $0x2e,%edx
  43:	31 c0                	xor    %eax,%eax
  45:	e8 fc ff ff ff       	call   46 <qemu_preinit+0x46>
  4a:	66 3d 00 11          	cmp    $0x1100,%ax
  4e:	75 3f                	jne    8f <qemu_preinit+0x8f>
  50:	66 81 ff f4 1a       	cmp    $0x1af4,%di
  55:	75 38                	jne    8f <qemu_preinit+0x8f>
  57:	83 0d 00 00 00 00 01 	orl    $0x1,0x0
  5e:	66 81 fb 37 12       	cmp    $0x1237,%bx
  63:	74 0e                	je     73 <qemu_preinit+0x73>
  65:	66 81 fb c0 29       	cmp    $0x29c0,%bx
  6a:	75 14                	jne    80 <qemu_preinit+0x80>
  6c:	68 57 00 00 00       	push   $0x57
  71:	eb 05                	jmp    78 <qemu_preinit+0x78>
  73:	68 3d 00 00 00       	push   $0x3d
  78:	e8 fc ff ff ff       	call   79 <qemu_preinit+0x79>
  7d:	5e                   	pop    %esi
  7e:	eb 0f                	jmp    8f <qemu_preinit+0x8f>
  80:	53                   	push   %ebx
  81:	56                   	push   %esi
  82:	68 6e 00 00 00       	push   $0x6e
  87:	e8 fc ff ff ff       	call   88 <qemu_preinit+0x88>
  8c:	83 c4 0c             	add    $0xc,%esp
  8f:	8d 44 24 1c          	lea    0x1c(%esp),%eax
  93:	50                   	push   %eax
  94:	8d 74 24 1c          	lea    0x1c(%esp),%esi
  98:	56                   	push   %esi
  99:	8d 4c 24 1c          	lea    0x1c(%esp),%ecx
  9d:	8d 54 24 18          	lea    0x18(%esp),%edx
  a1:	b8 00 00 00 40       	mov    $0x40000000,%eax
  a6:	e8 fc ff ff ff       	call   a7 <qemu_preinit+0xa7>
  ab:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  af:	89 44 24 38          	mov    %eax,0x38(%esp)
  b3:	8b 44 24 20          	mov    0x20(%esp),%eax
  b7:	89 44 24 3c          	mov    %eax,0x3c(%esp)
  bb:	8b 44 24 24          	mov    0x24(%esp),%eax
  bf:	89 44 24 40          	mov    %eax,0x40(%esp)
  c3:	c6 44 24 44 00       	movb   $0x0,0x44(%esp)
  c8:	ba 97 00 00 00       	mov    $0x97,%edx
  cd:	8d 44 24 38          	lea    0x38(%esp),%eax
  d1:	e8 fc ff ff ff       	call   d2 <qemu_preinit+0xd2>
  d6:	59                   	pop    %ecx
  d7:	5b                   	pop    %ebx
  d8:	85 c0                	test   %eax,%eax
  da:	75 53                	jne    12f <qemu_preinit+0x12f>
  dc:	68 a1 00 00 00       	push   $0xa1
  e1:	e8 fc ff ff ff       	call   e2 <qemu_preinit+0xe2>
  e6:	83 0d 00 00 00 00 04 	orl    $0x4,0x0
  ed:	5a                   	pop    %edx
  ee:	81 7c 24 10 0f 00 00 	cmpl   $0x4000000f,0x10(%esp)
  f5:	40 
  f6:	76 37                	jbe    12f <qemu_preinit+0x12f>
  f8:	8d 44 24 1c          	lea    0x1c(%esp),%eax
  fc:	50                   	push   %eax
  fd:	56                   	push   %esi
  fe:	8d 4c 24 1c          	lea    0x1c(%esp),%ecx
 102:	8d 54 24 18          	lea    0x18(%esp),%edx
 106:	b8 10 00 00 40       	mov    $0x40000010,%eax
 10b:	e8 fc ff ff ff       	call   10c <qemu_preinit+0x10c>
 110:	ff 74 24 18          	push   0x18(%esp)
 114:	68 b1 00 00 00       	push   $0xb1
 119:	e8 fc ff ff ff       	call   11a <qemu_preinit+0x11a>
 11e:	ba d0 00 00 00       	mov    $0xd0,%edx
 123:	8b 44 24 20          	mov    0x20(%esp),%eax
 127:	e8 fc ff ff ff       	call   128 <qemu_preinit+0x128>
 12c:	83 c4 10             	add    $0x10,%esp
 12f:	f6 05 00 00 00 00 02 	testb  $0x2,0x0
 136:	74 0c                	je     144 <qemu_preinit+0x144>
 138:	83 c4 70             	add    $0x70,%esp
 13b:	5b                   	pop    %ebx
 13c:	5e                   	pop    %esi
 13d:	5f                   	pop    %edi
 13e:	5d                   	pop    %ebp
 13f:	e9 fc ff ff ff       	jmp    140 <qemu_preinit+0x140>
 144:	e8 fc ff ff ff       	call   145 <qemu_preinit+0x145>
 149:	85 c0                	test   %eax,%eax
 14b:	0f 84 c9 01 00 00    	je     31a <qemu_preinit+0x31a>
 151:	b9 04 00 00 00       	mov    $0x4,%ecx
 156:	ba 19 00 00 00       	mov    $0x19,%edx
 15b:	89 f0                	mov    %esi,%eax
 15d:	e8 fc ff ff ff       	call   15e <qemu_preinit+0x15e>
 162:	8b 44 24 18          	mov    0x18(%esp),%eax
 166:	e8 fc ff ff ff       	call   167 <qemu_preinit+0x167>
 16b:	89 44 24 18          	mov    %eax,0x18(%esp)
 16f:	31 f6                	xor    %esi,%esi
 171:	3b 74 24 18          	cmp    0x18(%esp),%esi
 175:	73 40                	jae    1b7 <qemu_preinit+0x1b7>
 177:	ba 40 00 00 00       	mov    $0x40,%edx
 17c:	8d 44 24 30          	lea    0x30(%esp),%eax
 180:	e8 fc ff ff ff       	call   181 <qemu_preinit+0x181>
 185:	b9 09 00 00 00       	mov    $0x9,%ecx
 18a:	ba d7 00 00 00       	mov    $0xd7,%edx
 18f:	8d 44 24 38          	lea    0x38(%esp),%eax
 193:	e8 fc ff ff ff       	call   194 <qemu_preinit+0x194>
 198:	85 c0                	test   %eax,%eax
 19a:	74 03                	je     19f <qemu_preinit+0x19f>
 19c:	46                   	inc    %esi
 19d:	eb d2                	jmp    171 <qemu_preinit+0x171>
 19f:	8b 74 24 34          	mov    0x34(%esp),%esi
 1a3:	66 c1 c6 08          	rol    $0x8,%si
 1a7:	8b 44 24 30          	mov    0x30(%esp),%eax
 1ab:	e8 fc ff ff ff       	call   1ac <qemu_preinit+0x1ac>
 1b0:	89 c1                	mov    %eax,%ecx
 1b2:	66 85 f6             	test   %si,%si
 1b5:	75 10                	jne    1c7 <qemu_preinit+0x1c7>
 1b7:	68 e0 00 00 00       	push   $0xe0
 1bc:	e8 fc ff ff ff       	call   1bd <qemu_preinit+0x1bd>
 1c1:	58                   	pop    %eax
 1c2:	e9 53 01 00 00       	jmp    31a <qemu_preinit+0x31a>
 1c7:	ba 10 05 00 00       	mov    $0x510,%edx
 1cc:	89 f0                	mov    %esi,%eax
 1ce:	66 ef                	out    %ax,(%dx)
 1d0:	be 14 00 00 00       	mov    $0x14,%esi
 1d5:	89 c8                	mov    %ecx,%eax
 1d7:	31 d2                	xor    %edx,%edx
 1d9:	f7 f6                	div    %esi
 1db:	89 44 24 18          	mov    %eax,0x18(%esp)
 1df:	31 ed                	xor    %ebp,%ebp
 1e1:	3b 6c 24 18          	cmp    0x18(%esp),%ebp
 1e5:	0f 83 07 01 00 00    	jae    2f2 <qemu_preinit+0x2f2>
 1eb:	ba 14 00 00 00       	mov    $0x14,%edx
 1f0:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 1f4:	e8 fc ff ff ff       	call   1f5 <qemu_preinit+0x1f5>
 1f9:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 1fd:	83 f8 01             	cmp    $0x1,%eax
 200:	74 42                	je     244 <qemu_preinit+0x244>
 202:	83 f8 02             	cmp    $0x2,%eax
 205:	0f 85 e1 00 00 00    	jne    2ec <qemu_preinit+0x2ec>
 20b:	6a 02                	push   $0x2
 20d:	ff 74 24 2c          	push   0x2c(%esp)
 211:	ff 74 24 2c          	push   0x2c(%esp)
 215:	8b 44 24 28          	mov    0x28(%esp),%eax
 219:	8b 54 24 2c          	mov    0x2c(%esp),%edx
 21d:	e8 fc ff ff ff       	call   21e <qemu_preinit+0x21e>
 222:	ff 74 24 34          	push   0x34(%esp)
 226:	ff 74 24 34          	push   0x34(%esp)
 22a:	ff 74 24 34          	push   0x34(%esp)
 22e:	ff 74 24 34          	push   0x34(%esp)
 232:	68 0b 01 00 00       	push   $0x10b
 237:	e8 fc ff ff ff       	call   238 <qemu_preinit+0x238>
 23c:	83 c4 20             	add    $0x20,%esp
 23f:	e9 a8 00 00 00       	jmp    2ec <qemu_preinit+0x2ec>
 244:	6a 01                	push   $0x1
 246:	ff 74 24 2c          	push   0x2c(%esp)
 24a:	ff 74 24 2c          	push   0x2c(%esp)
 24e:	8b 44 24 28          	mov    0x28(%esp),%eax
 252:	8b 54 24 2c          	mov    0x2c(%esp),%edx
 256:	e8 fc ff ff ff       	call   257 <qemu_preinit+0x257>
 25b:	ff 74 24 34          	push   0x34(%esp)
 25f:	ff 74 24 34          	push   0x34(%esp)
 263:	ff 74 24 34          	push   0x34(%esp)
 267:	ff 74 24 34          	push   0x34(%esp)
 26b:	68 3f 01 00 00       	push   $0x13f
 270:	e8 fc ff ff ff       	call   271 <qemu_preinit+0x271>
 275:	8b 44 24 3c          	mov    0x3c(%esp),%eax
 279:	8b 54 24 40          	mov    0x40(%esp),%edx
 27d:	83 c4 20             	add    $0x20,%esp
 280:	83 fa 00             	cmp    $0x0,%edx
 283:	8b 74 24 24          	mov    0x24(%esp),%esi
 287:	8b 7c 24 28          	mov    0x28(%esp),%edi
 28b:	77 3b                	ja     2c8 <qemu_preinit+0x2c8>
 28d:	8b 0d 00 00 00 00    	mov    0x0,%ecx
 293:	31 db                	xor    %ebx,%ebx
 295:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 299:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
 29d:	89 c1                	mov    %eax,%ecx
 29f:	89 d3                	mov    %edx,%ebx
 2a1:	01 f1                	add    %esi,%ecx
 2a3:	11 fb                	adc    %edi,%ebx
 2a5:	89 0c 24             	mov    %ecx,(%esp)
 2a8:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 2ac:	8b 0c 24             	mov    (%esp),%ecx
 2af:	39 0d 00 00 00 00    	cmp    %ecx,0x0
 2b5:	8b 5c 24 0c          	mov    0xc(%esp),%ebx
 2b9:	1b 5c 24 04          	sbb    0x4(%esp),%ebx
 2bd:	73 2d                	jae    2ec <qemu_preinit+0x2ec>
 2bf:	01 f0                	add    %esi,%eax
 2c1:	a3 00 00 00 00       	mov    %eax,0x0
 2c6:	eb 24                	jmp    2ec <qemu_preinit+0x2ec>
 2c8:	01 f0                	add    %esi,%eax
 2ca:	11 fa                	adc    %edi,%edx
 2cc:	89 c6                	mov    %eax,%esi
 2ce:	89 d7                	mov    %edx,%edi
 2d0:	4f                   	dec    %edi
 2d1:	39 05 00 00 00 00    	cmp    %eax,0x0
 2d7:	a1 04 00 00 00       	mov    0x4,%eax
 2dc:	19 f8                	sbb    %edi,%eax
 2de:	73 0c                	jae    2ec <qemu_preinit+0x2ec>
 2e0:	89 35 00 00 00 00    	mov    %esi,0x0
 2e6:	89 3d 04 00 00 00    	mov    %edi,0x4
 2ec:	45                   	inc    %ebp
 2ed:	e9 ef fe ff ff       	jmp    1e1 <qemu_preinit+0x1e1>
 2f2:	ff 35 00 00 00 00    	push   0x0
 2f8:	68 6e 01 00 00       	push   $0x16e
 2fd:	e8 fc ff ff ff       	call   2fe <qemu_preinit+0x2fe>
 302:	ff 35 04 00 00 00    	push   0x4
 308:	ff 35 00 00 00 00    	push   0x0
 30e:	68 8a 01 00 00       	push   $0x18a
 313:	e8 fc ff ff ff       	call   314 <qemu_preinit+0x314>
 318:	eb 79                	jmp    393 <qemu_preinit+0x393>
 31a:	b8 34 00 00 00       	mov    $0x34,%eax
 31f:	e8 fc ff ff ff       	call   320 <qemu_preinit+0x320>
 324:	88 c3                	mov    %al,%bl
 326:	b8 35 00 00 00       	mov    $0x35,%eax
 32b:	e8 fc ff ff ff       	call   32c <qemu_preinit+0x32c>
 330:	88 c2                	mov    %al,%dl
 332:	0f b6 c3             	movzbl %bl,%eax
 335:	c1 e0 10             	shl    $0x10,%eax
 338:	c1 e2 18             	shl    $0x18,%edx
 33b:	09 d0                	or     %edx,%eax
 33d:	74 07                	je     346 <qemu_preinit+0x346>
 33f:	05 00 00 00 01       	add    $0x1000000,%eax
 344:	eb 29                	jmp    36f <qemu_preinit+0x36f>
 346:	b8 30 00 00 00       	mov    $0x30,%eax
 34b:	e8 fc ff ff ff       	call   34c <qemu_preinit+0x34c>
 350:	88 c3                	mov    %al,%bl
 352:	b8 31 00 00 00       	mov    $0x31,%eax
 357:	e8 fc ff ff ff       	call   358 <qemu_preinit+0x358>
 35c:	0f b6 d0             	movzbl %al,%edx
 35f:	0f b6 c3             	movzbl %bl,%eax
 362:	c1 e0 0a             	shl    $0xa,%eax
 365:	c1 e2 12             	shl    $0x12,%edx
 368:	09 d0                	or     %edx,%eax
 36a:	05 00 00 10 00       	add    $0x100000,%eax
 36f:	a3 00 00 00 00       	mov    %eax,0x0
 374:	6a 01                	push   $0x1
 376:	31 d2                	xor    %edx,%edx
 378:	52                   	push   %edx
 379:	50                   	push   %eax
 37a:	31 c0                	xor    %eax,%eax
 37c:	31 d2                	xor    %edx,%edx
 37e:	e8 fc ff ff ff       	call   37f <qemu_preinit+0x37f>
 383:	ff 35 00 00 00 00    	push   0x0
 389:	68 af 01 00 00       	push   $0x1af
 38e:	e8 fc ff ff ff       	call   38f <qemu_preinit+0x38f>
 393:	83 c4 14             	add    $0x14,%esp
 396:	6a 02                	push   $0x2
 398:	6a 00                	push   $0x0
 39a:	68 00 00 04 00       	push   $0x40000
 39f:	b8 00 00 fc ff       	mov    $0xfffc0000,%eax
 3a4:	31 d2                	xor    %edx,%edx
 3a6:	e8 fc ff ff ff       	call   3a7 <qemu_preinit+0x3a7>
 3ab:	83 c4 7c             	add    $0x7c,%esp
 3ae:	5b                   	pop    %ebx
 3af:	5e                   	pop    %esi
 3b0:	5f                   	pop    %edi
 3b1:	5d                   	pop    %ebp
 3b2:	c3                   	ret    

Disassembly of section .text.qemu_platform_setup:

00000000 <qemu_platform_setup>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	83 ec 10             	sub    $0x10,%esp
   5:	a1 00 00 00 00       	mov    0x0,%eax
   a:	a8 02                	test   $0x2,%al
   c:	74 14                	je     22 <qemu_platform_setup+0x22>
   e:	e8 fc ff ff ff       	call   f <qemu_platform_setup+0xf>
  13:	e8 fc ff ff ff       	call   14 <qemu_platform_setup+0x14>
  18:	83 c4 10             	add    $0x10,%esp
  1b:	5b                   	pop    %ebx
  1c:	5e                   	pop    %esi
  1d:	e9 fc ff ff ff       	jmp    1e <qemu_platform_setup+0x1e>
  22:	a8 04                	test   $0x4,%al
  24:	0f 84 ca 00 00 00    	je     f4 <qemu_platform_setup+0xf4>
  2a:	8d 44 24 0c          	lea    0xc(%esp),%eax
  2e:	50                   	push   %eax
  2f:	8d 44 24 0c          	lea    0xc(%esp),%eax
  33:	50                   	push   %eax
  34:	8d 4c 24 0c          	lea    0xc(%esp),%ecx
  38:	8d 54 24 08          	lea    0x8(%esp),%edx
  3c:	b8 01 00 00 40       	mov    $0x40000001,%eax
  41:	e8 fc ff ff ff       	call   42 <qemu_platform_setup+0x42>
  46:	8b 44 24 08          	mov    0x8(%esp),%eax
  4a:	5e                   	pop    %esi
  4b:	5a                   	pop    %edx
  4c:	a8 08                	test   $0x8,%al
  4e:	75 0e                	jne    5e <qemu_platform_setup+0x5e>
  50:	be 12 00 00 00       	mov    $0x12,%esi
  55:	a8 01                	test   $0x1,%al
  57:	75 0a                	jne    63 <qemu_platform_setup+0x63>
  59:	e9 96 00 00 00       	jmp    f4 <qemu_platform_setup+0xf4>
  5e:	be 01 4d 56 4b       	mov    $0x4b564d01,%esi
  63:	b9 20 00 00 00       	mov    $0x20,%ecx
  68:	ba 20 00 00 00       	mov    $0x20,%edx
  6d:	b8 00 00 00 00       	mov    $0x0,%eax
  72:	e8 fc ff ff ff       	call   73 <qemu_platform_setup+0x73>
  77:	a3 00 00 00 00       	mov    %eax,0x0
  7c:	b9 20 00 00 00       	mov    $0x20,%ecx
  81:	31 d2                	xor    %edx,%edx
  83:	e8 fc ff ff ff       	call   84 <qemu_platform_setup+0x84>
  88:	8b 1d 00 00 00 00    	mov    0x0,%ebx
  8e:	56                   	push   %esi
  8f:	53                   	push   %ebx
  90:	68 c7 01 00 00       	push   $0x1c7
  95:	e8 fc ff ff ff       	call   96 <qemu_platform_setup+0x96>
  9a:	89 d8                	mov    %ebx,%eax
  9c:	83 c8 01             	or     $0x1,%eax
  9f:	31 d2                	xor    %edx,%edx
  a1:	89 f1                	mov    %esi,%ecx
  a3:	0f 30                	wrmsr  
  a5:	8b 0d 00 00 00 00    	mov    0x0,%ecx
  ab:	83 c4 0c             	add    $0xc,%esp
  ae:	f6 41 1d 01          	testb  $0x1,0x1d(%ecx)
  b2:	74 40                	je     f4 <qemu_platform_setup+0xf4>
  b4:	0f b7 59 1a          	movzwl 0x1a(%ecx),%ebx
  b8:	b8 00 00 e8 03       	mov    $0x3e80000,%eax
  bd:	31 d2                	xor    %edx,%edx
  bf:	f7 f3                	div    %ebx
  c1:	0f be 51 1c          	movsbl 0x1c(%ecx),%edx
  c5:	89 d1                	mov    %edx,%ecx
  c7:	89 c3                	mov    %eax,%ebx
  c9:	d3 eb                	shr    %cl,%ebx
  cb:	84 d2                	test   %dl,%dl
  cd:	79 08                	jns    d7 <qemu_platform_setup+0xd7>
  cf:	f7 da                	neg    %edx
  d1:	89 d1                	mov    %edx,%ecx
  d3:	d3 e0                	shl    %cl,%eax
  d5:	89 c3                	mov    %eax,%ebx
  d7:	53                   	push   %ebx
  d8:	68 e5 01 00 00       	push   $0x1e5
  dd:	e8 fc ff ff ff       	call   de <qemu_platform_setup+0xde>
  e2:	69 c3 e8 03 00 00    	imul   $0x3e8,%ebx,%eax
  e8:	ba 03 02 00 00       	mov    $0x203,%edx
  ed:	e8 fc ff ff ff       	call   ee <qemu_platform_setup+0xee>
  f2:	59                   	pop    %ecx
  f3:	5b                   	pop    %ebx
  f4:	e8 fc ff ff ff       	call   f5 <qemu_platform_setup+0xf5>
  f9:	e8 fc ff ff ff       	call   fa <qemu_platform_setup+0xfa>
  fe:	e8 fc ff ff ff       	call   ff <qemu_platform_setup+0xff>
 103:	e8 fc ff ff ff       	call   104 <qemu_platform_setup+0x104>
 108:	31 d2                	xor    %edx,%edx
 10a:	31 c9                	xor    %ecx,%ecx
 10c:	b8 0c 02 00 00       	mov    $0x20c,%eax
 111:	e8 fc ff ff ff       	call   112 <qemu_platform_setup+0x112>
 116:	89 d1                	mov    %edx,%ecx
 118:	89 d6                	mov    %edx,%esi
 11a:	09 c6                	or     %eax,%esi
 11c:	74 0c                	je     12a <qemu_platform_setup+0x12a>
 11e:	89 c2                	mov    %eax,%edx
 120:	b8 3a 00 00 00       	mov    $0x3a,%eax
 125:	e8 fc ff ff ff       	call   126 <qemu_platform_setup+0x126>
 12a:	e8 fc ff ff ff       	call   12b <qemu_platform_setup+0x12b>
 12f:	81 3d 00 00 00 00 ff 	cmpl   $0xff,0x0
 136:	00 00 00 
 139:	77 0a                	ja     145 <qemu_platform_setup+0x145>
 13b:	e8 fc ff ff ff       	call   13c <qemu_platform_setup+0x13c>
 140:	e8 fc ff ff ff       	call   141 <qemu_platform_setup+0x141>
 145:	e8 fc ff ff ff       	call   146 <qemu_platform_setup+0x146>
 14a:	68 24 02 00 00       	push   $0x224
 14f:	e8 fc ff ff ff       	call   150 <qemu_platform_setup+0x150>
 154:	b8 36 02 00 00       	mov    $0x236,%eax
 159:	e8 fc ff ff ff       	call   15a <qemu_platform_setup+0x15a>
 15e:	89 c3                	mov    %eax,%ebx
 160:	e8 fc ff ff ff       	call   161 <qemu_platform_setup+0x161>
 165:	a3 00 00 00 00       	mov    %eax,0x0
 16a:	5a                   	pop    %edx
 16b:	85 c0                	test   %eax,%eax
 16d:	74 0f                	je     17e <qemu_platform_setup+0x17e>
 16f:	e8 fc ff ff ff       	call   170 <qemu_platform_setup+0x170>
 174:	83 c4 10             	add    $0x10,%esp
 177:	5b                   	pop    %ebx
 178:	5e                   	pop    %esi
 179:	e9 fc ff ff ff       	jmp    17a <qemu_platform_setup+0x17a>
 17e:	85 db                	test   %ebx,%ebx
 180:	75 0f                	jne    191 <qemu_platform_setup+0x191>
 182:	ba 00 00 00 00       	mov    $0x0,%edx
 187:	b8 fb 00 00 00       	mov    $0xfb,%eax
 18c:	e8 fc ff ff ff       	call   18d <qemu_platform_setup+0x18d>
 191:	83 c4 10             	add    $0x10,%esp
 194:	5b                   	pop    %ebx
 195:	5e                   	pop    %esi
 196:	e9 fc ff ff ff       	jmp    197 <qemu_platform_setup+0x197>

Disassembly of section .text.qemu_cfg_write_file_simple:

00000000 <qemu_cfg_write_file_simple>:
   0:	53                   	push   %ebx
   1:	89 c3                	mov    %eax,%ebx
   3:	85 c9                	test   %ecx,%ecx
   5:	75 1f                	jne    26 <qemu_cfg_write_file_simple+0x26>
   7:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
   e:	74 0a                	je     1a <qemu_cfg_write_file_simple+0x1a>
  10:	c1 e2 10             	shl    $0x10,%edx
  13:	89 d1                	mov    %edx,%ecx
  15:	83 c9 18             	or     $0x18,%ecx
  18:	eb 31                	jmp    4b <qemu_cfg_write_file_simple+0x4b>
  1a:	ba 00 00 00 00       	mov    $0x0,%edx
  1f:	b8 6f 01 00 00       	mov    $0x16f,%eax
  24:	eb 3c                	jmp    62 <qemu_cfg_write_file_simple+0x62>
  26:	89 d0                	mov    %edx,%eax
  28:	ba 10 05 00 00       	mov    $0x510,%edx
  2d:	66 ef                	out    %ax,(%dx)
  2f:	89 c8                	mov    %ecx,%eax
  31:	e8 fc ff ff ff       	call   32 <qemu_cfg_write_file_simple+0x32>
  36:	83 7c 24 08 00       	cmpl   $0x0,0x8(%esp)
  3b:	74 2a                	je     67 <qemu_cfg_write_file_simple+0x67>
  3d:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
  44:	74 12                	je     58 <qemu_cfg_write_file_simple+0x58>
  46:	b9 10 00 00 00       	mov    $0x10,%ecx
  4b:	8b 54 24 08          	mov    0x8(%esp),%edx
  4f:	89 d8                	mov    %ebx,%eax
  51:	e8 fc ff ff ff       	call   52 <qemu_cfg_write_file_simple+0x52>
  56:	eb 0f                	jmp    67 <qemu_cfg_write_file_simple+0x67>
  58:	ba 00 00 00 00       	mov    $0x0,%edx
  5d:	b8 47 01 00 00       	mov    $0x147,%eax
  62:	e8 fc ff ff ff       	call   63 <qemu_cfg_write_file_simple+0x63>
  67:	8b 44 24 08          	mov    0x8(%esp),%eax
  6b:	5b                   	pop    %ebx
  6c:	c3                   	ret    

Disassembly of section .text.qemu_get_romfile_key:

00000000 <qemu_get_romfile_key>:
   0:	81 b8 88 00 00 00 00 	cmpl   $0x0,0x88(%eax)
   7:	00 00 00 
   a:	74 12                	je     1e <qemu_get_romfile_key+0x1e>
   c:	ba 00 00 00 00       	mov    $0x0,%edx
  11:	b8 be 01 00 00       	mov    $0x1be,%eax
  16:	e8 fc ff ff ff       	call   17 <qemu_get_romfile_key+0x17>
  1b:	31 c0                	xor    %eax,%eax
  1d:	c3                   	ret    
  1e:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
  24:	c3                   	ret    

Disassembly of section .text.qemu_cfg_write_file:

00000000 <qemu_cfg_write_file>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	56                   	push   %esi
   3:	89 c3                	mov    %eax,%ebx
   5:	89 d0                	mov    %edx,%eax
   7:	8b 74 24 10          	mov    0x10(%esp),%esi
   b:	8d 14 31             	lea    (%ecx,%esi,1),%edx
   e:	3b 90 84 00 00 00    	cmp    0x84(%eax),%edx
  14:	77 42                	ja     58 <qemu_cfg_write_file+0x58>
  16:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
  1d:	74 0c                	je     2b <qemu_cfg_write_file+0x2b>
  1f:	81 b8 88 00 00 00 00 	cmpl   $0x0,0x88(%eax)
  26:	00 00 00 
  29:	74 11                	je     3c <qemu_cfg_write_file+0x3c>
  2b:	ba 00 00 00 00       	mov    $0x0,%edx
  30:	b8 a1 01 00 00       	mov    $0x1a1,%eax
  35:	e8 fc ff ff ff       	call   36 <qemu_cfg_write_file+0x36>
  3a:	eb 1c                	jmp    58 <qemu_cfg_write_file+0x58>
  3c:	89 0c 24             	mov    %ecx,(%esp)
  3f:	e8 fc ff ff ff       	call   40 <qemu_cfg_write_file+0x40>
  44:	0f b7 d0             	movzwl %ax,%edx
  47:	89 74 24 10          	mov    %esi,0x10(%esp)
  4b:	8b 0c 24             	mov    (%esp),%ecx
  4e:	89 d8                	mov    %ebx,%eax
  50:	5b                   	pop    %ebx
  51:	5b                   	pop    %ebx
  52:	5e                   	pop    %esi
  53:	e9 fc ff ff ff       	jmp    54 <qemu_cfg_write_file+0x54>
  58:	83 c8 ff             	or     $0xffffffff,%eax
  5b:	5a                   	pop    %edx
  5c:	5b                   	pop    %ebx
  5d:	5e                   	pop    %esi
  5e:	c3                   	ret    

Disassembly of section .text.qemu_get_present_cpus_count:

00000000 <qemu_get_present_cpus_count>:
   0:	51                   	push   %ecx
   1:	66 c7 44 24 02 00 00 	movw   $0x0,0x2(%esp)
   8:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
   f:	74 13                	je     24 <qemu_get_present_cpus_count+0x24>
  11:	b9 02 00 00 00       	mov    $0x2,%ecx
  16:	ba 05 00 00 00       	mov    $0x5,%edx
  1b:	8d 44 24 02          	lea    0x2(%esp),%eax
  1f:	e8 fc ff ff ff       	call   20 <qemu_get_present_cpus_count+0x20>
  24:	b8 08 00 00 00       	mov    $0x8,%eax
  29:	e8 fc ff ff ff       	call   2a <qemu_get_present_cpus_count+0x2a>
  2e:	fe c0                	inc    %al
  30:	74 1a                	je     4c <qemu_get_present_cpus_count+0x4c>
  32:	b8 5f 00 00 00       	mov    $0x5f,%eax
  37:	e8 fc ff ff ff       	call   38 <qemu_get_present_cpus_count+0x38>
  3c:	0f b6 c0             	movzbl %al,%eax
  3f:	40                   	inc    %eax
  40:	66 39 44 24 02       	cmp    %ax,0x2(%esp)
  45:	73 05                	jae    4c <qemu_get_present_cpus_count+0x4c>
  47:	66 89 44 24 02       	mov    %ax,0x2(%esp)
  4c:	66 8b 44 24 02       	mov    0x2(%esp),%ax
  51:	5a                   	pop    %edx
  52:	c3                   	ret    

Disassembly of section .text.qemu_cfg_init:

00000000 <qemu_cfg_init>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	81 ec 94 00 00 00    	sub    $0x94,%esp
   9:	e8 fc ff ff ff       	call   a <qemu_cfg_init+0xa>
   e:	85 c0                	test   %eax,%eax
  10:	0f 84 6f 03 00 00    	je     385 <qemu_cfg_init+0x385>
  16:	6a 02                	push   $0x2
  18:	31 c9                	xor    %ecx,%ecx
  1a:	ba 0e 00 00 00       	mov    $0xe,%edx
  1f:	b8 47 02 00 00       	mov    $0x247,%eax
  24:	e8 fc ff ff ff       	call   25 <qemu_cfg_init+0x25>
  29:	6a 01                	push   $0x1
  2b:	31 c9                	xor    %ecx,%ecx
  2d:	ba 02 80 00 00       	mov    $0x8002,%edx
  32:	b8 5a 02 00 00       	mov    $0x25a,%eax
  37:	e8 fc ff ff ff       	call   38 <qemu_cfg_init+0x38>
  3c:	6a 02                	push   $0x2
  3e:	31 c9                	xor    %ecx,%ecx
  40:	ba 0f 00 00 00       	mov    $0xf,%edx
  45:	b8 6c 02 00 00       	mov    $0x26c,%eax
  4a:	e8 fc ff ff ff       	call   4b <qemu_cfg_init+0x4b>
  4f:	b9 08 00 00 00       	mov    $0x8,%ecx
  54:	ba 0d 00 00 00       	mov    $0xd,%edx
  59:	8d 44 24 18          	lea    0x18(%esp),%eax
  5d:	e8 fc ff ff ff       	call   5e <qemu_cfg_init+0x5e>
  62:	31 d2                	xor    %edx,%edx
  64:	31 c9                	xor    %ecx,%ecx
  66:	b8 6c 02 00 00       	mov    $0x26c,%eax
  6b:	e8 fc ff ff ff       	call   6c <qemu_cfg_init+0x6c>
  70:	8d 1c c5 00 00 00 00 	lea    0x0(,%eax,8),%ebx
  77:	53                   	push   %ebx
  78:	b9 08 00 00 00       	mov    $0x8,%ecx
  7d:	ba 0d 00 00 00       	mov    $0xd,%edx
  82:	b8 79 02 00 00       	mov    $0x279,%eax
  87:	e8 fc ff ff ff       	call   88 <qemu_cfg_init+0x88>
  8c:	8d 4b 08             	lea    0x8(%ebx),%ecx
  8f:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  93:	c1 e0 03             	shl    $0x3,%eax
  96:	50                   	push   %eax
  97:	ba 0d 00 00 00       	mov    $0xd,%edx
  9c:	b8 8a 02 00 00       	mov    $0x28a,%eax
  a1:	e8 fc ff ff ff       	call   a2 <qemu_cfg_init+0xa2>
  a6:	b9 02 00 00 00       	mov    $0x2,%ecx
  ab:	ba 00 80 00 00       	mov    $0x8000,%edx
  b0:	8d 44 24 16          	lea    0x16(%esp),%eax
  b4:	e8 fc ff ff ff       	call   b5 <qemu_cfg_init+0xb5>
  b9:	83 c4 14             	add    $0x14,%esp
  bc:	bb 02 00 00 00       	mov    $0x2,%ebx
  c1:	31 f6                	xor    %esi,%esi
  c3:	0f b7 44 24 02       	movzwl 0x2(%esp),%eax
  c8:	39 c6                	cmp    %eax,%esi
  ca:	7d 51                	jge    11d <qemu_cfg_init+0x11d>
  cc:	ba 02 00 00 00       	mov    $0x2,%edx
  d1:	8d 44 24 04          	lea    0x4(%esp),%eax
  d5:	e8 fc ff ff ff       	call   d6 <qemu_cfg_init+0xd6>
  da:	83 c3 02             	add    $0x2,%ebx
  dd:	56                   	push   %esi
  de:	68 99 02 00 00       	push   $0x299
  e3:	68 80 00 00 00       	push   $0x80
  e8:	8d 7c 24 20          	lea    0x20(%esp),%edi
  ec:	57                   	push   %edi
  ed:	e8 fc ff ff ff       	call   ee <qemu_cfg_init+0xee>
  f2:	0f b7 44 24 14       	movzwl 0x14(%esp),%eax
  f7:	50                   	push   %eax
  f8:	89 d9                	mov    %ebx,%ecx
  fa:	ba 00 80 00 00       	mov    $0x8000,%edx
  ff:	89 f8                	mov    %edi,%eax
 101:	e8 fc ff ff ff       	call   102 <qemu_cfg_init+0x102>
 106:	0f b7 44 24 18       	movzwl 0x18(%esp),%eax
 10b:	e8 fc ff ff ff       	call   10c <qemu_cfg_init+0x10c>
 110:	0f b7 44 24 18       	movzwl 0x18(%esp),%eax
 115:	01 c3                	add    %eax,%ebx
 117:	46                   	inc    %esi
 118:	83 c4 14             	add    $0x14,%esp
 11b:	eb a6                	jmp    c3 <qemu_cfg_init+0xc3>
 11d:	b9 02 00 00 00       	mov    $0x2,%ecx
 122:	ba 01 80 00 00       	mov    $0x8001,%edx
 127:	8d 44 24 02          	lea    0x2(%esp),%eax
 12b:	e8 fc ff ff ff       	call   12c <qemu_cfg_init+0x12c>
 130:	be 02 00 00 00       	mov    $0x2,%esi
 135:	31 db                	xor    %ebx,%ebx
 137:	0f b7 44 24 02       	movzwl 0x2(%esp),%eax
 13c:	39 c3                	cmp    %eax,%ebx
 13e:	0f 8d 8d 00 00 00    	jge    1d1 <qemu_cfg_init+0x1d1>
 144:	ba 06 00 00 00       	mov    $0x6,%edx
 149:	8d 44 24 04          	lea    0x4(%esp),%eax
 14d:	e8 fc ff ff ff       	call   14e <qemu_cfg_init+0x14e>
 152:	80 7c 24 06 00       	cmpb   $0x0,0x6(%esp)
 157:	0f b6 44 24 07       	movzbl 0x7(%esp),%eax
 15c:	75 28                	jne    186 <qemu_cfg_init+0x186>
 15e:	0f b7 54 24 08       	movzwl 0x8(%esp),%edx
 163:	52                   	push   %edx
 164:	50                   	push   %eax
 165:	68 a6 02 00 00       	push   $0x2a6
 16a:	68 80 00 00 00       	push   $0x80
 16f:	8d 7c 24 24          	lea    0x24(%esp),%edi
 173:	57                   	push   %edi
 174:	e8 fc ff ff ff       	call   175 <qemu_cfg_init+0x175>
 179:	8d 4e 06             	lea    0x6(%esi),%ecx
 17c:	0f b7 44 24 18       	movzwl 0x18(%esp),%eax
 181:	83 e8 06             	sub    $0x6,%eax
 184:	eb 21                	jmp    1a7 <qemu_cfg_init+0x1a7>
 186:	53                   	push   %ebx
 187:	50                   	push   %eax
 188:	68 b8 02 00 00       	push   $0x2b8
 18d:	68 80 00 00 00       	push   $0x80
 192:	8d 7c 24 24          	lea    0x24(%esp),%edi
 196:	57                   	push   %edi
 197:	e8 fc ff ff ff       	call   198 <qemu_cfg_init+0x198>
 19c:	8d 4e 03             	lea    0x3(%esi),%ecx
 19f:	0f b7 44 24 18       	movzwl 0x18(%esp),%eax
 1a4:	83 e8 03             	sub    $0x3,%eax
 1a7:	50                   	push   %eax
 1a8:	ba 01 80 00 00       	mov    $0x8001,%edx
 1ad:	89 f8                	mov    %edi,%eax
 1af:	e8 fc ff ff ff       	call   1b0 <qemu_cfg_init+0x1b0>
 1b4:	83 c4 18             	add    $0x18,%esp
 1b7:	0f b7 44 24 04       	movzwl 0x4(%esp),%eax
 1bc:	83 e8 06             	sub    $0x6,%eax
 1bf:	e8 fc ff ff ff       	call   1c0 <qemu_cfg_init+0x1c0>
 1c4:	0f b7 44 24 04       	movzwl 0x4(%esp),%eax
 1c9:	01 c6                	add    %eax,%esi
 1cb:	43                   	inc    %ebx
 1cc:	e9 66 ff ff ff       	jmp    137 <qemu_cfg_init+0x137>
 1d1:	b9 04 00 00 00       	mov    $0x4,%ecx
 1d6:	ba 19 00 00 00       	mov    $0x19,%edx
 1db:	8d 44 24 04          	lea    0x4(%esp),%eax
 1df:	e8 fc ff ff ff       	call   1e0 <qemu_cfg_init+0x1e0>
 1e4:	8b 44 24 04          	mov    0x4(%esp),%eax
 1e8:	e8 fc ff ff ff       	call   1e9 <qemu_cfg_init+0x1e9>
 1ed:	89 44 24 04          	mov    %eax,0x4(%esp)
 1f1:	31 db                	xor    %ebx,%ebx
 1f3:	39 5c 24 04          	cmp    %ebx,0x4(%esp)
 1f7:	76 30                	jbe    229 <qemu_cfg_init+0x229>
 1f9:	ba 40 00 00 00       	mov    $0x40,%edx
 1fe:	8d 44 24 14          	lea    0x14(%esp),%eax
 202:	e8 fc ff ff ff       	call   203 <qemu_cfg_init+0x203>
 207:	8b 44 24 14          	mov    0x14(%esp),%eax
 20b:	e8 fc ff ff ff       	call   20c <qemu_cfg_init+0x20c>
 210:	8b 54 24 18          	mov    0x18(%esp),%edx
 214:	86 f2                	xchg   %dh,%dl
 216:	0f b7 d2             	movzwl %dx,%edx
 219:	50                   	push   %eax
 21a:	31 c9                	xor    %ecx,%ecx
 21c:	8d 44 24 20          	lea    0x20(%esp),%eax
 220:	e8 fc ff ff ff       	call   221 <qemu_cfg_init+0x221>
 225:	43                   	inc    %ebx
 226:	59                   	pop    %ecx
 227:	eb ca                	jmp    1f3 <qemu_cfg_init+0x1f3>
 229:	b8 d7 00 00 00       	mov    $0xd7,%eax
 22e:	e8 fc ff ff ff       	call   22f <qemu_cfg_init+0x22f>
 233:	85 c0                	test   %eax,%eax
 235:	0f 85 d5 00 00 00    	jne    310 <qemu_cfg_init+0x310>
 23b:	b9 04 00 00 00       	mov    $0x4,%ecx
 240:	ba 03 80 00 00       	mov    $0x8003,%edx
 245:	8d 44 24 0c          	lea    0xc(%esp),%eax
 249:	e8 fc ff ff ff       	call   24a <qemu_cfg_init+0x24a>
 24e:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%esp)
 253:	74 35                	je     28a <qemu_cfg_init+0x28a>
 255:	31 db                	xor    %ebx,%ebx
 257:	ba 14 00 00 00       	mov    $0x14,%edx
 25c:	8d 44 24 14          	lea    0x14(%esp),%eax
 260:	e8 fc ff ff ff       	call   261 <qemu_cfg_init+0x261>
 265:	ff 74 24 24          	push   0x24(%esp)
 269:	ff 74 24 24          	push   0x24(%esp)
 26d:	ff 74 24 24          	push   0x24(%esp)
 271:	8b 44 24 20          	mov    0x20(%esp),%eax
 275:	8b 54 24 24          	mov    0x24(%esp),%edx
 279:	e8 fc ff ff ff       	call   27a <qemu_cfg_init+0x27a>
 27e:	43                   	inc    %ebx
 27f:	83 c4 0c             	add    $0xc,%esp
 282:	3b 5c 24 0c          	cmp    0xc(%esp),%ebx
 286:	72 cf                	jb     257 <qemu_cfg_init+0x257>
 288:	eb 21                	jmp    2ab <qemu_cfg_init+0x2ab>
 28a:	f6 05 00 00 00 00 04 	testb  $0x4,0x0
 291:	74 18                	je     2ab <qemu_cfg_init+0x2ab>
 293:	6a 02                	push   $0x2
 295:	6a 00                	push   $0x0
 297:	68 00 40 00 00       	push   $0x4000
 29c:	b8 00 c0 fb ff       	mov    $0xfffbc000,%eax
 2a1:	31 d2                	xor    %edx,%edx
 2a3:	e8 fc ff ff ff       	call   2a4 <qemu_cfg_init+0x2a4>
 2a8:	83 c4 0c             	add    $0xc,%esp
 2ab:	b8 5b 00 00 00       	mov    $0x5b,%eax
 2b0:	e8 fc ff ff ff       	call   2b1 <qemu_cfg_init+0x2b1>
 2b5:	0f b6 d8             	movzbl %al,%ebx
 2b8:	b8 5c 00 00 00       	mov    $0x5c,%eax
 2bd:	e8 fc ff ff ff       	call   2be <qemu_cfg_init+0x2be>
 2c2:	89 c6                	mov    %eax,%esi
 2c4:	b8 5d 00 00 00       	mov    $0x5d,%eax
 2c9:	e8 fc ff ff ff       	call   2ca <qemu_cfg_init+0x2ca>
 2ce:	c1 e3 10             	shl    $0x10,%ebx
 2d1:	89 f2                	mov    %esi,%edx
 2d3:	c1 e2 18             	shl    $0x18,%edx
 2d6:	09 d3                	or     %edx,%ebx
 2d8:	0f b6 f8             	movzbl %al,%edi
 2db:	89 1d 00 00 00 00    	mov    %ebx,0x0
 2e1:	89 3d 04 00 00 00    	mov    %edi,0x4
 2e7:	6a 01                	push   $0x1
 2e9:	57                   	push   %edi
 2ea:	53                   	push   %ebx
 2eb:	31 c0                	xor    %eax,%eax
 2ed:	ba 01 00 00 00       	mov    $0x1,%edx
 2f2:	e8 fc ff ff ff       	call   2f3 <qemu_cfg_init+0x2f3>
 2f7:	ff 35 04 00 00 00    	push   0x4
 2fd:	ff 35 00 00 00 00    	push   0x0
 303:	68 ca 02 00 00       	push   $0x2ca
 308:	e8 fc ff ff ff       	call   309 <qemu_cfg_init+0x309>
 30d:	83 c4 18             	add    $0x18,%esp
 310:	b8 36 02 00 00       	mov    $0x236,%eax
 315:	e8 fc ff ff ff       	call   316 <qemu_cfg_init+0x316>
 31a:	85 c0                	test   %eax,%eax
 31c:	74 1a                	je     338 <qemu_cfg_init+0x338>
 31e:	66 c7 05 00 00 00 00 	movw   $0x600,0x0
 325:	00 06 
 327:	68 00 06 00 00       	push   $0x600
 32c:	68 eb 02 00 00       	push   $0x2eb
 331:	e8 fc ff ff ff       	call   332 <qemu_cfg_init+0x332>
 336:	58                   	pop    %eax
 337:	5a                   	pop    %edx
 338:	66 c7 44 24 14 00 00 	movw   $0x0,0x14(%esp)
 33f:	b9 02 00 00 00       	mov    $0x2,%ecx
 344:	ba 04 00 00 00       	mov    $0x4,%edx
 349:	8d 44 24 14          	lea    0x14(%esp),%eax
 34d:	e8 fc ff ff ff       	call   34e <qemu_cfg_init+0x34e>
 352:	66 83 7c 24 14 00    	cmpw   $0x0,0x14(%esp)
 358:	74 2b                	je     385 <qemu_cfg_init+0x385>
 35a:	b8 03 03 00 00       	mov    $0x303,%eax
 35f:	e8 fc ff ff ff       	call   360 <qemu_cfg_init+0x360>
 364:	85 c0                	test   %eax,%eax
 366:	75 1d                	jne    385 <qemu_cfg_init+0x385>
 368:	b8 13 03 00 00       	mov    $0x313,%eax
 36d:	e8 fc ff ff ff       	call   36e <qemu_cfg_init+0x36e>
 372:	85 c0                	test   %eax,%eax
 374:	75 0f                	jne    385 <qemu_cfg_init+0x385>
 376:	ba f8 03 00 00       	mov    $0x3f8,%edx
 37b:	b8 03 03 00 00       	mov    $0x303,%eax
 380:	e8 fc ff ff ff       	call   381 <qemu_cfg_init+0x381>
 385:	81 c4 94 00 00 00    	add    $0x94,%esp
 38b:	5b                   	pop    %ebx
 38c:	5e                   	pop    %esi
 38d:	5f                   	pop    %edi
 38e:	c3                   	ret    
