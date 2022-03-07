
./tpm_drivers.o:     file format elf32-i386


Disassembly of section .text.crb_get_tpm_version:

00000000 <crb_get_tpm_version>:
   0:	b0 02                	mov    $0x2,%al
   2:	c3                   	ret    

Disassembly of section .text.crb_activate:

00000000 <crb_activate>:
   0:	0f b6 c0             	movzbl %al,%eax
   3:	c1 e0 0c             	shl    $0xc,%eax
   6:	c6 80 08 00 d4 fe 01 	movb   $0x1,-0x12bfff8(%eax)
   d:	31 c0                	xor    %eax,%eax
   f:	c3                   	ret    

Disassembly of section .text.crb_waitdatavalid:

00000000 <crb_waitdatavalid>:
   0:	31 c0                	xor    %eax,%eax
   2:	c3                   	ret    

Disassembly of section .text.set_timeouts:

00000000 <set_timeouts>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 c6                	mov    %eax,%esi
   6:	89 d5                	mov    %edx,%ebp
   8:	8b 15 00 00 00 00    	mov    0x0,%edx
   e:	a1 04 00 00 00       	mov    0x4,%eax
  13:	85 d2                	test   %edx,%edx
  15:	0f 95 c3             	setne  %bl
  18:	81 fa 00 00 00 00    	cmp    $0x0,%edx
  1e:	0f 95 c1             	setne  %cl
  21:	84 cb                	test   %cl,%bl
  23:	74 0d                	je     32 <set_timeouts+0x32>
  25:	85 f6                	test   %esi,%esi
  27:	74 09                	je     32 <set_timeouts+0x32>
  29:	b9 04 00 00 00       	mov    $0x4,%ecx
  2e:	89 d7                	mov    %edx,%edi
  30:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  32:	3d 00 00 00 00       	cmp    $0x0,%eax
  37:	0f 95 c1             	setne  %cl
  3a:	85 c0                	test   %eax,%eax
  3c:	0f 95 c2             	setne  %dl
  3f:	84 d1                	test   %dl,%cl
  41:	74 0f                	je     52 <set_timeouts+0x52>
  43:	85 ed                	test   %ebp,%ebp
  45:	74 0b                	je     52 <set_timeouts+0x52>
  47:	b9 03 00 00 00       	mov    $0x3,%ecx
  4c:	89 c7                	mov    %eax,%edi
  4e:	89 ee                	mov    %ebp,%esi
  50:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  52:	5b                   	pop    %ebx
  53:	5e                   	pop    %esi
  54:	5f                   	pop    %edi
  55:	5d                   	pop    %ebp
  56:	c3                   	ret    

Disassembly of section .text.tis_get_tpm_version:

00000000 <tis_get_tpm_version>:
   0:	a1 30 00 d4 fe       	mov    0xfed40030,%eax
   5:	83 e0 0f             	and    $0xf,%eax
   8:	83 f8 0f             	cmp    $0xf,%eax
   b:	75 16                	jne    23 <tis_get_tpm_version+0x23>
   d:	a1 14 00 d4 fe       	mov    0xfed40014,%eax
  12:	c1 e8 1c             	shr    $0x1c,%eax
  15:	83 e0 07             	and    $0x7,%eax
  18:	83 f8 03             	cmp    $0x3,%eax
  1b:	74 03                	je     20 <tis_get_tpm_version+0x20>
  1d:	b0 01                	mov    $0x1,%al
  1f:	c3                   	ret    
  20:	b0 02                	mov    $0x2,%al
  22:	c3                   	ret    
  23:	85 c0                	test   %eax,%eax
  25:	eb f4                	jmp    1b <tis_get_tpm_version+0x1b>

Disassembly of section .text.wait_reg8:

00000000 <wait_reg8>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 c7                	mov    %eax,%edi
   6:	89 d0                	mov    %edx,%eax
   8:	89 cd                	mov    %ecx,%ebp
   a:	8a 5c 24 14          	mov    0x14(%esp),%bl
   e:	e8 fc ff ff ff       	call   f <wait_reg8+0xf>
  13:	89 c6                	mov    %eax,%esi
  15:	8b 07                	mov    (%edi),%eax
  17:	21 e8                	and    %ebp,%eax
  19:	38 d8                	cmp    %bl,%al
  1b:	74 28                	je     45 <wait_reg8+0x45>
  1d:	89 f0                	mov    %esi,%eax
  1f:	e8 fc ff ff ff       	call   20 <wait_reg8+0x20>
  24:	85 c0                	test   %eax,%eax
  26:	74 16                	je     3e <wait_reg8+0x3e>
  28:	ba 00 00 00 00       	mov    $0x0,%edx
  2d:	b8 51 00 00 00       	mov    $0x51,%eax
  32:	e8 fc ff ff ff       	call   33 <wait_reg8+0x33>
  37:	b8 01 00 00 00       	mov    $0x1,%eax
  3c:	eb 09                	jmp    47 <wait_reg8+0x47>
  3e:	e8 fc ff ff ff       	call   3f <wait_reg8+0x3f>
  43:	eb d0                	jmp    15 <wait_reg8+0x15>
  45:	31 c0                	xor    %eax,%eax
  47:	5b                   	pop    %ebx
  48:	5e                   	pop    %esi
  49:	5f                   	pop    %edi
  4a:	5d                   	pop    %ebp
  4b:	c3                   	ret    

Disassembly of section .text.tis_activate:

00000000 <tis_activate>:
   0:	53                   	push   %ebx
   1:	8b 15 00 00 00 00    	mov    0x0,%edx
   7:	8b 1a                	mov    (%edx),%ebx
   9:	0f b6 d0             	movzbl %al,%edx
   c:	c1 e2 0c             	shl    $0xc,%edx
   f:	8a 82 00 00 d4 fe    	mov    -0x12c0000(%edx),%al
  15:	a8 20                	test   $0x20,%al
  17:	75 23                	jne    3c <tis_activate+0x3c>
  19:	c6 05 00 40 d4 fe 20 	movb   $0x20,0xfed44000
  20:	c6 05 00 30 d4 fe 20 	movb   $0x20,0xfed43000
  27:	c6 05 00 20 d4 fe 20 	movb   $0x20,0xfed42000
  2e:	c6 05 00 10 d4 fe 20 	movb   $0x20,0xfed41000
  35:	c6 05 00 00 d4 fe 20 	movb   $0x20,0xfed40000
  3c:	c6 82 00 00 d4 fe 02 	movb   $0x2,-0x12c0000(%edx)
  43:	8a 8a 00 00 d4 fe    	mov    -0x12c0000(%edx),%cl
  49:	31 c0                	xor    %eax,%eax
  4b:	80 e1 20             	and    $0x20,%cl
  4e:	74 1c                	je     6c <tis_activate+0x6c>
  50:	8d 82 18 00 d4 fe    	lea    -0x12bffe8(%edx),%eax
  56:	c6 82 18 00 d4 fe 40 	movb   $0x40,-0x12bffe8(%edx)
  5d:	6a 40                	push   $0x40
  5f:	b9 40 00 00 00       	mov    $0x40,%ecx
  64:	89 da                	mov    %ebx,%edx
  66:	e8 fc ff ff ff       	call   67 <tis_activate+0x67>
  6b:	5a                   	pop    %edx
  6c:	5b                   	pop    %ebx
  6d:	c3                   	ret    

Disassembly of section .text.tis_find_active_locality:

00000000 <tis_find_active_locality>:
   0:	ba 00 00 d4 fe       	mov    $0xfed40000,%edx
   5:	31 c0                	xor    %eax,%eax
   7:	8a 0a                	mov    (%edx),%cl
   9:	80 e1 20             	and    $0x20,%cl
   c:	74 04                	je     12 <tis_find_active_locality+0x12>
   e:	0f b6 c0             	movzbl %al,%eax
  11:	c3                   	ret    
  12:	40                   	inc    %eax
  13:	81 c2 00 10 00 00    	add    $0x1000,%edx
  19:	3c 05                	cmp    $0x5,%al
  1b:	75 ea                	jne    7 <tis_find_active_locality+0x7>
  1d:	31 c0                	xor    %eax,%eax
  1f:	e8 fc ff ff ff       	call   20 <tis_find_active_locality+0x20>
  24:	31 c0                	xor    %eax,%eax
  26:	c3                   	ret    

Disassembly of section .text.tis_readresp:

00000000 <tis_readresp>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 c3                	mov    %eax,%ebx
   6:	89 d6                	mov    %edx,%esi
   8:	e8 fc ff ff ff       	call   9 <tis_readresp+0x9>
   d:	c1 e0 0c             	shl    $0xc,%eax
  10:	25 00 f0 0f 00       	and    $0xff000,%eax
  15:	8d 88 24 00 d4 fe    	lea    -0x12bffdc(%eax),%ecx
  1b:	8d a8 18 00 d4 fe    	lea    -0x12bffe8(%eax),%ebp
  21:	31 d2                	xor    %edx,%edx
  23:	39 16                	cmp    %edx,(%esi)
  25:	76 0f                	jbe    36 <tis_readresp+0x36>
  27:	8a 01                	mov    (%ecx),%al
  29:	88 04 13             	mov    %al,(%ebx,%edx,1)
  2c:	42                   	inc    %edx
  2d:	0f b6 7d 00          	movzbl 0x0(%ebp),%edi
  31:	83 e7 10             	and    $0x10,%edi
  34:	75 ed                	jne    23 <tis_readresp+0x23>
  36:	89 16                	mov    %edx,(%esi)
  38:	31 c0                	xor    %eax,%eax
  3a:	5b                   	pop    %ebx
  3b:	5e                   	pop    %esi
  3c:	5f                   	pop    %edi
  3d:	5d                   	pop    %ebp
  3e:	c3                   	ret    

Disassembly of section .text.tis_senddata:

00000000 <tis_senddata>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 0c             	sub    $0xc,%esp
   7:	89 c6                	mov    %eax,%esi
   9:	89 14 24             	mov    %edx,(%esp)
   c:	e8 fc ff ff ff       	call   d <tis_senddata+0xd>
  11:	89 c7                	mov    %eax,%edi
  13:	a1 00 00 00 00       	mov    0x0,%eax
  18:	8b 40 0c             	mov    0xc(%eax),%eax
  1b:	e8 fc ff ff ff       	call   1c <tis_senddata+0x1c>
  20:	89 c3                	mov    %eax,%ebx
  22:	89 f8                	mov    %edi,%eax
  24:	c1 e0 0c             	shl    $0xc,%eax
  27:	25 00 f0 0f 00       	and    $0xff000,%eax
  2c:	8d a8 18 00 d4 fe    	lea    -0x12bffe8(%eax),%ebp
  32:	2d dc ff 2b 01       	sub    $0x12bffdc,%eax
  37:	89 44 24 04          	mov    %eax,0x4(%esp)
  3b:	31 ff                	xor    %edi,%edi
  3d:	8b 55 00             	mov    0x0(%ebp),%edx
  40:	c1 ea 08             	shr    $0x8,%edx
  43:	66 89 54 24 0a       	mov    %dx,0xa(%esp)
  48:	89 f8                	mov    %edi,%eax
  4a:	66 85 d2             	test   %dx,%dx
  4d:	75 2d                	jne    7c <tis_senddata+0x7c>
  4f:	89 d8                	mov    %ebx,%eax
  51:	e8 fc ff ff ff       	call   52 <tis_senddata+0x52>
  56:	85 c0                	test   %eax,%eax
  58:	74 16                	je     70 <tis_senddata+0x70>
  5a:	ba 00 00 00 00       	mov    $0x0,%edx
  5f:	b8 24 01 00 00       	mov    $0x124,%eax
  64:	e8 fc ff ff ff       	call   65 <tis_senddata+0x65>
  69:	b8 0c 00 00 00       	mov    $0xc,%eax
  6e:	eb 2e                	jmp    9e <tis_senddata+0x9e>
  70:	e8 fc ff ff ff       	call   71 <tis_senddata+0x71>
  75:	eb c6                	jmp    3d <tis_senddata+0x3d>
  77:	3b 04 24             	cmp    (%esp),%eax
  7a:	74 20                	je     9c <tis_senddata+0x9c>
  7c:	40                   	inc    %eax
  7d:	8a 54 06 ff          	mov    -0x1(%esi,%eax,1),%dl
  81:	8b 4c 24 04          	mov    0x4(%esp),%ecx
  85:	88 11                	mov    %dl,(%ecx)
  87:	66 8b 54 24 0a       	mov    0xa(%esp),%dx
  8c:	29 c2                	sub    %eax,%edx
  8e:	66 01 fa             	add    %di,%dx
  91:	75 e4                	jne    77 <tis_senddata+0x77>
  93:	3b 04 24             	cmp    (%esp),%eax
  96:	74 04                	je     9c <tis_senddata+0x9c>
  98:	89 c7                	mov    %eax,%edi
  9a:	eb a1                	jmp    3d <tis_senddata+0x3d>
  9c:	31 c0                	xor    %eax,%eax
  9e:	83 c4 0c             	add    $0xc,%esp
  a1:	5b                   	pop    %ebx
  a2:	5e                   	pop    %esi
  a3:	5f                   	pop    %edi
  a4:	5d                   	pop    %ebp
  a5:	c3                   	ret    

Disassembly of section .text.crb_probe:

00000000 <crb_probe>:
   0:	68 80 00 00 00       	push   $0x80
   5:	b9 90 00 00 00       	mov    $0x90,%ecx
   a:	ba 30 75 00 00       	mov    $0x7530,%edx
   f:	b8 00 00 d4 fe       	mov    $0xfed40000,%eax
  14:	e8 fc ff ff ff       	call   15 <crb_probe+0x15>
  19:	5a                   	pop    %edx
  1a:	85 c0                	test   %eax,%eax
  1c:	74 03                	je     21 <crb_probe+0x21>
  1e:	31 c0                	xor    %eax,%eax
  20:	c3                   	ret    
  21:	a1 30 00 d4 fe       	mov    0xfed40030,%eax
  26:	89 c2                	mov    %eax,%edx
  28:	83 e2 0f             	and    $0xf,%edx
  2b:	83 fa 0f             	cmp    $0xf,%edx
  2e:	74 1d                	je     4d <crb_probe+0x4d>
  30:	4a                   	dec    %edx
  31:	74 06                	je     39 <crb_probe+0x39>
  33:	0f ba e0 0e          	bt     $0xe,%eax
  37:	73 e5                	jae    1e <crb_probe+0x1e>
  39:	c7 05 30 00 d4 fe 00 	movl   $0x20000,0xfed40030
  40:	00 02 00 
  43:	c7 05 30 00 d4 fe 00 	movl   $0x80000,0xfed40030
  4a:	00 08 00 
  4d:	a1 60 00 d4 fe       	mov    0xfed40060,%eax
  52:	85 c0                	test   %eax,%eax
  54:	75 c8                	jne    1e <crb_probe+0x1e>
  56:	a1 68 00 d4 fe       	mov    0xfed40068,%eax
  5b:	8b 15 6c 00 d4 fe    	mov    0xfed4006c,%edx
  61:	31 c0                	xor    %eax,%eax
  63:	85 d2                	test   %edx,%edx
  65:	0f 94 c0             	sete   %al
  68:	c3                   	ret    

Disassembly of section .text.tis_probe:

00000000 <tis_probe>:
   0:	68 80 00 00 00       	push   $0x80
   5:	b9 80 00 00 00       	mov    $0x80,%ecx
   a:	ba b0 71 0b 00       	mov    $0xb71b0,%edx
   f:	b8 00 00 d4 fe       	mov    $0xfed40000,%eax
  14:	e8 fc ff ff ff       	call   15 <tis_probe+0x15>
  19:	5a                   	pop    %edx
  1a:	85 c0                	test   %eax,%eax
  1c:	74 03                	je     21 <tis_probe+0x21>
  1e:	31 c0                	xor    %eax,%eax
  20:	c3                   	ret    
  21:	a1 00 0f d4 fe       	mov    0xfed40f00,%eax
  26:	48                   	dec    %eax
  27:	83 f8 fd             	cmp    $0xfffffffd,%eax
  2a:	0f 96 c0             	setbe  %al
  2d:	0f b6 c0             	movzbl %al,%eax
  30:	8b 15 30 00 d4 fe    	mov    0xfed40030,%edx
  36:	89 d1                	mov    %edx,%ecx
  38:	83 e1 0f             	and    $0xf,%ecx
  3b:	83 f9 0f             	cmp    $0xf,%ecx
  3e:	74 1d                	je     5d <tis_probe+0x5d>
  40:	49                   	dec    %ecx
  41:	74 db                	je     1e <tis_probe+0x1e>
  43:	0f ba e2 0d          	bt     $0xd,%edx
  47:	73 d5                	jae    1e <tis_probe+0x1e>
  49:	c7 05 30 00 d4 fe 00 	movl   $0x0,0xfed40030
  50:	00 00 00 
  53:	c7 05 30 00 d4 fe 00 	movl   $0x80000,0xfed40030
  5a:	00 08 00 
  5d:	c3                   	ret    

Disassembly of section .text.crb_senddata:

00000000 <crb_senddata>:
   0:	39 15 00 00 00 00    	cmp    %edx,0x0
   6:	72 1d                	jb     25 <crb_senddata+0x25>
   8:	57                   	push   %edi
   9:	56                   	push   %esi
   a:	89 c6                	mov    %eax,%esi
   c:	89 d1                	mov    %edx,%ecx
   e:	8b 3d 00 00 00 00    	mov    0x0,%edi
  14:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  16:	c7 05 4c 00 d4 fe 01 	movl   $0x1,0xfed4004c
  1d:	00 00 00 
  20:	31 c0                	xor    %eax,%eax
  22:	5e                   	pop    %esi
  23:	5f                   	pop    %edi
  24:	c3                   	ret    
  25:	b8 01 00 00 00       	mov    $0x1,%eax
  2a:	c3                   	ret    

Disassembly of section .text.init_timeout:

00000000 <init_timeout>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	6b c8 30             	imul   $0x30,%eax,%ecx
   5:	83 b9 04 00 00 00 00 	cmpl   $0x0,0x4(%ecx)
   c:	75 1e                	jne    2c <init_timeout+0x2c>
   e:	8d 91 00 00 00 00    	lea    0x0(%ecx),%edx
  14:	be 00 00 00 00       	mov    $0x0,%esi
  19:	bf 00 00 00 00       	mov    $0x0,%edi
  1e:	b9 03 00 00 00       	mov    $0x3,%ecx
  23:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  25:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%edx)
  2c:	6b c0 30             	imul   $0x30,%eax,%eax
  2f:	83 b8 00 00 00 00 00 	cmpl   $0x0,0x0(%eax)
  36:	75 1b                	jne    53 <init_timeout+0x53>
  38:	be 00 00 00 00       	mov    $0x0,%esi
  3d:	bf 00 00 00 00       	mov    $0x0,%edi
  42:	b9 04 00 00 00       	mov    $0x4,%ecx
  47:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  49:	c7 80 00 00 00 00 00 	movl   $0x0,0x0(%eax)
  50:	00 00 00 
  53:	5e                   	pop    %esi
  54:	5f                   	pop    %edi
  55:	c3                   	ret    

Disassembly of section .text.crb_init:

00000000 <crb_init>:
   0:	a1 5c 00 d4 fe       	mov    0xfed4005c,%eax
   5:	a3 00 00 00 00       	mov    %eax,0x0
   a:	a1 58 00 d4 fe       	mov    0xfed40058,%eax
   f:	a3 00 00 00 00       	mov    %eax,0x0
  14:	a1 68 00 d4 fe       	mov    0xfed40068,%eax
  19:	a3 00 00 00 00       	mov    %eax,0x0
  1e:	a1 64 00 d4 fe       	mov    0xfed40064,%eax
  23:	b8 01 00 00 00       	mov    $0x1,%eax
  28:	e8 fc ff ff ff       	call   29 <crb_init+0x29>
  2d:	31 c0                	xor    %eax,%eax
  2f:	c3                   	ret    

Disassembly of section .text.tis_init:

00000000 <tis_init>:
   0:	c6 05 08 00 d4 fe 00 	movb   $0x0,0xfed40008
   7:	31 c0                	xor    %eax,%eax
   9:	e8 fc ff ff ff       	call   a <tis_init+0xa>
   e:	b8 01 00 00 00       	mov    $0x1,%eax
  13:	c3                   	ret    

Disassembly of section .text.crb_ready:

00000000 <crb_ready>:
   0:	a1 30 00 00 00       	mov    0x30,%eax
   5:	8b 50 08             	mov    0x8(%eax),%edx
   8:	c7 05 40 00 d4 fe 01 	movl   $0x1,0xfed40040
   f:	00 00 00 
  12:	6a 00                	push   $0x0
  14:	b9 01 00 00 00       	mov    $0x1,%ecx
  19:	b8 40 00 d4 fe       	mov    $0xfed40040,%eax
  1e:	e8 fc ff ff ff       	call   1f <crb_ready+0x1f>
  23:	5a                   	pop    %edx
  24:	c3                   	ret    

Disassembly of section .text.crb_waitrespready:

00000000 <crb_waitrespready>:
   0:	8b 15 34 00 00 00    	mov    0x34,%edx
   6:	8b 14 82             	mov    (%edx,%eax,4),%edx
   9:	6a 00                	push   $0x0
   b:	b9 01 00 00 00       	mov    $0x1,%ecx
  10:	b8 4c 00 d4 fe       	mov    $0xfed4004c,%eax
  15:	e8 fc ff ff ff       	call   16 <crb_waitrespready+0x16>
  1a:	5a                   	pop    %edx
  1b:	c3                   	ret    

Disassembly of section .text.tis_ready:

00000000 <tis_ready>:
   0:	53                   	push   %ebx
   1:	e8 fc ff ff ff       	call   2 <tis_ready+0x2>
   6:	8b 15 00 00 00 00    	mov    0x0,%edx
   c:	8b 52 04             	mov    0x4(%edx),%edx
   f:	c1 e0 0c             	shl    $0xc,%eax
  12:	25 00 f0 0f 00       	and    $0xff000,%eax
  17:	8d 98 18 00 d4 fe    	lea    -0x12bffe8(%eax),%ebx
  1d:	c6 80 18 00 d4 fe 40 	movb   $0x40,-0x12bffe8(%eax)
  24:	6a 40                	push   $0x40
  26:	b9 40 00 00 00       	mov    $0x40,%ecx
  2b:	89 d8                	mov    %ebx,%eax
  2d:	e8 fc ff ff ff       	call   2e <tis_ready+0x2e>
  32:	5a                   	pop    %edx
  33:	5b                   	pop    %ebx
  34:	c3                   	ret    

Disassembly of section .text.tis_waitdatavalid:

00000000 <tis_waitdatavalid>:
   0:	e8 fc ff ff ff       	call   1 <tis_waitdatavalid+0x1>
   5:	8b 15 00 00 00 00    	mov    0x0,%edx
   b:	8b 52 08             	mov    0x8(%edx),%edx
   e:	c1 e0 0c             	shl    $0xc,%eax
  11:	25 00 f0 0f 00       	and    $0xff000,%eax
  16:	2d e8 ff 2b 01       	sub    $0x12bffe8,%eax
  1b:	68 80 00 00 00       	push   $0x80
  20:	b9 80 00 00 00       	mov    $0x80,%ecx
  25:	e8 fc ff ff ff       	call   26 <tis_waitdatavalid+0x26>
  2a:	5a                   	pop    %edx
  2b:	85 c0                	test   %eax,%eax
  2d:	0f 95 c0             	setne  %al
  30:	0f b6 c0             	movzbl %al,%eax
  33:	c3                   	ret    

Disassembly of section .text.tis_waitrespready:

00000000 <tis_waitrespready>:
   0:	53                   	push   %ebx
   1:	89 c3                	mov    %eax,%ebx
   3:	e8 fc ff ff ff       	call   4 <tis_waitrespready+0x4>
   8:	8b 15 04 00 00 00    	mov    0x4,%edx
   e:	8b 14 9a             	mov    (%edx,%ebx,4),%edx
  11:	c1 e0 0c             	shl    $0xc,%eax
  14:	25 00 f0 0f 00       	and    $0xff000,%eax
  19:	8d 98 18 00 d4 fe    	lea    -0x12bffe8(%eax),%ebx
  1f:	c6 80 18 00 d4 fe 20 	movb   $0x20,-0x12bffe8(%eax)
  26:	6a 10                	push   $0x10
  28:	b9 10 00 00 00       	mov    $0x10,%ecx
  2d:	89 d8                	mov    %ebx,%eax
  2f:	e8 fc ff ff ff       	call   30 <tis_waitrespready+0x30>
  34:	5a                   	pop    %edx
  35:	85 c0                	test   %eax,%eax
  37:	0f 95 c0             	setne  %al
  3a:	0f b6 c0             	movzbl %al,%eax
  3d:	5b                   	pop    %ebx
  3e:	c3                   	ret    

Disassembly of section .text.crb_readresp:

00000000 <crb_readresp>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	89 d7                	mov    %edx,%edi
   5:	8b 15 44 00 d4 fe    	mov    0xfed40044,%edx
   b:	83 e2 01             	and    $0x1,%edx
   e:	74 07                	je     17 <crb_readresp+0x17>
  10:	ba 01 00 00 00       	mov    $0x1,%edx
  15:	eb 38                	jmp    4f <crb_readresp+0x4f>
  17:	83 3f 05             	cmpl   $0x5,(%edi)
  1a:	76 f4                	jbe    10 <crb_readresp+0x10>
  1c:	8b 35 00 00 00 00    	mov    0x0,%esi
  22:	8b 0e                	mov    (%esi),%ecx
  24:	89 08                	mov    %ecx,(%eax)
  26:	66 8b 4e 04          	mov    0x4(%esi),%cx
  2a:	66 89 48 04          	mov    %cx,0x4(%eax)
  2e:	8b 58 02             	mov    0x2(%eax),%ebx
  31:	0f cb                	bswap  %ebx
  33:	83 fb 05             	cmp    $0x5,%ebx
  36:	76 d8                	jbe    10 <crb_readresp+0x10>
  38:	8b 0f                	mov    (%edi),%ecx
  3a:	39 d9                	cmp    %ebx,%ecx
  3c:	76 02                	jbe    40 <crb_readresp+0x40>
  3e:	89 d9                	mov    %ebx,%ecx
  40:	89 0f                	mov    %ecx,(%edi)
  42:	83 c0 06             	add    $0x6,%eax
  45:	83 e9 06             	sub    $0x6,%ecx
  48:	83 c6 06             	add    $0x6,%esi
  4b:	89 c7                	mov    %eax,%edi
  4d:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  4f:	89 d0                	mov    %edx,%eax
  51:	5b                   	pop    %ebx
  52:	5e                   	pop    %esi
  53:	5f                   	pop    %edi
  54:	c3                   	ret    

Disassembly of section .text.tpmhw_probe:

00000000 <tpmhw_probe>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	ff 15 0c 00 00 00    	call   *0xc
   8:	85 c0                	test   %eax,%eax
   a:	75 11                	jne    1d <tpmhw_probe+0x1d>
   c:	ff 15 3c 00 00 00    	call   *0x3c
  12:	bb 01 00 00 00       	mov    $0x1,%ebx
  17:	85 c0                	test   %eax,%eax
  19:	74 20                	je     3b <tpmhw_probe+0x3b>
  1b:	eb 02                	jmp    1f <tpmhw_probe+0x1f>
  1d:	31 db                	xor    %ebx,%ebx
  1f:	6b c3 30             	imul   $0x30,%ebx,%eax
  22:	8d b0 00 00 00 00    	lea    0x0(%eax),%esi
  28:	ff 90 14 00 00 00    	call   *0x14(%eax)
  2e:	88 1d 00 00 00 00    	mov    %bl,0x0
  34:	8b 46 10             	mov    0x10(%esi),%eax
  37:	5b                   	pop    %ebx
  38:	5e                   	pop    %esi
  39:	ff e0                	jmp    *%eax
  3b:	31 c0                	xor    %eax,%eax
  3d:	5b                   	pop    %ebx
  3e:	5e                   	pop    %esi
  3f:	c3                   	ret    

Disassembly of section .text.tpmhw_is_present:

00000000 <tpmhw_is_present>:
   0:	31 c0                	xor    %eax,%eax
   2:	80 3d 00 00 00 00 0f 	cmpb   $0xf,0x0
   9:	0f 95 c0             	setne  %al
   c:	c3                   	ret    

Disassembly of section .text.tpmhw_transmit:

00000000 <tpmhw_transmit>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 d3                	mov    %edx,%ebx
   6:	8b 7c 24 14          	mov    0x14(%esp),%edi
   a:	0f b6 15 00 00 00 00 	movzbl 0x0,%edx
  11:	80 fa 0f             	cmp    $0xf,%dl
  14:	75 05                	jne    1b <tpmhw_transmit+0x1b>
  16:	83 c8 ff             	or     $0xffffffff,%eax
  19:	eb 4d                	jmp    68 <tpmhw_transmit+0x68>
  1b:	89 ce                	mov    %ecx,%esi
  1d:	0f b6 c0             	movzbl %al,%eax
  20:	6b d2 30             	imul   $0x30,%edx,%edx
  23:	8d aa 00 00 00 00    	lea    0x0(%edx),%ebp
  29:	ff 92 18 00 00 00    	call   *0x18(%edx)
  2f:	85 c0                	test   %eax,%eax
  31:	75 e3                	jne    16 <tpmhw_transmit+0x16>
  33:	8b 53 02             	mov    0x2(%ebx),%edx
  36:	0f ca                	bswap  %edx
  38:	89 d8                	mov    %ebx,%eax
  3a:	ff 55 20             	call   *0x20(%ebp)
  3d:	85 c0                	test   %eax,%eax
  3f:	75 d5                	jne    16 <tpmhw_transmit+0x16>
  41:	ff 55 28             	call   *0x28(%ebp)
  44:	85 c0                	test   %eax,%eax
  46:	75 ce                	jne    16 <tpmhw_transmit+0x16>
  48:	8b 44 24 18          	mov    0x18(%esp),%eax
  4c:	ff 55 2c             	call   *0x2c(%ebp)
  4f:	85 c0                	test   %eax,%eax
  51:	75 c3                	jne    16 <tpmhw_transmit+0x16>
  53:	89 fa                	mov    %edi,%edx
  55:	89 f0                	mov    %esi,%eax
  57:	ff 55 24             	call   *0x24(%ebp)
  5a:	85 c0                	test   %eax,%eax
  5c:	75 b8                	jne    16 <tpmhw_transmit+0x16>
  5e:	83 3f 09             	cmpl   $0x9,(%edi)
  61:	76 b3                	jbe    16 <tpmhw_transmit+0x16>
  63:	ff 55 1c             	call   *0x1c(%ebp)
  66:	31 c0                	xor    %eax,%eax
  68:	5b                   	pop    %ebx
  69:	5e                   	pop    %esi
  6a:	5f                   	pop    %edi
  6b:	5d                   	pop    %ebp
  6c:	c3                   	ret    

Disassembly of section .text.tpmhw_set_timeouts:

00000000 <tpmhw_set_timeouts>:
   0:	0f b6 0d 00 00 00 00 	movzbl 0x0,%ecx
   7:	6b c9 30             	imul   $0x30,%ecx,%ecx
   a:	ff a1 08 00 00 00    	jmp    *0x8(%ecx)
