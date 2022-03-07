
./ps2port.o:     file format elf32-i386


Disassembly of section .text.ps2_recvbyte:

00000000 <ps2_recvbyte>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 08             	sub    $0x8,%esp
   7:	89 04 24             	mov    %eax,(%esp)
   a:	89 d7                	mov    %edx,%edi
   c:	89 c8                	mov    %ecx,%eax
   e:	e8 fc ff ff ff       	call   f <ps2_recvbyte+0xf>
  13:	89 c3                	mov    %eax,%ebx
  15:	e4 64                	in     $0x64,%al
  17:	88 44 24 06          	mov    %al,0x6(%esp)
  1b:	a8 01                	test   $0x1,%al
  1d:	74 5b                	je     7a <ps2_recvbyte+0x7a>
  1f:	0f b6 f0             	movzbl %al,%esi
  22:	e4 60                	in     $0x60,%al
  24:	0f b6 e8             	movzbl %al,%ebp
  27:	88 44 24 07          	mov    %al,0x7(%esp)
  2b:	55                   	push   %ebp
  2c:	68 00 00 00 00       	push   $0x0
  31:	e8 fc ff ff ff       	call   32 <ps2_recvbyte+0x32>
  36:	8a 54 24 0e          	mov    0xe(%esp),%dl
  3a:	c0 ea 05             	shr    $0x5,%dl
  3d:	83 e2 01             	and    $0x1,%edx
  40:	58                   	pop    %eax
  41:	59                   	pop    %ecx
  42:	3b 14 24             	cmp    (%esp),%edx
  45:	75 24                	jne    6b <ps2_recvbyte+0x6b>
  47:	85 ff                	test   %edi,%edi
  49:	74 5d                	je     a8 <ps2_recvbyte+0xa8>
  4b:	8a 44 24 07          	mov    0x7(%esp),%al
  4f:	3c fa                	cmp    $0xfa,%al
  51:	74 50                	je     a3 <ps2_recvbyte+0xa3>
  53:	3c fe                	cmp    $0xfe,%al
  55:	75 14                	jne    6b <ps2_recvbyte+0x6b>
  57:	56                   	push   %esi
  58:	68 0d 00 00 00       	push   $0xd
  5d:	e8 fc ff ff ff       	call   5e <ps2_recvbyte+0x5e>
  62:	5b                   	pop    %ebx
  63:	5e                   	pop    %esi
  64:	bd fe 00 00 00       	mov    $0xfe,%ebp
  69:	eb 3d                	jmp    a8 <ps2_recvbyte+0xa8>
  6b:	56                   	push   %esi
  6c:	55                   	push   %ebp
  6d:	68 26 00 00 00       	push   $0x26
  72:	e8 fc ff ff ff       	call   73 <ps2_recvbyte+0x73>
  77:	83 c4 0c             	add    $0xc,%esp
  7a:	89 d8                	mov    %ebx,%eax
  7c:	e8 fc ff ff ff       	call   7d <ps2_recvbyte+0x7d>
  81:	85 c0                	test   %eax,%eax
  83:	74 14                	je     99 <ps2_recvbyte+0x99>
  85:	ba 00 00 00 00       	mov    $0x0,%edx
  8a:	b8 b6 00 00 00       	mov    $0xb6,%eax
  8f:	e8 fc ff ff ff       	call   90 <ps2_recvbyte+0x90>
  94:	83 cd ff             	or     $0xffffffff,%ebp
  97:	eb 0f                	jmp    a8 <ps2_recvbyte+0xa8>
  99:	e8 fc ff ff ff       	call   9a <ps2_recvbyte+0x9a>
  9e:	e9 72 ff ff ff       	jmp    15 <ps2_recvbyte+0x15>
  a3:	bd fa 00 00 00       	mov    $0xfa,%ebp
  a8:	89 e8                	mov    %ebp,%eax
  aa:	83 c4 08             	add    $0x8,%esp
  ad:	5b                   	pop    %ebx
  ae:	5e                   	pop    %esi
  af:	5f                   	pop    %edi
  b0:	5d                   	pop    %ebp
  b1:	c3                   	ret    

Disassembly of section .text.i8042_wait_write:

00000000 <i8042_wait_write>:
   0:	53                   	push   %ebx
   1:	68 4e 00 00 00       	push   $0x4e
   6:	e8 fc ff ff ff       	call   7 <i8042_wait_write+0x7>
   b:	58                   	pop    %eax
   c:	bb 10 27 00 00       	mov    $0x2710,%ebx
  11:	e4 64                	in     $0x64,%al
  13:	a8 02                	test   $0x2,%al
  15:	74 21                	je     38 <i8042_wait_write+0x38>
  17:	b8 32 00 00 00       	mov    $0x32,%eax
  1c:	e8 fc ff ff ff       	call   1d <i8042_wait_write+0x1d>
  21:	4b                   	dec    %ebx
  22:	75 ed                	jne    11 <i8042_wait_write+0x11>
  24:	ba 00 00 00 00       	mov    $0x0,%edx
  29:	b8 35 00 00 00       	mov    $0x35,%eax
  2e:	e8 fc ff ff ff       	call   2f <i8042_wait_write+0x2f>
  33:	83 c8 ff             	or     $0xffffffff,%eax
  36:	eb 02                	jmp    3a <i8042_wait_write+0x3a>
  38:	31 c0                	xor    %eax,%eax
  3a:	5b                   	pop    %ebx
  3b:	c3                   	ret    

Disassembly of section .text.i8042_command:

00000000 <i8042_command>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	51                   	push   %ecx
   5:	89 c6                	mov    %eax,%esi
   7:	89 d3                	mov    %edx,%ebx
   9:	50                   	push   %eax
   a:	68 60 00 00 00       	push   $0x60
   f:	e8 fc ff ff ff       	call   10 <i8042_command+0x10>
  14:	e8 fc ff ff ff       	call   15 <i8042_command+0x15>
  19:	89 c7                	mov    %eax,%edi
  1b:	5d                   	pop    %ebp
  1c:	5a                   	pop    %edx
  1d:	85 c0                	test   %eax,%eax
  1f:	0f 85 84 00 00 00    	jne    a9 <i8042_command+0xa9>
  25:	89 f5                	mov    %esi,%ebp
  27:	c1 fd 0c             	sar    $0xc,%ebp
  2a:	89 f0                	mov    %esi,%eax
  2c:	e6 64                	out    %al,$0x64
  2e:	31 c0                	xor    %eax,%eax
  30:	39 c5                	cmp    %eax,%ebp
  32:	7e 14                	jle    48 <i8042_command+0x48>
  34:	e8 fc ff ff ff       	call   35 <i8042_command+0x35>
  39:	85 c0                	test   %eax,%eax
  3b:	75 6c                	jne    a9 <i8042_command+0xa9>
  3d:	8a 03                	mov    (%ebx),%al
  3f:	e6 60                	out    %al,$0x60
  41:	b8 01 00 00 00       	mov    $0x1,%eax
  46:	eb e8                	jmp    30 <i8042_command+0x30>
  48:	89 f5                	mov    %esi,%ebp
  4a:	c1 fd 08             	sar    $0x8,%ebp
  4d:	83 e5 0f             	and    $0xf,%ebp
  50:	8d 04 2b             	lea    (%ebx,%ebp,1),%eax
  53:	89 04 24             	mov    %eax,(%esp)
  56:	39 1c 24             	cmp    %ebx,(%esp)
  59:	74 61                	je     bc <i8042_command+0xbc>
  5b:	68 76 00 00 00       	push   $0x76
  60:	e8 fc ff ff ff       	call   61 <i8042_command+0x61>
  65:	58                   	pop    %eax
  66:	bd 10 27 00 00       	mov    $0x2710,%ebp
  6b:	e4 64                	in     $0x64,%al
  6d:	a8 01                	test   $0x1,%al
  6f:	75 21                	jne    92 <i8042_command+0x92>
  71:	b8 32 00 00 00       	mov    $0x32,%eax
  76:	e8 fc ff ff ff       	call   77 <i8042_command+0x77>
  7b:	4d                   	dec    %ebp
  7c:	75 ed                	jne    6b <i8042_command+0x6b>
  7e:	ba 00 00 00 00       	mov    $0x0,%edx
  83:	b8 26 00 00 00       	mov    $0x26,%eax
  88:	e8 fc ff ff ff       	call   89 <i8042_command+0x89>
  8d:	83 c8 ff             	or     $0xffffffff,%eax
  90:	eb 17                	jmp    a9 <i8042_command+0xa9>
  92:	e4 60                	in     $0x60,%al
  94:	88 03                	mov    %al,(%ebx)
  96:	0f b6 c0             	movzbl %al,%eax
  99:	50                   	push   %eax
  9a:	68 87 00 00 00       	push   $0x87
  9f:	e8 fc ff ff ff       	call   a0 <i8042_command+0xa0>
  a4:	43                   	inc    %ebx
  a5:	5d                   	pop    %ebp
  a6:	58                   	pop    %eax
  a7:	eb ad                	jmp    56 <i8042_command+0x56>
  a9:	89 04 24             	mov    %eax,(%esp)
  ac:	56                   	push   %esi
  ad:	68 97 00 00 00       	push   $0x97
  b2:	e8 fc ff ff ff       	call   b3 <i8042_command+0xb3>
  b7:	59                   	pop    %ecx
  b8:	5b                   	pop    %ebx
  b9:	8b 3c 24             	mov    (%esp),%edi
  bc:	89 f8                	mov    %edi,%eax
  be:	5a                   	pop    %edx
  bf:	5b                   	pop    %ebx
  c0:	5e                   	pop    %esi
  c1:	5f                   	pop    %edi
  c2:	5d                   	pop    %ebp
  c3:	c3                   	ret    

Disassembly of section .text.i8042_flush:

00000000 <i8042_flush>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	68 b0 00 00 00       	push   $0xb0
   7:	e8 fc ff ff ff       	call   8 <i8042_flush+0x8>
   c:	58                   	pop    %eax
   d:	bb 10 00 00 00       	mov    $0x10,%ebx
  12:	e4 64                	in     $0x64,%al
  14:	0f b6 f0             	movzbl %al,%esi
  17:	a8 01                	test   $0x1,%al
  19:	74 35                	je     50 <i8042_flush+0x50>
  1b:	b8 32 00 00 00       	mov    $0x32,%eax
  20:	e8 fc ff ff ff       	call   21 <i8042_flush+0x21>
  25:	e4 60                	in     $0x60,%al
  27:	56                   	push   %esi
  28:	0f b6 c0             	movzbl %al,%eax
  2b:	50                   	push   %eax
  2c:	68 bd 00 00 00       	push   $0xbd
  31:	e8 fc ff ff ff       	call   32 <i8042_flush+0x32>
  36:	83 c4 0c             	add    $0xc,%esp
  39:	4b                   	dec    %ebx
  3a:	75 d6                	jne    12 <i8042_flush+0x12>
  3c:	ba 00 00 00 00       	mov    $0x0,%edx
  41:	b8 47 00 00 00       	mov    $0x47,%eax
  46:	e8 fc ff ff ff       	call   47 <i8042_flush+0x47>
  4b:	83 c8 ff             	or     $0xffffffff,%eax
  4e:	eb 02                	jmp    52 <i8042_flush+0x52>
  50:	31 c0                	xor    %eax,%eax
  52:	5b                   	pop    %ebx
  53:	5e                   	pop    %esi
  54:	c3                   	ret    

Disassembly of section .text.ps2_sendbyte:

00000000 <ps2_sendbyte>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 08             	sub    $0x8,%esp
   7:	89 c3                	mov    %eax,%ebx
   9:	89 ce                	mov    %ecx,%esi
   b:	89 d7                	mov    %edx,%edi
   d:	0f b6 ea             	movzbl %dl,%ebp
  10:	89 14 24             	mov    %edx,(%esp)
  13:	55                   	push   %ebp
  14:	50                   	push   %eax
  15:	68 db 00 00 00       	push   $0xdb
  1a:	e8 fc ff ff ff       	call   1b <ps2_sendbyte+0x1b>
  1f:	83 c4 0c             	add    $0xc,%esp
  22:	85 db                	test   %ebx,%ebx
  24:	74 1b                	je     41 <ps2_sendbyte+0x41>
  26:	8b 14 24             	mov    (%esp),%edx
  29:	88 54 24 07          	mov    %dl,0x7(%esp)
  2d:	8d 54 24 07          	lea    0x7(%esp),%edx
  31:	b8 d4 10 00 00       	mov    $0x10d4,%eax
  36:	e8 fc ff ff ff       	call   37 <ps2_sendbyte+0x37>
  3b:	85 c0                	test   %eax,%eax
  3d:	75 3b                	jne    7a <ps2_sendbyte+0x7a>
  3f:	eb 1a                	jmp    5b <ps2_sendbyte+0x5b>
  41:	55                   	push   %ebp
  42:	68 f7 00 00 00       	push   $0xf7
  47:	e8 fc ff ff ff       	call   48 <ps2_sendbyte+0x48>
  4c:	e8 fc ff ff ff       	call   4d <ps2_sendbyte+0x4d>
  51:	5d                   	pop    %ebp
  52:	5a                   	pop    %edx
  53:	85 c0                	test   %eax,%eax
  55:	75 23                	jne    7a <ps2_sendbyte+0x7a>
  57:	89 f8                	mov    %edi,%eax
  59:	e6 60                	out    %al,$0x60
  5b:	89 f1                	mov    %esi,%ecx
  5d:	ba 01 00 00 00       	mov    $0x1,%edx
  62:	89 d8                	mov    %ebx,%eax
  64:	e8 fc ff ff ff       	call   65 <ps2_sendbyte+0x65>
  69:	85 c0                	test   %eax,%eax
  6b:	78 0d                	js     7a <ps2_sendbyte+0x7a>
  6d:	3d fa 00 00 00       	cmp    $0xfa,%eax
  72:	0f 95 c0             	setne  %al
  75:	0f b6 c0             	movzbl %al,%eax
  78:	f7 d8                	neg    %eax
  7a:	83 c4 08             	add    $0x8,%esp
  7d:	5b                   	pop    %ebx
  7e:	5e                   	pop    %esi
  7f:	5f                   	pop    %edi
  80:	5d                   	pop    %ebp
  81:	c3                   	ret    

Disassembly of section .text.ps2_command:

00000000 <ps2_command>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 14             	sub    $0x14,%esp
   7:	89 c6                	mov    %eax,%esi
   9:	89 d5                	mov    %edx,%ebp
   b:	89 cf                	mov    %ecx,%edi
   d:	52                   	push   %edx
   e:	50                   	push   %eax
   f:	68 0d 01 00 00       	push   $0x10d
  14:	e8 fc ff ff ff       	call   15 <ps2_command+0x15>
  19:	0f b6 15 00 00 00 00 	movzbl 0x0,%edx
  20:	88 54 24 1e          	mov    %dl,0x1e(%esp)
  24:	88 d0                	mov    %dl,%al
  26:	83 e0 fc             	and    $0xfffffffc,%eax
  29:	83 c8 30             	or     $0x30,%eax
  2c:	88 44 24 1f          	mov    %al,0x1f(%esp)
  30:	0f b6 c0             	movzbl %al,%eax
  33:	50                   	push   %eax
  34:	52                   	push   %edx
  35:	68 28 01 00 00       	push   $0x128
  3a:	e8 fc ff ff ff       	call   3b <ps2_command+0x3b>
  3f:	8d 54 24 2b          	lea    0x2b(%esp),%edx
  43:	b8 60 10 00 00       	mov    $0x1060,%eax
  48:	e8 fc ff ff ff       	call   49 <ps2_command+0x49>
  4d:	83 c4 18             	add    $0x18,%esp
  50:	85 c0                	test   %eax,%eax
  52:	0f 85 c4 01 00 00    	jne    21c <ps2_command+0x21c>
  58:	e8 fc ff ff ff       	call   59 <ps2_command+0x59>
  5d:	8a 44 24 13          	mov    0x13(%esp),%al
  61:	a2 00 00 00 00       	mov    %al,0x0
  66:	88 c2                	mov    %al,%dl
  68:	83 e2 ef             	and    $0xffffffef,%edx
  6b:	85 f6                	test   %esi,%esi
  6d:	74 05                	je     74 <ps2_command+0x74>
  6f:	83 e0 df             	and    $0xffffffdf,%eax
  72:	88 c2                	mov    %al,%dl
  74:	88 54 24 13          	mov    %dl,0x13(%esp)
  78:	8d 54 24 13          	lea    0x13(%esp),%edx
  7c:	b8 60 10 00 00       	mov    $0x1060,%eax
  81:	e8 fc ff ff ff       	call   82 <ps2_command+0x82>
  86:	89 c3                	mov    %eax,%ebx
  88:	85 c0                	test   %eax,%eax
  8a:	0f 85 5c 01 00 00    	jne    1ec <ps2_command+0x1ec>
  90:	89 e8                	mov    %ebp,%eax
  92:	c1 f8 08             	sar    $0x8,%eax
  95:	89 44 24 08          	mov    %eax,0x8(%esp)
  99:	89 e8                	mov    %ebp,%eax
  9b:	fe c0                	inc    %al
  9d:	75 41                	jne    e0 <ps2_command+0xe0>
  9f:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
  a4:	ba ff 00 00 00       	mov    $0xff,%edx
  a9:	89 f0                	mov    %esi,%eax
  ab:	e8 fc ff ff ff       	call   ac <ps2_command+0xac>
  b0:	89 c3                	mov    %eax,%ebx
  b2:	85 c0                	test   %eax,%eax
  b4:	0f 85 32 01 00 00    	jne    1ec <ps2_command+0x1ec>
  ba:	b9 a0 0f 00 00       	mov    $0xfa0,%ecx
  bf:	31 d2                	xor    %edx,%edx
  c1:	89 f0                	mov    %esi,%eax
  c3:	e8 fc ff ff ff       	call   c4 <ps2_command+0xc4>
  c8:	85 c0                	test   %eax,%eax
  ca:	0f 88 1a 01 00 00    	js     1ea <ps2_command+0x1ea>
  d0:	88 07                	mov    %al,(%edi)
  d2:	f6 44 24 08 0e       	testb  $0xe,0x8(%esp)
  d7:	75 65                	jne    13e <ps2_command+0x13e>
  d9:	31 db                	xor    %ebx,%ebx
  db:	e9 0c 01 00 00       	jmp    1ec <ps2_command+0x1ec>
  e0:	81 fd f2 02 00 00    	cmp    $0x2f2,%ebp
  e6:	75 7d                	jne    165 <ps2_command+0x165>
  e8:	b9 c8 00 00 00       	mov    $0xc8,%ecx
  ed:	ba f2 00 00 00       	mov    $0xf2,%edx
  f2:	89 f0                	mov    %esi,%eax
  f4:	e8 fc ff ff ff       	call   f5 <ps2_command+0xf5>
  f9:	89 c3                	mov    %eax,%ebx
  fb:	85 c0                	test   %eax,%eax
  fd:	0f 85 e9 00 00 00    	jne    1ec <ps2_command+0x1ec>
 103:	b9 f4 01 00 00       	mov    $0x1f4,%ecx
 108:	31 d2                	xor    %edx,%edx
 10a:	89 f0                	mov    %esi,%eax
 10c:	e8 fc ff ff ff       	call   10d <ps2_command+0x10d>
 111:	85 c0                	test   %eax,%eax
 113:	0f 88 d1 00 00 00    	js     1ea <ps2_command+0x1ea>
 119:	88 07                	mov    %al,(%edi)
 11b:	8d 90 55 ff ff ff    	lea    -0xab(%eax),%edx
 121:	83 fa 01             	cmp    $0x1,%edx
 124:	76 18                	jbe    13e <ps2_command+0x13e>
 126:	83 f8 2b             	cmp    $0x2b,%eax
 129:	74 13                	je     13e <ps2_command+0x13e>
 12b:	8d 48 b9             	lea    -0x47(%eax),%ecx
 12e:	83 f9 19             	cmp    $0x19,%ecx
 131:	77 29                	ja     15c <ps2_command+0x15c>
 133:	b8 01 00 40 02       	mov    $0x2400001,%eax
 138:	d3 e8                	shr    %cl,%eax
 13a:	a8 01                	test   $0x1,%al
 13c:	74 1e                	je     15c <ps2_command+0x15c>
 13e:	b9 f4 01 00 00       	mov    $0x1f4,%ecx
 143:	31 d2                	xor    %edx,%edx
 145:	89 f0                	mov    %esi,%eax
 147:	e8 fc ff ff ff       	call   148 <ps2_command+0x148>
 14c:	85 c0                	test   %eax,%eax
 14e:	0f 88 96 00 00 00    	js     1ea <ps2_command+0x1ea>
 154:	88 47 01             	mov    %al,0x1(%edi)
 157:	e9 90 00 00 00       	jmp    1ec <ps2_command+0x1ec>
 15c:	c6 47 01 00          	movb   $0x0,0x1(%edi)
 160:	e9 87 00 00 00       	jmp    1ec <ps2_command+0x1ec>
 165:	89 e8                	mov    %ebp,%eax
 167:	0f b6 d0             	movzbl %al,%edx
 16a:	b9 c8 00 00 00       	mov    $0xc8,%ecx
 16f:	89 f0                	mov    %esi,%eax
 171:	e8 fc ff ff ff       	call   172 <ps2_command+0x172>
 176:	89 c3                	mov    %eax,%ebx
 178:	85 c0                	test   %eax,%eax
 17a:	75 70                	jne    1ec <ps2_command+0x1ec>
 17c:	89 3c 24             	mov    %edi,(%esp)
 17f:	89 e8                	mov    %ebp,%eax
 181:	c1 f8 0c             	sar    $0xc,%eax
 184:	83 e0 0f             	and    $0xf,%eax
 187:	01 f8                	add    %edi,%eax
 189:	89 44 24 0c          	mov    %eax,0xc(%esp)
 18d:	89 7c 24 04          	mov    %edi,0x4(%esp)
 191:	8b 4c 24 04          	mov    0x4(%esp),%ecx
 195:	39 4c 24 0c          	cmp    %ecx,0xc(%esp)
 199:	74 1f                	je     1ba <ps2_command+0x1ba>
 19b:	8b 44 24 04          	mov    0x4(%esp),%eax
 19f:	0f b6 10             	movzbl (%eax),%edx
 1a2:	b9 c8 00 00 00       	mov    $0xc8,%ecx
 1a7:	89 f0                	mov    %esi,%eax
 1a9:	e8 fc ff ff ff       	call   1aa <ps2_command+0x1aa>
 1ae:	89 c3                	mov    %eax,%ebx
 1b0:	ff 44 24 04          	incl   0x4(%esp)
 1b4:	85 c0                	test   %eax,%eax
 1b6:	74 d9                	je     191 <ps2_command+0x191>
 1b8:	eb 32                	jmp    1ec <ps2_command+0x1ec>
 1ba:	8b 44 24 08          	mov    0x8(%esp),%eax
 1be:	83 e0 0f             	and    $0xf,%eax
 1c1:	01 c7                	add    %eax,%edi
 1c3:	39 3c 24             	cmp    %edi,(%esp)
 1c6:	0f 84 0d ff ff ff    	je     d9 <ps2_command+0xd9>
 1cc:	b9 f4 01 00 00       	mov    $0x1f4,%ecx
 1d1:	31 d2                	xor    %edx,%edx
 1d3:	89 f0                	mov    %esi,%eax
 1d5:	e8 fc ff ff ff       	call   1d6 <ps2_command+0x1d6>
 1da:	89 c3                	mov    %eax,%ebx
 1dc:	85 c0                	test   %eax,%eax
 1de:	78 0c                	js     1ec <ps2_command+0x1ec>
 1e0:	8b 04 24             	mov    (%esp),%eax
 1e3:	88 18                	mov    %bl,(%eax)
 1e5:	ff 04 24             	incl   (%esp)
 1e8:	eb d9                	jmp    1c3 <ps2_command+0x1c3>
 1ea:	89 c3                	mov    %eax,%ebx
 1ec:	8a 44 24 12          	mov    0x12(%esp),%al
 1f0:	a2 00 00 00 00       	mov    %al,0x0
 1f5:	8d 54 24 12          	lea    0x12(%esp),%edx
 1f9:	b8 60 10 00 00       	mov    $0x1060,%eax
 1fe:	e8 fc ff ff ff       	call   1ff <ps2_command+0x1ff>
 203:	85 c0                	test   %eax,%eax
 205:	75 15                	jne    21c <ps2_command+0x21c>
 207:	85 db                	test   %ebx,%ebx
 209:	74 15                	je     220 <ps2_command+0x220>
 20b:	56                   	push   %esi
 20c:	55                   	push   %ebp
 20d:	68 41 01 00 00       	push   $0x141
 212:	e8 fc ff ff ff       	call   213 <ps2_command+0x213>
 217:	83 c4 0c             	add    $0xc,%esp
 21a:	eb 04                	jmp    220 <ps2_command+0x220>
 21c:	89 c3                	mov    %eax,%ebx
 21e:	eb eb                	jmp    20b <ps2_command+0x20b>
 220:	89 d8                	mov    %ebx,%eax
 222:	83 c4 14             	add    $0x14,%esp
 225:	5b                   	pop    %ebx
 226:	5e                   	pop    %esi
 227:	5f                   	pop    %edi
 228:	5d                   	pop    %ebp
 229:	c3                   	ret    

Disassembly of section .text.i8042_reboot:

00000000 <i8042_reboot>:
   0:	53                   	push   %ebx
   1:	bb 0a 00 00 00       	mov    $0xa,%ebx
   6:	e8 fc ff ff ff       	call   7 <i8042_reboot+0x7>
   b:	b8 32 00 00 00       	mov    $0x32,%eax
  10:	e8 fc ff ff ff       	call   11 <i8042_reboot+0x11>
  15:	b0 fe                	mov    $0xfe,%al
  17:	e6 64                	out    %al,$0x64
  19:	b8 32 00 00 00       	mov    $0x32,%eax
  1e:	e8 fc ff ff ff       	call   1f <i8042_reboot+0x1f>
  23:	4b                   	dec    %ebx
  24:	75 e0                	jne    6 <i8042_reboot+0x6>
  26:	5b                   	pop    %ebx
  27:	c3                   	ret    

Disassembly of section .text.ps2_kbd_command:

00000000 <ps2_kbd_command>:
   0:	89 d1                	mov    %edx,%ecx
   2:	89 c2                	mov    %eax,%edx
   4:	31 c0                	xor    %eax,%eax
   6:	e9 fc ff ff ff       	jmp    7 <ps2_kbd_command+0x7>

Disassembly of section .text.ps2_keyboard_setup:

00000000 <ps2_keyboard_setup>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	56                   	push   %esi
   3:	e8 fc ff ff ff       	call   4 <ps2_keyboard_setup+0x4>
   8:	85 c0                	test   %eax,%eax
   a:	0f 85 37 01 00 00    	jne    147 <ps2_keyboard_setup+0x147>
  10:	31 d2                	xor    %edx,%edx
  12:	b8 ad 00 00 00       	mov    $0xad,%eax
  17:	e8 fc ff ff ff       	call   18 <ps2_keyboard_setup+0x18>
  1c:	85 c0                	test   %eax,%eax
  1e:	0f 85 23 01 00 00    	jne    147 <ps2_keyboard_setup+0x147>
  24:	31 d2                	xor    %edx,%edx
  26:	b8 a7 00 00 00       	mov    $0xa7,%eax
  2b:	e8 fc ff ff ff       	call   2c <ps2_keyboard_setup+0x2c>
  30:	85 c0                	test   %eax,%eax
  32:	0f 85 0f 01 00 00    	jne    147 <ps2_keyboard_setup+0x147>
  38:	e8 fc ff ff ff       	call   39 <ps2_keyboard_setup+0x39>
  3d:	85 c0                	test   %eax,%eax
  3f:	0f 85 02 01 00 00    	jne    147 <ps2_keyboard_setup+0x147>
  45:	8d 54 24 02          	lea    0x2(%esp),%edx
  49:	b8 aa 01 00 00       	mov    $0x1aa,%eax
  4e:	e8 fc ff ff ff       	call   4f <ps2_keyboard_setup+0x4f>
  53:	85 c0                	test   %eax,%eax
  55:	0f 85 ec 00 00 00    	jne    147 <ps2_keyboard_setup+0x147>
  5b:	0f b6 44 24 02       	movzbl 0x2(%esp),%eax
  60:	3c 55                	cmp    $0x55,%al
  62:	74 08                	je     6c <ps2_keyboard_setup+0x6c>
  64:	50                   	push   %eax
  65:	68 61 01 00 00       	push   $0x161
  6a:	eb 25                	jmp    91 <ps2_keyboard_setup+0x91>
  6c:	8d 54 24 02          	lea    0x2(%esp),%edx
  70:	b8 ab 01 00 00       	mov    $0x1ab,%eax
  75:	e8 fc ff ff ff       	call   76 <ps2_keyboard_setup+0x76>
  7a:	85 c0                	test   %eax,%eax
  7c:	0f 85 c5 00 00 00    	jne    147 <ps2_keyboard_setup+0x147>
  82:	0f b6 44 24 02       	movzbl 0x2(%esp),%eax
  87:	84 c0                	test   %al,%al
  89:	74 12                	je     9d <ps2_keyboard_setup+0x9d>
  8b:	50                   	push   %eax
  8c:	68 8b 01 00 00       	push   $0x18b
  91:	e8 fc ff ff ff       	call   92 <ps2_keyboard_setup+0x92>
  96:	59                   	pop    %ecx
  97:	5b                   	pop    %ebx
  98:	e9 aa 00 00 00       	jmp    147 <ps2_keyboard_setup+0x147>
  9d:	31 d2                	xor    %edx,%edx
  9f:	31 c9                	xor    %ecx,%ecx
  a1:	b8 b9 01 00 00       	mov    $0x1b9,%eax
  a6:	e8 fc ff ff ff       	call   a7 <ps2_keyboard_setup+0xa7>
  ab:	89 c3                	mov    %eax,%ebx
  ad:	e8 fc ff ff ff       	call   ae <ps2_keyboard_setup+0xae>
  b2:	89 c6                	mov    %eax,%esi
  b4:	8d 54 24 02          	lea    0x2(%esp),%edx
  b8:	b8 ff 01 00 00       	mov    $0x1ff,%eax
  bd:	e8 fc ff ff ff       	call   be <ps2_keyboard_setup+0xbe>
  c2:	85 c0                	test   %eax,%eax
  c4:	74 27                	je     ed <ps2_keyboard_setup+0xed>
  c6:	89 f0                	mov    %esi,%eax
  c8:	e8 fc ff ff ff       	call   c9 <ps2_keyboard_setup+0xc9>
  cd:	85 c0                	test   %eax,%eax
  cf:	74 15                	je     e6 <ps2_keyboard_setup+0xe6>
  d1:	85 db                	test   %ebx,%ebx
  d3:	74 72                	je     147 <ps2_keyboard_setup+0x147>
  d5:	ba 00 00 00 00       	mov    $0x0,%edx
  da:	b8 f2 01 00 00       	mov    $0x1f2,%eax
  df:	e8 fc ff ff ff       	call   e0 <ps2_keyboard_setup+0xe0>
  e4:	eb 61                	jmp    147 <ps2_keyboard_setup+0x147>
  e6:	e8 fc ff ff ff       	call   e7 <ps2_keyboard_setup+0xe7>
  eb:	eb c7                	jmp    b4 <ps2_keyboard_setup+0xb4>
  ed:	0f b6 44 24 02       	movzbl 0x2(%esp),%eax
  f2:	3c aa                	cmp    $0xaa,%al
  f4:	74 08                	je     fe <ps2_keyboard_setup+0xfe>
  f6:	50                   	push   %eax
  f7:	68 d1 01 00 00       	push   $0x1d1
  fc:	eb 93                	jmp    91 <ps2_keyboard_setup+0x91>
  fe:	31 d2                	xor    %edx,%edx
 100:	b8 f5 00 00 00       	mov    $0xf5,%eax
 105:	e8 fc ff ff ff       	call   106 <ps2_keyboard_setup+0x106>
 10a:	85 c0                	test   %eax,%eax
 10c:	75 39                	jne    147 <ps2_keyboard_setup+0x147>
 10e:	c6 44 24 02 02       	movb   $0x2,0x2(%esp)
 113:	8d 54 24 02          	lea    0x2(%esp),%edx
 117:	b8 f0 10 00 00       	mov    $0x10f0,%eax
 11c:	e8 fc ff ff ff       	call   11d <ps2_keyboard_setup+0x11d>
 121:	85 c0                	test   %eax,%eax
 123:	75 22                	jne    147 <ps2_keyboard_setup+0x147>
 125:	c6 05 00 00 00 00 61 	movb   $0x61,0x0
 12c:	31 d2                	xor    %edx,%edx
 12e:	b8 f4 00 00 00       	mov    $0xf4,%eax
 133:	e8 fc ff ff ff       	call   134 <ps2_keyboard_setup+0x134>
 138:	85 c0                	test   %eax,%eax
 13a:	75 0b                	jne    147 <ps2_keyboard_setup+0x147>
 13c:	68 fe 01 00 00       	push   $0x1fe
 141:	e8 fc ff ff ff       	call   142 <ps2_keyboard_setup+0x142>
 146:	5a                   	pop    %edx
 147:	58                   	pop    %eax
 148:	5b                   	pop    %ebx
 149:	5e                   	pop    %esi
 14a:	c3                   	ret    

Disassembly of section .text.ps2_mouse_command:

00000000 <ps2_mouse_command>:
   0:	53                   	push   %ebx
   1:	89 c3                	mov    %eax,%ebx
   3:	89 d1                	mov    %edx,%ecx
   5:	2d f4 00 00 00       	sub    $0xf4,%eax
   a:	83 f8 01             	cmp    $0x1,%eax
   d:	77 20                	ja     2f <ps2_mouse_command+0x2f>
   f:	a0 00 00 00 00       	mov    0x0,%al
  14:	81 fb f4 00 00 00    	cmp    $0xf4,%ebx
  1a:	75 08                	jne    24 <ps2_mouse_command+0x24>
  1c:	83 e0 df             	and    $0xffffffdf,%eax
  1f:	83 c8 02             	or     $0x2,%eax
  22:	eb 06                	jmp    2a <ps2_mouse_command+0x2a>
  24:	83 e0 fd             	and    $0xfffffffd,%eax
  27:	83 c8 20             	or     $0x20,%eax
  2a:	a2 00 00 00 00       	mov    %al,0x0
  2f:	89 da                	mov    %ebx,%edx
  31:	b8 01 00 00 00       	mov    $0x1,%eax
  36:	5b                   	pop    %ebx
  37:	e9 fc ff ff ff       	jmp    38 <ps2_mouse_command+0x38>

Disassembly of section .text.handle_74:

00000000 <handle_74>:
   0:	b8 00 00 00 00       	mov    $0x0,%eax
   5:	e8 fc ff ff ff       	call   6 <handle_74+0x6>
   a:	e4 64                	in     $0x64,%al
   c:	83 e0 21             	and    $0x21,%eax
   f:	3c 21                	cmp    $0x21,%al
  11:	74 0d                	je     20 <handle_74+0x20>
  13:	68 18 02 00 00       	push   $0x218
  18:	e8 fc ff ff ff       	call   19 <handle_74+0x19>
  1d:	58                   	pop    %eax
  1e:	eb 13                	jmp    33 <handle_74+0x33>
  20:	e4 60                	in     $0x60,%al
  22:	f6 05 00 00 00 00 02 	testb  $0x2,0x0
  29:	74 08                	je     33 <handle_74+0x33>
  2b:	0f b6 c0             	movzbl %al,%eax
  2e:	e8 fc ff ff ff       	call   2f <handle_74+0x2f>
  33:	b0 20                	mov    $0x20,%al
  35:	e6 a0                	out    %al,$0xa0
  37:	e6 20                	out    %al,$0x20
  39:	c3                   	ret    

Disassembly of section .text.handle_09:

00000000 <handle_09>:
   0:	b8 00 00 00 00       	mov    $0x0,%eax
   5:	e8 fc ff ff ff       	call   6 <handle_09+0x6>
   a:	e4 64                	in     $0x64,%al
   c:	a8 20                	test   $0x20,%al
   e:	74 0d                	je     1d <handle_09+0x1d>
  10:	68 3a 02 00 00       	push   $0x23a
  15:	e8 fc ff ff ff       	call   16 <handle_09+0x16>
  1a:	58                   	pop    %eax
  1b:	eb 1f                	jmp    3c <handle_09+0x3c>
  1d:	e4 60                	in     $0x60,%al
  1f:	f6 05 00 00 00 00 01 	testb  $0x1,0x0
  26:	74 14                	je     3c <handle_09+0x3c>
  28:	0f b6 c0             	movzbl %al,%eax
  2b:	e8 fc ff ff ff       	call   2c <handle_09+0x2c>
  30:	31 d2                	xor    %edx,%edx
  32:	b8 ae 00 00 00       	mov    $0xae,%eax
  37:	e8 fc ff ff ff       	call   38 <handle_09+0x38>
  3c:	b0 20                	mov    $0x20,%al
  3e:	e6 20                	out    %al,$0x20
  40:	c3                   	ret    

Disassembly of section .text.ps2_check_event:

00000000 <ps2_check_event>:
   0:	c3                   	ret    

Disassembly of section .text.ps2port_setup:

00000000 <ps2port_setup>:
   0:	b8 03 03 00 00       	mov    $0x303,%eax
   5:	e8 fc ff ff ff       	call   6 <ps2port_setup+0x6>
   a:	85 c0                	test   %eax,%eax
   c:	75 0c                	jne    1a <ps2port_setup+0x1a>
   e:	68 63 02 00 00       	push   $0x263
  13:	e8 fc ff ff ff       	call   14 <ps2port_setup+0x14>
  18:	5a                   	pop    %edx
  19:	c3                   	ret    
  1a:	68 83 02 00 00       	push   $0x283
  1f:	e8 fc ff ff ff       	call   20 <ps2port_setup+0x20>
  24:	ba 00 00 00 00       	mov    $0x0,%edx
  29:	0f b7 d2             	movzwl %dx,%edx
  2c:	81 ca 00 00 00 f0    	or     $0xf0000000,%edx
  32:	b8 01 00 00 00       	mov    $0x1,%eax
  37:	e8 fc ff ff ff       	call   38 <ps2port_setup+0x38>
  3c:	ba 00 00 00 00       	mov    $0x0,%edx
  41:	0f b7 d2             	movzwl %dx,%edx
  44:	81 ca 00 00 00 f0    	or     $0xf0000000,%edx
  4a:	b8 0c 00 00 00       	mov    $0xc,%eax
  4f:	e8 fc ff ff ff       	call   50 <ps2port_setup+0x50>
  54:	58                   	pop    %eax
  55:	31 d2                	xor    %edx,%edx
  57:	b8 00 00 00 00       	mov    $0x0,%eax
  5c:	e9 fc ff ff ff       	jmp    5d <ps2port_setup+0x5d>
