
./sdcard.o:     file format elf32-i386


Disassembly of section .text.sdcard_waitw:

00000000 <sdcard_waitw>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	51                   	push   %ecx
   5:	89 c6                	mov    %eax,%esi
   7:	89 d3                	mov    %edx,%ebx
   9:	66 89 54 24 02       	mov    %dx,0x2(%esp)
   e:	b8 e8 03 00 00       	mov    $0x3e8,%eax
  13:	e8 fc ff ff ff       	call   14 <sdcard_waitw+0x14>
  18:	89 c7                	mov    %eax,%edi
  1a:	66 8b 2e             	mov    (%esi),%bp
  1d:	66 85 6c 24 02       	test   %bp,0x2(%esp)
  22:	74 05                	je     29 <sdcard_waitw+0x29>
  24:	0f b7 c5             	movzwl %bp,%eax
  27:	eb 3c                	jmp    65 <sdcard_waitw+0x65>
  29:	89 f8                	mov    %edi,%eax
  2b:	e8 fc ff ff ff       	call   2c <sdcard_waitw+0x2c>
  30:	85 c0                	test   %eax,%eax
  32:	74 2a                	je     5e <sdcard_waitw+0x5e>
  34:	0f b7 d5             	movzwl %bp,%edx
  37:	52                   	push   %edx
  38:	0f b7 db             	movzwl %bx,%ebx
  3b:	53                   	push   %ebx
  3c:	56                   	push   %esi
  3d:	68 00 00 00 00       	push   $0x0
  42:	e8 fc ff ff ff       	call   43 <sdcard_waitw+0x43>
  47:	ba 00 00 00 00       	mov    $0x0,%edx
  4c:	b8 9e 00 00 00       	mov    $0x9e,%eax
  51:	e8 fc ff ff ff       	call   52 <sdcard_waitw+0x52>
  56:	83 c4 10             	add    $0x10,%esp
  59:	83 c8 ff             	or     $0xffffffff,%eax
  5c:	eb 07                	jmp    65 <sdcard_waitw+0x65>
  5e:	e8 fc ff ff ff       	call   5f <sdcard_waitw+0x5f>
  63:	eb b5                	jmp    1a <sdcard_waitw+0x1a>
  65:	5a                   	pop    %edx
  66:	5b                   	pop    %ebx
  67:	5e                   	pop    %esi
  68:	5f                   	pop    %edi
  69:	5d                   	pop    %ebp
  6a:	c3                   	ret    

Disassembly of section .text.sdcard_set_frequency:

00000000 <sdcard_set_frequency>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 c6                	mov    %eax,%esi
   6:	66 8b 88 fe 00 00 00 	mov    0xfe(%eax),%cx
   d:	8b 40 40             	mov    0x40(%eax),%eax
  10:	0f b6 ec             	movzbl %ah,%ebp
  13:	f6 c4 ff             	test   $0xff,%ah
  16:	75 10                	jne    28 <sdcard_set_frequency+0x28>
  18:	68 17 00 00 00       	push   $0x17
  1d:	e8 fc ff ff ff       	call   1e <sdcard_set_frequency+0x1e>
  22:	58                   	pop    %eax
  23:	83 c8 ff             	or     $0xffffffff,%eax
  26:	eb 7e                	jmp    a6 <sdcard_set_frequency+0xa6>
  28:	89 d7                	mov    %edx,%edi
  2a:	69 c5 e8 03 00 00    	imul   $0x3e8,%ebp,%eax
  30:	8d 44 02 ff          	lea    -0x1(%edx,%eax,1),%eax
  34:	31 d2                	xor    %edx,%edx
  36:	f7 f7                	div    %edi
  38:	80 e1 fe             	and    $0xfe,%cl
  3b:	75 19                	jne    56 <sdcard_set_frequency+0x56>
  3d:	31 d2                	xor    %edx,%edx
  3f:	83 f8 01             	cmp    $0x1,%eax
  42:	76 0b                	jbe    4f <sdcard_set_frequency+0x4f>
  44:	48                   	dec    %eax
  45:	0f bd c8             	bsr    %eax,%ecx
  48:	ba 01 00 00 00       	mov    $0x1,%edx
  4d:	d3 e2                	shl    %cl,%edx
  4f:	89 d3                	mov    %edx,%ebx
  51:	c1 e3 08             	shl    $0x8,%ebx
  54:	eb 14                	jmp    6a <sdcard_set_frequency+0x6a>
  56:	40                   	inc    %eax
  57:	89 c2                	mov    %eax,%edx
  59:	d1 ea                	shr    %edx
  5b:	c1 e2 08             	shl    $0x8,%edx
  5e:	c1 e8 03             	shr    $0x3,%eax
  61:	89 c3                	mov    %eax,%ebx
  63:	66 81 e3 c0 00       	and    $0xc0,%bx
  68:	09 d3                	or     %edx,%ebx
  6a:	0f b7 c3             	movzwl %bx,%eax
  6d:	50                   	push   %eax
  6e:	57                   	push   %edi
  6f:	55                   	push   %ebp
  70:	68 41 00 00 00       	push   $0x41
  75:	e8 fc ff ff ff       	call   76 <sdcard_set_frequency+0x76>
  7a:	66 c7 46 2c 00 00    	movw   $0x0,0x2c(%esi)
  80:	89 d8                	mov    %ebx,%eax
  82:	83 c8 01             	or     $0x1,%eax
  85:	66 89 46 2c          	mov    %ax,0x2c(%esi)
  89:	8d 46 2c             	lea    0x2c(%esi),%eax
  8c:	ba 02 00 00 00       	mov    $0x2,%edx
  91:	e8 fc ff ff ff       	call   92 <sdcard_set_frequency+0x92>
  96:	83 c4 10             	add    $0x10,%esp
  99:	85 c0                	test   %eax,%eax
  9b:	78 09                	js     a6 <sdcard_set_frequency+0xa6>
  9d:	83 cb 05             	or     $0x5,%ebx
  a0:	66 89 5e 2c          	mov    %bx,0x2c(%esi)
  a4:	31 c0                	xor    %eax,%eax
  a6:	5b                   	pop    %ebx
  a7:	5e                   	pop    %esi
  a8:	5f                   	pop    %edi
  a9:	5d                   	pop    %ebp
  aa:	c3                   	ret    

Disassembly of section .text.sdcard_reset.isra.0:

00000000 <sdcard_reset.isra.0>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 c3                	mov    %eax,%ebx
   4:	88 50 2f             	mov    %dl,0x2f(%eax)
   7:	b8 e8 03 00 00       	mov    $0x3e8,%eax
   c:	e8 fc ff ff ff       	call   d <sdcard_reset.isra.0+0xd>
  11:	89 c6                	mov    %eax,%esi
  13:	8a 43 2f             	mov    0x2f(%ebx),%al
  16:	84 c0                	test   %al,%al
  18:	74 1c                	je     36 <sdcard_reset.isra.0+0x36>
  1a:	89 f0                	mov    %esi,%eax
  1c:	e8 fc ff ff ff       	call   1d <sdcard_reset.isra.0+0x1d>
  21:	85 c0                	test   %eax,%eax
  23:	74 ee                	je     13 <sdcard_reset.isra.0+0x13>
  25:	ba 00 00 00 00       	mov    $0x0,%edx
  2a:	b8 ad 00 00 00       	mov    $0xad,%eax
  2f:	5b                   	pop    %ebx
  30:	5e                   	pop    %esi
  31:	e9 fc ff ff ff       	jmp    32 <sdcard_reset.isra.0+0x32>
  36:	5b                   	pop    %ebx
  37:	5e                   	pop    %esi
  38:	c3                   	ret    

Disassembly of section .text.sdcard_pio:

00000000 <sdcard_pio>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	56                   	push   %esi
   5:	89 c6                	mov    %eax,%esi
   7:	89 d5                	mov    %edx,%ebp
   9:	89 cb                	mov    %ecx,%ebx
   b:	8b 78 24             	mov    0x24(%eax),%edi
   e:	57                   	push   %edi
   f:	ff 31                	push   (%ecx)
  11:	52                   	push   %edx
  12:	68 60 00 00 00       	push   $0x60
  17:	e8 fc ff ff ff       	call   18 <sdcard_pio+0x18>
  1c:	83 c4 10             	add    $0x10,%esp
  1f:	f7 c7 01 00 00 00    	test   $0x1,%edi
  25:	75 12                	jne    39 <sdcard_pio+0x39>
  27:	89 e8                	mov    %ebp,%eax
  29:	83 e0 03             	and    $0x3,%eax
  2c:	83 f8 03             	cmp    $0x3,%eax
  2f:	75 15                	jne    46 <sdcard_pio+0x46>
  31:	f7 c7 02 00 00 00    	test   $0x2,%edi
  37:	74 0d                	je     46 <sdcard_pio+0x46>
  39:	57                   	push   %edi
  3a:	68 79 00 00 00       	push   $0x79
  3f:	e8 fc ff ff ff       	call   40 <sdcard_pio+0x40>
  44:	eb 42                	jmp    88 <sdcard_pio+0x88>
  46:	8b 03                	mov    (%ebx),%eax
  48:	89 46 08             	mov    %eax,0x8(%esi)
  4b:	66 89 6e 0e          	mov    %bp,0xe(%esi)
  4f:	8d 46 30             	lea    0x30(%esi),%eax
  52:	ba 01 80 00 00       	mov    $0x8001,%edx
  57:	e8 fc ff ff ff       	call   58 <sdcard_pio+0x58>
  5c:	85 c0                	test   %eax,%eax
  5e:	78 60                	js     c0 <sdcard_pio+0xc0>
  60:	25 00 80 00 00       	and    $0x8000,%eax
  65:	74 28                	je     8f <sdcard_pio+0x8f>
  67:	0f b7 46 32          	movzwl 0x32(%esi),%eax
  6b:	89 c3                	mov    %eax,%ebx
  6d:	50                   	push   %eax
  6e:	68 92 00 00 00       	push   $0x92
  73:	e8 fc ff ff ff       	call   74 <sdcard_pio+0x74>
  78:	ba 06 00 00 00       	mov    $0x6,%edx
  7d:	89 f0                	mov    %esi,%eax
  7f:	e8 fc ff ff ff       	call   80 <sdcard_pio+0x80>
  84:	66 89 5e 32          	mov    %bx,0x32(%esi)
  88:	59                   	pop    %ecx
  89:	5b                   	pop    %ebx
  8a:	83 c8 ff             	or     $0xffffffff,%eax
  8d:	eb 31                	jmp    c0 <sdcard_pio+0xc0>
  8f:	89 04 24             	mov    %eax,(%esp)
  92:	66 c7 46 30 01 00    	movw   $0x1,0x30(%esi)
  98:	83 c6 10             	add    $0x10,%esi
  9b:	b9 04 00 00 00       	mov    $0x4,%ecx
  a0:	89 df                	mov    %ebx,%edi
  a2:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  a4:	ff 73 0c             	push   0xc(%ebx)
  a7:	ff 73 08             	push   0x8(%ebx)
  aa:	ff 73 04             	push   0x4(%ebx)
  ad:	ff 33                	push   (%ebx)
  af:	55                   	push   %ebp
  b0:	68 b5 00 00 00       	push   $0xb5
  b5:	e8 fc ff ff ff       	call   b6 <sdcard_pio+0xb6>
  ba:	83 c4 18             	add    $0x18,%esp
  bd:	8b 04 24             	mov    (%esp),%eax
  c0:	5a                   	pop    %edx
  c1:	5b                   	pop    %ebx
  c2:	5e                   	pop    %esi
  c3:	5f                   	pop    %edi
  c4:	5d                   	pop    %ebp
  c5:	c3                   	ret    

Disassembly of section .text.sdcard_pio_transfer:

00000000 <sdcard_pio_transfer>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 14             	sub    $0x14,%esp
   7:	89 c3                	mov    %eax,%ebx
   9:	89 ce                	mov    %ecx,%esi
   b:	8b 40 24             	mov    0x24(%eax),%eax
   e:	66 c7 40 04 00 02    	movw   $0x200,0x4(%eax)
  14:	8b 43 24             	mov    0x24(%ebx),%eax
  17:	8b 7c 24 2c          	mov    0x2c(%esp),%edi
  1b:	66 89 78 06          	mov    %di,0x6(%eax)
  1f:	89 d0                	mov    %edx,%eax
  21:	80 e4 fe             	and    $0xfe,%ah
  24:	89 04 24             	mov    %eax,(%esp)
  27:	3d 3a 18 00 00       	cmp    $0x183a,%eax
  2c:	0f 95 c0             	setne  %al
  2f:	31 c9                	xor    %ecx,%ecx
  31:	83 7c 24 2c 01       	cmpl   $0x1,0x2c(%esp)
  36:	7e 05                	jle    3d <sdcard_pio_transfer+0x3d>
  38:	b9 26 00 00 00       	mov    $0x26,%ecx
  3d:	0f b6 c0             	movzbl %al,%eax
  40:	c1 e0 04             	shl    $0x4,%eax
  43:	09 c8                	or     %ecx,%eax
  45:	8b 4b 24             	mov    0x24(%ebx),%ecx
  48:	66 89 41 0c          	mov    %ax,0xc(%ecx)
  4c:	f6 43 28 02          	testb  $0x2,0x28(%ebx)
  50:	75 03                	jne    55 <sdcard_pio_transfer+0x55>
  52:	c1 e6 09             	shl    $0x9,%esi
  55:	8d 7c 24 08          	lea    0x8(%esp),%edi
  59:	b9 03 00 00 00       	mov    $0x3,%ecx
  5e:	31 c0                	xor    %eax,%eax
  60:	f3 ab                	rep stos %eax,%es:(%edi)
  62:	89 74 24 04          	mov    %esi,0x4(%esp)
  66:	8b 43 24             	mov    0x24(%ebx),%eax
  69:	8d 4c 24 04          	lea    0x4(%esp),%ecx
  6d:	e8 fc ff ff ff       	call   6e <sdcard_pio_transfer+0x6e>
  72:	89 c6                	mov    %eax,%esi
  74:	85 c0                	test   %eax,%eax
  76:	0f 85 8a 00 00 00    	jne    106 <sdcard_pio_transfer+0x106>
  7c:	bf 20 00 00 00       	mov    $0x20,%edi
  81:	81 3c 24 3a 18 00 00 	cmpl   $0x183a,(%esp)
  88:	75 05                	jne    8f <sdcard_pio_transfer+0x8f>
  8a:	bf 10 00 00 00       	mov    $0x10,%edi
  8f:	0f b7 ef             	movzwl %di,%ebp
  92:	ff 4c 24 2c          	decl   0x2c(%esp)
  96:	8b 43 24             	mov    0x24(%ebx),%eax
  99:	83 c0 30             	add    $0x30,%eax
  9c:	83 7c 24 2c ff       	cmpl   $0xffffffff,0x2c(%esp)
  a1:	74 48                	je     eb <sdcard_pio_transfer+0xeb>
  a3:	89 ea                	mov    %ebp,%edx
  a5:	e8 fc ff ff ff       	call   a6 <sdcard_pio_transfer+0xa6>
  aa:	85 c0                	test   %eax,%eax
  ac:	78 56                	js     104 <sdcard_pio_transfer+0x104>
  ae:	8b 43 24             	mov    0x24(%ebx),%eax
  b1:	66 89 78 30          	mov    %di,0x30(%eax)
  b5:	31 c0                	xor    %eax,%eax
  b7:	8b 53 24             	mov    0x24(%ebx),%edx
  ba:	81 3c 24 3a 18 00 00 	cmpl   $0x183a,(%esp)
  c1:	74 0c                	je     cf <sdcard_pio_transfer+0xcf>
  c3:	8b 52 20             	mov    0x20(%edx),%edx
  c6:	8b 4c 24 28          	mov    0x28(%esp),%ecx
  ca:	89 14 81             	mov    %edx,(%ecx,%eax,4)
  cd:	eb 0a                	jmp    d9 <sdcard_pio_transfer+0xd9>
  cf:	8b 4c 24 28          	mov    0x28(%esp),%ecx
  d3:	8b 0c 81             	mov    (%ecx,%eax,4),%ecx
  d6:	89 4a 20             	mov    %ecx,0x20(%edx)
  d9:	40                   	inc    %eax
  da:	3d 80 00 00 00       	cmp    $0x80,%eax
  df:	75 d6                	jne    b7 <sdcard_pio_transfer+0xb7>
  e1:	81 44 24 28 00 02 00 	addl   $0x200,0x28(%esp)
  e8:	00 
  e9:	eb a7                	jmp    92 <sdcard_pio_transfer+0x92>
  eb:	ba 02 00 00 00       	mov    $0x2,%edx
  f0:	e8 fc ff ff ff       	call   f1 <sdcard_pio_transfer+0xf1>
  f5:	85 c0                	test   %eax,%eax
  f7:	78 0b                	js     104 <sdcard_pio_transfer+0x104>
  f9:	8b 43 24             	mov    0x24(%ebx),%eax
  fc:	66 c7 40 30 02 00    	movw   $0x2,0x30(%eax)
 102:	eb 02                	jmp    106 <sdcard_pio_transfer+0x106>
 104:	89 c6                	mov    %eax,%esi
 106:	89 f0                	mov    %esi,%eax
 108:	83 c4 14             	add    $0x14,%esp
 10b:	5b                   	pop    %ebx
 10c:	5e                   	pop    %esi
 10d:	5f                   	pop    %edi
 10e:	5d                   	pop    %ebp
 10f:	c3                   	ret    

Disassembly of section .text.sdcard_pio_app.constprop.0:

00000000 <sdcard_pio_app.constprop.0>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	83 ec 10             	sub    $0x10,%esp
   6:	89 c3                	mov    %eax,%ebx
   8:	89 d6                	mov    %edx,%esi
   a:	89 e7                	mov    %esp,%edi
   c:	b9 04 00 00 00       	mov    $0x4,%ecx
  11:	31 c0                	xor    %eax,%eax
  13:	f3 ab                	rep stos %eax,%es:(%edi)
  15:	89 e1                	mov    %esp,%ecx
  17:	ba 1a 37 00 00       	mov    $0x371a,%edx
  1c:	89 d8                	mov    %ebx,%eax
  1e:	e8 fc ff ff ff       	call   1f <sdcard_pio_app.constprop.0+0x1f>
  23:	85 c0                	test   %eax,%eax
  25:	75 14                	jne    3b <sdcard_pio_app.constprop.0+0x3b>
  27:	89 f1                	mov    %esi,%ecx
  29:	ba 02 29 00 00       	mov    $0x2902,%edx
  2e:	89 d8                	mov    %ebx,%eax
  30:	83 c4 10             	add    $0x10,%esp
  33:	5b                   	pop    %ebx
  34:	5e                   	pop    %esi
  35:	5f                   	pop    %edi
  36:	e9 fc ff ff ff       	jmp    37 <sdcard_pio_app.constprop.0+0x37>
  3b:	83 c4 10             	add    $0x10,%esp
  3e:	5b                   	pop    %ebx
  3f:	5e                   	pop    %esi
  40:	5f                   	pop    %edi
  41:	c3                   	ret    

Disassembly of section .text.sdcard_card_setup.constprop.0:

00000000 <sdcard_card_setup.constprop.0>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	81 ec 40 02 00 00    	sub    $0x240,%esp
   a:	89 c5                	mov    %eax,%ebp
   c:	89 54 24 04          	mov    %edx,0x4(%esp)
  10:	89 4c 24 1c          	mov    %ecx,0x1c(%esp)
  14:	8b 40 24             	mov    0x24(%eax),%eax
  17:	89 04 24             	mov    %eax,(%esp)
  1a:	ba 90 01 00 00       	mov    $0x190,%edx
  1f:	e8 fc ff ff ff       	call   20 <sdcard_card_setup.constprop.0+0x20>
  24:	89 c3                	mov    %eax,%ebx
  26:	85 c0                	test   %eax,%eax
  28:	0f 85 83 03 00 00    	jne    3b1 <sdcard_card_setup.constprop.0+0x3b1>
  2e:	b8 01 00 00 00       	mov    $0x1,%eax
  33:	e8 fc ff ff ff       	call   34 <sdcard_card_setup.constprop.0+0x34>
  38:	8d 7c 24 20          	lea    0x20(%esp),%edi
  3c:	b9 04 00 00 00       	mov    $0x4,%ecx
  41:	89 d8                	mov    %ebx,%eax
  43:	f3 ab                	rep stos %eax,%es:(%edi)
  45:	8d 4c 24 20          	lea    0x20(%esp),%ecx
  49:	31 d2                	xor    %edx,%edx
  4b:	8b 04 24             	mov    (%esp),%eax
  4e:	e8 fc ff ff ff       	call   4f <sdcard_card_setup.constprop.0+0x4f>
  53:	89 c3                	mov    %eax,%ebx
  55:	85 c0                	test   %eax,%eax
  57:	0f 85 54 03 00 00    	jne    3b1 <sdcard_card_setup.constprop.0+0x3b1>
  5d:	31 db                	xor    %ebx,%ebx
  5f:	81 7c 24 04 ff 7f 00 	cmpl   $0x7fff,0x4(%esp)
  66:	00 
  67:	0f 9e c3             	setle  %bl
  6a:	4b                   	dec    %ebx
  6b:	30 db                	xor    %bl,%bl
  6d:	81 c3 aa 02 00 00    	add    $0x2aa,%ebx
  73:	89 5c 24 20          	mov    %ebx,0x20(%esp)
  77:	8d 4c 24 20          	lea    0x20(%esp),%ecx
  7b:	ba 1a 08 00 00       	mov    $0x81a,%edx
  80:	8b 04 24             	mov    (%esp),%eax
  83:	e8 fc ff ff ff       	call   84 <sdcard_card_setup.constprop.0+0x84>
  88:	31 f6                	xor    %esi,%esi
  8a:	85 c0                	test   %eax,%eax
  8c:	75 0e                	jne    9c <sdcard_card_setup.constprop.0+0x9c>
  8e:	31 c0                	xor    %eax,%eax
  90:	39 5c 24 20          	cmp    %ebx,0x20(%esp)
  94:	0f 94 c0             	sete   %al
  97:	c1 e0 1e             	shl    $0x1e,%eax
  9a:	89 c6                	mov    %eax,%esi
  9c:	c7 44 24 20 00 00 00 	movl   $0x0,0x20(%esp)
  a3:	00 
  a4:	8d 54 24 20          	lea    0x20(%esp),%edx
  a8:	8b 04 24             	mov    (%esp),%eax
  ab:	e8 fc ff ff ff       	call   ac <sdcard_card_setup.constprop.0+0xac>
  b0:	85 c0                	test   %eax,%eax
  b2:	74 2c                	je     e0 <sdcard_card_setup.constprop.0+0xe0>
  b4:	c7 44 24 20 00 00 00 	movl   $0x0,0x20(%esp)
  bb:	00 
  bc:	8d 4c 24 20          	lea    0x20(%esp),%ecx
  c0:	ba 02 01 00 00       	mov    $0x102,%edx
  c5:	8b 04 24             	mov    (%esp),%eax
  c8:	e8 fc ff ff ff       	call   c9 <sdcard_card_setup.constprop.0+0xc9>
  cd:	89 c3                	mov    %eax,%ebx
  cf:	85 c0                	test   %eax,%eax
  d1:	0f 85 da 02 00 00    	jne    3b1 <sdcard_card_setup.constprop.0+0x3b1>
  d7:	83 4d 28 01          	orl    $0x1,0x28(%ebp)
  db:	be 00 00 00 40       	mov    $0x40000000,%esi
  e0:	b8 e8 03 00 00       	mov    $0x3e8,%eax
  e5:	e8 fc ff ff ff       	call   e6 <sdcard_card_setup.constprop.0+0xe6>
  ea:	89 c7                	mov    %eax,%edi
  ec:	8b 44 24 04          	mov    0x4(%esp),%eax
  f0:	09 f0                	or     %esi,%eax
  f2:	89 44 24 20          	mov    %eax,0x20(%esp)
  f6:	f6 45 28 01          	testb  $0x1,0x28(%ebp)
  fa:	74 13                	je     10f <sdcard_card_setup.constprop.0+0x10f>
  fc:	8d 4c 24 20          	lea    0x20(%esp),%ecx
 100:	ba 02 01 00 00       	mov    $0x102,%edx
 105:	8b 04 24             	mov    (%esp),%eax
 108:	e8 fc ff ff ff       	call   109 <sdcard_card_setup.constprop.0+0x109>
 10d:	eb 0c                	jmp    11b <sdcard_card_setup.constprop.0+0x11b>
 10f:	8d 54 24 20          	lea    0x20(%esp),%edx
 113:	8b 04 24             	mov    (%esp),%eax
 116:	e8 fc ff ff ff       	call   117 <sdcard_card_setup.constprop.0+0x117>
 11b:	89 c3                	mov    %eax,%ebx
 11d:	85 c0                	test   %eax,%eax
 11f:	0f 85 8c 02 00 00    	jne    3b1 <sdcard_card_setup.constprop.0+0x3b1>
 125:	8b 44 24 20          	mov    0x20(%esp),%eax
 129:	85 c0                	test   %eax,%eax
 12b:	78 2e                	js     15b <sdcard_card_setup.constprop.0+0x15b>
 12d:	89 f8                	mov    %edi,%eax
 12f:	e8 fc ff ff ff       	call   130 <sdcard_card_setup.constprop.0+0x130>
 134:	85 c0                	test   %eax,%eax
 136:	74 17                	je     14f <sdcard_card_setup.constprop.0+0x14f>
 138:	ba 00 00 00 00       	mov    $0x0,%edx
 13d:	b8 b0 01 00 00       	mov    $0x1b0,%eax
 142:	e8 fc ff ff ff       	call   143 <sdcard_card_setup.constprop.0+0x143>
 147:	83 cb ff             	or     $0xffffffff,%ebx
 14a:	e9 62 02 00 00       	jmp    3b1 <sdcard_card_setup.constprop.0+0x3b1>
 14f:	b8 05 00 00 00       	mov    $0x5,%eax
 154:	e8 fc ff ff ff       	call   155 <sdcard_card_setup.constprop.0+0x155>
 159:	eb 91                	jmp    ec <sdcard_card_setup.constprop.0+0xec>
 15b:	c1 e8 1d             	shr    $0x1d,%eax
 15e:	83 e0 02             	and    $0x2,%eax
 161:	09 45 28             	or     %eax,0x28(%ebp)
 164:	c7 44 24 20 00 00 00 	movl   $0x0,0x20(%esp)
 16b:	00 
 16c:	8d 4c 24 20          	lea    0x20(%esp),%ecx
 170:	ba 09 02 00 00       	mov    $0x209,%edx
 175:	8b 04 24             	mov    (%esp),%eax
 178:	e8 fc ff ff ff       	call   179 <sdcard_card_setup.constprop.0+0x179>
 17d:	89 c3                	mov    %eax,%ebx
 17f:	85 c0                	test   %eax,%eax
 181:	0f 85 2a 02 00 00    	jne    3b1 <sdcard_card_setup.constprop.0+0x3b1>
 187:	8d 7c 24 30          	lea    0x30(%esp),%edi
 18b:	b9 04 00 00 00       	mov    $0x4,%ecx
 190:	8d 74 24 20          	lea    0x20(%esp),%esi
 194:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 196:	8b 45 28             	mov    0x28(%ebp),%eax
 199:	c1 e0 10             	shl    $0x10,%eax
 19c:	25 00 00 01 00       	and    $0x10000,%eax
 1a1:	89 44 24 20          	mov    %eax,0x20(%esp)
 1a5:	8d 4c 24 20          	lea    0x20(%esp),%ecx
 1a9:	ba 1a 03 00 00       	mov    $0x31a,%edx
 1ae:	8b 04 24             	mov    (%esp),%eax
 1b1:	e8 fc ff ff ff       	call   1b2 <sdcard_card_setup.constprop.0+0x1b2>
 1b6:	89 c3                	mov    %eax,%ebx
 1b8:	85 c0                	test   %eax,%eax
 1ba:	0f 85 f1 01 00 00    	jne    3b1 <sdcard_card_setup.constprop.0+0x3b1>
 1c0:	be 01 00 00 00       	mov    $0x1,%esi
 1c5:	f6 45 28 01          	testb  $0x1,0x28(%ebp)
 1c9:	75 05                	jne    1d0 <sdcard_card_setup.constprop.0+0x1d0>
 1cb:	66 8b 74 24 22       	mov    0x22(%esp),%si
 1d0:	c1 e6 10             	shl    $0x10,%esi
 1d3:	89 74 24 20          	mov    %esi,0x20(%esp)
 1d7:	8d 4c 24 20          	lea    0x20(%esp),%ecx
 1db:	ba 09 09 00 00       	mov    $0x909,%edx
 1e0:	8b 04 24             	mov    (%esp),%eax
 1e3:	e8 fc ff ff ff       	call   1e4 <sdcard_card_setup.constprop.0+0x1e4>
 1e8:	89 c3                	mov    %eax,%ebx
 1ea:	85 c0                	test   %eax,%eax
 1ec:	0f 85 bf 01 00 00    	jne    3b1 <sdcard_card_setup.constprop.0+0x3b1>
 1f2:	8a 44 24 24          	mov    0x24(%esp),%al
 1f6:	88 44 24 04          	mov    %al,0x4(%esp)
 1fa:	66 8b 44 24 25       	mov    0x25(%esp),%ax
 1ff:	66 89 44 24 12       	mov    %ax,0x12(%esp)
 204:	8a 44 24 25          	mov    0x25(%esp),%al
 208:	88 44 24 08          	mov    %al,0x8(%esp)
 20c:	8a 44 24 26          	mov    0x26(%esp),%al
 210:	88 44 24 19          	mov    %al,0x19(%esp)
 214:	8a 44 24 27          	mov    0x27(%esp),%al
 218:	88 44 24 1a          	mov    %al,0x1a(%esp)
 21c:	8b 7c 24 28          	mov    0x28(%esp),%edi
 220:	8a 44 24 29          	mov    0x29(%esp),%al
 224:	88 44 24 14          	mov    %al,0x14(%esp)
 228:	8a 44 24 2e          	mov    0x2e(%esp),%al
 22c:	88 44 24 1b          	mov    %al,0x1b(%esp)
 230:	89 74 24 20          	mov    %esi,0x20(%esp)
 234:	8d 4c 24 20          	lea    0x20(%esp),%ecx
 238:	ba 1b 07 00 00       	mov    $0x71b,%edx
 23d:	8b 04 24             	mov    (%esp),%eax
 240:	e8 fc ff ff ff       	call   241 <sdcard_card_setup.constprop.0+0x241>
 245:	89 c3                	mov    %eax,%ebx
 247:	85 c0                	test   %eax,%eax
 249:	0f 85 62 01 00 00    	jne    3b1 <sdcard_card_setup.constprop.0+0x3b1>
 24f:	ba a8 61 00 00       	mov    $0x61a8,%edx
 254:	8b 04 24             	mov    (%esp),%eax
 257:	e8 fc ff ff ff       	call   258 <sdcard_card_setup.constprop.0+0x258>
 25c:	89 c3                	mov    %eax,%ebx
 25e:	85 c0                	test   %eax,%eax
 260:	0f 85 4b 01 00 00    	jne    3b1 <sdcard_card_setup.constprop.0+0x3b1>
 266:	0f b6 44 24 1a       	movzbl 0x1a(%esp),%eax
 26b:	8a 54 24 19          	mov    0x19(%esp),%dl
 26f:	c0 ea 06             	shr    $0x6,%dl
 272:	0f b6 d2             	movzbl %dl,%edx
 275:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
 27c:	09 ca                	or     %ecx,%edx
 27e:	c1 e7 0a             	shl    $0xa,%edi
 281:	66 81 e7 00 0c       	and    $0xc00,%di
 286:	09 d7                	or     %edx,%edi
 288:	47                   	inc    %edi
 289:	0f bf ff             	movswl %di,%edi
 28c:	8a 54 24 08          	mov    0x8(%esp),%dl
 290:	d1 e2                	shl    %edx
 292:	83 e2 06             	and    $0x6,%edx
 295:	8a 4c 24 04          	mov    0x4(%esp),%cl
 299:	c0 e9 07             	shr    $0x7,%cl
 29c:	09 ca                	or     %ecx,%edx
 29e:	83 c2 02             	add    $0x2,%edx
 2a1:	0f b6 d2             	movzbl %dl,%edx
 2a4:	8b 4c 24 14          	mov    0x14(%esp),%ecx
 2a8:	83 e1 0f             	and    $0xf,%ecx
 2ab:	8d 4c 0a f7          	lea    -0x9(%edx,%ecx,1),%ecx
 2af:	d3 e7                	shl    %cl,%edi
 2b1:	8a 54 24 1b          	mov    0x1b(%esp),%dl
 2b5:	c0 ea 06             	shr    $0x6,%dl
 2b8:	f6 45 28 01          	testb  $0x1,0x28(%ebp)
 2bc:	74 30                	je     2ee <sdcard_card_setup.constprop.0+0x2ee>
 2be:	80 fa 01             	cmp    $0x1,%dl
 2c1:	76 44                	jbe    307 <sdcard_card_setup.constprop.0+0x307>
 2c3:	6a 01                	push   $0x1
 2c5:	8d 44 24 44          	lea    0x44(%esp),%eax
 2c9:	50                   	push   %eax
 2ca:	31 c9                	xor    %ecx,%ecx
 2cc:	ba 3a 08 00 00       	mov    $0x83a,%edx
 2d1:	89 e8                	mov    %ebp,%eax
 2d3:	e8 fc ff ff ff       	call   2d4 <sdcard_card_setup.constprop.0+0x2d4>
 2d8:	5a                   	pop    %edx
 2d9:	59                   	pop    %ecx
 2da:	85 c0                	test   %eax,%eax
 2dc:	74 07                	je     2e5 <sdcard_card_setup.constprop.0+0x2e5>
 2de:	89 c3                	mov    %eax,%ebx
 2e0:	e9 cc 00 00 00       	jmp    3b1 <sdcard_card_setup.constprop.0+0x3b1>
 2e5:	8b bc 24 14 01 00 00 	mov    0x114(%esp),%edi
 2ec:	eb 19                	jmp    307 <sdcard_card_setup.constprop.0+0x307>
 2ee:	84 d2                	test   %dl,%dl
 2f0:	74 15                	je     307 <sdcard_card_setup.constprop.0+0x307>
 2f2:	c1 e0 10             	shl    $0x10,%eax
 2f5:	25 00 00 3f 00       	and    $0x3f0000,%eax
 2fa:	0f b7 54 24 12       	movzwl 0x12(%esp),%edx
 2ff:	09 d0                	or     %edx,%eax
 301:	8d 78 01             	lea    0x1(%eax),%edi
 304:	c1 e7 0a             	shl    $0xa,%edi
 307:	66 c7 45 1a 00 02    	movw   $0x200,0x1a(%ebp)
 30d:	89 7c 24 08          	mov    %edi,0x8(%esp)
 311:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 318:	00 
 319:	8b 44 24 08          	mov    0x8(%esp),%eax
 31d:	8b 54 24 0c          	mov    0xc(%esp),%edx
 321:	89 45 0c             	mov    %eax,0xc(%ebp)
 324:	89 55 10             	mov    %edx,0x10(%ebp)
 327:	c7 44 24 40 00 00 00 	movl   $0x0,0x40(%esp)
 32e:	00 
 32f:	8d 7c 24 44          	lea    0x44(%esp),%edi
 333:	b9 03 00 00 00       	mov    $0x3,%ecx
 338:	31 c0                	xor    %eax,%eax
 33a:	f3 aa                	rep stos %al,%es:(%edi)
 33c:	8b 45 28             	mov    0x28(%ebp),%eax
 33f:	83 e0 01             	and    $0x1,%eax
 342:	89 44 24 04          	mov    %eax,0x4(%esp)
 346:	8d 78 05             	lea    0x5(%eax),%edi
 349:	8d 54 24 40          	lea    0x40(%esp),%edx
 34d:	8d 74 24 3b          	lea    0x3b(%esp),%esi
 351:	29 ce                	sub    %ecx,%esi
 353:	8a 06                	mov    (%esi),%al
 355:	88 04 11             	mov    %al,(%ecx,%edx,1)
 358:	41                   	inc    %ecx
 359:	39 cf                	cmp    %ecx,%edi
 35b:	7f f0                	jg     34d <sdcard_card_setup.constprop.0+0x34d>
 35d:	8b 74 24 08          	mov    0x8(%esp),%esi
 361:	8b 7c 24 0c          	mov    0xc(%esp),%edi
 365:	0f ac fe 0b          	shrd   $0xb,%edi,%esi
 369:	c1 ef 0b             	shr    $0xb,%edi
 36c:	b9 d9 00 00 00       	mov    $0xd9,%ecx
 371:	83 7c 24 04 00       	cmpl   $0x0,0x4(%esp)
 376:	75 05                	jne    37d <sdcard_card_setup.constprop.0+0x37d>
 378:	b9 e3 00 00 00       	mov    $0xe3,%ecx
 37d:	56                   	push   %esi
 37e:	52                   	push   %edx
 37f:	51                   	push   %ecx
 380:	68 eb 00 00 00       	push   $0xeb
 385:	6a 50                	push   $0x50
 387:	e8 fc ff ff ff       	call   388 <sdcard_card_setup.constprop.0+0x388>
 38c:	50                   	push   %eax
 38d:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 391:	ff 74 24 18          	push   0x18(%esp)
 395:	68 f7 00 00 00       	push   $0xf7
 39a:	e8 fc ff ff ff       	call   39b <sdcard_card_setup.constprop.0+0x39b>
 39f:	83 c4 20             	add    $0x20,%esp
 3a2:	8b 4c 24 1c          	mov    0x1c(%esp),%ecx
 3a6:	8b 54 24 04          	mov    0x4(%esp),%edx
 3aa:	89 e8                	mov    %ebp,%eax
 3ac:	e8 fc ff ff ff       	call   3ad <sdcard_card_setup.constprop.0+0x3ad>
 3b1:	89 d8                	mov    %ebx,%eax
 3b3:	81 c4 40 02 00 00    	add    $0x240,%esp
 3b9:	5b                   	pop    %ebx
 3ba:	5e                   	pop    %esi
 3bb:	5f                   	pop    %edi
 3bc:	5d                   	pop    %ebp
 3bd:	c3                   	ret    

Disassembly of section .text.sdcard_controller_setup:

00000000 <sdcard_controller_setup>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	53                   	push   %ebx
   5:	89 c3                	mov    %eax,%ebx
   7:	89 14 24             	mov    %edx,(%esp)
   a:	8b 40 24             	mov    0x24(%eax),%eax
   d:	0f ba e0 10          	bt     $0x10,%eax
  11:	0f 83 2a 01 00 00    	jae    141 <sdcard_controller_setup+0x141>
  17:	0f b7 93 fe 00 00 00 	movzwl 0xfe(%ebx),%edx
  1e:	89 d7                	mov    %edx,%edi
  20:	8b 73 40             	mov    0x40(%ebx),%esi
  23:	8b 6b 44             	mov    0x44(%ebx),%ebp
  26:	55                   	push   %ebp
  27:	56                   	push   %esi
  28:	52                   	push   %edx
  29:	53                   	push   %ebx
  2a:	68 0f 01 00 00       	push   $0x10f
  2f:	e8 fc ff ff ff       	call   30 <sdcard_controller_setup+0x30>
  34:	21 ee                	and    %ebp,%esi
  36:	83 c4 14             	add    $0x14,%esp
  39:	46                   	inc    %esi
  3a:	75 08                	jne    44 <sdcard_controller_setup+0x44>
  3c:	66 47                	inc    %di
  3e:	0f 84 fd 00 00 00    	je     141 <sdcard_controller_setup+0x141>
  44:	ba 01 00 00 00       	mov    $0x1,%edx
  49:	89 d8                	mov    %ebx,%eax
  4b:	e8 fc ff ff ff       	call   4c <sdcard_controller_setup+0x4c>
  50:	66 c7 43 38 00 00    	movw   $0x0,0x38(%ebx)
  56:	66 c7 43 34 ff 01    	movw   $0x1ff,0x34(%ebx)
  5c:	66 8b 43 30          	mov    0x30(%ebx),%ax
  60:	66 89 43 30          	mov    %ax,0x30(%ebx)
  64:	66 c7 43 3a 00 00    	movw   $0x0,0x3a(%ebx)
  6a:	66 c7 43 36 ff 01    	movw   $0x1ff,0x36(%ebx)
  70:	66 8b 43 32          	mov    0x32(%ebx),%ax
  74:	66 89 43 32          	mov    %ax,0x32(%ebx)
  78:	c6 43 2e 0e          	movb   $0xe,0x2e(%ebx)
  7c:	8b 43 40             	mov    0x40(%ebx),%eax
  7f:	0f ba e0 18          	bt     $0x18,%eax
  83:	72 28                	jb     ad <sdcard_controller_setup+0xad>
  85:	0f ba e0 19          	bt     $0x19,%eax
  89:	72 2e                	jb     b9 <sdcard_controller_setup+0xb9>
  8b:	be 0a 00 00 00       	mov    $0xa,%esi
  90:	bf 80 00 00 00       	mov    $0x80,%edi
  95:	0f ba e0 1a          	bt     $0x1a,%eax
  99:	72 28                	jb     c3 <sdcard_controller_setup+0xc3>
  9b:	50                   	push   %eax
  9c:	68 2a 01 00 00       	push   $0x12a
  a1:	e8 fc ff ff ff       	call   a2 <sdcard_controller_setup+0xa2>
  a6:	5a                   	pop    %edx
  a7:	59                   	pop    %ecx
  a8:	e9 94 00 00 00       	jmp    141 <sdcard_controller_setup+0x141>
  ad:	be 0e 00 00 00       	mov    $0xe,%esi
  b2:	bf 00 00 10 00       	mov    $0x100000,%edi
  b7:	eb 0a                	jmp    c3 <sdcard_controller_setup+0xc3>
  b9:	be 0c 00 00 00       	mov    $0xc,%esi
  be:	bf 00 00 04 00       	mov    $0x40000,%edi
  c3:	c6 43 29 00          	movb   $0x0,0x29(%ebx)
  c7:	b8 01 00 00 00       	mov    $0x1,%eax
  cc:	e8 fc ff ff ff       	call   cd <sdcard_controller_setup+0xcd>
  d1:	89 f0                	mov    %esi,%eax
  d3:	83 c8 01             	or     $0x1,%eax
  d6:	88 43 29             	mov    %al,0x29(%ebx)
  d9:	b8 19 00 00 00       	mov    $0x19,%eax
  de:	e8 fc ff ff ff       	call   df <sdcard_controller_setup+0xdf>
  e3:	b9 10 00 00 00       	mov    $0x10,%ecx
  e8:	ba 2c 00 00 00       	mov    $0x2c,%edx
  ed:	b8 00 00 00 00       	mov    $0x0,%eax
  f2:	e8 fc ff ff ff       	call   f3 <sdcard_controller_setup+0xf3>
  f7:	89 c6                	mov    %eax,%esi
  f9:	85 c0                	test   %eax,%eax
  fb:	75 11                	jne    10e <sdcard_controller_setup+0x10e>
  fd:	ba 00 00 00 00       	mov    $0x0,%edx
 102:	b8 ff 01 00 00       	mov    $0x1ff,%eax
 107:	e8 fc ff ff ff       	call   108 <sdcard_controller_setup+0x108>
 10c:	eb 29                	jmp    137 <sdcard_controller_setup+0x137>
 10e:	b9 2c 00 00 00       	mov    $0x2c,%ecx
 113:	31 d2                	xor    %edx,%edx
 115:	e8 fc ff ff ff       	call   116 <sdcard_controller_setup+0x116>
 11a:	c6 06 90             	movb   $0x90,(%esi)
 11d:	89 5e 24             	mov    %ebx,0x24(%esi)
 120:	8b 0c 24             	mov    (%esp),%ecx
 123:	89 fa                	mov    %edi,%edx
 125:	89 f0                	mov    %esi,%eax
 127:	e8 fc ff ff ff       	call   128 <sdcard_controller_setup+0x128>
 12c:	85 c0                	test   %eax,%eax
 12e:	74 11                	je     141 <sdcard_controller_setup+0x141>
 130:	89 f0                	mov    %esi,%eax
 132:	e8 fc ff ff ff       	call   133 <sdcard_controller_setup+0x133>
 137:	c6 43 29 00          	movb   $0x0,0x29(%ebx)
 13b:	66 c7 43 2c 00 00    	movw   $0x0,0x2c(%ebx)
 141:	58                   	pop    %eax
 142:	5b                   	pop    %ebx
 143:	5e                   	pop    %esi
 144:	5f                   	pop    %edi
 145:	5d                   	pop    %ebp
 146:	c3                   	ret    

Disassembly of section .text.sdcard_pci_setup:

00000000 <sdcard_pci_setup>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 c6                	mov    %eax,%esi
   4:	ba 10 00 00 00       	mov    $0x10,%edx
   9:	e8 fc ff ff ff       	call   a <sdcard_pci_setup+0xa>
   e:	85 c0                	test   %eax,%eax
  10:	74 14                	je     26 <sdcard_pci_setup+0x26>
  12:	89 c3                	mov    %eax,%ebx
  14:	89 f0                	mov    %esi,%eax
  16:	e8 fc ff ff ff       	call   17 <sdcard_pci_setup+0x17>
  1b:	89 c2                	mov    %eax,%edx
  1d:	89 d8                	mov    %ebx,%eax
  1f:	5b                   	pop    %ebx
  20:	5e                   	pop    %esi
  21:	e9 fc ff ff ff       	jmp    22 <sdcard_pci_setup+0x22>
  26:	5b                   	pop    %ebx
  27:	5e                   	pop    %esi
  28:	c3                   	ret    

Disassembly of section .text.sdcard_romfile_setup:

00000000 <sdcard_romfile_setup>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	52                   	push   %edx
   3:	8d 58 04             	lea    0x4(%eax),%ebx
   6:	31 d2                	xor    %edx,%edx
   8:	89 d8                	mov    %ebx,%eax
   a:	e8 fc ff ff ff       	call   b <sdcard_romfile_setup+0xb>
   f:	89 c6                	mov    %eax,%esi
  11:	31 d2                	xor    %edx,%edx
  13:	31 c9                	xor    %ecx,%ecx
  15:	89 d8                	mov    %ebx,%eax
  17:	e8 fc ff ff ff       	call   18 <sdcard_romfile_setup+0x18>
  1c:	50                   	push   %eax
  1d:	89 44 24 04          	mov    %eax,0x4(%esp)
  21:	68 55 01 00 00       	push   $0x155
  26:	e8 fc ff ff ff       	call   27 <sdcard_romfile_setup+0x27>
  2b:	89 f2                	mov    %esi,%edx
  2d:	8b 44 24 08          	mov    0x8(%esp),%eax
  31:	83 c4 0c             	add    $0xc,%esp
  34:	5b                   	pop    %ebx
  35:	5e                   	pop    %esi
  36:	e9 fc ff ff ff       	jmp    37 <sdcard_romfile_setup+0x37>

Disassembly of section .text.sdcard_process_op:

00000000 <sdcard_process_op>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	8a 50 08             	mov    0x8(%eax),%dl
   5:	80 fa 02             	cmp    $0x2,%dl
   8:	74 1c                	je     26 <sdcard_process_op+0x26>
   a:	80 fa 03             	cmp    $0x3,%dl
   d:	75 4a                	jne    59 <sdcard_process_op+0x59>
   f:	8b 58 04             	mov    0x4(%eax),%ebx
  12:	0f b7 70 0a          	movzwl 0xa(%eax),%esi
  16:	66 83 fe 02          	cmp    $0x2,%si
  1a:	19 d2                	sbb    %edx,%edx
  1c:	30 d2                	xor    %dl,%dl
  1e:	81 c2 3a 19 00 00    	add    $0x193a,%edx
  24:	eb 15                	jmp    3b <sdcard_process_op+0x3b>
  26:	8b 58 04             	mov    0x4(%eax),%ebx
  29:	0f b7 70 0a          	movzwl 0xa(%eax),%esi
  2d:	66 83 fe 02          	cmp    $0x2,%si
  31:	19 d2                	sbb    %edx,%edx
  33:	30 d2                	xor    %dl,%dl
  35:	81 c2 3a 12 00 00    	add    $0x123a,%edx
  3b:	8b 48 0c             	mov    0xc(%eax),%ecx
  3e:	56                   	push   %esi
  3f:	ff 30                	push   (%eax)
  41:	89 d8                	mov    %ebx,%eax
  43:	e8 fc ff ff ff       	call   44 <sdcard_process_op+0x44>
  48:	5a                   	pop    %edx
  49:	59                   	pop    %ecx
  4a:	85 c0                	test   %eax,%eax
  4c:	75 04                	jne    52 <sdcard_process_op+0x52>
  4e:	31 c0                	xor    %eax,%eax
  50:	eb 0e                	jmp    60 <sdcard_process_op+0x60>
  52:	b8 0c 00 00 00       	mov    $0xc,%eax
  57:	eb 07                	jmp    60 <sdcard_process_op+0x60>
  59:	5b                   	pop    %ebx
  5a:	5e                   	pop    %esi
  5b:	e9 fc ff ff ff       	jmp    5c <sdcard_process_op+0x5c>
  60:	5b                   	pop    %ebx
  61:	5e                   	pop    %esi
  62:	c3                   	ret    

Disassembly of section .text.sdcard_setup:

00000000 <sdcard_setup>:
   0:	53                   	push   %ebx
   1:	52                   	push   %edx
   2:	31 db                	xor    %ebx,%ebx
   4:	31 d2                	xor    %edx,%edx
   6:	b8 82 01 00 00       	mov    $0x182,%eax
   b:	e8 fc ff ff ff       	call   c <sdcard_setup+0xc>
  10:	89 c2                	mov    %eax,%edx
  12:	85 c0                	test   %eax,%eax
  14:	74 13                	je     29 <sdcard_setup+0x29>
  16:	89 04 24             	mov    %eax,(%esp)
  19:	b8 00 00 00 00       	mov    $0x0,%eax
  1e:	e8 fc ff ff ff       	call   1f <sdcard_setup+0x1f>
  23:	43                   	inc    %ebx
  24:	8b 14 24             	mov    (%esp),%edx
  27:	eb dd                	jmp    6 <sdcard_setup+0x6>
  29:	85 db                	test   %ebx,%ebx
  2b:	75 2f                	jne    5c <sdcard_setup+0x5c>
  2d:	a1 00 00 00 00       	mov    0x0,%eax
  32:	8d 58 fc             	lea    -0x4(%eax),%ebx
  35:	83 fb fc             	cmp    $0xfffffffc,%ebx
  38:	74 22                	je     5c <sdcard_setup+0x5c>
  3a:	66 81 7b 14 05 08    	cmpw   $0x805,0x14(%ebx)
  40:	75 12                	jne    54 <sdcard_setup+0x54>
  42:	80 7b 16 01          	cmpb   $0x1,0x16(%ebx)
  46:	77 0c                	ja     54 <sdcard_setup+0x54>
  48:	89 da                	mov    %ebx,%edx
  4a:	b8 00 00 00 00       	mov    $0x0,%eax
  4f:	e8 fc ff ff ff       	call   50 <sdcard_setup+0x50>
  54:	8b 5b 04             	mov    0x4(%ebx),%ebx
  57:	83 eb 04             	sub    $0x4,%ebx
  5a:	eb d9                	jmp    35 <sdcard_setup+0x35>
  5c:	58                   	pop    %eax
  5d:	5b                   	pop    %ebx
  5e:	c3                   	ret    
