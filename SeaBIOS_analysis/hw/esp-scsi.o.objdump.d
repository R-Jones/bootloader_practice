
./esp-scsi.o:     file format elf32-i386


Disassembly of section .text.esp_scsi_add_lun:

00000000 <esp_scsi_add_lun>:
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
  19:	e8 fc ff ff ff       	call   1a <esp_scsi_add_lun+0x1a>
  1e:	85 c0                	test   %eax,%eax
  20:	75 14                	jne    36 <esp_scsi_add_lun+0x36>
  22:	ba 00 00 00 00       	mov    $0x0,%edx
  27:	b8 b0 00 00 00       	mov    $0xb0,%eax
  2c:	e8 fc ff ff ff       	call   2d <esp_scsi_add_lun+0x2d>
  31:	e9 8b 00 00 00       	jmp    c1 <esp_scsi_add_lun+0xc1>
  36:	89 c6                	mov    %eax,%esi
  38:	0f b6 5d 2c          	movzbl 0x2c(%ebp),%ebx
  3c:	8b 7d 28             	mov    0x28(%ebp),%edi
  3f:	8b 6d 24             	mov    0x24(%ebp),%ebp
  42:	b9 30 00 00 00       	mov    $0x30,%ecx
  47:	31 d2                	xor    %edx,%edx
  49:	e8 fc ff ff ff       	call   4a <esp_scsi_add_lun+0x4a>
  4e:	c6 06 81             	movb   $0x81,(%esi)
  51:	0f b7 45 00          	movzwl 0x0(%ebp),%eax
  55:	89 46 14             	mov    %eax,0x14(%esi)
  58:	89 6e 24             	mov    %ebp,0x24(%esi)
  5b:	88 5e 2c             	mov    %bl,0x2c(%esi)
  5e:	8a 04 24             	mov    (%esp),%al
  61:	88 46 2d             	mov    %al,0x2d(%esi)
  64:	89 7e 28             	mov    %edi,0x28(%esi)
  67:	0f b6 f8             	movzbl %al,%edi
  6a:	57                   	push   %edi
  6b:	53                   	push   %ebx
  6c:	55                   	push   %ebp
  6d:	68 00 00 00 00       	push   $0x0
  72:	6a 50                	push   $0x50
  74:	e8 fc ff ff ff       	call   75 <esp_scsi_add_lun+0x75>
  79:	89 c7                	mov    %eax,%edi
  7b:	0f b6 4e 2d          	movzbl 0x2d(%esi),%ecx
  7f:	0f b6 56 2c          	movzbl 0x2c(%esi),%edx
  83:	8b 46 24             	mov    0x24(%esi),%eax
  86:	8d 5e 02             	lea    0x2(%esi),%ebx
  89:	53                   	push   %ebx
  8a:	e8 fc ff ff ff       	call   8b <esp_scsi_add_lun+0x8b>
  8f:	0f b6 4e 2d          	movzbl 0x2d(%esi),%ecx
  93:	0f b6 56 2c          	movzbl 0x2c(%esi),%edx
  97:	8b 46 24             	mov    0x24(%esi),%eax
  9a:	e8 fc ff ff ff       	call   9b <esp_scsi_add_lun+0x9b>
  9f:	89 c1                	mov    %eax,%ecx
  a1:	89 fa                	mov    %edi,%edx
  a3:	89 f0                	mov    %esi,%eax
  a5:	e8 fc ff ff ff       	call   a6 <esp_scsi_add_lun+0xa6>
  aa:	89 c3                	mov    %eax,%ebx
  ac:	89 f8                	mov    %edi,%eax
  ae:	e8 fc ff ff ff       	call   af <esp_scsi_add_lun+0xaf>
  b3:	83 c4 18             	add    $0x18,%esp
  b6:	85 db                	test   %ebx,%ebx
  b8:	74 0a                	je     c4 <esp_scsi_add_lun+0xc4>
  ba:	89 f0                	mov    %esi,%eax
  bc:	e8 fc ff ff ff       	call   bd <esp_scsi_add_lun+0xbd>
  c1:	83 cb ff             	or     $0xffffffff,%ebx
  c4:	89 d8                	mov    %ebx,%eax
  c6:	5a                   	pop    %edx
  c7:	5b                   	pop    %ebx
  c8:	5e                   	pop    %esi
  c9:	5f                   	pop    %edi
  ca:	5d                   	pop    %ebp
  cb:	c3                   	ret    

Disassembly of section .text.init_esp_scsi:

00000000 <init_esp_scsi>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	83 ec 30             	sub    $0x30,%esp
   6:	89 c3                	mov    %eax,%ebx
   8:	ba 10 00 00 00       	mov    $0x10,%edx
   d:	e8 fc ff ff ff       	call   e <init_esp_scsi+0xe>
  12:	0f b7 f8             	movzwl %ax,%edi
  15:	85 ff                	test   %edi,%edi
  17:	74 5c                	je     75 <init_esp_scsi+0x75>
  19:	89 d8                	mov    %ebx,%eax
  1b:	e8 fc ff ff ff       	call   1c <init_esp_scsi+0x1c>
  20:	57                   	push   %edi
  21:	53                   	push   %ebx
  22:	68 0e 00 00 00       	push   $0xe
  27:	e8 fc ff ff ff       	call   28 <init_esp_scsi+0x28>
  2c:	8d 57 0c             	lea    0xc(%edi),%edx
  2f:	b0 02                	mov    $0x2,%al
  31:	ee                   	out    %al,(%dx)
  32:	83 c4 0c             	add    $0xc,%esp
  35:	31 f6                	xor    %esi,%esi
  37:	b9 30 00 00 00       	mov    $0x30,%ecx
  3c:	31 d2                	xor    %edx,%edx
  3e:	89 e0                	mov    %esp,%eax
  40:	e8 fc ff ff ff       	call   41 <init_esp_scsi+0x41>
  45:	c6 04 24 81          	movb   $0x81,(%esp)
  49:	0f b7 03             	movzwl (%ebx),%eax
  4c:	89 44 24 14          	mov    %eax,0x14(%esp)
  50:	89 5c 24 24          	mov    %ebx,0x24(%esp)
  54:	89 f0                	mov    %esi,%eax
  56:	88 44 24 2c          	mov    %al,0x2c(%esp)
  5a:	c6 44 24 2d 00       	movb   $0x0,0x2d(%esp)
  5f:	89 7c 24 28          	mov    %edi,0x28(%esp)
  63:	ba 00 00 00 00       	mov    $0x0,%edx
  68:	89 e0                	mov    %esp,%eax
  6a:	e8 fc ff ff ff       	call   6b <init_esp_scsi+0x6b>
  6f:	46                   	inc    %esi
  70:	83 fe 08             	cmp    $0x8,%esi
  73:	75 c2                	jne    37 <init_esp_scsi+0x37>
  75:	83 c4 30             	add    $0x30,%esp
  78:	5b                   	pop    %ebx
  79:	5e                   	pop    %esi
  7a:	5f                   	pop    %edi
  7b:	c3                   	ret    

Disassembly of section .text.esp_scsi_process_op:

00000000 <esp_scsi_process_op>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 1c             	sub    $0x1c,%esp
   7:	89 c3                	mov    %eax,%ebx
   9:	8b 70 04             	mov    0x4(%eax),%esi
   c:	0f b6 6e 2c          	movzbl 0x2c(%esi),%ebp
  10:	0f b6 7e 2d          	movzbl 0x2d(%esi),%edi
  14:	b9 10 00 00 00       	mov    $0x10,%ecx
  19:	8d 54 24 0c          	lea    0xc(%esp),%edx
  1d:	e8 fc ff ff ff       	call   1e <esp_scsi_process_op+0x1e>
  22:	89 44 24 08          	mov    %eax,0x8(%esp)
  26:	85 c0                	test   %eax,%eax
  28:	79 0e                	jns    38 <esp_scsi_process_op+0x38>
  2a:	89 d8                	mov    %ebx,%eax
  2c:	e8 fc ff ff ff       	call   2d <esp_scsi_process_op+0x2d>
  31:	89 c7                	mov    %eax,%edi
  33:	e9 25 01 00 00       	jmp    15d <esp_scsi_process_op+0x15d>
  38:	8b 4e 28             	mov    0x28(%esi),%ecx
  3b:	89 ce                	mov    %ecx,%esi
  3d:	8d 41 10             	lea    0x10(%ecx),%eax
  40:	66 89 44 24 02       	mov    %ax,0x2(%esp)
  45:	89 e8                	mov    %ebp,%eax
  47:	8d 51 10             	lea    0x10(%ecx),%edx
  4a:	ee                   	out    %al,(%dx)
  4b:	8d 41 08             	lea    0x8(%ecx),%eax
  4e:	66 89 44 24 04       	mov    %ax,0x4(%esp)
  53:	89 f8                	mov    %edi,%eax
  55:	8d 51 08             	lea    0x8(%ecx),%edx
  58:	ee                   	out    %al,(%dx)
  59:	8a 44 24 0d          	mov    0xd(%esp),%al
  5d:	83 e0 1f             	and    $0x1f,%eax
  60:	c1 e7 05             	shl    $0x5,%edi
  63:	09 f8                	or     %edi,%eax
  65:	88 44 24 0d          	mov    %al,0xd(%esp)
  69:	31 ff                	xor    %edi,%edi
  6b:	8a 44 3c 0c          	mov    0xc(%esp,%edi,1),%al
  6f:	8b 54 24 04          	mov    0x4(%esp),%edx
  73:	ee                   	out    %al,(%dx)
  74:	47                   	inc    %edi
  75:	83 ff 0c             	cmp    $0xc,%edi
  78:	75 f1                	jne    6b <esp_scsi_process_op+0x6b>
  7a:	8d 41 0c             	lea    0xc(%ecx),%eax
  7d:	66 89 44 24 06       	mov    %ax,0x6(%esp)
  82:	b0 42                	mov    $0x42,%al
  84:	66 8b 54 24 06       	mov    0x6(%esp),%dx
  89:	ee                   	out    %al,(%dx)
  8a:	31 ed                	xor    %ebp,%ebp
  8c:	66 8b 54 24 02       	mov    0x2(%esp),%dx
  91:	ec                   	in     (%dx),%al
  92:	88 c1                	mov    %al,%cl
  94:	85 ed                	test   %ebp,%ebp
  96:	75 12                	jne    aa <esp_scsi_process_op+0xaa>
  98:	8d 56 14             	lea    0x14(%esi),%edx
  9b:	ec                   	in     (%dx),%al
  9c:	a8 20                	test   $0x20,%al
  9e:	74 51                	je     f1 <esp_scsi_process_op+0xf1>
  a0:	bf aa 00 00 00       	mov    $0xaa,%edi
  a5:	e9 b3 00 00 00       	jmp    15d <esp_scsi_process_op+0x15d>
  aa:	4d                   	dec    %ebp
  ab:	75 1a                	jne    c7 <esp_scsi_process_op+0xc7>
  ad:	bd 01 00 00 00       	mov    $0x1,%ebp
  b2:	80 e1 10             	and    $0x10,%cl
  b5:	74 2e                	je     e5 <esp_scsi_process_op+0xe5>
  b7:	b0 11                	mov    $0x11,%al
  b9:	66 8b 54 24 06       	mov    0x6(%esp),%dx
  be:	ee                   	out    %al,(%dx)
  bf:	66 8b 54 24 02       	mov    0x2(%esp),%dx
  c4:	ec                   	in     (%dx),%al
  c5:	88 c1                	mov    %al,%cl
  c7:	80 e1 04             	and    $0x4,%cl
  ca:	74 14                	je     e0 <esp_scsi_process_op+0xe0>
  cc:	8b 54 24 04          	mov    0x4(%esp),%edx
  d0:	ec                   	in     (%dx),%al
  d1:	88 c1                	mov    %al,%cl
  d3:	ec                   	in     (%dx),%al
  d4:	84 c9                	test   %cl,%cl
  d6:	0f 85 81 00 00 00    	jne    15d <esp_scsi_process_op+0x15d>
  dc:	31 ff                	xor    %edi,%edi
  de:	eb 7d                	jmp    15d <esp_scsi_process_op+0x15d>
  e0:	bd 02 00 00 00       	mov    $0x2,%ebp
  e5:	b8 05 00 00 00       	mov    $0x5,%eax
  ea:	e8 fc ff ff ff       	call   eb <esp_scsi_process_op+0xeb>
  ef:	eb 9b                	jmp    8c <esp_scsi_process_op+0x8c>
  f1:	80 e1 10             	and    $0x10,%cl
  f4:	74 ef                	je     e5 <esp_scsi_process_op+0xe5>
  f6:	0f b7 6b 0a          	movzwl 0xa(%ebx),%ebp
  fa:	83 7c 24 08 00       	cmpl   $0x0,0x8(%esp)
  ff:	74 b6                	je     b7 <esp_scsi_process_op+0xb7>
 101:	66 85 ed             	test   %bp,%bp
 104:	74 b1                	je     b7 <esp_scsi_process_op+0xb7>
 106:	0f af 6c 24 08       	imul   0x8(%esp),%ebp
 10b:	89 d8                	mov    %ebx,%eax
 10d:	e8 fc ff ff ff       	call   10e <esp_scsi_process_op+0x10e>
 112:	89 c1                	mov    %eax,%ecx
 114:	89 e8                	mov    %ebp,%eax
 116:	89 f2                	mov    %esi,%edx
 118:	ee                   	out    %al,(%dx)
 119:	89 e8                	mov    %ebp,%eax
 11b:	c1 e8 08             	shr    $0x8,%eax
 11e:	8d 56 04             	lea    0x4(%esi),%edx
 121:	ee                   	out    %al,(%dx)
 122:	89 e8                	mov    %ebp,%eax
 124:	c1 e8 10             	shr    $0x10,%eax
 127:	8d 56 38             	lea    0x38(%esi),%edx
 12a:	ee                   	out    %al,(%dx)
 12b:	8b 03                	mov    (%ebx),%eax
 12d:	8d 56 48             	lea    0x48(%esi),%edx
 130:	ef                   	out    %eax,(%dx)
 131:	8d 56 44             	lea    0x44(%esi),%edx
 134:	89 e8                	mov    %ebp,%eax
 136:	ef                   	out    %eax,(%dx)
 137:	8d 56 40             	lea    0x40(%esi),%edx
 13a:	83 f9 01             	cmp    $0x1,%ecx
 13d:	19 c0                	sbb    %eax,%eax
 13f:	83 e0 80             	and    $0xffffff80,%eax
 142:	05 83 00 00 00       	add    $0x83,%eax
 147:	ee                   	out    %al,(%dx)
 148:	b0 90                	mov    $0x90,%al
 14a:	66 8b 54 24 06       	mov    0x6(%esp),%dx
 14f:	ee                   	out    %al,(%dx)
 150:	66 8b 54 24 02       	mov    0x2(%esp),%dx
 155:	ec                   	in     (%dx),%al
 156:	88 c1                	mov    %al,%cl
 158:	e9 50 ff ff ff       	jmp    ad <esp_scsi_process_op+0xad>
 15d:	89 f8                	mov    %edi,%eax
 15f:	83 c4 1c             	add    $0x1c,%esp
 162:	5b                   	pop    %ebx
 163:	5e                   	pop    %esi
 164:	5f                   	pop    %edi
 165:	5d                   	pop    %ebp
 166:	c3                   	ret    

Disassembly of section .text.esp_scsi_setup:

00000000 <esp_scsi_setup>:
   0:	53                   	push   %ebx
   1:	68 29 00 00 00       	push   $0x29
   6:	e8 fc ff ff ff       	call   7 <esp_scsi_setup+0x7>
   b:	a1 00 00 00 00       	mov    0x0,%eax
  10:	8d 58 fc             	lea    -0x4(%eax),%ebx
  13:	58                   	pop    %eax
  14:	83 fb fc             	cmp    $0xfffffffc,%ebx
  17:	74 1d                	je     36 <esp_scsi_setup+0x36>
  19:	81 7b 10 22 10 20 20 	cmpl   $0x20201022,0x10(%ebx)
  20:	75 0c                	jne    2e <esp_scsi_setup+0x2e>
  22:	89 da                	mov    %ebx,%edx
  24:	b8 00 00 00 00       	mov    $0x0,%eax
  29:	e8 fc ff ff ff       	call   2a <esp_scsi_setup+0x2a>
  2e:	8b 5b 04             	mov    0x4(%ebx),%ebx
  31:	83 eb 04             	sub    $0x4,%ebx
  34:	eb de                	jmp    14 <esp_scsi_setup+0x14>
  36:	5b                   	pop    %ebx
  37:	c3                   	ret    
