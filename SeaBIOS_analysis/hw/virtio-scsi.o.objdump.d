
./virtio-scsi.o:     file format elf32-i386


Disassembly of section .text.virtio_scsi_init_lun:

00000000 <virtio_scsi_init_lun>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 0c             	sub    $0xc,%esp
   7:	89 c3                	mov    %eax,%ebx
   9:	89 d6                	mov    %edx,%esi
   b:	89 cf                	mov    %ecx,%edi
   d:	8b 6c 24 20          	mov    0x20(%esp),%ebp
  11:	8b 44 24 24          	mov    0x24(%esp),%eax
  15:	89 04 24             	mov    %eax,(%esp)
  18:	8b 44 24 28          	mov    0x28(%esp),%eax
  1c:	89 44 24 04          	mov    %eax,0x4(%esp)
  20:	8b 44 24 2c          	mov    0x2c(%esp),%eax
  24:	89 44 24 08          	mov    %eax,0x8(%esp)
  28:	b9 48 00 00 00       	mov    $0x48,%ecx
  2d:	31 d2                	xor    %edx,%edx
  2f:	89 d8                	mov    %ebx,%eax
  31:	e8 fc ff ff ff       	call   32 <virtio_scsi_init_lun+0x32>
  36:	c6 03 60             	movb   $0x60,(%ebx)
  39:	0f b7 06             	movzwl (%esi),%eax
  3c:	89 43 14             	mov    %eax,0x14(%ebx)
  3f:	89 73 24             	mov    %esi,0x24(%ebx)
  42:	89 7b 28             	mov    %edi,0x28(%ebx)
  45:	89 6b 40             	mov    %ebp,0x40(%ebx)
  48:	8b 04 24             	mov    (%esp),%eax
  4b:	89 43 3c             	mov    %eax,0x3c(%ebx)
  4e:	8b 44 24 04          	mov    0x4(%esp),%eax
  52:	66 89 43 44          	mov    %ax,0x44(%ebx)
  56:	8b 44 24 08          	mov    0x8(%esp),%eax
  5a:	66 89 43 46          	mov    %ax,0x46(%ebx)
  5e:	85 f6                	test   %esi,%esi
  60:	74 14                	je     76 <virtio_scsi_init_lun+0x76>
  62:	56                   	push   %esi
  63:	68 00 00 00 00       	push   $0x0
  68:	6a 10                	push   $0x10
  6a:	8d 43 2c             	lea    0x2c(%ebx),%eax
  6d:	50                   	push   %eax
  6e:	e8 fc ff ff ff       	call   6f <virtio_scsi_init_lun+0x6f>
  73:	83 c4 10             	add    $0x10,%esp
  76:	8b 43 28             	mov    0x28(%ebx),%eax
  79:	85 c0                	test   %eax,%eax
  7b:	74 27                	je     a4 <virtio_scsi_init_lun+0xa4>
  7d:	89 44 24 2c          	mov    %eax,0x2c(%esp)
  81:	c7 44 24 28 08 00 00 	movl   $0x8,0x28(%esp)
  88:	00 
  89:	c7 44 24 24 10 00 00 	movl   $0x10,0x24(%esp)
  90:	00 
  91:	83 c3 2c             	add    $0x2c,%ebx
  94:	89 5c 24 20          	mov    %ebx,0x20(%esp)
  98:	83 c4 0c             	add    $0xc,%esp
  9b:	5b                   	pop    %ebx
  9c:	5e                   	pop    %esi
  9d:	5f                   	pop    %edi
  9e:	5d                   	pop    %ebp
  9f:	e9 fc ff ff ff       	jmp    a0 <virtio_scsi_init_lun+0xa0>
  a4:	83 c4 0c             	add    $0xc,%esp
  a7:	5b                   	pop    %ebx
  a8:	5e                   	pop    %esi
  a9:	5f                   	pop    %edi
  aa:	5d                   	pop    %ebp
  ab:	c3                   	ret    

Disassembly of section .text.init_virtio_scsi:

00000000 <init_virtio_scsi>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 4c             	sub    $0x4c,%esp
   7:	89 c6                	mov    %eax,%esi
   9:	50                   	push   %eax
   a:	68 12 00 00 00       	push   $0x12
   f:	e8 fc ff ff ff       	call   10 <init_virtio_scsi+0x10>
  14:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  1b:	00 
  1c:	b9 10 00 00 00       	mov    $0x10,%ecx
  21:	ba 44 00 00 00       	mov    $0x44,%edx
  26:	b8 00 00 00 00       	mov    $0x0,%eax
  2b:	e8 fc ff ff ff       	call   2c <init_virtio_scsi+0x2c>
  30:	59                   	pop    %ecx
  31:	5b                   	pop    %ebx
  32:	85 c0                	test   %eax,%eax
  34:	75 14                	jne    4a <init_virtio_scsi+0x4a>
  36:	ba 00 00 00 00       	mov    $0x0,%edx
  3b:	b8 b6 00 00 00       	mov    $0xb6,%eax
  40:	e8 fc ff ff ff       	call   41 <init_virtio_scsi+0x41>
  45:	e9 df 00 00 00       	jmp    129 <init_virtio_scsi+0x129>
  4a:	89 c3                	mov    %eax,%ebx
  4c:	89 f2                	mov    %esi,%edx
  4e:	e8 fc ff ff ff       	call   4f <init_virtio_scsi+0x4f>
  53:	80 7b 40 00          	cmpb   $0x0,0x40(%ebx)
  57:	74 4d                	je     a6 <init_virtio_scsi+0xa6>
  59:	89 d8                	mov    %ebx,%eax
  5b:	e8 fc ff ff ff       	call   5c <init_virtio_scsi+0x5c>
  60:	f6 c2 01             	test   $0x1,%dl
  63:	75 08                	jne    6d <init_virtio_scsi+0x6d>
  65:	56                   	push   %esi
  66:	68 2c 00 00 00       	push   $0x2c
  6b:	eb 30                	jmp    9d <init_virtio_scsi+0x9d>
  6d:	89 d1                	mov    %edx,%ecx
  6f:	83 e1 03             	and    $0x3,%ecx
  72:	31 d2                	xor    %edx,%edx
  74:	89 d8                	mov    %ebx,%eax
  76:	e8 fc ff ff ff       	call   77 <init_virtio_scsi+0x77>
  7b:	ba 0b 00 00 00       	mov    $0xb,%edx
  80:	89 d8                	mov    %ebx,%eax
  82:	e8 fc ff ff ff       	call   83 <init_virtio_scsi+0x83>
  87:	89 d8                	mov    %ebx,%eax
  89:	e8 fc ff ff ff       	call   8a <init_virtio_scsi+0x8a>
  8e:	bf 0b 00 00 00       	mov    $0xb,%edi
  93:	a8 08                	test   $0x8,%al
  95:	75 14                	jne    ab <init_virtio_scsi+0xab>
  97:	56                   	push   %esi
  98:	68 5d 00 00 00       	push   $0x5d
  9d:	e8 fc ff ff ff       	call   9e <init_virtio_scsi+0x9e>
  a2:	58                   	pop    %eax
  a3:	5a                   	pop    %edx
  a4:	eb 6d                	jmp    113 <init_virtio_scsi+0x113>
  a6:	bf 03 00 00 00       	mov    $0x3,%edi
  ab:	89 e1                	mov    %esp,%ecx
  ad:	ba 02 00 00 00       	mov    $0x2,%edx
  b2:	89 d8                	mov    %ebx,%eax
  b4:	e8 fc ff ff ff       	call   b5 <init_virtio_scsi+0xb5>
  b9:	85 c0                	test   %eax,%eax
  bb:	79 08                	jns    c5 <init_virtio_scsi+0xc5>
  bd:	56                   	push   %esi
  be:	68 81 00 00 00       	push   $0x81
  c3:	eb d8                	jmp    9d <init_virtio_scsi+0x9d>
  c5:	89 fa                	mov    %edi,%edx
  c7:	83 ca 04             	or     $0x4,%edx
  ca:	0f b6 d2             	movzbl %dl,%edx
  cd:	89 d8                	mov    %ebx,%eax
  cf:	e8 fc ff ff ff       	call   d0 <init_virtio_scsi+0xd0>
  d4:	31 ed                	xor    %ebp,%ebp
  d6:	31 ff                	xor    %edi,%edi
  d8:	6a 00                	push   $0x0
  da:	57                   	push   %edi
  db:	ff 74 24 08          	push   0x8(%esp)
  df:	53                   	push   %ebx
  e0:	31 c9                	xor    %ecx,%ecx
  e2:	89 f2                	mov    %esi,%edx
  e4:	8d 44 24 14          	lea    0x14(%esp),%eax
  e8:	e8 fc ff ff ff       	call   e9 <init_virtio_scsi+0xe9>
  ed:	ba 00 00 00 00       	mov    $0x0,%edx
  f2:	8d 44 24 14          	lea    0x14(%esp),%eax
  f6:	e8 fc ff ff ff       	call   f7 <init_virtio_scsi+0xf7>
  fb:	83 c4 10             	add    $0x10,%esp
  fe:	85 c0                	test   %eax,%eax
 100:	79 02                	jns    104 <init_virtio_scsi+0x104>
 102:	31 c0                	xor    %eax,%eax
 104:	01 c5                	add    %eax,%ebp
 106:	47                   	inc    %edi
 107:	81 ff 00 01 00 00    	cmp    $0x100,%edi
 10d:	75 c9                	jne    d8 <init_virtio_scsi+0xd8>
 10f:	85 ed                	test   %ebp,%ebp
 111:	75 16                	jne    129 <init_virtio_scsi+0x129>
 113:	89 d8                	mov    %ebx,%eax
 115:	e8 fc ff ff ff       	call   116 <init_virtio_scsi+0x116>
 11a:	89 d8                	mov    %ebx,%eax
 11c:	e8 fc ff ff ff       	call   11d <init_virtio_scsi+0x11d>
 121:	8b 04 24             	mov    (%esp),%eax
 124:	e8 fc ff ff ff       	call   125 <init_virtio_scsi+0x125>
 129:	83 c4 4c             	add    $0x4c,%esp
 12c:	5b                   	pop    %ebx
 12d:	5e                   	pop    %esi
 12e:	5f                   	pop    %edi
 12f:	5d                   	pop    %ebp
 130:	c3                   	ret    

Disassembly of section .text.virtio_scsi_add_lun:

00000000 <virtio_scsi_add_lun>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 c5                	mov    %eax,%ebp
   6:	89 d3                	mov    %edx,%ebx
   8:	e8 fc ff ff ff       	call   9 <virtio_scsi_add_lun+0x9>
   d:	89 c6                	mov    %eax,%esi
   f:	8b 43 24             	mov    0x24(%ebx),%eax
  12:	83 cf ff             	or     $0xffffffff,%edi
  15:	85 c0                	test   %eax,%eax
  17:	74 0d                	je     26 <virtio_scsi_add_lun+0x26>
  19:	0f b7 53 44          	movzwl 0x44(%ebx),%edx
  1d:	89 e9                	mov    %ebp,%ecx
  1f:	e8 fc ff ff ff       	call   20 <virtio_scsi_add_lun+0x20>
  24:	89 c7                	mov    %eax,%edi
  26:	8b 43 28             	mov    0x28(%ebx),%eax
  29:	85 c0                	test   %eax,%eax
  2b:	74 0d                	je     3a <virtio_scsi_add_lun+0x3a>
  2d:	0f b7 53 44          	movzwl 0x44(%ebx),%edx
  31:	89 e9                	mov    %ebp,%ecx
  33:	e8 fc ff ff ff       	call   34 <virtio_scsi_add_lun+0x34>
  38:	89 c7                	mov    %eax,%edi
  3a:	85 ff                	test   %edi,%edi
  3c:	79 1f                	jns    5d <virtio_scsi_add_lun+0x5d>
  3e:	89 f0                	mov    %esi,%eax
  40:	84 c0                	test   %al,%al
  42:	74 19                	je     5d <virtio_scsi_add_lun+0x5d>
  44:	55                   	push   %ebp
  45:	0f b7 43 44          	movzwl 0x44(%ebx),%eax
  49:	50                   	push   %eax
  4a:	83 c3 2c             	add    $0x2c,%ebx
  4d:	53                   	push   %ebx
  4e:	68 a6 00 00 00       	push   $0xa6
  53:	e8 fc ff ff ff       	call   54 <virtio_scsi_add_lun+0x54>
  58:	83 c4 10             	add    $0x10,%esp
  5b:	eb 7c                	jmp    d9 <virtio_scsi_add_lun+0xd9>
  5d:	b9 10 00 00 00       	mov    $0x10,%ecx
  62:	ba 48 00 00 00       	mov    $0x48,%edx
  67:	b8 00 00 00 00       	mov    $0x0,%eax
  6c:	e8 fc ff ff ff       	call   6d <virtio_scsi_add_lun+0x6d>
  71:	89 c6                	mov    %eax,%esi
  73:	85 c0                	test   %eax,%eax
  75:	75 11                	jne    88 <virtio_scsi_add_lun+0x88>
  77:	ba 00 00 00 00       	mov    $0x0,%edx
  7c:	b8 8e 00 00 00       	mov    $0x8e,%eax
  81:	e8 fc ff ff ff       	call   82 <virtio_scsi_add_lun+0x82>
  86:	eb 51                	jmp    d9 <virtio_scsi_add_lun+0xd9>
  88:	8b 4b 28             	mov    0x28(%ebx),%ecx
  8b:	8b 53 24             	mov    0x24(%ebx),%edx
  8e:	0f b7 ed             	movzwl %bp,%ebp
  91:	55                   	push   %ebp
  92:	0f b7 43 44          	movzwl 0x44(%ebx),%eax
  96:	50                   	push   %eax
  97:	ff 73 3c             	push   0x3c(%ebx)
  9a:	ff 73 40             	push   0x40(%ebx)
  9d:	89 f0                	mov    %esi,%eax
  9f:	e8 fc ff ff ff       	call   a0 <virtio_scsi_add_lun+0xa0>
  a4:	8b 46 24             	mov    0x24(%esi),%eax
  a7:	83 c4 10             	add    $0x10,%esp
  aa:	85 c0                	test   %eax,%eax
  ac:	74 12                	je     c0 <virtio_scsi_add_lun+0xc0>
  ae:	0f b7 4e 46          	movzwl 0x46(%esi),%ecx
  b2:	0f b7 56 44          	movzwl 0x44(%esi),%edx
  b6:	8d 5e 02             	lea    0x2(%esi),%ebx
  b9:	53                   	push   %ebx
  ba:	e8 fc ff ff ff       	call   bb <virtio_scsi_add_lun+0xbb>
  bf:	58                   	pop    %eax
  c0:	89 f9                	mov    %edi,%ecx
  c2:	ba f0 00 00 00       	mov    $0xf0,%edx
  c7:	89 f0                	mov    %esi,%eax
  c9:	e8 fc ff ff ff       	call   ca <virtio_scsi_add_lun+0xca>
  ce:	85 c0                	test   %eax,%eax
  d0:	74 0a                	je     dc <virtio_scsi_add_lun+0xdc>
  d2:	89 f0                	mov    %esi,%eax
  d4:	e8 fc ff ff ff       	call   d5 <virtio_scsi_add_lun+0xd5>
  d9:	83 c8 ff             	or     $0xffffffff,%eax
  dc:	5b                   	pop    %ebx
  dd:	5e                   	pop    %esi
  de:	5f                   	pop    %edi
  df:	5d                   	pop    %ebp
  e0:	c3                   	ret    

Disassembly of section .text.virtio_scsi_process_op:

00000000 <virtio_scsi_process_op>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	81 ec bc 00 00 00    	sub    $0xbc,%esp
   a:	89 c3                	mov    %eax,%ebx
   c:	8b 78 04             	mov    0x4(%eax),%edi
   f:	8b 47 40             	mov    0x40(%edi),%eax
  12:	89 04 24             	mov    %eax,(%esp)
  15:	8b 77 3c             	mov    0x3c(%edi),%esi
  18:	8d 6c 24 1d          	lea    0x1d(%esp),%ebp
  1c:	b9 33 00 00 00       	mov    $0x33,%ecx
  21:	31 d2                	xor    %edx,%edx
  23:	89 e8                	mov    %ebp,%eax
  25:	e8 fc ff ff ff       	call   26 <virtio_scsi_process_op+0x26>
  2a:	b9 10 00 00 00       	mov    $0x10,%ecx
  2f:	8d 54 24 30          	lea    0x30(%esp),%edx
  33:	89 d8                	mov    %ebx,%eax
  35:	e8 fc ff ff ff       	call   36 <virtio_scsi_process_op+0x36>
  3a:	85 c0                	test   %eax,%eax
  3c:	79 0c                	jns    4a <virtio_scsi_process_op+0x4a>
  3e:	89 d8                	mov    %ebx,%eax
  40:	e8 fc ff ff ff       	call   41 <virtio_scsi_process_op+0x41>
  45:	e9 c5 00 00 00       	jmp    10f <virtio_scsi_process_op+0x10f>
  4a:	c6 44 24 1d 01       	movb   $0x1,0x1d(%esp)
  4f:	8b 57 44             	mov    0x44(%edi),%edx
  52:	88 54 24 1e          	mov    %dl,0x1e(%esp)
  56:	66 8b 4f 46          	mov    0x46(%edi),%cx
  5a:	89 ca                	mov    %ecx,%edx
  5c:	66 c1 ea 08          	shr    $0x8,%dx
  60:	83 ca 40             	or     $0x40,%edx
  63:	88 54 24 1f          	mov    %dl,0x1f(%esp)
  67:	88 4c 24 20          	mov    %cl,0x20(%esp)
  6b:	0f b7 7b 0a          	movzwl 0xa(%ebx),%edi
  6f:	0f af f8             	imul   %eax,%edi
  72:	89 d8                	mov    %ebx,%eax
  74:	e8 fc ff ff ff       	call   75 <virtio_scsi_process_op+0x75>
  79:	83 f8 01             	cmp    $0x1,%eax
  7c:	19 c0                	sbb    %eax,%eax
  7e:	83 c0 02             	add    $0x2,%eax
  81:	83 ff 01             	cmp    $0x1,%edi
  84:	19 c9                	sbb    %ecx,%ecx
  86:	83 c1 03             	add    $0x3,%ecx
  89:	29 c1                	sub    %eax,%ecx
  8b:	89 6c 24 04          	mov    %ebp,0x4(%esp)
  8f:	c7 44 24 08 33 00 00 	movl   $0x33,0x8(%esp)
  96:	00 
  97:	8d 54 24 50          	lea    0x50(%esp),%edx
  9b:	89 54 cc 04          	mov    %edx,0x4(%esp,%ecx,8)
  9f:	c7 44 cc 08 6c 00 00 	movl   $0x6c,0x8(%esp,%ecx,8)
  a6:	00 
  a7:	85 ff                	test   %edi,%edi
  a9:	74 0a                	je     b5 <virtio_scsi_process_op+0xb5>
  ab:	8b 13                	mov    (%ebx),%edx
  ad:	89 54 c4 04          	mov    %edx,0x4(%esp,%eax,8)
  b1:	89 7c c4 08          	mov    %edi,0x8(%esp,%eax,8)
  b5:	6a 00                	push   $0x0
  b7:	6a 00                	push   $0x0
  b9:	50                   	push   %eax
  ba:	8d 54 24 10          	lea    0x10(%esp),%edx
  be:	89 f0                	mov    %esi,%eax
  c0:	e8 fc ff ff ff       	call   c1 <virtio_scsi_process_op+0xc1>
  c5:	b9 01 00 00 00       	mov    $0x1,%ecx
  ca:	89 f2                	mov    %esi,%edx
  cc:	8b 44 24 0c          	mov    0xc(%esp),%eax
  d0:	e8 fc ff ff ff       	call   d1 <virtio_scsi_process_op+0xd1>
  d5:	83 c4 0c             	add    $0xc,%esp
  d8:	89 f0                	mov    %esi,%eax
  da:	e8 fc ff ff ff       	call   db <virtio_scsi_process_op+0xdb>
  df:	85 c0                	test   %eax,%eax
  e1:	75 0c                	jne    ef <virtio_scsi_process_op+0xef>
  e3:	b8 05 00 00 00       	mov    $0x5,%eax
  e8:	e8 fc ff ff ff       	call   e9 <virtio_scsi_process_op+0xe9>
  ed:	eb e9                	jmp    d8 <virtio_scsi_process_op+0xd8>
  ef:	31 d2                	xor    %edx,%edx
  f1:	89 f0                	mov    %esi,%eax
  f3:	e8 fc ff ff ff       	call   f4 <virtio_scsi_process_op+0xf4>
  f8:	8b 04 24             	mov    (%esp),%eax
  fb:	e8 fc ff ff ff       	call   fc <virtio_scsi_process_op+0xfc>
 100:	8a 44 24 5b          	mov    0x5b(%esp),%al
 104:	0a 44 24 5a          	or     0x5a(%esp),%al
 108:	f6 d8                	neg    %al
 10a:	19 c0                	sbb    %eax,%eax
 10c:	83 e0 0c             	and    $0xc,%eax
 10f:	81 c4 bc 00 00 00    	add    $0xbc,%esp
 115:	5b                   	pop    %ebx
 116:	5e                   	pop    %esi
 117:	5f                   	pop    %edi
 118:	5d                   	pop    %ebp
 119:	c3                   	ret    

Disassembly of section .text.init_virtio_scsi_mmio:

00000000 <init_virtio_scsi_mmio>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 4c             	sub    $0x4c,%esp
   7:	89 c6                	mov    %eax,%esi
   9:	50                   	push   %eax
   a:	68 fc 00 00 00       	push   $0xfc
   f:	e8 fc ff ff ff       	call   10 <init_virtio_scsi_mmio+0x10>
  14:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  1b:	00 
  1c:	b9 10 00 00 00       	mov    $0x10,%ecx
  21:	ba 44 00 00 00       	mov    $0x44,%edx
  26:	b8 00 00 00 00       	mov    $0x0,%eax
  2b:	e8 fc ff ff ff       	call   2c <init_virtio_scsi_mmio+0x2c>
  30:	59                   	pop    %ecx
  31:	5b                   	pop    %ebx
  32:	85 c0                	test   %eax,%eax
  34:	75 14                	jne    4a <init_virtio_scsi_mmio+0x4a>
  36:	ba 00 00 00 00       	mov    $0x0,%edx
  3b:	b8 ec 00 00 00       	mov    $0xec,%eax
  40:	e8 fc ff ff ff       	call   41 <init_virtio_scsi_mmio+0x41>
  45:	e9 8b 00 00 00       	jmp    d5 <init_virtio_scsi_mmio+0xd5>
  4a:	89 c3                	mov    %eax,%ebx
  4c:	89 f2                	mov    %esi,%edx
  4e:	e8 fc ff ff ff       	call   4f <init_virtio_scsi_mmio+0x4f>
  53:	89 e1                	mov    %esp,%ecx
  55:	ba 02 00 00 00       	mov    $0x2,%edx
  5a:	89 d8                	mov    %ebx,%eax
  5c:	e8 fc ff ff ff       	call   5d <init_virtio_scsi_mmio+0x5d>
  61:	85 c0                	test   %eax,%eax
  63:	79 0f                	jns    74 <init_virtio_scsi_mmio+0x74>
  65:	56                   	push   %esi
  66:	68 1a 01 00 00       	push   $0x11a
  6b:	e8 fc ff ff ff       	call   6c <init_virtio_scsi_mmio+0x6c>
  70:	58                   	pop    %eax
  71:	5a                   	pop    %edx
  72:	eb 4b                	jmp    bf <init_virtio_scsi_mmio+0xbf>
  74:	ba 07 00 00 00       	mov    $0x7,%edx
  79:	89 d8                	mov    %ebx,%eax
  7b:	e8 fc ff ff ff       	call   7c <init_virtio_scsi_mmio+0x7c>
  80:	31 ed                	xor    %ebp,%ebp
  82:	31 ff                	xor    %edi,%edi
  84:	6a 00                	push   $0x0
  86:	57                   	push   %edi
  87:	ff 74 24 08          	push   0x8(%esp)
  8b:	53                   	push   %ebx
  8c:	89 f1                	mov    %esi,%ecx
  8e:	31 d2                	xor    %edx,%edx
  90:	8d 44 24 14          	lea    0x14(%esp),%eax
  94:	e8 fc ff ff ff       	call   95 <init_virtio_scsi_mmio+0x95>
  99:	ba 00 00 00 00       	mov    $0x0,%edx
  9e:	8d 44 24 14          	lea    0x14(%esp),%eax
  a2:	e8 fc ff ff ff       	call   a3 <init_virtio_scsi_mmio+0xa3>
  a7:	83 c4 10             	add    $0x10,%esp
  aa:	85 c0                	test   %eax,%eax
  ac:	79 02                	jns    b0 <init_virtio_scsi_mmio+0xb0>
  ae:	31 c0                	xor    %eax,%eax
  b0:	01 c5                	add    %eax,%ebp
  b2:	47                   	inc    %edi
  b3:	81 ff 00 01 00 00    	cmp    $0x100,%edi
  b9:	75 c9                	jne    84 <init_virtio_scsi_mmio+0x84>
  bb:	85 ed                	test   %ebp,%ebp
  bd:	75 16                	jne    d5 <init_virtio_scsi_mmio+0xd5>
  bf:	89 d8                	mov    %ebx,%eax
  c1:	e8 fc ff ff ff       	call   c2 <init_virtio_scsi_mmio+0xc2>
  c6:	89 d8                	mov    %ebx,%eax
  c8:	e8 fc ff ff ff       	call   c9 <init_virtio_scsi_mmio+0xc9>
  cd:	8b 04 24             	mov    (%esp),%eax
  d0:	e8 fc ff ff ff       	call   d1 <init_virtio_scsi_mmio+0xd1>
  d5:	83 c4 4c             	add    $0x4c,%esp
  d8:	5b                   	pop    %ebx
  d9:	5e                   	pop    %esi
  da:	5f                   	pop    %edi
  db:	5d                   	pop    %ebp
  dc:	c3                   	ret    

Disassembly of section .text.virtio_scsi_setup:

00000000 <virtio_scsi_setup>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	e8 fc ff ff ff       	call   3 <virtio_scsi_setup+0x3>
   7:	89 c6                	mov    %eax,%esi
   9:	68 43 01 00 00       	push   $0x143
   e:	e8 fc ff ff ff       	call   f <virtio_scsi_setup+0xf>
  13:	a1 00 00 00 00       	mov    0x0,%eax
  18:	8d 58 fc             	lea    -0x4(%eax),%ebx
  1b:	59                   	pop    %ecx
  1c:	83 fb fc             	cmp    $0xfffffffc,%ebx
  1f:	74 4c                	je     6d <virtio_scsi_setup+0x6d>
  21:	66 81 7b 10 f4 1a    	cmpw   $0x1af4,0x10(%ebx)
  27:	75 3c                	jne    65 <virtio_scsi_setup+0x65>
  29:	66 8b 43 12          	mov    0x12(%ebx),%ax
  2d:	66 3d 48 10          	cmp    $0x1048,%ax
  31:	74 06                	je     39 <virtio_scsi_setup+0x39>
  33:	66 3d 04 10          	cmp    $0x1004,%ax
  37:	75 2c                	jne    65 <virtio_scsi_setup+0x65>
  39:	89 f0                	mov    %esi,%eax
  3b:	84 c0                	test   %al,%al
  3d:	74 1a                	je     59 <virtio_scsi_setup+0x59>
  3f:	89 d8                	mov    %ebx,%eax
  41:	e8 fc ff ff ff       	call   42 <virtio_scsi_setup+0x42>
  46:	85 c0                	test   %eax,%eax
  48:	79 0f                	jns    59 <virtio_scsi_setup+0x59>
  4a:	53                   	push   %ebx
  4b:	68 55 01 00 00       	push   $0x155
  50:	e8 fc ff ff ff       	call   51 <virtio_scsi_setup+0x51>
  55:	58                   	pop    %eax
  56:	5a                   	pop    %edx
  57:	eb 0c                	jmp    65 <virtio_scsi_setup+0x65>
  59:	89 da                	mov    %ebx,%edx
  5b:	b8 00 00 00 00       	mov    $0x0,%eax
  60:	e8 fc ff ff ff       	call   61 <virtio_scsi_setup+0x61>
  65:	8b 5b 04             	mov    0x4(%ebx),%ebx
  68:	83 eb 04             	sub    $0x4,%ebx
  6b:	eb af                	jmp    1c <virtio_scsi_setup+0x1c>
  6d:	5b                   	pop    %ebx
  6e:	5e                   	pop    %esi
  6f:	c3                   	ret    
