
./blockcmd.o:     file format elf32-i386


Disassembly of section .text.cpu_to_be32:

00000000 <be32_to_cpu>:
   0:	0f c8                	bswap  %eax
   2:	c3                   	ret    

Disassembly of section .text.scsi_fill_cmd:

00000000 <scsi_fill_cmd>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 c3                	mov    %eax,%ebx
   6:	89 d5                	mov    %edx,%ebp
   8:	8a 40 08             	mov    0x8(%eax),%al
   b:	3c 03                	cmp    $0x3,%al
   d:	77 06                	ja     15 <scsi_fill_cmd+0x15>
   f:	3c 01                	cmp    $0x1,%al
  11:	76 06                	jbe    19 <scsi_fill_cmd+0x19>
  13:	eb 09                	jmp    1e <scsi_fill_cmd+0x1e>
  15:	3c 20                	cmp    $0x20,%al
  17:	74 3a                	je     53 <scsi_fill_cmd+0x53>
  19:	83 c8 ff             	or     $0xffffffff,%eax
  1c:	eb 40                	jmp    5e <scsi_fill_cmd+0x5e>
  1e:	31 d2                	xor    %edx,%edx
  20:	89 e8                	mov    %ebp,%eax
  22:	e8 fc ff ff ff       	call   23 <scsi_fill_cmd+0x23>
  27:	80 7b 08 02          	cmpb   $0x2,0x8(%ebx)
  2b:	0f 95 c0             	setne  %al
  2e:	8d 44 00 28          	lea    0x28(%eax,%eax,1),%eax
  32:	88 45 00             	mov    %al,0x0(%ebp)
  35:	8b 43 0c             	mov    0xc(%ebx),%eax
  38:	e8 fc ff ff ff       	call   39 <scsi_fill_cmd+0x39>
  3d:	89 45 02             	mov    %eax,0x2(%ebp)
  40:	66 8b 43 0a          	mov    0xa(%ebx),%ax
  44:	86 e0                	xchg   %ah,%al
  46:	66 89 45 07          	mov    %ax,0x7(%ebp)
  4a:	8b 43 04             	mov    0x4(%ebx),%eax
  4d:	0f b7 40 1a          	movzwl 0x1a(%eax),%eax
  51:	eb 0b                	jmp    5e <scsi_fill_cmd+0x5e>
  53:	8b 73 10             	mov    0x10(%ebx),%esi
  56:	89 d7                	mov    %edx,%edi
  58:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  5a:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
  5e:	5b                   	pop    %ebx
  5f:	5e                   	pop    %esi
  60:	5f                   	pop    %edi
  61:	5d                   	pop    %ebp
  62:	c3                   	ret    

Disassembly of section .text.scsi_is_read:

00000000 <scsi_is_read>:
   0:	8a 48 08             	mov    0x8(%eax),%cl
   3:	ba 01 00 00 00       	mov    $0x1,%edx
   8:	80 f9 02             	cmp    $0x2,%cl
   b:	74 11                	je     1e <scsi_is_read+0x1e>
   d:	31 d2                	xor    %edx,%edx
   f:	80 f9 20             	cmp    $0x20,%cl
  12:	75 0a                	jne    1e <scsi_is_read+0x1e>
  14:	31 d2                	xor    %edx,%edx
  16:	66 83 78 0c 00       	cmpw   $0x0,0xc(%eax)
  1b:	0f 95 c2             	setne  %dl
  1e:	89 d0                	mov    %edx,%eax
  20:	c3                   	ret    

Disassembly of section .text.scsi_is_ready:

00000000 <scsi_is_ready>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 2c             	sub    $0x2c,%esp
   7:	89 c3                	mov    %eax,%ebx
   9:	ff 70 04             	push   0x4(%eax)
   c:	68 00 00 00 00       	push   $0x0
  11:	e8 fc ff ff ff       	call   12 <scsi_is_ready+0x12>
  16:	b8 88 13 00 00       	mov    $0x1388,%eax
  1b:	e8 fc ff ff ff       	call   1c <scsi_is_ready+0x1c>
  20:	89 44 24 0c          	mov    %eax,0xc(%esp)
  24:	5e                   	pop    %esi
  25:	5f                   	pop    %edi
  26:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  2d:	be 03 00 00 00       	mov    $0x3,%esi
  32:	8b 44 24 04          	mov    0x4(%esp),%eax
  36:	e8 fc ff ff ff       	call   37 <scsi_is_ready+0x37>
  3b:	85 c0                	test   %eax,%eax
  3d:	74 10                	je     4f <scsi_is_ready+0x4f>
  3f:	68 1a 00 00 00       	push   $0x1a
  44:	e8 fc ff ff ff       	call   45 <scsi_is_ready+0x45>
  49:	5b                   	pop    %ebx
  4a:	e9 d3 00 00 00       	jmp    122 <scsi_is_ready+0x122>
  4f:	8d 7c 24 1a          	lea    0x1a(%esp),%edi
  53:	b9 10 00 00 00       	mov    $0x10,%ecx
  58:	31 d2                	xor    %edx,%edx
  5a:	89 f8                	mov    %edi,%eax
  5c:	e8 fc ff ff ff       	call   5d <scsi_is_ready+0x5d>
  61:	c6 44 24 1a 00       	movb   $0x0,0x1a(%esp)
  66:	c6 43 08 20          	movb   $0x20,0x8(%ebx)
  6a:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
  70:	89 7b 10             	mov    %edi,0x10(%ebx)
  73:	c7 43 0a 00 00 00 00 	movl   $0x0,0xa(%ebx)
  7a:	89 d8                	mov    %ebx,%eax
  7c:	e8 fc ff ff ff       	call   7d <scsi_is_ready+0x7d>
  81:	85 c0                	test   %eax,%eax
  83:	0f 84 9c 00 00 00    	je     125 <scsi_is_ready+0x125>
  89:	8d 6c 24 0a          	lea    0xa(%esp),%ebp
  8d:	b9 10 00 00 00       	mov    $0x10,%ecx
  92:	31 d2                	xor    %edx,%edx
  94:	89 e8                	mov    %ebp,%eax
  96:	e8 fc ff ff ff       	call   97 <scsi_is_ready+0x97>
  9b:	c6 44 24 0a 03       	movb   $0x3,0xa(%esp)
  a0:	c6 44 24 0e 12       	movb   $0x12,0xe(%esp)
  a5:	c6 43 08 20          	movb   $0x20,0x8(%ebx)
  a9:	89 3b                	mov    %edi,(%ebx)
  ab:	89 6b 10             	mov    %ebp,0x10(%ebx)
  ae:	c7 43 0a 01 00 12 00 	movl   $0x120001,0xa(%ebx)
  b5:	89 d8                	mov    %ebx,%eax
  b7:	e8 fc ff ff ff       	call   b8 <scsi_is_ready+0xb8>
  bc:	85 c0                	test   %eax,%eax
  be:	0f 85 6e ff ff ff    	jne    32 <scsi_is_ready+0x32>
  c4:	80 7c 24 26 3a       	cmpb   $0x3a,0x26(%esp)
  c9:	75 12                	jne    dd <scsi_is_ready+0xdd>
  cb:	4e                   	dec    %esi
  cc:	56                   	push   %esi
  cd:	68 32 00 00 00       	push   $0x32
  d2:	e8 fc ff ff ff       	call   d3 <scsi_is_ready+0xd3>
  d7:	5a                   	pop    %edx
  d8:	59                   	pop    %ecx
  d9:	85 f6                	test   %esi,%esi
  db:	74 45                	je     122 <scsi_is_ready+0x122>
  dd:	80 7c 24 26 04       	cmpb   $0x4,0x26(%esp)
  e2:	0f 85 4a ff ff ff    	jne    32 <scsi_is_ready+0x32>
  e8:	80 7c 24 27 01       	cmpb   $0x1,0x27(%esp)
  ed:	0f 85 3f ff ff ff    	jne    32 <scsi_is_ready+0x32>
  f3:	83 3c 24 00          	cmpl   $0x0,(%esp)
  f7:	0f 85 35 ff ff ff    	jne    32 <scsi_is_ready+0x32>
  fd:	68 65 00 00 00       	push   $0x65
 102:	e8 fc ff ff ff       	call   103 <scsi_is_ready+0x103>
 107:	b8 30 75 00 00       	mov    $0x7530,%eax
 10c:	e8 fc ff ff ff       	call   10d <scsi_is_ready+0x10d>
 111:	89 44 24 08          	mov    %eax,0x8(%esp)
 115:	58                   	pop    %eax
 116:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 11d:	e9 10 ff ff ff       	jmp    32 <scsi_is_ready+0x32>
 122:	83 c8 ff             	or     $0xffffffff,%eax
 125:	83 c4 2c             	add    $0x2c,%esp
 128:	5b                   	pop    %ebx
 129:	5e                   	pop    %esi
 12a:	5f                   	pop    %edi
 12b:	5d                   	pop    %ebp
 12c:	c3                   	ret    

Disassembly of section .text.scsi_rep_luns_scan:

00000000 <scsi_rep_luns_scan>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 40             	sub    $0x40,%esp
   7:	89 04 24             	mov    %eax,(%esp)
   a:	89 54 24 10          	mov    %edx,0x10(%esp)
   e:	8d 7c 24 1c          	lea    0x1c(%esp),%edi
  12:	31 c0                	xor    %eax,%eax
  14:	b9 04 00 00 00       	mov    $0x4,%ecx
  19:	f3 ab                	rep stos %eax,%es:(%edi)
  1b:	c6 44 24 1c a0       	movb   $0xa0,0x1c(%esp)
  20:	8d 7c 24 2c          	lea    0x2c(%esp),%edi
  24:	b9 04 00 00 00       	mov    $0x4,%ecx
  29:	f3 ab                	rep stos %eax,%es:(%edi)
  2b:	8b 04 24             	mov    (%esp),%eax
  2e:	89 44 24 30          	mov    %eax,0x30(%esp)
  32:	c6 44 24 34 20       	movb   $0x20,0x34(%esp)
  37:	66 c7 44 24 36 01 00 	movw   $0x1,0x36(%esp)
  3e:	8d 44 24 1c          	lea    0x1c(%esp),%eax
  42:	89 44 24 3c          	mov    %eax,0x3c(%esp)
  46:	bb 01 00 00 00       	mov    $0x1,%ebx
  4b:	8d 14 dd 08 00 00 00 	lea    0x8(,%ebx,8),%edx
  52:	66 89 54 24 38       	mov    %dx,0x38(%esp)
  57:	0f b7 d2             	movzwl %dx,%edx
  5a:	b9 10 00 00 00       	mov    $0x10,%ecx
  5f:	89 54 24 04          	mov    %edx,0x4(%esp)
  63:	b8 00 00 00 00       	mov    $0x0,%eax
  68:	e8 fc ff ff ff       	call   69 <scsi_rep_luns_scan+0x69>
  6d:	85 c0                	test   %eax,%eax
  6f:	8b 54 24 04          	mov    0x4(%esp),%edx
  73:	75 0f                	jne    84 <scsi_rep_luns_scan+0x84>
  75:	b9 10 00 00 00       	mov    $0x10,%ecx
  7a:	b8 00 00 00 00       	mov    $0x0,%eax
  7f:	e8 fc ff ff ff       	call   80 <scsi_rep_luns_scan+0x80>
  84:	89 44 24 2c          	mov    %eax,0x2c(%esp)
  88:	85 c0                	test   %eax,%eax
  8a:	75 17                	jne    a3 <scsi_rep_luns_scan+0xa3>
  8c:	ba 00 00 00 00       	mov    $0x0,%edx
  91:	b8 f4 00 00 00       	mov    $0xf4,%eax
  96:	e8 fc ff ff ff       	call   97 <scsi_rep_luns_scan+0x97>
  9b:	83 cb ff             	or     $0xffffffff,%ebx
  9e:	e9 c5 00 00 00       	jmp    168 <scsi_rep_luns_scan+0x168>
  a3:	0f b7 44 24 38       	movzwl 0x38(%esp),%eax
  a8:	e8 fc ff ff ff       	call   a9 <scsi_rep_luns_scan+0xa9>
  ad:	89 44 24 22          	mov    %eax,0x22(%esp)
  b1:	8d 44 24 2c          	lea    0x2c(%esp),%eax
  b5:	e8 fc ff ff ff       	call   b6 <scsi_rep_luns_scan+0xb6>
  ba:	85 c0                	test   %eax,%eax
  bc:	0f 85 9a 00 00 00    	jne    15c <scsi_rep_luns_scan+0x15c>
  c2:	8b 7c 24 2c          	mov    0x2c(%esp),%edi
  c6:	8b 07                	mov    (%edi),%eax
  c8:	e8 fc ff ff ff       	call   c9 <scsi_rep_luns_scan+0xc9>
  cd:	c1 e8 03             	shr    $0x3,%eax
  d0:	89 c6                	mov    %eax,%esi
  d2:	39 c3                	cmp    %eax,%ebx
  d4:	72 11                	jb     e7 <scsi_rep_luns_scan+0xe7>
  d6:	8d 04 85 00 00 00 00 	lea    0x0(,%eax,4),%eax
  dd:	89 44 24 0c          	mov    %eax,0xc(%esp)
  e1:	31 db                	xor    %ebx,%ebx
  e3:	31 f6                	xor    %esi,%esi
  e5:	eb 58                	jmp    13f <scsi_rep_luns_scan+0x13f>
  e7:	89 f8                	mov    %edi,%eax
  e9:	e8 fc ff ff ff       	call   ea <scsi_rep_luns_scan+0xea>
  ee:	89 f3                	mov    %esi,%ebx
  f0:	e9 56 ff ff ff       	jmp    4b <scsi_rep_luns_scan+0x4b>
  f5:	8b 44 24 08          	mov    0x8(%esp),%eax
  f9:	66 8b 4c 68 08       	mov    0x8(%eax,%ebp,2),%cx
  fe:	86 e9                	xchg   %ch,%cl
 100:	0f b7 c1             	movzwl %cx,%eax
 103:	89 e9                	mov    %ebp,%ecx
 105:	c1 e1 04             	shl    $0x4,%ecx
 108:	d3 e0                	shl    %cl,%eax
 10a:	89 c1                	mov    %eax,%ecx
 10c:	89 44 24 14          	mov    %eax,0x14(%esp)
 110:	c1 f8 1f             	sar    $0x1f,%eax
 113:	89 44 24 18          	mov    %eax,0x18(%esp)
 117:	09 4c 24 04          	or     %ecx,0x4(%esp)
 11b:	0b 54 24 18          	or     0x18(%esp),%edx
 11f:	45                   	inc    %ebp
 120:	83 fd 04             	cmp    $0x4,%ebp
 123:	75 d0                	jne    f5 <scsi_rep_luns_scan+0xf5>
 125:	85 d2                	test   %edx,%edx
 127:	75 13                	jne    13c <scsi_rep_luns_scan+0x13c>
 129:	8b 14 24             	mov    (%esp),%edx
 12c:	8b 44 24 04          	mov    0x4(%esp),%eax
 130:	8b 4c 24 10          	mov    0x10(%esp),%ecx
 134:	ff d1                	call   *%ecx
 136:	83 f8 01             	cmp    $0x1,%eax
 139:	83 d3 00             	adc    $0x0,%ebx
 13c:	83 c6 04             	add    $0x4,%esi
 13f:	39 74 24 0c          	cmp    %esi,0xc(%esp)
 143:	74 1a                	je     15f <scsi_rep_luns_scan+0x15f>
 145:	8d 04 36             	lea    (%esi,%esi,1),%eax
 148:	01 f8                	add    %edi,%eax
 14a:	89 44 24 08          	mov    %eax,0x8(%esp)
 14e:	31 ed                	xor    %ebp,%ebp
 150:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 157:	00 
 158:	31 d2                	xor    %edx,%edx
 15a:	eb 99                	jmp    f5 <scsi_rep_luns_scan+0xf5>
 15c:	83 cb ff             	or     $0xffffffff,%ebx
 15f:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 163:	e8 fc ff ff ff       	call   164 <scsi_rep_luns_scan+0x164>
 168:	89 d8                	mov    %ebx,%eax
 16a:	83 c4 40             	add    $0x40,%esp
 16d:	5b                   	pop    %ebx
 16e:	5e                   	pop    %esi
 16f:	5f                   	pop    %edi
 170:	5d                   	pop    %ebp
 171:	c3                   	ret    

Disassembly of section .text.scsi_sequential_scan:

00000000 <scsi_sequential_scan>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	53                   	push   %ebx
   5:	89 c5                	mov    %eax,%ebp
   7:	89 d7                	mov    %edx,%edi
   9:	31 db                	xor    %ebx,%ebx
   b:	31 f6                	xor    %esi,%esi
   d:	39 fb                	cmp    %edi,%ebx
   f:	74 15                	je     26 <scsi_sequential_scan+0x26>
  11:	89 ea                	mov    %ebp,%edx
  13:	89 d8                	mov    %ebx,%eax
  15:	89 0c 24             	mov    %ecx,(%esp)
  18:	ff d1                	call   *%ecx
  1a:	83 f8 01             	cmp    $0x1,%eax
  1d:	83 d6 00             	adc    $0x0,%esi
  20:	43                   	inc    %ebx
  21:	8b 0c 24             	mov    (%esp),%ecx
  24:	eb e7                	jmp    d <scsi_sequential_scan+0xd>
  26:	89 f0                	mov    %esi,%eax
  28:	5a                   	pop    %edx
  29:	5b                   	pop    %ebx
  2a:	5e                   	pop    %esi
  2b:	5f                   	pop    %edi
  2c:	5d                   	pop    %ebp
  2d:	c3                   	ret    

Disassembly of section .text.scsi_drive_setup:

00000000 <scsi_drive_setup>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	81 ec 9c 00 00 00    	sub    $0x9c,%esp
   a:	89 c6                	mov    %eax,%esi
   c:	89 14 24             	mov    %edx,(%esp)
   f:	89 4c 24 04          	mov    %ecx,0x4(%esp)
  13:	b9 14 00 00 00       	mov    $0x14,%ecx
  18:	31 d2                	xor    %edx,%edx
  1a:	8d 44 24 48          	lea    0x48(%esp),%eax
  1e:	e8 fc ff ff ff       	call   1f <scsi_drive_setup+0x1f>
  23:	89 74 24 4c          	mov    %esi,0x4c(%esp)
  27:	8d 6c 24 5d          	lea    0x5d(%esp),%ebp
  2b:	b9 10 00 00 00       	mov    $0x10,%ecx
  30:	31 d2                	xor    %edx,%edx
  32:	89 e8                	mov    %ebp,%eax
  34:	e8 fc ff ff ff       	call   35 <scsi_drive_setup+0x35>
  39:	c6 44 24 5d 12       	movb   $0x12,0x5d(%esp)
  3e:	c6 44 24 61 24       	movb   $0x24,0x61(%esp)
  43:	c6 44 24 50 20       	movb   $0x20,0x50(%esp)
  48:	8d 44 24 78          	lea    0x78(%esp),%eax
  4c:	89 44 24 48          	mov    %eax,0x48(%esp)
  50:	89 6c 24 58          	mov    %ebp,0x58(%esp)
  54:	c7 44 24 52 01 00 24 	movl   $0x240001,0x52(%esp)
  5b:	00 
  5c:	8d 44 24 48          	lea    0x48(%esp),%eax
  60:	e8 fc ff ff ff       	call   61 <scsi_drive_setup+0x61>
  65:	89 c3                	mov    %eax,%ebx
  67:	85 c0                	test   %eax,%eax
  69:	0f 85 91 02 00 00    	jne    300 <scsi_drive_setup+0x300>
  6f:	b9 09 00 00 00       	mov    $0x9,%ecx
  74:	8d 94 24 80 00 00 00 	lea    0x80(%esp),%edx
  7b:	8d 44 24 1e          	lea    0x1e(%esp),%eax
  7f:	e8 fc ff ff ff       	call   80 <scsi_drive_setup+0x80>
  84:	8d 44 24 1e          	lea    0x1e(%esp),%eax
  88:	e8 fc ff ff ff       	call   89 <scsi_drive_setup+0x89>
  8d:	8d 7c 24 37          	lea    0x37(%esp),%edi
  91:	b9 11 00 00 00       	mov    $0x11,%ecx
  96:	8d 94 24 88 00 00 00 	lea    0x88(%esp),%edx
  9d:	89 f8                	mov    %edi,%eax
  9f:	e8 fc ff ff ff       	call   a0 <scsi_drive_setup+0xa0>
  a4:	89 f8                	mov    %edi,%eax
  a6:	e8 fc ff ff ff       	call   a7 <scsi_drive_setup+0xa7>
  ab:	b9 05 00 00 00       	mov    $0x5,%ecx
  b0:	8d 94 24 98 00 00 00 	lea    0x98(%esp),%edx
  b7:	8d 44 24 11          	lea    0x11(%esp),%eax
  bb:	e8 fc ff ff ff       	call   bc <scsi_drive_setup+0xbc>
  c0:	8d 44 24 11          	lea    0x11(%esp),%eax
  c4:	e8 fc ff ff ff       	call   c5 <scsi_drive_setup+0xc5>
  c9:	8a 44 24 78          	mov    0x78(%esp),%al
  cd:	88 c1                	mov    %al,%cl
  cf:	83 e1 1f             	and    $0x1f,%ecx
  d2:	88 4c 24 0e          	mov    %cl,0xe(%esp)
  d6:	83 e0 1f             	and    $0x1f,%eax
  d9:	8a 54 24 79          	mov    0x79(%esp),%dl
  dd:	c0 ea 07             	shr    $0x7,%dl
  e0:	0f b6 ca             	movzbl %dl,%ecx
  e3:	88 54 24 0f          	mov    %dl,0xf(%esp)
  e7:	51                   	push   %ecx
  e8:	50                   	push   %eax
  e9:	89 44 24 10          	mov    %eax,0x10(%esp)
  ed:	8d 44 24 19          	lea    0x19(%esp),%eax
  f1:	50                   	push   %eax
  f2:	57                   	push   %edi
  f3:	8d 44 24 2e          	lea    0x2e(%esp),%eax
  f7:	50                   	push   %eax
  f8:	ff 74 24 14          	push   0x14(%esp)
  fc:	68 8d 00 00 00       	push   $0x8d
 101:	e8 fc ff ff ff       	call   102 <scsi_drive_setup+0x102>
 106:	8a 54 24 2b          	mov    0x2b(%esp),%dl
 10a:	88 56 18             	mov    %dl,0x18(%esi)
 10d:	83 c4 1c             	add    $0x1c,%esp
 110:	80 7c 24 0e 05       	cmpb   $0x5,0xe(%esp)
 115:	8b 44 24 08          	mov    0x8(%esp),%eax
 119:	75 41                	jne    15c <scsi_drive_setup+0x15c>
 11b:	66 c7 46 1a 00 08    	movw   $0x800,0x1a(%esi)
 121:	c7 46 0c ff ff ff ff 	movl   $0xffffffff,0xc(%esi)
 128:	c7 46 10 ff ff ff ff 	movl   $0xffffffff,0x10(%esi)
 12f:	8d 44 24 11          	lea    0x11(%esp),%eax
 133:	50                   	push   %eax
 134:	57                   	push   %edi
 135:	8d 44 24 26          	lea    0x26(%esp),%eax
 139:	50                   	push   %eax
 13a:	ff 74 24 0c          	push   0xc(%esp)
 13e:	68 c8 00 00 00       	push   $0xc8
 143:	6a 50                	push   $0x50
 145:	e8 fc ff ff ff       	call   146 <scsi_drive_setup+0x146>
 14a:	89 c2                	mov    %eax,%edx
 14c:	8b 4c 24 1c          	mov    0x1c(%esp),%ecx
 150:	89 f0                	mov    %esi,%eax
 152:	e8 fc ff ff ff       	call   153 <scsi_drive_setup+0x153>
 157:	e9 a1 01 00 00       	jmp    2fd <scsi_drive_setup+0x2fd>
 15c:	83 cb ff             	or     $0xffffffff,%ebx
 15f:	85 c0                	test   %eax,%eax
 161:	0f 85 99 01 00 00    	jne    300 <scsi_drive_setup+0x300>
 167:	8d 44 24 48          	lea    0x48(%esp),%eax
 16b:	e8 fc ff ff ff       	call   16c <scsi_drive_setup+0x16c>
 170:	89 c3                	mov    %eax,%ebx
 172:	85 c0                	test   %eax,%eax
 174:	74 12                	je     188 <scsi_drive_setup+0x188>
 176:	50                   	push   %eax
 177:	68 e3 00 00 00       	push   $0xe3
 17c:	e8 fc ff ff ff       	call   17d <scsi_drive_setup+0x17d>
 181:	58                   	pop    %eax
 182:	5a                   	pop    %edx
 183:	e9 78 01 00 00       	jmp    300 <scsi_drive_setup+0x300>
 188:	b9 10 00 00 00       	mov    $0x10,%ecx
 18d:	31 d2                	xor    %edx,%edx
 18f:	89 e8                	mov    %ebp,%eax
 191:	e8 fc ff ff ff       	call   192 <scsi_drive_setup+0x192>
 196:	c6 44 24 5d 25       	movb   $0x25,0x5d(%esp)
 19b:	c6 44 24 50 20       	movb   $0x20,0x50(%esp)
 1a0:	8d 44 24 16          	lea    0x16(%esp),%eax
 1a4:	89 44 24 48          	mov    %eax,0x48(%esp)
 1a8:	89 6c 24 58          	mov    %ebp,0x58(%esp)
 1ac:	c7 44 24 52 01 00 08 	movl   $0x80001,0x52(%esp)
 1b3:	00 
 1b4:	8d 44 24 48          	lea    0x48(%esp),%eax
 1b8:	e8 fc ff ff ff       	call   1b9 <scsi_drive_setup+0x1b9>
 1bd:	89 c3                	mov    %eax,%ebx
 1bf:	85 c0                	test   %eax,%eax
 1c1:	0f 85 39 01 00 00    	jne    300 <scsi_drive_setup+0x300>
 1c7:	8b 44 24 1a          	mov    0x1a(%esp),%eax
 1cb:	e8 fc ff ff ff       	call   1cc <scsi_drive_setup+0x1cc>
 1d0:	66 89 46 1a          	mov    %ax,0x1a(%esi)
 1d4:	66 3d 00 02          	cmp    $0x200,%ax
 1d8:	74 1d                	je     1f7 <scsi_drive_setup+0x1f7>
 1da:	0f b7 c0             	movzwl %ax,%eax
 1dd:	50                   	push   %eax
 1de:	ff 74 24 04          	push   0x4(%esp)
 1e2:	68 fe 00 00 00       	push   $0xfe
 1e7:	e8 fc ff ff ff       	call   1e8 <scsi_drive_setup+0x1e8>
 1ec:	83 c4 0c             	add    $0xc,%esp
 1ef:	83 cb ff             	or     $0xffffffff,%ebx
 1f2:	e9 09 01 00 00       	jmp    300 <scsi_drive_setup+0x300>
 1f7:	8b 44 24 16          	mov    0x16(%esp),%eax
 1fb:	e8 fc ff ff ff       	call   1fc <scsi_drive_setup+0x1fc>
 200:	89 c1                	mov    %eax,%ecx
 202:	31 d2                	xor    %edx,%edx
 204:	83 c0 01             	add    $0x1,%eax
 207:	83 d2 00             	adc    $0x0,%edx
 20a:	89 46 0c             	mov    %eax,0xc(%esi)
 20d:	89 56 10             	mov    %edx,0x10(%esi)
 210:	41                   	inc    %ecx
 211:	51                   	push   %ecx
 212:	68 00 02 00 00       	push   $0x200
 217:	ff 74 24 08          	push   0x8(%esp)
 21b:	68 1d 01 00 00       	push   $0x11d
 220:	e8 fc ff ff ff       	call   221 <scsi_drive_setup+0x221>
 225:	b9 05 00 00 00       	mov    $0x5,%ecx
 22a:	ba 37 01 00 00       	mov    $0x137,%edx
 22f:	8d 44 24 2e          	lea    0x2e(%esp),%eax
 233:	e8 fc ff ff ff       	call   234 <scsi_drive_setup+0x234>
 238:	83 c4 10             	add    $0x10,%esp
 23b:	85 c0                	test   %eax,%eax
 23d:	0f 85 8e 00 00 00    	jne    2d1 <scsi_drive_setup+0x2d1>
 243:	8d 7c 24 27          	lea    0x27(%esp),%edi
 247:	b9 10 00 00 00       	mov    $0x10,%ecx
 24c:	31 d2                	xor    %edx,%edx
 24e:	89 f8                	mov    %edi,%eax
 250:	e8 fc ff ff ff       	call   251 <scsi_drive_setup+0x251>
 255:	66 c7 44 24 27 5a 08 	movw   $0x85a,0x27(%esp)
 25c:	c6 44 24 29 04       	movb   $0x4,0x29(%esp)
 261:	66 c7 44 24 2e 00 1b 	movw   $0x1b00,0x2e(%esp)
 268:	c6 44 24 50 20       	movb   $0x20,0x50(%esp)
 26d:	89 6c 24 48          	mov    %ebp,0x48(%esp)
 271:	89 7c 24 58          	mov    %edi,0x58(%esp)
 275:	c7 44 24 52 01 00 1b 	movl   $0x1b0001,0x52(%esp)
 27c:	00 
 27d:	8d 44 24 48          	lea    0x48(%esp),%eax
 281:	e8 fc ff ff ff       	call   282 <scsi_drive_setup+0x282>
 286:	85 c0                	test   %eax,%eax
 288:	75 47                	jne    2d1 <scsi_drive_setup+0x2d1>
 28a:	0f b6 44 24 67       	movzbl 0x67(%esp),%eax
 28f:	c1 e0 10             	shl    $0x10,%eax
 292:	0f b6 54 24 68       	movzbl 0x68(%esp),%edx
 297:	c1 e2 08             	shl    $0x8,%edx
 29a:	09 d0                	or     %edx,%eax
 29c:	0f b6 7c 24 69       	movzbl 0x69(%esp),%edi
 2a1:	09 c7                	or     %eax,%edi
 2a3:	74 2c                	je     2d1 <scsi_drive_setup+0x2d1>
 2a5:	0f b6 4c 24 6a       	movzbl 0x6a(%esp),%ecx
 2aa:	84 c9                	test   %cl,%cl
 2ac:	74 23                	je     2d1 <scsi_drive_setup+0x2d1>
 2ae:	8b 46 0c             	mov    0xc(%esi),%eax
 2b1:	83 7e 10 00          	cmpl   $0x0,0x10(%esi)
 2b5:	75 1a                	jne    2d1 <scsi_drive_setup+0x2d1>
 2b7:	0f b6 e9             	movzbl %cl,%ebp
 2ba:	0f af ef             	imul   %edi,%ebp
 2bd:	31 d2                	xor    %edx,%edx
 2bf:	f7 f5                	div    %ebp
 2c1:	85 d2                	test   %edx,%edx
 2c3:	75 0c                	jne    2d1 <scsi_drive_setup+0x2d1>
 2c5:	66 89 7e 1e          	mov    %di,0x1e(%esi)
 2c9:	66 89 4e 1c          	mov    %cx,0x1c(%esi)
 2cd:	66 89 46 20          	mov    %ax,0x20(%esi)
 2d1:	8d 44 24 11          	lea    0x11(%esp),%eax
 2d5:	50                   	push   %eax
 2d6:	8d 44 24 3b          	lea    0x3b(%esp),%eax
 2da:	50                   	push   %eax
 2db:	8d 44 24 26          	lea    0x26(%esp),%eax
 2df:	50                   	push   %eax
 2e0:	ff 74 24 0c          	push   0xc(%esp)
 2e4:	68 3c 01 00 00       	push   $0x13c
 2e9:	6a 50                	push   $0x50
 2eb:	e8 fc ff ff ff       	call   2ec <scsi_drive_setup+0x2ec>
 2f0:	89 c2                	mov    %eax,%edx
 2f2:	8b 4c 24 1c          	mov    0x1c(%esp),%ecx
 2f6:	89 f0                	mov    %esi,%eax
 2f8:	e8 fc ff ff ff       	call   2f9 <scsi_drive_setup+0x2f9>
 2fd:	83 c4 18             	add    $0x18,%esp
 300:	89 d8                	mov    %ebx,%eax
 302:	81 c4 9c 00 00 00    	add    $0x9c,%esp
 308:	5b                   	pop    %ebx
 309:	5e                   	pop    %esi
 30a:	5f                   	pop    %edi
 30b:	5d                   	pop    %ebp
 30c:	c3                   	ret    
