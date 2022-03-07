
./floppy.o:     file format elf32-i386


Disassembly of section .text.lba2chs:

00000000 <lba2chs>:
   0:	53                   	push   %ebx
   1:	8b 58 04             	mov    0x4(%eax),%ebx
   4:	0f b7 4b 06          	movzwl 0x6(%ebx),%ecx
   8:	8b 40 0c             	mov    0xc(%eax),%eax
   b:	31 d2                	xor    %edx,%edx
   d:	f7 f1                	div    %ecx
   f:	89 d1                	mov    %edx,%ecx
  11:	0f b7 5b 02          	movzwl 0x2(%ebx),%ebx
  15:	31 d2                	xor    %edx,%edx
  17:	f7 f3                	div    %ebx
  19:	c1 e0 10             	shl    $0x10,%eax
  1c:	09 d0                	or     %edx,%eax
  1e:	41                   	inc    %ecx
  1f:	0f b7 d1             	movzwl %cx,%edx
  22:	5b                   	pop    %ebx
  23:	c3                   	ret    

Disassembly of section .text.floppy_disable_controller:

00000000 <floppy_disable_controller>:
   0:	68 00 00 00 00       	push   $0x0
   5:	e8 fc ff ff ff       	call   6 <floppy_disable_controller+0x6>
   a:	a0 00 00 00 00       	mov    0x0,%al
   f:	83 e0 f3             	and    $0xfffffff3,%eax
  12:	ba f2 03 00 00       	mov    $0x3f2,%edx
  17:	ee                   	out    %al,(%dx)
  18:	a2 00 00 00 00       	mov    %al,0x0
  1d:	58                   	pop    %eax
  1e:	c3                   	ret    

Disassembly of section .text.floppy_wait_irq:

00000000 <floppy_wait_irq>:
   0:	53                   	push   %ebx
   1:	80 25 3e 04 00 00 7f 	andb   $0x7f,0x43e
   8:	b8 88 13 00 00       	mov    $0x1388,%eax
   d:	e8 fc ff ff ff       	call   e <floppy_wait_irq+0xe>
  12:	89 c3                	mov    %eax,%ebx
  14:	89 d8                	mov    %ebx,%eax
  16:	e8 fc ff ff ff       	call   17 <floppy_wait_irq+0x17>
  1b:	85 c0                	test   %eax,%eax
  1d:	74 1b                	je     3a <floppy_wait_irq+0x3a>
  1f:	ba 00 00 00 00       	mov    $0x0,%edx
  24:	b8 e7 00 00 00       	mov    $0xe7,%eax
  29:	e8 fc ff ff ff       	call   2a <floppy_wait_irq+0x2a>
  2e:	e8 fc ff ff ff       	call   2f <floppy_wait_irq+0x2f>
  33:	b8 80 00 00 00       	mov    $0x80,%eax
  38:	eb 1a                	jmp    54 <floppy_wait_irq+0x54>
  3a:	8a 15 3e 04 00 00    	mov    0x43e,%dl
  40:	84 d2                	test   %dl,%dl
  42:	78 07                	js     4b <floppy_wait_irq+0x4b>
  44:	e8 fc ff ff ff       	call   45 <floppy_wait_irq+0x45>
  49:	eb c9                	jmp    14 <floppy_wait_irq+0x14>
  4b:	83 e2 7f             	and    $0x7f,%edx
  4e:	88 15 3e 04 00 00    	mov    %dl,0x43e
  54:	5b                   	pop    %ebx
  55:	c3                   	ret    

Disassembly of section .text.floppy_pio:

00000000 <floppy_pio>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	51                   	push   %ecx
   5:	89 c3                	mov    %eax,%ebx
   7:	89 d6                	mov    %edx,%esi
   9:	50                   	push   %eax
   a:	68 1b 00 00 00       	push   $0x1b
   f:	e8 fc ff ff ff       	call   10 <floppy_pio+0x10>
  14:	b8 e8 03 00 00       	mov    $0x3e8,%eax
  19:	e8 fc ff ff ff       	call   1a <floppy_pio+0x1a>
  1e:	89 c5                	mov    %eax,%ebp
  20:	89 df                	mov    %ebx,%edi
  22:	c1 ff 08             	sar    $0x8,%edi
  25:	83 e7 0f             	and    $0xf,%edi
  28:	89 7c 24 08          	mov    %edi,0x8(%esp)
  2c:	5f                   	pop    %edi
  2d:	58                   	pop    %eax
  2e:	31 ff                	xor    %edi,%edi
  30:	ba f4 03 00 00       	mov    $0x3f4,%edx
  35:	ec                   	in     (%dx),%al
  36:	84 c0                	test   %al,%al
  38:	78 25                	js     5f <floppy_pio+0x5f>
  3a:	89 e8                	mov    %ebp,%eax
  3c:	e8 fc ff ff ff       	call   3d <floppy_pio+0x3d>
  41:	85 c0                	test   %eax,%eax
  43:	74 0f                	je     54 <floppy_pio+0x54>
  45:	ba 00 00 00 00       	mov    $0x0,%edx
  4a:	b8 0f 01 00 00       	mov    $0x10f,%eax
  4f:	e9 88 00 00 00       	jmp    dc <floppy_pio+0xdc>
  54:	e8 fc ff ff ff       	call   55 <floppy_pio+0x55>
  59:	89 f8                	mov    %edi,%eax
  5b:	89 c7                	mov    %eax,%edi
  5d:	eb d1                	jmp    30 <floppy_pio+0x30>
  5f:	a8 40                	test   $0x40,%al
  61:	74 0f                	je     72 <floppy_pio+0x72>
  63:	e8 fc ff ff ff       	call   64 <floppy_pio+0x64>
  68:	b8 20 00 00 00       	mov    $0x20,%eax
  6d:	e9 a6 00 00 00       	jmp    118 <floppy_pio+0x118>
  72:	85 ff                	test   %edi,%edi
  74:	75 09                	jne    7f <floppy_pio+0x7f>
  76:	ba f5 03 00 00       	mov    $0x3f5,%edx
  7b:	88 d8                	mov    %bl,%al
  7d:	eb 09                	jmp    88 <floppy_pio+0x88>
  7f:	8a 44 3e ff          	mov    -0x1(%esi,%edi,1),%al
  83:	ba f5 03 00 00       	mov    $0x3f5,%edx
  88:	ee                   	out    %al,(%dx)
  89:	8d 47 01             	lea    0x1(%edi),%eax
  8c:	3b 3c 24             	cmp    (%esp),%edi
  8f:	7c ca                	jl     5b <floppy_pio+0x5b>
  91:	0f ba e3 10          	bt     $0x10,%ebx
  95:	72 16                	jb     ad <floppy_pio+0xad>
  97:	b8 e8 03 00 00       	mov    $0x3e8,%eax
  9c:	e8 fc ff ff ff       	call   9d <floppy_pio+0x9d>
  a1:	89 c7                	mov    %eax,%edi
  a3:	c1 fb 0c             	sar    $0xc,%ebx
  a6:	83 e3 0f             	and    $0xf,%ebx
  a9:	31 ed                	xor    %ebp,%ebp
  ab:	eb 10                	jmp    bd <floppy_pio+0xbd>
  ad:	e8 fc ff ff ff       	call   ae <floppy_pio+0xae>
  b2:	85 c0                	test   %eax,%eax
  b4:	74 e1                	je     97 <floppy_pio+0x97>
  b6:	eb 60                	jmp    118 <floppy_pio+0x118>
  b8:	e8 fc ff ff ff       	call   b9 <floppy_pio+0xb9>
  bd:	ba f4 03 00 00       	mov    $0x3f4,%edx
  c2:	ec                   	in     (%dx),%al
  c3:	84 c0                	test   %al,%al
  c5:	78 26                	js     ed <floppy_pio+0xed>
  c7:	89 f8                	mov    %edi,%eax
  c9:	e8 fc ff ff ff       	call   ca <floppy_pio+0xca>
  ce:	85 c0                	test   %eax,%eax
  d0:	74 e6                	je     b8 <floppy_pio+0xb8>
  d2:	ba 00 00 00 00       	mov    $0x0,%edx
  d7:	b8 31 01 00 00       	mov    $0x131,%eax
  dc:	e8 fc ff ff ff       	call   dd <floppy_pio+0xdd>
  e1:	e8 fc ff ff ff       	call   e2 <floppy_pio+0xe2>
  e6:	b8 80 00 00 00       	mov    $0x80,%eax
  eb:	eb 2b                	jmp    118 <floppy_pio+0x118>
  ed:	83 e0 40             	and    $0x40,%eax
  f0:	39 dd                	cmp    %ebx,%ebp
  f2:	7c 0c                	jl     100 <floppy_pio+0x100>
  f4:	84 c0                	test   %al,%al
  f6:	0f 85 67 ff ff ff    	jne    63 <floppy_pio+0x63>
  fc:	31 c0                	xor    %eax,%eax
  fe:	eb 18                	jmp    118 <floppy_pio+0x118>
 100:	84 c0                	test   %al,%al
 102:	0f 84 5b ff ff ff    	je     63 <floppy_pio+0x63>
 108:	8d 4d 01             	lea    0x1(%ebp),%ecx
 10b:	ba f5 03 00 00       	mov    $0x3f5,%edx
 110:	ec                   	in     (%dx),%al
 111:	88 04 2e             	mov    %al,(%esi,%ebp,1)
 114:	89 cd                	mov    %ecx,%ebp
 116:	eb a5                	jmp    bd <floppy_pio+0xbd>
 118:	5a                   	pop    %edx
 119:	5b                   	pop    %ebx
 11a:	5e                   	pop    %esi
 11b:	5f                   	pop    %edi
 11c:	5d                   	pop    %ebp
 11d:	c3                   	ret    

Disassembly of section .text.floppy_enable_controller:

00000000 <floppy_enable_controller>:
   0:	53                   	push   %ebx
   1:	83 ec 08             	sub    $0x8,%esp
   4:	68 32 00 00 00       	push   $0x32
   9:	e8 fc ff ff ff       	call   a <floppy_enable_controller+0xa>
   e:	a0 00 00 00 00       	mov    0x0,%al
  13:	83 e0 fb             	and    $0xfffffffb,%eax
  16:	83 c8 08             	or     $0x8,%eax
  19:	ba f2 03 00 00       	mov    $0x3f2,%edx
  1e:	ee                   	out    %al,(%dx)
  1f:	89 54 24 04          	mov    %edx,0x4(%esp)
  23:	a2 00 00 00 00       	mov    %al,0x0
  28:	b8 04 00 00 00       	mov    $0x4,%eax
  2d:	e8 fc ff ff ff       	call   2e <floppy_enable_controller+0x2e>
  32:	a0 00 00 00 00       	mov    0x0,%al
  37:	83 c8 0c             	or     $0xc,%eax
  3a:	8b 54 24 04          	mov    0x4(%esp),%edx
  3e:	ee                   	out    %al,(%dx)
  3f:	a2 00 00 00 00       	mov    %al,0x0
  44:	e8 fc ff ff ff       	call   45 <floppy_enable_controller+0x45>
  49:	5a                   	pop    %edx
  4a:	85 c0                	test   %eax,%eax
  4c:	75 1a                	jne    68 <floppy_enable_controller+0x68>
  4e:	bb 04 00 00 00       	mov    $0x4,%ebx
  53:	8d 54 24 06          	lea    0x6(%esp),%edx
  57:	b8 08 20 00 00       	mov    $0x2008,%eax
  5c:	e8 fc ff ff ff       	call   5d <floppy_enable_controller+0x5d>
  61:	85 c0                	test   %eax,%eax
  63:	75 03                	jne    68 <floppy_enable_controller+0x68>
  65:	4b                   	dec    %ebx
  66:	75 eb                	jne    53 <floppy_enable_controller+0x53>
  68:	83 c4 08             	add    $0x8,%esp
  6b:	5b                   	pop    %ebx
  6c:	c3                   	ret    

Disassembly of section .text.floppy_drive_pio:

00000000 <floppy_drive_pio>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	89 c7                	mov    %eax,%edi
   5:	89 d6                	mov    %edx,%esi
   7:	89 cb                	mov    %ecx,%ebx
   9:	f6 05 00 00 00 00 04 	testb  $0x4,0x0
  10:	74 36                	je     48 <floppy_drive_pio+0x48>
  12:	c6 05 40 04 00 00 ff 	movb   $0xff,0x440
  19:	b8 10 00 00 00       	mov    $0x10,%eax
  1e:	89 f9                	mov    %edi,%ecx
  20:	d3 e0                	shl    %cl,%eax
  22:	09 f8                	or     %edi,%eax
  24:	83 c8 0c             	or     $0xc,%eax
  27:	ba f2 03 00 00       	mov    $0x3f2,%edx
  2c:	ee                   	out    %al,(%dx)
  2d:	a2 00 00 00 00       	mov    %al,0x0
  32:	89 da                	mov    %ebx,%edx
  34:	89 f0                	mov    %esi,%eax
  36:	e8 fc ff ff ff       	call   37 <floppy_drive_pio+0x37>
  3b:	c6 05 40 04 00 00 25 	movb   $0x25,0x440
  42:	85 c0                	test   %eax,%eax
  44:	74 0d                	je     53 <floppy_drive_pio+0x53>
  46:	eb 22                	jmp    6a <floppy_drive_pio+0x6a>
  48:	e8 fc ff ff ff       	call   49 <floppy_drive_pio+0x49>
  4d:	85 c0                	test   %eax,%eax
  4f:	74 c1                	je     12 <floppy_drive_pio+0x12>
  51:	eb 17                	jmp    6a <floppy_drive_pio+0x6a>
  53:	81 e6 00 f0 00 00    	and    $0xf000,%esi
  59:	75 0f                	jne    6a <floppy_drive_pio+0x6a>
  5b:	89 da                	mov    %ebx,%edx
  5d:	b8 08 20 00 00       	mov    $0x2008,%eax
  62:	5b                   	pop    %ebx
  63:	5e                   	pop    %esi
  64:	5f                   	pop    %edi
  65:	e9 fc ff ff ff       	jmp    66 <floppy_drive_pio+0x66>
  6a:	5b                   	pop    %ebx
  6b:	5e                   	pop    %esi
  6c:	5f                   	pop    %edi
  6d:	c3                   	ret    

Disassembly of section .text.floppy_dma_cmd:

00000000 <floppy_dma_cmd>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	53                   	push   %ebx
   4:	89 c3                	mov    %eax,%ebx
   6:	89 14 24             	mov    %edx,(%esp)
   9:	89 cf                	mov    %ecx,%edi
   b:	8b 74 24 14          	mov    0x14(%esp),%esi
   f:	0f b6 40 08          	movzbl 0x8(%eax),%eax
  13:	50                   	push   %eax
  14:	0f b7 43 0a          	movzwl 0xa(%ebx),%eax
  18:	50                   	push   %eax
  19:	ff 33                	push   (%ebx)
  1b:	ff 73 0c             	push   0xc(%ebx)
  1e:	ff 73 04             	push   0x4(%ebx)
  21:	68 4c 00 00 00       	push   $0x4c
  26:	e8 fc ff ff ff       	call   27 <floppy_dma_cmd+0x27>
  2b:	31 c9                	xor    %ecx,%ecx
  2d:	81 ff e6 78 01 00    	cmp    $0x178e6,%edi
  33:	0f 95 c1             	setne  %cl
  36:	8b 54 24 18          	mov    0x18(%esp),%edx
  3a:	8b 03                	mov    (%ebx),%eax
  3c:	e8 fc ff ff ff       	call   3d <floppy_dma_cmd+0x3d>
  41:	83 c4 18             	add    $0x18,%esp
  44:	85 c0                	test   %eax,%eax
  46:	0f 85 8f 00 00 00    	jne    db <floppy_dma_cmd+0xdb>
  4c:	0f b6 43 08          	movzbl 0x8(%ebx),%eax
  50:	50                   	push   %eax
  51:	0f b7 43 0a          	movzwl 0xa(%ebx),%eax
  55:	50                   	push   %eax
  56:	ff 33                	push   (%ebx)
  58:	ff 73 0c             	push   0xc(%ebx)
  5b:	ff 73 04             	push   0x4(%ebx)
  5e:	68 85 00 00 00       	push   $0x85
  63:	e8 fc ff ff ff       	call   64 <floppy_dma_cmd+0x64>
  68:	8b 43 04             	mov    0x4(%ebx),%eax
  6b:	0f b6 40 14          	movzbl 0x14(%eax),%eax
  6f:	89 f1                	mov    %esi,%ecx
  71:	89 fa                	mov    %edi,%edx
  73:	e8 fc ff ff ff       	call   74 <floppy_dma_cmd+0x74>
  78:	83 c4 18             	add    $0x18,%esp
  7b:	85 c0                	test   %eax,%eax
  7d:	75 61                	jne    e0 <floppy_dma_cmd+0xe0>
  7f:	ba 42 04 00 00       	mov    $0x442,%edx
  84:	8a 8c 16 be fb ff ff 	mov    -0x442(%esi,%edx,1),%cl
  8b:	88 0a                	mov    %cl,(%edx)
  8d:	42                   	inc    %edx
  8e:	81 fa 49 04 00 00    	cmp    $0x449,%edx
  94:	75 ee                	jne    84 <floppy_dma_cmd+0x84>
  96:	0f b6 16             	movzbl (%esi),%edx
  99:	f6 c2 c0             	test   $0xc0,%dl
  9c:	74 42                	je     e0 <floppy_dma_cmd+0xe0>
  9e:	0f b6 4e 01          	movzbl 0x1(%esi),%ecx
  a2:	b8 03 00 00 00       	mov    $0x3,%eax
  a7:	f6 c1 02             	test   $0x2,%cl
  aa:	75 34                	jne    e0 <floppy_dma_cmd+0xe0>
  ac:	0f b6 46 06          	movzbl 0x6(%esi),%eax
  b0:	50                   	push   %eax
  b1:	0f b6 46 05          	movzbl 0x5(%esi),%eax
  b5:	50                   	push   %eax
  b6:	0f b6 46 04          	movzbl 0x4(%esi),%eax
  ba:	50                   	push   %eax
  bb:	0f b6 46 03          	movzbl 0x3(%esi),%eax
  bf:	50                   	push   %eax
  c0:	0f b6 46 02          	movzbl 0x2(%esi),%eax
  c4:	50                   	push   %eax
  c5:	51                   	push   %ecx
  c6:	52                   	push   %edx
  c7:	68 cd 00 00 00       	push   $0xcd
  cc:	e8 fc ff ff ff       	call   cd <floppy_dma_cmd+0xcd>
  d1:	83 c4 20             	add    $0x20,%esp
  d4:	b8 20 00 00 00       	mov    $0x20,%eax
  d9:	eb 05                	jmp    e0 <floppy_dma_cmd+0xe0>
  db:	b8 09 00 00 00       	mov    $0x9,%eax
  e0:	5a                   	pop    %edx
  e1:	5b                   	pop    %ebx
  e2:	5e                   	pop    %esi
  e3:	5f                   	pop    %edi
  e4:	c3                   	ret    

Disassembly of section .text.floppy_drive_readid.constprop.0:

00000000 <floppy_drive_readid.constprop.0>:
   0:	83 ec 08             	sub    $0x8,%esp
   3:	89 c1                	mov    %eax,%ecx
   5:	89 d0                	mov    %edx,%eax
   7:	ba f7 03 00 00       	mov    $0x3f7,%edx
   c:	ee                   	out    %al,(%dx)
   d:	88 4c 24 01          	mov    %cl,0x1(%esp)
  11:	0f b6 c1             	movzbl %cl,%eax
  14:	8d 4c 24 01          	lea    0x1(%esp),%ecx
  18:	ba 4a 71 01 00       	mov    $0x1714a,%edx
  1d:	e8 fc ff ff ff       	call   1e <floppy_drive_readid.constprop.0+0x1e>
  22:	85 c0                	test   %eax,%eax
  24:	75 0c                	jne    32 <floppy_drive_readid.constprop.0+0x32>
  26:	31 c0                	xor    %eax,%eax
  28:	f6 44 24 01 c0       	testb  $0xc0,0x1(%esp)
  2d:	0f 95 c0             	setne  %al
  30:	f7 d8                	neg    %eax
  32:	83 c4 08             	add    $0x8,%esp
  35:	c3                   	ret    

Disassembly of section .text.floppy_prep:

00000000 <floppy_prep>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 14             	sub    $0x14,%esp
   7:	89 c6                	mov    %eax,%esi
   9:	89 54 24 04          	mov    %edx,0x4(%esp)
   d:	8b 40 14             	mov    0x14(%eax),%eax
  10:	89 04 24             	mov    %eax,(%esp)
  13:	0f b6 2c 24          	movzbl (%esp),%ebp
  17:	0f b6 05 3e 04 00 00 	movzbl 0x43e,%eax
  1e:	8a 0c 24             	mov    (%esp),%cl
  21:	d3 f8                	sar    %cl,%eax
  23:	a8 01                	test   $0x1,%al
  25:	74 20                	je     47 <floppy_prep+0x47>
  27:	f6 85 90 04 00 00 10 	testb  $0x10,0x490(%ebp)
  2e:	74 17                	je     47 <floppy_prep+0x47>
  30:	8a 44 24 04          	mov    0x4(%esp),%al
  34:	38 85 94 04 00 00    	cmp    %al,0x494(%ebp)
  3a:	0f 85 76 01 00 00    	jne    1b6 <floppy_prep+0x1b6>
  40:	31 c0                	xor    %eax,%eax
  42:	e9 9c 01 00 00       	jmp    1e3 <floppy_prep+0x1e3>
  47:	55                   	push   %ebp
  48:	68 ff 00 00 00       	push   $0xff
  4d:	e8 fc ff ff ff       	call   4e <floppy_prep+0x4e>
  52:	8a 44 24 08          	mov    0x8(%esp),%al
  56:	88 44 24 1a          	mov    %al,0x1a(%esp)
  5a:	8d 4c 24 1a          	lea    0x1a(%esp),%ecx
  5e:	ba 07 01 01 00       	mov    $0x10107,%edx
  63:	89 e8                	mov    %ebp,%eax
  65:	e8 fc ff ff ff       	call   66 <floppy_prep+0x66>
  6a:	5a                   	pop    %edx
  6b:	59                   	pop    %ecx
  6c:	85 c0                	test   %eax,%eax
  6e:	0f 85 6f 01 00 00    	jne    1e3 <floppy_prep+0x1e3>
  74:	b8 01 00 00 00       	mov    $0x1,%eax
  79:	89 e9                	mov    %ebp,%ecx
  7b:	d3 e0                	shl    %cl,%eax
  7d:	08 05 3e 04 00 00    	or     %al,0x43e
  83:	c6 85 94 04 00 00 00 	movb   $0x0,0x494(%ebp)
  8a:	0f b6 46 01          	movzbl 0x1(%esi),%eax
  8e:	88 44 24 0e          	mov    %al,0xe(%esp)
  92:	89 44 24 08          	mov    %eax,0x8(%esp)
  96:	6b d8 0a             	imul   $0xa,%eax,%ebx
  99:	0f b6 93 09 00 00 00 	movzbl 0x9(%ebx),%edx
  a0:	88 54 24 0d          	mov    %dl,0xd(%esp)
  a4:	0f b6 7e 14          	movzbl 0x14(%esi),%edi
  a8:	89 f8                	mov    %edi,%eax
  aa:	e8 fc ff ff ff       	call   ab <floppy_prep+0xab>
  af:	85 c0                	test   %eax,%eax
  b1:	75 06                	jne    b9 <floppy_prep+0xb9>
  b3:	8a 4c 24 0e          	mov    0xe(%esp),%cl
  b7:	eb 6d                	jmp    126 <floppy_prep+0x126>
  b9:	be 00 00 00 00       	mov    $0x0,%esi
  be:	b1 01                	mov    $0x1,%cl
  c0:	38 4c 24 0e          	cmp    %cl,0xe(%esp)
  c4:	75 13                	jne    d9 <floppy_prep+0xd9>
  c6:	41                   	inc    %ecx
  c7:	83 c6 0a             	add    $0xa,%esi
  ca:	80 f9 09             	cmp    $0x9,%cl
  cd:	75 f1                	jne    c0 <floppy_prep+0xc0>
  cf:	b8 c0 00 00 00       	mov    $0xc0,%eax
  d4:	e9 0a 01 00 00       	jmp    1e3 <floppy_prep+0x1e3>
  d9:	8a 93 08 00 00 00    	mov    0x8(%ebx),%dl
  df:	38 56 12             	cmp    %dl,0x12(%esi)
  e2:	75 e2                	jne    c6 <floppy_prep+0xc6>
  e4:	66 8b 93 00 00 00 00 	mov    0x0(%ebx),%dx
  eb:	66 39 56 0a          	cmp    %dx,0xa(%esi)
  ef:	77 d5                	ja     c6 <floppy_prep+0xc6>
  f1:	66 8b 93 02 00 00 00 	mov    0x2(%ebx),%dx
  f8:	66 39 56 0c          	cmp    %dx,0xc(%esi)
  fc:	77 c8                	ja     c6 <floppy_prep+0xc6>
  fe:	66 8b 83 04 00 00 00 	mov    0x4(%ebx),%ax
 105:	66 39 46 0e          	cmp    %ax,0xe(%esi)
 109:	77 bb                	ja     c6 <floppy_prep+0xc6>
 10b:	88 4c 24 0f          	mov    %cl,0xf(%esp)
 10f:	0f b6 56 13          	movzbl 0x13(%esi),%edx
 113:	88 54 24 0d          	mov    %dl,0xd(%esp)
 117:	89 f8                	mov    %edi,%eax
 119:	e8 fc ff ff ff       	call   11a <floppy_prep+0x11a>
 11e:	85 c0                	test   %eax,%eax
 120:	8a 4c 24 0f          	mov    0xf(%esp),%cl
 124:	75 a0                	jne    c6 <floppy_prep+0xc6>
 126:	88 4c 24 0e          	mov    %cl,0xe(%esp)
 12a:	0f b6 5c 24 0d       	movzbl 0xd(%esp),%ebx
 12f:	53                   	push   %ebx
 130:	57                   	push   %edi
 131:	68 16 01 00 00       	push   $0x116
 136:	e8 fc ff ff ff       	call   137 <floppy_prep+0x137>
 13b:	89 d8                	mov    %ebx,%eax
 13d:	c1 e0 06             	shl    $0x6,%eax
 140:	8a 97 90 04 00 00    	mov    0x490(%edi),%dl
 146:	c0 ea 06             	shr    $0x6,%dl
 149:	c1 e2 02             	shl    $0x2,%edx
 14c:	09 c2                	or     %eax,%edx
 14e:	88 15 8b 04 00 00    	mov    %dl,0x48b
 154:	83 c4 0c             	add    $0xc,%esp
 157:	b3 04                	mov    $0x4,%bl
 159:	0f b6 4c 24 0e       	movzbl 0xe(%esp),%ecx
 15e:	80 f9 01             	cmp    $0x1,%cl
 161:	74 0a                	je     16d <floppy_prep+0x16d>
 163:	80 f9 02             	cmp    $0x2,%cl
 166:	0f 95 c3             	setne  %bl
 169:	8d 5c 1b 05          	lea    0x5(%ebx,%ebx,1),%ebx
 16d:	09 c3                	or     %eax,%ebx
 16f:	6b c9 0a             	imul   $0xa,%ecx,%ecx
 172:	6b 44 24 08 0a       	imul   $0xa,0x8(%esp),%eax
 177:	88 da                	mov    %bl,%dl
 179:	83 ca 30             	or     $0x30,%edx
 17c:	66 8b 80 02 00 00 00 	mov    0x2(%eax),%ax
 183:	66 39 81 02 00 00 00 	cmp    %ax,0x2(%ecx)
 18a:	72 05                	jb     191 <floppy_prep+0x191>
 18c:	83 cb 10             	or     $0x10,%ebx
 18f:	88 da                	mov    %bl,%dl
 191:	88 97 90 04 00 00    	mov    %dl,0x490(%edi)
 197:	66 c7 44 24 12 af 02 	movw   $0x2af,0x12(%esp)
 19e:	8d 54 24 12          	lea    0x12(%esp),%edx
 1a2:	b8 03 02 00 00       	mov    $0x203,%eax
 1a7:	e8 fc ff ff ff       	call   1a8 <floppy_prep+0x1a8>
 1ac:	85 c0                	test   %eax,%eax
 1ae:	0f 84 7c fe ff ff    	je     30 <floppy_prep+0x30>
 1b4:	eb 2d                	jmp    1e3 <floppy_prep+0x1e3>
 1b6:	8a 04 24             	mov    (%esp),%al
 1b9:	88 44 24 12          	mov    %al,0x12(%esp)
 1bd:	8a 44 24 04          	mov    0x4(%esp),%al
 1c1:	88 44 24 13          	mov    %al,0x13(%esp)
 1c5:	8d 4c 24 12          	lea    0x12(%esp),%ecx
 1c9:	ba 0f 02 01 00       	mov    $0x1020f,%edx
 1ce:	89 e8                	mov    %ebp,%eax
 1d0:	e8 fc ff ff ff       	call   1d1 <floppy_prep+0x1d1>
 1d5:	85 c0                	test   %eax,%eax
 1d7:	75 0a                	jne    1e3 <floppy_prep+0x1e3>
 1d9:	8a 5c 24 04          	mov    0x4(%esp),%bl
 1dd:	88 9d 94 04 00 00    	mov    %bl,0x494(%ebp)
 1e3:	83 c4 14             	add    $0x14,%esp
 1e6:	5b                   	pop    %ebx
 1e7:	5e                   	pop    %esi
 1e8:	5f                   	pop    %edi
 1e9:	5d                   	pop    %ebp
 1ea:	c3                   	ret    

Disassembly of section .text.init_floppy:

00000000 <init_floppy>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	89 c7                	mov    %eax,%edi
   5:	89 d6                	mov    %edx,%esi
   7:	8d 42 ff             	lea    -0x1(%edx),%eax
   a:	83 f8 07             	cmp    $0x7,%eax
   d:	76 11                	jbe    20 <init_floppy+0x20>
   f:	52                   	push   %edx
  10:	68 44 01 00 00       	push   $0x144
  15:	e8 fc ff ff ff       	call   16 <init_floppy+0x16>
  1a:	58                   	pop    %eax
  1b:	5a                   	pop    %edx
  1c:	31 db                	xor    %ebx,%ebx
  1e:	eb 6b                	jmp    8b <init_floppy+0x8b>
  20:	b9 10 00 00 00       	mov    $0x10,%ecx
  25:	ba 24 00 00 00       	mov    $0x24,%edx
  2a:	b8 00 00 00 00       	mov    $0x0,%eax
  2f:	e8 fc ff ff ff       	call   30 <init_floppy+0x30>
  34:	89 c3                	mov    %eax,%ebx
  36:	85 c0                	test   %eax,%eax
  38:	75 11                	jne    4b <init_floppy+0x4b>
  3a:	ba 00 00 00 00       	mov    $0x0,%edx
  3f:	b8 77 00 00 00       	mov    $0x77,%eax
  44:	e8 fc ff ff ff       	call   45 <init_floppy+0x45>
  49:	eb 40                	jmp    8b <init_floppy+0x8b>
  4b:	b9 24 00 00 00       	mov    $0x24,%ecx
  50:	31 d2                	xor    %edx,%edx
  52:	e8 fc ff ff ff       	call   53 <init_floppy+0x53>
  57:	89 7b 14             	mov    %edi,0x14(%ebx)
  5a:	c6 03 10             	movb   $0x10,(%ebx)
  5d:	66 c7 43 1a 00 02    	movw   $0x200,0x1a(%ebx)
  63:	89 f0                	mov    %esi,%eax
  65:	88 43 01             	mov    %al,0x1(%ebx)
  68:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%ebx)
  6f:	c7 43 10 ff ff ff ff 	movl   $0xffffffff,0x10(%ebx)
  76:	6b f6 0a             	imul   $0xa,%esi,%esi
  79:	8b 86 00 00 00 00    	mov    0x0(%esi),%eax
  7f:	8b 96 04 00 00 00    	mov    0x4(%esi),%edx
  85:	89 43 02             	mov    %eax,0x2(%ebx)
  88:	89 53 06             	mov    %edx,0x6(%ebx)
  8b:	89 d8                	mov    %ebx,%eax
  8d:	5b                   	pop    %ebx
  8e:	5e                   	pop    %esi
  8f:	5f                   	pop    %edi
  90:	c3                   	ret    

Disassembly of section .text.addFloppy:

00000000 <addFloppy>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	89 c3                	mov    %eax,%ebx
   5:	e8 fc ff ff ff       	call   6 <addFloppy+0x6>
   a:	85 c0                	test   %eax,%eax
   c:	74 3b                	je     49 <addFloppy+0x49>
   e:	89 c6                	mov    %eax,%esi
  10:	8d 43 41             	lea    0x41(%ebx),%eax
  13:	50                   	push   %eax
  14:	68 58 01 00 00       	push   $0x158
  19:	6a 50                	push   $0x50
  1b:	e8 fc ff ff ff       	call   1c <addFloppy+0x1c>
  20:	89 c7                	mov    %eax,%edi
  22:	b8 01 06 00 00       	mov    $0x601,%eax
  27:	e8 fc ff ff ff       	call   28 <addFloppy+0x28>
  2c:	89 d9                	mov    %ebx,%ecx
  2e:	ba f0 03 00 00       	mov    $0x3f0,%edx
  33:	e8 fc ff ff ff       	call   34 <addFloppy+0x34>
  38:	89 c1                	mov    %eax,%ecx
  3a:	83 c4 0c             	add    $0xc,%esp
  3d:	89 fa                	mov    %edi,%edx
  3f:	89 f0                	mov    %esi,%eax
  41:	5b                   	pop    %ebx
  42:	5e                   	pop    %esi
  43:	5f                   	pop    %edi
  44:	e9 fc ff ff ff       	jmp    45 <addFloppy+0x45>
  49:	5b                   	pop    %ebx
  4a:	5e                   	pop    %esi
  4b:	5f                   	pop    %edi
  4c:	c3                   	ret    

Disassembly of section .text.floppy_setup:

00000000 <floppy_setup>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	b8 00 00 00 00       	mov    $0x0,%eax
   8:	bf 00 00 00 00       	mov    $0x0,%edi
   d:	b9 0b 00 00 00       	mov    $0xb,%ecx
  12:	89 c6                	mov    %eax,%esi
  14:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  16:	66 a3 78 00 00 00    	mov    %ax,0x78
  1c:	66 c7 05 7a 00 00 00 	movw   $0xf000,0x7a
  23:	00 f0 
  25:	68 6a 01 00 00       	push   $0x16a
  2a:	e8 fc ff ff ff       	call   2b <floppy_setup+0x2b>
  2f:	b8 10 00 00 00       	mov    $0x10,%eax
  34:	e8 fc ff ff ff       	call   35 <floppy_setup+0x35>
  39:	88 c3                	mov    %al,%bl
  3b:	5a                   	pop    %edx
  3c:	a8 f0                	test   $0xf0,%al
  3e:	74 0f                	je     4f <floppy_setup+0x4f>
  40:	88 c2                	mov    %al,%dl
  42:	c0 ea 04             	shr    $0x4,%dl
  45:	0f b6 d2             	movzbl %dl,%edx
  48:	31 c0                	xor    %eax,%eax
  4a:	e8 fc ff ff ff       	call   4b <floppy_setup+0x4b>
  4f:	80 e3 0f             	and    $0xf,%bl
  52:	74 0d                	je     61 <floppy_setup+0x61>
  54:	0f b6 d3             	movzbl %bl,%edx
  57:	b8 01 00 00 00       	mov    $0x1,%eax
  5c:	e8 fc ff ff ff       	call   5d <floppy_setup+0x5d>
  61:	ba 00 00 00 00       	mov    $0x0,%edx
  66:	0f b7 d2             	movzwl %dx,%edx
  69:	81 ca 00 00 00 f0    	or     $0xf0000000,%edx
  6f:	b8 06 00 00 00       	mov    $0x6,%eax
  74:	5b                   	pop    %ebx
  75:	5e                   	pop    %esi
  76:	5f                   	pop    %edi
  77:	e9 fc ff ff ff       	jmp    78 <floppy_setup+0x78>

Disassembly of section .text.find_floppy_type:

00000000 <find_floppy_type>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 c3                	mov    %eax,%ebx
   4:	b9 00 00 00 00       	mov    $0x0,%ecx
   9:	ba 01 00 00 00       	mov    $0x1,%edx
   e:	0f b7 41 0c          	movzwl 0xc(%ecx),%eax
  12:	0f b7 71 0a          	movzwl 0xa(%ecx),%esi
  16:	0f af c6             	imul   %esi,%eax
  19:	0f b7 71 0e          	movzwl 0xe(%ecx),%esi
  1d:	0f af c6             	imul   %esi,%eax
  20:	c1 e0 09             	shl    $0x9,%eax
  23:	39 d8                	cmp    %ebx,%eax
  25:	74 0c                	je     33 <find_floppy_type+0x33>
  27:	42                   	inc    %edx
  28:	83 c1 0a             	add    $0xa,%ecx
  2b:	83 fa 09             	cmp    $0x9,%edx
  2e:	75 de                	jne    e <find_floppy_type+0xe>
  30:	83 ca ff             	or     $0xffffffff,%edx
  33:	89 d0                	mov    %edx,%eax
  35:	5b                   	pop    %ebx
  36:	5e                   	pop    %esi
  37:	c3                   	ret    

Disassembly of section .text.floppy_process_op:

00000000 <floppy_process_op>:
   0:	80 78 08 05          	cmpb   $0x5,0x8(%eax)
   4:	0f 87 17 02 00 00    	ja     221 <floppy_process_op+0x221>
   a:	55                   	push   %ebp
   b:	57                   	push   %edi
   c:	56                   	push   %esi
   d:	53                   	push   %ebx
   e:	83 ec 0c             	sub    $0xc,%esp
  11:	89 c3                	mov    %eax,%ebx
  13:	0f b6 40 08          	movzbl 0x8(%eax),%eax
  17:	ff 24 85 00 00 00 00 	jmp    *0x0(,%eax,4)
  1e:	c6 05 3e 04 00 00 00 	movb   $0x0,0x43e
  25:	c6 05 90 04 00 00 00 	movb   $0x0,0x490
  2c:	c6 05 91 04 00 00 00 	movb   $0x0,0x491
  33:	c6 05 94 04 00 00 00 	movb   $0x0,0x494
  3a:	c6 05 95 04 00 00 00 	movb   $0x0,0x495
  41:	c6 05 8b 04 00 00 00 	movb   $0x0,0x48b
  48:	e8 fc ff ff ff       	call   49 <floppy_process_op+0x49>
  4d:	83 c4 0c             	add    $0xc,%esp
  50:	5b                   	pop    %ebx
  51:	5e                   	pop    %esi
  52:	5f                   	pop    %edi
  53:	5d                   	pop    %ebp
  54:	e9 fc ff ff ff       	jmp    55 <floppy_process_op+0x55>
  59:	6a 02                	push   $0x2
  5b:	0f b7 43 0a          	movzwl 0xa(%ebx),%eax
  5f:	50                   	push   %eax
  60:	ff 33                	push   (%ebx)
  62:	ff 73 0c             	push   0xc(%ebx)
  65:	ff 73 04             	push   0x4(%ebx)
  68:	68 7e 01 00 00       	push   $0x17e
  6d:	e8 fc ff ff ff       	call   6e <floppy_process_op+0x6e>
  72:	89 d8                	mov    %ebx,%eax
  74:	e8 fc ff ff ff       	call   75 <floppy_process_op+0x75>
  79:	89 c7                	mov    %eax,%edi
  7b:	89 d6                	mov    %edx,%esi
  7d:	c1 e8 10             	shr    $0x10,%eax
  80:	89 c5                	mov    %eax,%ebp
  82:	0f b6 d0             	movzbl %al,%edx
  85:	8b 43 04             	mov    0x4(%ebx),%eax
  88:	e8 fc ff ff ff       	call   89 <floppy_process_op+0x89>
  8d:	89 44 24 18          	mov    %eax,0x18(%esp)
  91:	0f b6 53 08          	movzbl 0x8(%ebx),%edx
  95:	52                   	push   %edx
  96:	0f b7 53 0a          	movzwl 0xa(%ebx),%edx
  9a:	52                   	push   %edx
  9b:	ff 33                	push   (%ebx)
  9d:	ff 73 0c             	push   0xc(%ebx)
  a0:	ff 73 04             	push   0x4(%ebx)
  a3:	68 be 01 00 00       	push   $0x1be
  a8:	e8 fc ff ff ff       	call   a9 <floppy_process_op+0xa9>
  ad:	83 c4 30             	add    $0x30,%esp
  b0:	8b 04 24             	mov    (%esp),%eax
  b3:	85 c0                	test   %eax,%eax
  b5:	0f 85 5e 01 00 00    	jne    219 <floppy_process_op+0x219>
  bb:	0f b6 43 08          	movzbl 0x8(%ebx),%eax
  bf:	50                   	push   %eax
  c0:	0f b7 43 0a          	movzwl 0xa(%ebx),%eax
  c4:	50                   	push   %eax
  c5:	ff 33                	push   (%ebx)
  c7:	ff 73 0c             	push   0xc(%ebx)
  ca:	ff 73 04             	push   0x4(%ebx)
  cd:	68 f3 01 00 00       	push   $0x1f3
  d2:	e8 fc ff ff ff       	call   d3 <floppy_process_op+0xd3>
  d7:	8b 53 04             	mov    0x4(%ebx),%edx
  da:	8d 04 bd 00 00 00 00 	lea    0x0(,%edi,4),%eax
  e1:	0b 42 14             	or     0x14(%edx),%eax
  e4:	88 44 24 1c          	mov    %al,0x1c(%esp)
  e8:	89 e8                	mov    %ebp,%eax
  ea:	88 44 24 1d          	mov    %al,0x1d(%esp)
  ee:	89 f8                	mov    %edi,%eax
  f0:	88 44 24 1e          	mov    %al,0x1e(%esp)
  f4:	89 f0                	mov    %esi,%eax
  f6:	88 44 24 1f          	mov    %al,0x1f(%esp)
  fa:	c6 44 24 20 02       	movb   $0x2,0x20(%esp)
  ff:	0f b7 53 0a          	movzwl 0xa(%ebx),%edx
 103:	8d 44 16 ff          	lea    -0x1(%esi,%edx,1),%eax
 107:	88 44 24 21          	mov    %al,0x21(%esp)
 10b:	66 c7 44 24 22 1b ff 	movw   $0xff1b,0x22(%esp)
 112:	c1 e2 09             	shl    $0x9,%edx
 115:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 119:	50                   	push   %eax
 11a:	b9 e6 78 01 00       	mov    $0x178e6,%ecx
 11f:	89 d8                	mov    %ebx,%eax
 121:	e8 fc ff ff ff       	call   122 <floppy_process_op+0x122>
 126:	83 c4 1c             	add    $0x1c,%esp
 129:	e9 eb 00 00 00       	jmp    219 <floppy_process_op+0x219>
 12e:	89 d8                	mov    %ebx,%eax
 130:	e8 fc ff ff ff       	call   131 <floppy_process_op+0x131>
 135:	89 c7                	mov    %eax,%edi
 137:	89 d6                	mov    %edx,%esi
 139:	89 c1                	mov    %eax,%ecx
 13b:	c1 e9 10             	shr    $0x10,%ecx
 13e:	0f b6 d1             	movzbl %cl,%edx
 141:	89 0c 24             	mov    %ecx,(%esp)
 144:	8b 43 04             	mov    0x4(%ebx),%eax
 147:	e8 fc ff ff ff       	call   148 <floppy_process_op+0x148>
 14c:	85 c0                	test   %eax,%eax
 14e:	0f 85 c5 00 00 00    	jne    219 <floppy_process_op+0x219>
 154:	8b 53 04             	mov    0x4(%ebx),%edx
 157:	8d 04 bd 00 00 00 00 	lea    0x0(,%edi,4),%eax
 15e:	0b 42 14             	or     0x14(%edx),%eax
 161:	88 44 24 04          	mov    %al,0x4(%esp)
 165:	8b 0c 24             	mov    (%esp),%ecx
 168:	88 4c 24 05          	mov    %cl,0x5(%esp)
 16c:	89 f8                	mov    %edi,%eax
 16e:	88 44 24 06          	mov    %al,0x6(%esp)
 172:	89 f0                	mov    %esi,%eax
 174:	88 44 24 07          	mov    %al,0x7(%esp)
 178:	c6 44 24 08 02       	movb   $0x2,0x8(%esp)
 17d:	0f b7 53 0a          	movzwl 0xa(%ebx),%edx
 181:	8d 44 16 ff          	lea    -0x1(%esi,%edx,1),%eax
 185:	88 44 24 09          	mov    %al,0x9(%esp)
 189:	66 c7 44 24 0a 1b ff 	movw   $0xff1b,0xa(%esp)
 190:	c1 e2 09             	shl    $0x9,%edx
 193:	8d 44 24 04          	lea    0x4(%esp),%eax
 197:	50                   	push   %eax
 198:	b9 c5 78 01 00       	mov    $0x178c5,%ecx
 19d:	eb 6b                	jmp    20a <floppy_process_op+0x20a>
 19f:	89 d8                	mov    %ebx,%eax
 1a1:	e8 fc ff ff ff       	call   1a2 <floppy_process_op+0x1a2>
 1a6:	c1 e8 10             	shr    $0x10,%eax
 1a9:	0f b6 d0             	movzbl %al,%edx
 1ac:	8b 43 04             	mov    0x4(%ebx),%eax
 1af:	83 c4 0c             	add    $0xc,%esp
 1b2:	5b                   	pop    %ebx
 1b3:	5e                   	pop    %esi
 1b4:	5f                   	pop    %edi
 1b5:	5d                   	pop    %ebp
 1b6:	e9 fc ff ff ff       	jmp    1b7 <floppy_process_op+0x1b7>
 1bb:	89 d8                	mov    %ebx,%eax
 1bd:	e8 fc ff ff ff       	call   1be <floppy_process_op+0x1be>
 1c2:	89 c6                	mov    %eax,%esi
 1c4:	89 c2                	mov    %eax,%edx
 1c6:	c1 ea 10             	shr    $0x10,%edx
 1c9:	0f b6 d2             	movzbl %dl,%edx
 1cc:	8b 43 04             	mov    0x4(%ebx),%eax
 1cf:	e8 fc ff ff ff       	call   1d0 <floppy_process_op+0x1d0>
 1d4:	85 c0                	test   %eax,%eax
 1d6:	75 41                	jne    219 <floppy_process_op+0x219>
 1d8:	8d 04 b5 00 00 00 00 	lea    0x0(,%esi,4),%eax
 1df:	8b 53 04             	mov    0x4(%ebx),%edx
 1e2:	0b 42 14             	or     0x14(%edx),%eax
 1e5:	88 44 24 04          	mov    %al,0x4(%esp)
 1e9:	c6 44 24 05 02       	movb   $0x2,0x5(%esp)
 1ee:	0f b7 53 0a          	movzwl 0xa(%ebx),%edx
 1f2:	88 54 24 06          	mov    %dl,0x6(%esp)
 1f6:	66 c7 44 24 07 6c f6 	movw   $0xf66c,0x7(%esp)
 1fd:	c1 e2 02             	shl    $0x2,%edx
 200:	8d 44 24 04          	lea    0x4(%esp),%eax
 204:	50                   	push   %eax
 205:	b9 4d 75 01 00       	mov    $0x1754d,%ecx
 20a:	89 d8                	mov    %ebx,%eax
 20c:	e8 fc ff ff ff       	call   20d <floppy_process_op+0x20d>
 211:	5a                   	pop    %edx
 212:	eb 05                	jmp    219 <floppy_process_op+0x219>
 214:	b8 01 00 00 00       	mov    $0x1,%eax
 219:	83 c4 0c             	add    $0xc,%esp
 21c:	5b                   	pop    %ebx
 21d:	5e                   	pop    %esi
 21e:	5f                   	pop    %edi
 21f:	5d                   	pop    %ebp
 220:	c3                   	ret    
 221:	b8 01 00 00 00       	mov    $0x1,%eax
 226:	c3                   	ret    

Disassembly of section .text.handle_0e:

00000000 <handle_0e>:
   0:	b8 00 00 00 00       	mov    $0x0,%eax
   5:	e8 fc ff ff ff       	call   6 <handle_0e+0x6>
   a:	80 0d 3e 04 00 00 80 	orb    $0x80,0x43e
  11:	b0 20                	mov    $0x20,%al
  13:	e6 20                	out    %al,$0x20
  15:	c3                   	ret    

Disassembly of section .text.floppy_tick:

00000000 <floppy_tick>:
   0:	a0 40 04 00 00       	mov    0x440,%al
   5:	84 c0                	test   %al,%al
   7:	74 1d                	je     26 <floppy_tick+0x26>
   9:	48                   	dec    %eax
   a:	a2 40 04 00 00       	mov    %al,0x440
   f:	84 c0                	test   %al,%al
  11:	75 13                	jne    26 <floppy_tick+0x26>
  13:	a0 00 00 00 00       	mov    0x0,%al
  18:	83 e0 0f             	and    $0xf,%eax
  1b:	ba f2 03 00 00       	mov    $0x3f2,%edx
  20:	ee                   	out    %al,(%dx)
  21:	a2 00 00 00 00       	mov    %al,0x0
  26:	c3                   	ret    
