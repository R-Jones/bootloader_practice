
./lsi-scsi.o:     file format elf32-i386


Disassembly of section .text.lsi_scsi_add_lun:

00000000 <lsi_scsi_add_lun>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	51                   	push   %ecx
   5:	89 04 24             	mov    %eax,(%esp)
   8:	89 d5                	mov    %edx,%ebp
   a:	b9 10 00 00 00       	mov    $0x10,%ecx
   f:	ba 30 00 00 00       	mov    $0x30,%edx
  14:	b8 00 00 00 00       	mov    $0x0,%eax
  19:	e8 fc ff ff ff       	call   1a <lsi_scsi_add_lun+0x1a>
  1e:	85 c0                	test   %eax,%eax
  20:	75 14                	jne    36 <lsi_scsi_add_lun+0x36>
  22:	ba 00 00 00 00       	mov    $0x0,%edx
  27:	b8 9b 00 00 00       	mov    $0x9b,%eax
  2c:	e8 fc ff ff ff       	call   2d <lsi_scsi_add_lun+0x2d>
  31:	e9 8c 00 00 00       	jmp    c2 <lsi_scsi_add_lun+0xc2>
  36:	89 c6                	mov    %eax,%esi
  38:	8a 5d 2c             	mov    0x2c(%ebp),%bl
  3b:	8b 7d 28             	mov    0x28(%ebp),%edi
  3e:	8b 6d 24             	mov    0x24(%ebp),%ebp
  41:	b9 30 00 00 00       	mov    $0x30,%ecx
  46:	31 d2                	xor    %edx,%edx
  48:	e8 fc ff ff ff       	call   49 <lsi_scsi_add_lun+0x49>
  4d:	c6 06 80             	movb   $0x80,(%esi)
  50:	0f b7 45 00          	movzwl 0x0(%ebp),%eax
  54:	89 46 14             	mov    %eax,0x14(%esi)
  57:	89 6e 24             	mov    %ebp,0x24(%esi)
  5a:	88 5e 2c             	mov    %bl,0x2c(%esi)
  5d:	0f b6 0c 24          	movzbl (%esp),%ecx
  61:	88 4e 2d             	mov    %cl,0x2d(%esi)
  64:	89 7e 28             	mov    %edi,0x28(%esi)
  67:	0f b6 d3             	movzbl %bl,%edx
  6a:	8d 46 02             	lea    0x2(%esi),%eax
  6d:	50                   	push   %eax
  6e:	89 e8                	mov    %ebp,%eax
  70:	e8 fc ff ff ff       	call   71 <lsi_scsi_add_lun+0x71>
  75:	0f b6 46 2d          	movzbl 0x2d(%esi),%eax
  79:	50                   	push   %eax
  7a:	0f b6 46 2c          	movzbl 0x2c(%esi),%eax
  7e:	50                   	push   %eax
  7f:	ff 76 24             	push   0x24(%esi)
  82:	68 00 00 00 00       	push   $0x0
  87:	6a 50                	push   $0x50
  89:	e8 fc ff ff ff       	call   8a <lsi_scsi_add_lun+0x8a>
  8e:	89 c7                	mov    %eax,%edi
  90:	0f b6 4e 2d          	movzbl 0x2d(%esi),%ecx
  94:	0f b6 56 2c          	movzbl 0x2c(%esi),%edx
  98:	8b 46 24             	mov    0x24(%esi),%eax
  9b:	e8 fc ff ff ff       	call   9c <lsi_scsi_add_lun+0x9c>
  a0:	89 c1                	mov    %eax,%ecx
  a2:	89 fa                	mov    %edi,%edx
  a4:	89 f0                	mov    %esi,%eax
  a6:	e8 fc ff ff ff       	call   a7 <lsi_scsi_add_lun+0xa7>
  ab:	89 c3                	mov    %eax,%ebx
  ad:	89 f8                	mov    %edi,%eax
  af:	e8 fc ff ff ff       	call   b0 <lsi_scsi_add_lun+0xb0>
  b4:	83 c4 18             	add    $0x18,%esp
  b7:	85 db                	test   %ebx,%ebx
  b9:	74 0a                	je     c5 <lsi_scsi_add_lun+0xc5>
  bb:	89 f0                	mov    %esi,%eax
  bd:	e8 fc ff ff ff       	call   be <lsi_scsi_add_lun+0xbe>
  c2:	83 cb ff             	or     $0xffffffff,%ebx
  c5:	89 d8                	mov    %ebx,%eax
  c7:	5a                   	pop    %edx
  c8:	5b                   	pop    %ebx
  c9:	5e                   	pop    %esi
  ca:	5f                   	pop    %edi
  cb:	5d                   	pop    %ebp
  cc:	c3                   	ret    

Disassembly of section .text.init_lsi_scsi:

00000000 <init_lsi_scsi>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	83 ec 30             	sub    $0x30,%esp
   6:	89 c3                	mov    %eax,%ebx
   8:	ba 10 00 00 00       	mov    $0x10,%edx
   d:	e8 fc ff ff ff       	call   e <init_lsi_scsi+0xe>
  12:	0f b7 f8             	movzwl %ax,%edi
  15:	85 ff                	test   %edi,%edi
  17:	74 71                	je     8a <init_lsi_scsi+0x8a>
  19:	89 d8                	mov    %ebx,%eax
  1b:	e8 fc ff ff ff       	call   1c <init_lsi_scsi+0x1c>
  20:	57                   	push   %edi
  21:	53                   	push   %ebx
  22:	68 0e 00 00 00       	push   $0xe
  27:	e8 fc ff ff ff       	call   28 <init_lsi_scsi+0x28>
  2c:	8d 57 14             	lea    0x14(%edi),%edx
  2f:	b0 40                	mov    $0x40,%al
  31:	ee                   	out    %al,(%dx)
  32:	83 c4 0c             	add    $0xc,%esp
  35:	31 f6                	xor    %esi,%esi
  37:	b9 30 00 00 00       	mov    $0x30,%ecx
  3c:	31 d2                	xor    %edx,%edx
  3e:	89 e0                	mov    %esp,%eax
  40:	e8 fc ff ff ff       	call   41 <init_lsi_scsi+0x41>
  45:	c6 04 24 80          	movb   $0x80,(%esp)
  49:	0f b7 03             	movzwl (%ebx),%eax
  4c:	89 44 24 14          	mov    %eax,0x14(%esp)
  50:	89 5c 24 24          	mov    %ebx,0x24(%esp)
  54:	89 f0                	mov    %esi,%eax
  56:	88 44 24 2c          	mov    %al,0x2c(%esp)
  5a:	c6 44 24 2d 00       	movb   $0x0,0x2d(%esp)
  5f:	89 7c 24 28          	mov    %edi,0x28(%esp)
  63:	ba 00 00 00 00       	mov    $0x0,%edx
  68:	89 e0                	mov    %esp,%eax
  6a:	e8 fc ff ff ff       	call   6b <init_lsi_scsi+0x6b>
  6f:	85 c0                	test   %eax,%eax
  71:	79 11                	jns    84 <init_lsi_scsi+0x84>
  73:	b9 00 00 00 00       	mov    $0x0,%ecx
  78:	ba 08 00 00 00       	mov    $0x8,%edx
  7d:	89 e0                	mov    %esp,%eax
  7f:	e8 fc ff ff ff       	call   80 <init_lsi_scsi+0x80>
  84:	46                   	inc    %esi
  85:	83 fe 07             	cmp    $0x7,%esi
  88:	75 ad                	jne    37 <init_lsi_scsi+0x37>
  8a:	83 c4 30             	add    $0x30,%esp
  8d:	5b                   	pop    %ebx
  8e:	5e                   	pop    %esi
  8f:	5f                   	pop    %edi
  90:	c3                   	ret    

Disassembly of section .text.lsi_scsi_process_op:

00000000 <lsi_scsi_process_op>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 74             	sub    $0x74,%esp
   7:	89 c3                	mov    %eax,%ebx
   9:	8b 70 04             	mov    0x4(%eax),%esi
   c:	8a 46 2c             	mov    0x2c(%esi),%al
   f:	88 44 24 02          	mov    %al,0x2(%esp)
  13:	8a 46 2d             	mov    0x2d(%esi),%al
  16:	88 44 24 03          	mov    %al,0x3(%esp)
  1a:	8d 6c 24 0c          	lea    0xc(%esp),%ebp
  1e:	b9 10 00 00 00       	mov    $0x10,%ecx
  23:	89 ea                	mov    %ebp,%edx
  25:	89 d8                	mov    %ebx,%eax
  27:	e8 fc ff ff ff       	call   28 <lsi_scsi_process_op+0x28>
  2c:	85 c0                	test   %eax,%eax
  2e:	79 0c                	jns    3c <lsi_scsi_process_op+0x3c>
  30:	89 d8                	mov    %ebx,%eax
  32:	e8 fc ff ff ff       	call   33 <lsi_scsi_process_op+0x33>
  37:	e9 49 01 00 00       	jmp    185 <lsi_scsi_process_op+0x185>
  3c:	89 c7                	mov    %eax,%edi
  3e:	8b 76 28             	mov    0x28(%esi),%esi
  41:	89 d8                	mov    %ebx,%eax
  43:	e8 fc ff ff ff       	call   44 <lsi_scsi_process_op+0x44>
  48:	89 c1                	mov    %eax,%ecx
  4a:	0f b7 43 0a          	movzwl 0xa(%ebx),%eax
  4e:	0f af c7             	imul   %edi,%eax
  51:	31 d2                	xor    %edx,%edx
  53:	85 c9                	test   %ecx,%ecx
  55:	0f 95 c2             	setne  %dl
  58:	c1 e2 18             	shl    $0x18,%edx
  5b:	09 d0                	or     %edx,%eax
  5d:	8a 54 24 03          	mov    0x3(%esp),%dl
  61:	83 ca 80             	or     $0xffffff80,%edx
  64:	88 54 24 08          	mov    %dl,0x8(%esp)
  68:	c6 44 24 09 08       	movb   $0x8,0x9(%esp)
  6d:	c6 44 24 06 ff       	movb   $0xff,0x6(%esp)
  72:	c6 44 24 07 ff       	movb   $0xff,0x7(%esp)
  77:	0f b6 54 24 02       	movzbl 0x2(%esp),%edx
  7c:	c1 e2 10             	shl    $0x10,%edx
  7f:	81 ca 00 00 00 40    	or     $0x40000000,%edx
  85:	89 54 24 1c          	mov    %edx,0x1c(%esp)
  89:	c7 44 24 20 00 00 00 	movl   $0x0,0x20(%esp)
  90:	00 
  91:	c7 44 24 24 01 00 00 	movl   $0x6000001,0x24(%esp)
  98:	06 
  99:	8d 54 24 08          	lea    0x8(%esp),%edx
  9d:	89 54 24 28          	mov    %edx,0x28(%esp)
  a1:	c7 44 24 2c 10 00 00 	movl   $0x2000010,0x2c(%esp)
  a8:	02 
  a9:	89 6c 24 30          	mov    %ebp,0x30(%esp)
  ad:	c7 44 24 34 00 00 82 	movl   $0x87820000,0x34(%esp)
  b4:	87 
  b5:	c7 44 24 38 18 00 00 	movl   $0x18,0x38(%esp)
  bc:	00 
  bd:	c7 44 24 3c 02 00 00 	movl   $0x7000002,0x3c(%esp)
  c4:	07 
  c5:	8d 54 24 0a          	lea    0xa(%esp),%edx
  c9:	89 54 24 40          	mov    %edx,0x40(%esp)
  cd:	c7 44 24 44 00 00 00 	movl   $0x50000000,0x44(%esp)
  d4:	50 
  d5:	c7 44 24 48 00 00 00 	movl   $0x0,0x48(%esp)
  dc:	00 
  dd:	c7 44 24 4c 02 00 00 	movl   $0x7000002,0x4c(%esp)
  e4:	07 
  e5:	89 54 24 50          	mov    %edx,0x50(%esp)
  e9:	89 44 24 54          	mov    %eax,0x54(%esp)
  ed:	8b 03                	mov    (%ebx),%eax
  ef:	89 44 24 58          	mov    %eax,0x58(%esp)
  f3:	c7 44 24 5c 01 00 00 	movl   $0x3000001,0x5c(%esp)
  fa:	03 
  fb:	8d 44 24 06          	lea    0x6(%esp),%eax
  ff:	89 44 24 60          	mov    %eax,0x60(%esp)
 103:	c7 44 24 64 01 00 00 	movl   $0x7000001,0x64(%esp)
 10a:	07 
 10b:	8d 44 24 07          	lea    0x7(%esp),%eax
 10f:	89 44 24 68          	mov    %eax,0x68(%esp)
 113:	c7 44 24 6c 00 00 08 	movl   $0x98080000,0x6c(%esp)
 11a:	98 
 11b:	c7 44 24 70 00 00 00 	movl   $0x0,0x70(%esp)
 122:	00 
 123:	8d 4c 24 1c          	lea    0x1c(%esp),%ecx
 127:	89 f3                	mov    %esi,%ebx
 129:	8d 56 2c             	lea    0x2c(%esi),%edx
 12c:	88 c8                	mov    %cl,%al
 12e:	ee                   	out    %al,(%dx)
 12f:	89 c8                	mov    %ecx,%eax
 131:	c1 e8 08             	shr    $0x8,%eax
 134:	8d 56 2d             	lea    0x2d(%esi),%edx
 137:	ee                   	out    %al,(%dx)
 138:	89 c8                	mov    %ecx,%eax
 13a:	c1 e8 10             	shr    $0x10,%eax
 13d:	8d 56 2e             	lea    0x2e(%esi),%edx
 140:	ee                   	out    %al,(%dx)
 141:	89 c8                	mov    %ecx,%eax
 143:	c1 e8 18             	shr    $0x18,%eax
 146:	8d 56 2f             	lea    0x2f(%esi),%edx
 149:	ee                   	out    %al,(%dx)
 14a:	8d 53 0c             	lea    0xc(%ebx),%edx
 14d:	ec                   	in     (%dx),%al
 14e:	89 c6                	mov    %eax,%esi
 150:	8d 53 42             	lea    0x42(%ebx),%edx
 153:	ec                   	in     (%dx),%al
 154:	88 c1                	mov    %al,%cl
 156:	8d 53 43             	lea    0x43(%ebx),%edx
 159:	ec                   	in     (%dx),%al
 15a:	08 c8                	or     %cl,%al
 15c:	75 22                	jne    180 <lsi_scsi_process_op+0x180>
 15e:	83 e6 04             	and    $0x4,%esi
 161:	75 0c                	jne    16f <lsi_scsi_process_op+0x16f>
 163:	b8 05 00 00 00       	mov    $0x5,%eax
 168:	e8 fc ff ff ff       	call   169 <lsi_scsi_process_op+0x169>
 16d:	eb db                	jmp    14a <lsi_scsi_process_op+0x14a>
 16f:	8a 44 24 07          	mov    0x7(%esp),%al
 173:	0a 44 24 06          	or     0x6(%esp),%al
 177:	f6 d8                	neg    %al
 179:	19 c0                	sbb    %eax,%eax
 17b:	83 e0 0c             	and    $0xc,%eax
 17e:	eb 05                	jmp    185 <lsi_scsi_process_op+0x185>
 180:	b8 0c 00 00 00       	mov    $0xc,%eax
 185:	83 c4 74             	add    $0x74,%esp
 188:	5b                   	pop    %ebx
 189:	5e                   	pop    %esi
 18a:	5f                   	pop    %edi
 18b:	5d                   	pop    %ebp
 18c:	c3                   	ret    

Disassembly of section .text.lsi_scsi_setup:

00000000 <lsi_scsi_setup>:
   0:	53                   	push   %ebx
   1:	68 30 00 00 00       	push   $0x30
   6:	e8 fc ff ff ff       	call   7 <lsi_scsi_setup+0x7>
   b:	a1 00 00 00 00       	mov    0x0,%eax
  10:	8d 58 fc             	lea    -0x4(%eax),%ebx
  13:	58                   	pop    %eax
  14:	83 fb fc             	cmp    $0xfffffffc,%ebx
  17:	74 1d                	je     36 <lsi_scsi_setup+0x36>
  19:	81 7b 10 00 10 12 00 	cmpl   $0x121000,0x10(%ebx)
  20:	75 0c                	jne    2e <lsi_scsi_setup+0x2e>
  22:	89 da                	mov    %ebx,%edx
  24:	b8 00 00 00 00       	mov    $0x0,%eax
  29:	e8 fc ff ff ff       	call   2a <lsi_scsi_setup+0x2a>
  2e:	8b 5b 04             	mov    0x4(%ebx),%ebx
  31:	83 eb 04             	sub    $0x4,%ebx
  34:	eb de                	jmp    14 <lsi_scsi_setup+0x14>
  36:	5b                   	pop    %ebx
  37:	c3                   	ret    
