
./mpt-scsi.o:     file format elf32-i386


Disassembly of section .text.mpt_scsi_add_lun:

00000000 <mpt_scsi_add_lun>:
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
  19:	e8 fc ff ff ff       	call   1a <mpt_scsi_add_lun+0x1a>
  1e:	85 c0                	test   %eax,%eax
  20:	75 14                	jne    36 <mpt_scsi_add_lun+0x36>
  22:	ba 00 00 00 00       	mov    $0x0,%edx
  27:	b8 da 00 00 00       	mov    $0xda,%eax
  2c:	e8 fc ff ff ff       	call   2d <mpt_scsi_add_lun+0x2d>
  31:	e9 8c 00 00 00       	jmp    c2 <mpt_scsi_add_lun+0xc2>
  36:	89 c6                	mov    %eax,%esi
  38:	8a 5d 2c             	mov    0x2c(%ebp),%bl
  3b:	8b 7d 28             	mov    0x28(%ebp),%edi
  3e:	8b 6d 24             	mov    0x24(%ebp),%ebp
  41:	b9 30 00 00 00       	mov    $0x30,%ecx
  46:	31 d2                	xor    %edx,%edx
  48:	e8 fc ff ff ff       	call   49 <mpt_scsi_add_lun+0x49>
  4d:	c6 06 84             	movb   $0x84,(%esi)
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
  70:	e8 fc ff ff ff       	call   71 <mpt_scsi_add_lun+0x71>
  75:	0f b6 46 2d          	movzbl 0x2d(%esi),%eax
  79:	50                   	push   %eax
  7a:	0f b6 46 2c          	movzbl 0x2c(%esi),%eax
  7e:	50                   	push   %eax
  7f:	ff 76 24             	push   0x24(%esi)
  82:	68 00 00 00 00       	push   $0x0
  87:	6a 50                	push   $0x50
  89:	e8 fc ff ff ff       	call   8a <mpt_scsi_add_lun+0x8a>
  8e:	89 c7                	mov    %eax,%edi
  90:	0f b6 4e 2d          	movzbl 0x2d(%esi),%ecx
  94:	0f b6 56 2c          	movzbl 0x2c(%esi),%edx
  98:	8b 46 24             	mov    0x24(%esi),%eax
  9b:	e8 fc ff ff ff       	call   9c <mpt_scsi_add_lun+0x9c>
  a0:	89 c1                	mov    %eax,%ecx
  a2:	89 fa                	mov    %edi,%edx
  a4:	89 f0                	mov    %esi,%eax
  a6:	e8 fc ff ff ff       	call   a7 <mpt_scsi_add_lun+0xa7>
  ab:	89 c3                	mov    %eax,%ebx
  ad:	89 f8                	mov    %edi,%eax
  af:	e8 fc ff ff ff       	call   b0 <mpt_scsi_add_lun+0xb0>
  b4:	83 c4 18             	add    $0x18,%esp
  b7:	85 db                	test   %ebx,%ebx
  b9:	74 0a                	je     c5 <mpt_scsi_add_lun+0xc5>
  bb:	89 f0                	mov    %esi,%eax
  bd:	e8 fc ff ff ff       	call   be <mpt_scsi_add_lun+0xbe>
  c2:	83 cb ff             	or     $0xffffffff,%ebx
  c5:	89 d8                	mov    %ebx,%eax
  c7:	5a                   	pop    %edx
  c8:	5b                   	pop    %ebx
  c9:	5e                   	pop    %esi
  ca:	5f                   	pop    %edi
  cb:	5d                   	pop    %ebp
  cc:	c3                   	ret    

Disassembly of section .text.init_mpt_scsi:

00000000 <init_mpt_scsi>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 48             	sub    $0x48,%esp
   7:	89 c7                	mov    %eax,%edi
   9:	ba 10 00 00 00       	mov    $0x10,%edx
   e:	e8 fc ff ff ff       	call   f <init_mpt_scsi+0xf>
  13:	0f b7 e8             	movzwl %ax,%ebp
  16:	85 ed                	test   %ebp,%ebp
  18:	0f 84 d2 00 00 00    	je     f0 <init_mpt_scsi+0xf0>
  1e:	89 eb                	mov    %ebp,%ebx
  20:	89 f8                	mov    %edi,%eax
  22:	e8 fc ff ff ff       	call   23 <init_mpt_scsi+0x23>
  27:	55                   	push   %ebp
  28:	57                   	push   %edi
  29:	0f b7 47 12          	movzwl 0x12(%edi),%eax
  2d:	50                   	push   %eax
  2e:	68 0e 00 00 00       	push   $0xe
  33:	e8 fc ff ff ff       	call   34 <init_mpt_scsi+0x34>
  38:	b8 00 00 00 40       	mov    $0x40000000,%eax
  3d:	89 ea                	mov    %ebp,%edx
  3f:	ef                   	out    %eax,(%dx)
  40:	8d 55 34             	lea    0x34(%ebp),%edx
  43:	b8 09 00 00 00       	mov    $0x9,%eax
  48:	ef                   	out    %eax,(%dx)
  49:	8d 45 30             	lea    0x30(%ebp),%eax
  4c:	66 89 44 24 12       	mov    %ax,0x12(%esp)
  51:	31 c0                	xor    %eax,%eax
  53:	8d 55 30             	lea    0x30(%ebp),%edx
  56:	ef                   	out    %eax,(%dx)
  57:	b8 00 00 06 42       	mov    $0x42060000,%eax
  5c:	89 ea                	mov    %ebp,%edx
  5e:	ef                   	out    %eax,(%dx)
  5f:	b9 06 00 00 00       	mov    $0x6,%ecx
  64:	be 00 00 00 00       	mov    $0x0,%esi
  69:	26 f3 6f             	rep outsl %es:(%esi),(%dx)
  6c:	83 c4 10             	add    $0x10,%esp
  6f:	8d 4c 24 04          	lea    0x4(%esp),%ecx
  73:	8d 74 24 18          	lea    0x18(%esp),%esi
  77:	89 da                	mov    %ebx,%edx
  79:	ed                   	in     (%dx),%eax
  7a:	83 c1 02             	add    $0x2,%ecx
  7d:	66 89 41 fe          	mov    %ax,-0x2(%ecx)
  81:	39 f1                	cmp    %esi,%ecx
  83:	75 f2                	jne    77 <init_mpt_scsi+0x77>
  85:	31 c0                	xor    %eax,%eax
  87:	66 8b 54 24 02       	mov    0x2(%esp),%dx
  8c:	ef                   	out    %eax,(%dx)
  8d:	8d 53 44             	lea    0x44(%ebx),%edx
  90:	b8 00 00 00 00       	mov    $0x0,%eax
  95:	ef                   	out    %eax,(%dx)
  96:	31 db                	xor    %ebx,%ebx
  98:	b9 30 00 00 00       	mov    $0x30,%ecx
  9d:	31 d2                	xor    %edx,%edx
  9f:	8d 44 24 18          	lea    0x18(%esp),%eax
  a3:	e8 fc ff ff ff       	call   a4 <init_mpt_scsi+0xa4>
  a8:	c6 44 24 18 84       	movb   $0x84,0x18(%esp)
  ad:	0f b7 07             	movzwl (%edi),%eax
  b0:	89 44 24 2c          	mov    %eax,0x2c(%esp)
  b4:	89 7c 24 3c          	mov    %edi,0x3c(%esp)
  b8:	88 5c 24 44          	mov    %bl,0x44(%esp)
  bc:	c6 44 24 45 00       	movb   $0x0,0x45(%esp)
  c1:	89 6c 24 40          	mov    %ebp,0x40(%esp)
  c5:	ba 00 00 00 00       	mov    $0x0,%edx
  ca:	8d 44 24 18          	lea    0x18(%esp),%eax
  ce:	e8 fc ff ff ff       	call   cf <init_mpt_scsi+0xcf>
  d3:	85 c0                	test   %eax,%eax
  d5:	79 13                	jns    ea <init_mpt_scsi+0xea>
  d7:	b9 00 00 00 00       	mov    $0x0,%ecx
  dc:	ba 08 00 00 00       	mov    $0x8,%edx
  e1:	8d 44 24 18          	lea    0x18(%esp),%eax
  e5:	e8 fc ff ff ff       	call   e6 <init_mpt_scsi+0xe6>
  ea:	43                   	inc    %ebx
  eb:	83 fb 07             	cmp    $0x7,%ebx
  ee:	75 a8                	jne    98 <init_mpt_scsi+0x98>
  f0:	83 c4 48             	add    $0x48,%esp
  f3:	5b                   	pop    %ebx
  f4:	5e                   	pop    %esi
  f5:	5f                   	pop    %edi
  f6:	5d                   	pop    %ebp
  f7:	c3                   	ret    

Disassembly of section .text.mpt_scsi_process_op:

00000000 <mpt_scsi_process_op>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 68             	sub    $0x68,%esp
   7:	89 c3                	mov    %eax,%ebx
   9:	8d 74 24 0e          	lea    0xe(%esp),%esi
   d:	b9 10 00 00 00       	mov    $0x10,%ecx
  12:	89 f2                	mov    %esi,%edx
  14:	e8 fc ff ff ff       	call   15 <mpt_scsi_process_op+0x15>
  19:	85 c0                	test   %eax,%eax
  1b:	79 0e                	jns    2b <mpt_scsi_process_op+0x2b>
  1d:	89 d8                	mov    %ebx,%eax
  1f:	e8 fc ff ff ff       	call   20 <mpt_scsi_process_op+0x20>
  24:	89 c1                	mov    %eax,%ecx
  26:	e9 05 01 00 00       	jmp    130 <mpt_scsi_process_op+0x130>
  2b:	89 c5                	mov    %eax,%ebp
  2d:	8b 43 04             	mov    0x4(%ebx),%eax
  30:	8a 50 2c             	mov    0x2c(%eax),%dl
  33:	88 54 24 0b          	mov    %dl,0xb(%esp)
  37:	8a 48 2d             	mov    0x2d(%eax),%cl
  3a:	88 4c 24 0a          	mov    %cl,0xa(%esp)
  3e:	8b 40 28             	mov    0x28(%eax),%eax
  41:	89 04 24             	mov    %eax,(%esp)
  44:	b8 60 ea 00 00       	mov    $0xea60,%eax
  49:	e8 fc ff ff ff       	call   4a <mpt_scsi_process_op+0x4a>
  4e:	89 44 24 04          	mov    %eax,0x4(%esp)
  52:	8d 7c 24 30          	lea    0x30(%esp),%edi
  56:	b9 06 00 00 00       	mov    $0x6,%ecx
  5b:	31 c0                	xor    %eax,%eax
  5d:	f3 ab                	rep stos %eax,%es:(%edi)
  5f:	8a 54 24 0b          	mov    0xb(%esp),%dl
  63:	88 54 24 30          	mov    %dl,0x30(%esp)
  67:	66 c7 44 24 34 10 12 	movw   $0x1210,0x34(%esp)
  6e:	8b 44 24 04          	mov    0x4(%esp),%eax
  72:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
  77:	89 44 24 38          	mov    %eax,0x38(%esp)
  7b:	0f b7 c5             	movzwl %bp,%eax
  7e:	0f b7 53 0a          	movzwl 0xa(%ebx),%edx
  82:	0f af c2             	imul   %edx,%eax
  85:	89 44 24 58          	mov    %eax,0x58(%esp)
  89:	8d 54 24 1e          	lea    0x1e(%esp),%edx
  8d:	89 54 24 5c          	mov    %edx,0x5c(%esp)
  91:	0d 00 00 00 d1       	or     $0xd1000000,%eax
  96:	89 44 24 60          	mov    %eax,0x60(%esp)
  9a:	8b 03                	mov    (%ebx),%eax
  9c:	89 44 24 64          	mov    %eax,0x64(%esp)
  a0:	8a 44 24 0a          	mov    0xa(%esp),%al
  a4:	88 44 24 3d          	mov    %al,0x3d(%esp)
  a8:	8d 7c 24 48          	lea    0x48(%esp),%edi
  ac:	b9 04 00 00 00       	mov    $0x4,%ecx
  b1:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  b3:	66 85 ed             	test   %bp,%bp
  b6:	74 25                	je     dd <mpt_scsi_process_op+0xdd>
  b8:	89 d8                	mov    %ebx,%eax
  ba:	e8 fc ff ff ff       	call   bb <mpt_scsi_process_op+0xbb>
  bf:	85 c0                	test   %eax,%eax
  c1:	74 0a                	je     cd <mpt_scsi_process_op+0xcd>
  c3:	c7 44 24 44 00 00 00 	movl   $0x2000000,0x44(%esp)
  ca:	02 
  cb:	eb 10                	jmp    dd <mpt_scsi_process_op+0xdd>
  cd:	c7 44 24 44 00 00 00 	movl   $0x1000000,0x44(%esp)
  d4:	01 
  d5:	81 4c 24 60 00 00 00 	orl    $0x4000000,0x60(%esp)
  dc:	04 
  dd:	8b 1c 24             	mov    (%esp),%ebx
  e0:	89 da                	mov    %ebx,%edx
  e2:	83 c2 40             	add    $0x40,%edx
  e5:	8d 44 24 30          	lea    0x30(%esp),%eax
  e9:	ef                   	out    %eax,(%dx)
  ea:	8b 44 24 04          	mov    0x4(%esp),%eax
  ee:	e8 fc ff ff ff       	call   ef <mpt_scsi_process_op+0xef>
  f3:	89 c1                	mov    %eax,%ecx
  f5:	85 c0                	test   %eax,%eax
  f7:	75 32                	jne    12b <mpt_scsi_process_op+0x12b>
  f9:	8d 53 30             	lea    0x30(%ebx),%edx
  fc:	ed                   	in     (%dx),%eax
  fd:	a8 08                	test   $0x8,%al
  ff:	74 1e                	je     11f <mpt_scsi_process_op+0x11f>
 101:	8d 53 44             	lea    0x44(%ebx),%edx
 104:	ed                   	in     (%dx),%eax
 105:	89 c6                	mov    %eax,%esi
 107:	ed                   	in     (%dx),%eax
 108:	3b 74 24 38          	cmp    0x38(%esp),%esi
 10c:	74 22                	je     130 <mpt_scsi_process_op+0x130>
 10e:	85 f6                	test   %esi,%esi
 110:	79 0d                	jns    11f <mpt_scsi_process_op+0x11f>
 112:	b8 00 00 00 00       	mov    $0x0,%eax
 117:	ef                   	out    %eax,(%dx)
 118:	b9 0c 00 00 00       	mov    $0xc,%ecx
 11d:	eb 11                	jmp    130 <mpt_scsi_process_op+0x130>
 11f:	b8 32 00 00 00       	mov    $0x32,%eax
 124:	e8 fc ff ff ff       	call   125 <mpt_scsi_process_op+0x125>
 129:	eb bf                	jmp    ea <mpt_scsi_process_op+0xea>
 12b:	b9 80 00 00 00       	mov    $0x80,%ecx
 130:	89 c8                	mov    %ecx,%eax
 132:	83 c4 68             	add    $0x68,%esp
 135:	5b                   	pop    %ebx
 136:	5e                   	pop    %esi
 137:	5f                   	pop    %edi
 138:	5d                   	pop    %ebp
 139:	c3                   	ret    

Disassembly of section .text.mpt_scsi_setup:

00000000 <mpt_scsi_setup>:
   0:	53                   	push   %ebx
   1:	68 34 00 00 00       	push   $0x34
   6:	e8 fc ff ff ff       	call   7 <mpt_scsi_setup+0x7>
   b:	a1 00 00 00 00       	mov    0x0,%eax
  10:	8d 58 fc             	lea    -0x4(%eax),%ebx
  13:	58                   	pop    %eax
  14:	83 fb fc             	cmp    $0xfffffffc,%ebx
  17:	74 30                	je     49 <mpt_scsi_setup+0x49>
  19:	66 81 7b 10 00 10    	cmpw   $0x1000,0x10(%ebx)
  1f:	75 20                	jne    41 <mpt_scsi_setup+0x41>
  21:	66 8b 43 12          	mov    0x12(%ebx),%ax
  25:	8d 50 ac             	lea    -0x54(%eax),%edx
  28:	66 f7 c2 fb ff       	test   $0xfffb,%dx
  2d:	74 06                	je     35 <mpt_scsi_setup+0x35>
  2f:	66 83 f8 30          	cmp    $0x30,%ax
  33:	75 0c                	jne    41 <mpt_scsi_setup+0x41>
  35:	89 da                	mov    %ebx,%edx
  37:	b8 00 00 00 00       	mov    $0x0,%eax
  3c:	e8 fc ff ff ff       	call   3d <mpt_scsi_setup+0x3d>
  41:	8b 5b 04             	mov    0x4(%ebx),%ebx
  44:	83 eb 04             	sub    $0x4,%ebx
  47:	eb cb                	jmp    14 <mpt_scsi_setup+0x14>
  49:	5b                   	pop    %ebx
  4a:	c3                   	ret    
