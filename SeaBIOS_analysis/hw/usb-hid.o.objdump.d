
./usb-hid.o:     file format elf32-i386


Disassembly of section .text.prockeys:

00000000 <prockeys>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 c6                	mov    %eax,%esi
   4:	89 d3                	mov    %edx,%ebx
   6:	66 3d ff 00          	cmp    $0xff,%ax
   a:	76 50                	jbe    5c <prockeys+0x5c>
   c:	66 3d 45 e1          	cmp    $0xe145,%ax
  10:	75 30                	jne    42 <prockeys+0x42>
  12:	80 e1 11             	and    $0x11,%cl
  15:	74 0f                	je     26 <prockeys+0x26>
  17:	b8 e0 00 00 00       	mov    $0xe0,%eax
  1c:	e8 fc ff ff ff       	call   1d <prockeys+0x1d>
  21:	83 cb 46             	or     $0x46,%ebx
  24:	eb 38                	jmp    5e <prockeys+0x5e>
  26:	b8 e1 00 00 00       	mov    $0xe1,%eax
  2b:	e8 fc ff ff ff       	call   2c <prockeys+0x2c>
  30:	88 d8                	mov    %bl,%al
  32:	83 c8 1d             	or     $0x1d,%eax
  35:	0f b6 c0             	movzbl %al,%eax
  38:	e8 fc ff ff ff       	call   39 <prockeys+0x39>
  3d:	83 cb 45             	or     $0x45,%ebx
  40:	eb 1c                	jmp    5e <prockeys+0x5e>
  42:	66 3d 37 e0          	cmp    $0xe037,%ax
  46:	75 0a                	jne    52 <prockeys+0x52>
  48:	80 e1 44             	and    $0x44,%cl
  4b:	74 05                	je     52 <prockeys+0x52>
  4d:	83 cb 54             	or     $0x54,%ebx
  50:	eb 0c                	jmp    5e <prockeys+0x5e>
  52:	b8 e0 00 00 00       	mov    $0xe0,%eax
  57:	e8 fc ff ff ff       	call   58 <prockeys+0x58>
  5c:	09 f3                	or     %esi,%ebx
  5e:	0f b6 c3             	movzbl %bl,%eax
  61:	5b                   	pop    %ebx
  62:	5e                   	pop    %esi
  63:	e9 fc ff ff ff       	jmp    64 <prockeys+0x64>

Disassembly of section .text.procmodkey:

00000000 <procmodkey>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	88 c3                	mov    %al,%bl
   5:	31 f6                	xor    %esi,%esi
   7:	0f b6 fa             	movzbl %dl,%edi
   a:	84 db                	test   %bl,%bl
   c:	74 2a                	je     38 <procmodkey+0x38>
   e:	0f b6 c3             	movzbl %bl,%eax
  11:	89 f1                	mov    %esi,%ecx
  13:	d3 f8                	sar    %cl,%eax
  15:	a8 01                	test   $0x1,%al
  17:	74 1c                	je     35 <procmodkey+0x35>
  19:	0f b7 84 36 00 00 00 	movzwl 0x0(%esi,%esi,1),%eax
  20:	00 
  21:	31 c9                	xor    %ecx,%ecx
  23:	89 fa                	mov    %edi,%edx
  25:	e8 fc ff ff ff       	call   26 <procmodkey+0x26>
  2a:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
  2f:	89 f1                	mov    %esi,%ecx
  31:	d3 c0                	rol    %cl,%eax
  33:	21 c3                	and    %eax,%ebx
  35:	46                   	inc    %esi
  36:	eb d2                	jmp    a <procmodkey+0xa>
  38:	5b                   	pop    %ebx
  39:	5e                   	pop    %esi
  3a:	5f                   	pop    %edi
  3b:	c3                   	ret    

Disassembly of section .text.procscankey:

00000000 <procscankey>:
   0:	3c 63                	cmp    $0x63,%al
   2:	77 1b                	ja     1f <procscankey+0x1f>
   4:	0f b6 c0             	movzbl %al,%eax
   7:	0f b7 84 00 00 00 00 	movzwl 0x0(%eax,%eax,1),%eax
   e:	00 
   f:	66 85 c0             	test   %ax,%ax
  12:	74 0b                	je     1f <procscankey+0x1f>
  14:	0f b6 c9             	movzbl %cl,%ecx
  17:	0f b6 d2             	movzbl %dl,%edx
  1a:	e9 fc ff ff ff       	jmp    1b <procscankey+0x1b>
  1f:	c3                   	ret    

Disassembly of section .text.usb_hid_setup:

00000000 <usb_hid_setup>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	83 ec 08             	sub    $0x8,%esp
   6:	89 c6                	mov    %eax,%esi
   8:	ff 70 04             	push   0x4(%eax)
   b:	68 00 00 00 00       	push   $0x0
  10:	e8 fc ff ff ff       	call   11 <usb_hid_setup+0x11>
  15:	8b 5e 10             	mov    0x10(%esi),%ebx
  18:	59                   	pop    %ecx
  19:	5f                   	pop    %edi
  1a:	80 7b 06 01          	cmpb   $0x1,0x6(%ebx)
  1e:	0f 85 e2 00 00 00    	jne    106 <usb_hid_setup+0x106>
  24:	b9 80 00 00 00       	mov    $0x80,%ecx
  29:	ba 03 00 00 00       	mov    $0x3,%edx
  2e:	89 f0                	mov    %esi,%eax
  30:	e8 fc ff ff ff       	call   31 <usb_hid_setup+0x31>
  35:	89 c7                	mov    %eax,%edi
  37:	85 c0                	test   %eax,%eax
  39:	75 10                	jne    4b <usb_hid_setup+0x4b>
  3b:	68 12 00 00 00       	push   $0x12
  40:	e8 fc ff ff ff       	call   41 <usb_hid_setup+0x41>
  45:	58                   	pop    %eax
  46:	e9 bb 00 00 00       	jmp    106 <usb_hid_setup+0x106>
  4b:	8a 43 07             	mov    0x7(%ebx),%al
  4e:	3c 01                	cmp    $0x1,%al
  50:	0f 85 89 00 00 00    	jne    df <usb_hid_setup+0xdf>
  56:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
  5d:	0f 85 a3 00 00 00    	jne    106 <usb_hid_setup+0x106>
  63:	0f b7 47 04          	movzwl 0x4(%edi),%eax
  67:	8d 50 f8             	lea    -0x8(%eax),%edx
  6a:	66 83 fa 08          	cmp    $0x8,%dx
  6e:	76 0b                	jbe    7b <usb_hid_setup+0x7b>
  70:	50                   	push   %eax
  71:	68 27 00 00 00       	push   $0x27
  76:	e9 84 00 00 00       	jmp    ff <usb_hid_setup+0xff>
  7b:	8b 46 04             	mov    0x4(%esi),%eax
  7e:	c7 04 24 21 0b 00 00 	movl   $0xb21,(%esp)
  85:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  8c:	00 
  8d:	31 c9                	xor    %ecx,%ecx
  8f:	89 e2                	mov    %esp,%edx
  91:	e8 fc ff ff ff       	call   92 <usb_hid_setup+0x92>
  96:	89 c3                	mov    %eax,%ebx
  98:	85 c0                	test   %eax,%eax
  9a:	75 6a                	jne    106 <usb_hid_setup+0x106>
  9c:	8b 46 04             	mov    0x4(%esi),%eax
  9f:	c7 04 24 21 0a 00 08 	movl   $0x8000a21,(%esp)
  a6:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  ad:	00 
  ae:	31 c9                	xor    %ecx,%ecx
  b0:	89 e2                	mov    %esp,%edx
  b2:	e8 fc ff ff ff       	call   b3 <usb_hid_setup+0xb3>
  b7:	85 c0                	test   %eax,%eax
  b9:	74 0b                	je     c6 <usb_hid_setup+0xc6>
  bb:	68 51 00 00 00       	push   $0x51
  c0:	e8 fc ff ff ff       	call   c1 <usb_hid_setup+0xc1>
  c5:	58                   	pop    %eax
  c6:	89 fa                	mov    %edi,%edx
  c8:	89 f0                	mov    %esi,%eax
  ca:	e8 fc ff ff ff       	call   cb <usb_hid_setup+0xcb>
  cf:	a3 00 00 00 00       	mov    %eax,0x0
  d4:	85 c0                	test   %eax,%eax
  d6:	74 2e                	je     106 <usb_hid_setup+0x106>
  d8:	68 79 00 00 00       	push   $0x79
  dd:	eb 64                	jmp    143 <usb_hid_setup+0x143>
  df:	3c 02                	cmp    $0x2,%al
  e1:	75 23                	jne    106 <usb_hid_setup+0x106>
  e3:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
  ea:	75 1a                	jne    106 <usb_hid_setup+0x106>
  ec:	0f b7 47 04          	movzwl 0x4(%edi),%eax
  f0:	8d 50 fd             	lea    -0x3(%eax),%edx
  f3:	66 83 fa 05          	cmp    $0x5,%dx
  f7:	76 12                	jbe    10b <usb_hid_setup+0x10b>
  f9:	50                   	push   %eax
  fa:	68 93 00 00 00       	push   $0x93
  ff:	e8 fc ff ff ff       	call   100 <usb_hid_setup+0x100>
 104:	5f                   	pop    %edi
 105:	58                   	pop    %eax
 106:	83 cb ff             	or     $0xffffffff,%ebx
 109:	eb 3e                	jmp    149 <usb_hid_setup+0x149>
 10b:	8b 46 04             	mov    0x4(%esi),%eax
 10e:	c7 04 24 21 0b 00 00 	movl   $0xb21,(%esp)
 115:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 11c:	00 
 11d:	31 c9                	xor    %ecx,%ecx
 11f:	89 e2                	mov    %esp,%edx
 121:	e8 fc ff ff ff       	call   122 <usb_hid_setup+0x122>
 126:	89 c3                	mov    %eax,%ebx
 128:	85 c0                	test   %eax,%eax
 12a:	75 da                	jne    106 <usb_hid_setup+0x106>
 12c:	89 fa                	mov    %edi,%edx
 12e:	89 f0                	mov    %esi,%eax
 130:	e8 fc ff ff ff       	call   131 <usb_hid_setup+0x131>
 135:	a3 00 00 00 00       	mov    %eax,0x0
 13a:	85 c0                	test   %eax,%eax
 13c:	74 c8                	je     106 <usb_hid_setup+0x106>
 13e:	68 ba 00 00 00       	push   $0xba
 143:	e8 fc ff ff ff       	call   144 <usb_hid_setup+0x144>
 148:	5e                   	pop    %esi
 149:	89 d8                	mov    %ebx,%eax
 14b:	83 c4 08             	add    $0x8,%esp
 14e:	5b                   	pop    %ebx
 14f:	5e                   	pop    %esi
 150:	5f                   	pop    %edi
 151:	c3                   	ret    

Disassembly of section .text.usb_kbd_active:

00000000 <usb_kbd_active>:
   0:	31 c0                	xor    %eax,%eax
   2:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
   9:	0f 95 c0             	setne  %al
   c:	c3                   	ret    

Disassembly of section .text.usb_kbd_command:

00000000 <usb_kbd_command>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 c3                	mov    %eax,%ebx
   4:	89 d6                	mov    %edx,%esi
   6:	50                   	push   %eax
   7:	68 d1 00 00 00       	push   $0xd1
   c:	e8 fc ff ff ff       	call   d <usb_kbd_command+0xd>
  11:	58                   	pop    %eax
  12:	5a                   	pop    %edx
  13:	83 c8 ff             	or     $0xffffffff,%eax
  16:	81 fb f2 02 00 00    	cmp    $0x2f2,%ebx
  1c:	75 07                	jne    25 <usb_kbd_command+0x25>
  1e:	66 c7 06 ab 83       	movw   $0x83ab,(%esi)
  23:	31 c0                	xor    %eax,%eax
  25:	5b                   	pop    %ebx
  26:	5e                   	pop    %esi
  27:	c3                   	ret    

Disassembly of section .text.usb_mouse_active:

00000000 <usb_mouse_active>:
   0:	31 c0                	xor    %eax,%eax
   2:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
   9:	0f 95 c0             	setne  %al
   c:	c3                   	ret    

Disassembly of section .text.usb_mouse_command:

00000000 <usb_mouse_command>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 c3                	mov    %eax,%ebx
   4:	89 d6                	mov    %edx,%esi
   6:	50                   	push   %eax
   7:	68 e6 00 00 00       	push   $0xe6
   c:	e8 fc ff ff ff       	call   d <usb_mouse_command+0xd>
  11:	58                   	pop    %eax
  12:	5a                   	pop    %edx
  13:	81 fb e9 03 00 00    	cmp    $0x3e9,%ebx
  19:	74 5b                	je     76 <usb_mouse_command+0x76>
  1b:	7f 3d                	jg     5a <usb_mouse_command+0x5a>
  1d:	81 fb f2 02 00 00    	cmp    $0x2f2,%ebx
  23:	74 4a                	je     6f <usb_mouse_command+0x6f>
  25:	7f 26                	jg     4d <usb_mouse_command+0x4d>
  27:	81 fb e7 00 00 00    	cmp    $0xe7,%ebx
  2d:	7f 0b                	jg     3a <usb_mouse_command+0x3a>
  2f:	81 fb e5 00 00 00    	cmp    $0xe5,%ebx
  35:	0f 9e c0             	setle  %al
  38:	eb 0c                	jmp    46 <usb_mouse_command+0x46>
  3a:	81 eb f4 00 00 00    	sub    $0xf4,%ebx
  40:	83 fb 01             	cmp    $0x1,%ebx
  43:	0f 97 c0             	seta   %al
  46:	0f b6 c0             	movzbl %al,%eax
  49:	f7 d8                	neg    %eax
  4b:	eb 34                	jmp    81 <usb_mouse_command+0x81>
  4d:	83 c8 ff             	or     $0xffffffff,%eax
  50:	81 fb ff 02 00 00    	cmp    $0x2ff,%ebx
  56:	74 17                	je     6f <usb_mouse_command+0x6f>
  58:	eb 27                	jmp    81 <usb_mouse_command+0x81>
  5a:	31 c0                	xor    %eax,%eax
  5c:	81 fb e8 10 00 00    	cmp    $0x10e8,%ebx
  62:	74 1d                	je     81 <usb_mouse_command+0x81>
  64:	81 fb f3 10 00 00    	cmp    $0x10f3,%ebx
  6a:	0f 95 c0             	setne  %al
  6d:	eb d7                	jmp    46 <usb_mouse_command+0x46>
  6f:	66 c7 06 aa 00       	movw   $0xaa,(%esi)
  74:	eb 09                	jmp    7f <usb_mouse_command+0x7f>
  76:	66 c7 06 00 04       	movw   $0x400,(%esi)
  7b:	c6 46 02 64          	movb   $0x64,0x2(%esi)
  7f:	31 c0                	xor    %eax,%eax
  81:	5b                   	pop    %ebx
  82:	5e                   	pop    %esi
  83:	c3                   	ret    

Disassembly of section .text.usb_check_event:

00000000 <usb_check_event>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 1c             	sub    $0x1c,%esp
   7:	a1 00 00 00 00       	mov    0x0,%eax
   c:	89 04 24             	mov    %eax,(%esp)
   f:	85 c0                	test   %eax,%eax
  11:	0f 84 32 01 00 00    	je     149 <usb_check_event+0x149>
  17:	8d 54 24 0c          	lea    0xc(%esp),%edx
  1b:	8b 04 24             	mov    (%esp),%eax
  1e:	e8 fc ff ff ff       	call   1f <usb_check_event+0x1f>
  23:	89 c7                	mov    %eax,%edi
  25:	85 c0                	test   %eax,%eax
  27:	0f 85 1c 01 00 00    	jne    149 <usb_check_event+0x149>
  2d:	0f b6 44 24 0e       	movzbl 0xe(%esp),%eax
  32:	50                   	push   %eax
  33:	0f b6 44 24 10       	movzbl 0x10(%esp),%eax
  38:	50                   	push   %eax
  39:	68 f8 00 00 00       	push   $0xf8
  3e:	e8 fc ff ff ff       	call   3f <usb_check_event+0x3f>
  43:	8b 1d 00 00 00 00    	mov    0x0,%ebx
  49:	89 5c 24 10          	mov    %ebx,0x10(%esp)
  4d:	a1 04 00 00 00       	mov    0x4,%eax
  52:	89 44 24 14          	mov    %eax,0x14(%esp)
  56:	83 c4 0c             	add    $0xc,%esp
  59:	31 f6                	xor    %esi,%esi
  5b:	bd 01 00 00 00       	mov    $0x1,%ebp
  60:	0f b6 44 2c 05       	movzbl 0x5(%esp,%ebp,1),%eax
  65:	84 c0                	test   %al,%al
  67:	74 40                	je     a9 <usb_check_event+0xa9>
  69:	31 d2                	xor    %edx,%edx
  6b:	3a 44 14 0e          	cmp    0xe(%esp,%edx,1),%al
  6f:	75 0c                	jne    7d <usb_check_event+0x7d>
  71:	c6 44 14 0e 00       	movb   $0x0,0xe(%esp,%edx,1)
  76:	88 44 34 06          	mov    %al,0x6(%esp,%esi,1)
  7a:	46                   	inc    %esi
  7b:	eb 26                	jmp    a3 <usb_check_event+0xa3>
  7d:	42                   	inc    %edx
  7e:	83 fa 06             	cmp    $0x6,%edx
  81:	75 e8                	jne    6b <usb_check_event+0x6b>
  83:	0f b6 4c 24 0c       	movzbl 0xc(%esp),%ecx
  88:	ba 80 00 00 00       	mov    $0x80,%edx
  8d:	e8 fc ff ff ff       	call   8e <usb_check_event+0x8e>
  92:	83 fd 06             	cmp    $0x6,%ebp
  95:	74 07                	je     9e <usb_check_event+0x9e>
  97:	80 7c 2c 06 00       	cmpb   $0x0,0x6(%esp,%ebp,1)
  9c:	75 05                	jne    a3 <usb_check_event+0xa3>
  9e:	c6 44 24 05 ff       	movb   $0xff,0x5(%esp)
  a3:	45                   	inc    %ebp
  a4:	83 fd 07             	cmp    $0x7,%ebp
  a7:	75 b7                	jne    60 <usb_check_event+0x60>
  a9:	8a 44 24 0c          	mov    0xc(%esp),%al
  ad:	f7 d0                	not    %eax
  af:	21 d8                	and    %ebx,%eax
  b1:	0f b6 c0             	movzbl %al,%eax
  b4:	ba 80 00 00 00       	mov    $0x80,%edx
  b9:	e8 fc ff ff ff       	call   ba <usb_check_event+0xba>
  be:	f7 d3                	not    %ebx
  c0:	23 5c 24 0c          	and    0xc(%esp),%ebx
  c4:	0f b6 c3             	movzbl %bl,%eax
  c7:	31 d2                	xor    %edx,%edx
  c9:	e8 fc ff ff ff       	call   ca <usb_check_event+0xca>
  ce:	8a 44 24 0c          	mov    0xc(%esp),%al
  d2:	88 44 24 04          	mov    %al,0x4(%esp)
  d6:	8a 5c 3c 0e          	mov    0xe(%esp,%edi,1),%bl
  da:	84 db                	test   %bl,%bl
  dc:	74 19                	je     f7 <usb_check_event+0xf7>
  de:	0f b6 4c 24 0c       	movzbl 0xc(%esp),%ecx
  e3:	0f b6 c3             	movzbl %bl,%eax
  e6:	31 d2                	xor    %edx,%edx
  e8:	e8 fc ff ff ff       	call   e9 <usb_check_event+0xe9>
  ed:	88 5c 34 06          	mov    %bl,0x6(%esp,%esi,1)
  f1:	c6 44 24 05 10       	movb   $0x10,0x5(%esp)
  f6:	46                   	inc    %esi
  f7:	47                   	inc    %edi
  f8:	83 ff 06             	cmp    $0x6,%edi
  fb:	75 d9                	jne    d6 <usb_check_event+0xd6>
  fd:	83 fe 05             	cmp    $0x5,%esi
 100:	7e 1b                	jle    11d <usb_check_event+0x11d>
 102:	8a 44 24 05          	mov    0x5(%esp),%al
 106:	84 c0                	test   %al,%al
 108:	75 1e                	jne    128 <usb_check_event+0x128>
 10a:	0f b6 4c 24 0c       	movzbl 0xc(%esp),%ecx
 10f:	0f b6 44 34 05       	movzbl 0x5(%esp,%esi,1),%eax
 114:	31 d2                	xor    %edx,%edx
 116:	e8 fc ff ff ff       	call   117 <usb_check_event+0x117>
 11b:	eb 14                	jmp    131 <usb_check_event+0x131>
 11d:	c6 44 34 06 00       	movb   $0x0,0x6(%esp,%esi,1)
 122:	85 f6                	test   %esi,%esi
 124:	74 0b                	je     131 <usb_check_event+0x131>
 126:	eb da                	jmp    102 <usb_check_event+0x102>
 128:	3c ff                	cmp    $0xff,%al
 12a:	74 05                	je     131 <usb_check_event+0x131>
 12c:	48                   	dec    %eax
 12d:	88 44 24 05          	mov    %al,0x5(%esp)
 131:	8b 44 24 04          	mov    0x4(%esp),%eax
 135:	8b 54 24 08          	mov    0x8(%esp),%edx
 139:	a3 00 00 00 00       	mov    %eax,0x0
 13e:	89 15 04 00 00 00    	mov    %edx,0x4
 144:	e9 ce fe ff ff       	jmp    17 <usb_check_event+0x17>
 149:	8b 35 00 00 00 00    	mov    0x0,%esi
 14f:	85 f6                	test   %esi,%esi
 151:	74 78                	je     1cb <usb_check_event+0x1cb>
 153:	8d 54 24 0c          	lea    0xc(%esp),%edx
 157:	89 f0                	mov    %esi,%eax
 159:	e8 fc ff ff ff       	call   15a <usb_check_event+0x15a>
 15e:	85 c0                	test   %eax,%eax
 160:	75 69                	jne    1cb <usb_check_event+0x1cb>
 162:	0f b6 44 24 0e       	movzbl 0xe(%esp),%eax
 167:	50                   	push   %eax
 168:	0f b6 44 24 11       	movzbl 0x11(%esp),%eax
 16d:	50                   	push   %eax
 16e:	0f b6 44 24 14       	movzbl 0x14(%esp),%eax
 173:	50                   	push   %eax
 174:	68 07 01 00 00       	push   $0x107
 179:	e8 fc ff ff ff       	call   17a <usb_check_event+0x17a>
 17e:	8a 5c 24 1d          	mov    0x1d(%esp),%bl
 182:	8a 44 24 1e          	mov    0x1e(%esp),%al
 186:	f7 d8                	neg    %eax
 188:	88 44 24 10          	mov    %al,0x10(%esp)
 18c:	8a 44 24 1c          	mov    0x1c(%esp),%al
 190:	83 e0 07             	and    $0x7,%eax
 193:	8a 4c 24 10          	mov    0x10(%esp),%cl
 197:	c0 f9 02             	sar    $0x2,%cl
 19a:	83 e1 20             	and    $0x20,%ecx
 19d:	09 c8                	or     %ecx,%eax
 19f:	88 d9                	mov    %bl,%cl
 1a1:	c0 f9 03             	sar    $0x3,%cl
 1a4:	83 e1 10             	and    $0x10,%ecx
 1a7:	09 c8                	or     %ecx,%eax
 1a9:	83 c8 08             	or     $0x8,%eax
 1ac:	0f be c0             	movsbl %al,%eax
 1af:	e8 fc ff ff ff       	call   1b0 <usb_check_event+0x1b0>
 1b4:	0f b6 c3             	movzbl %bl,%eax
 1b7:	e8 fc ff ff ff       	call   1b8 <usb_check_event+0x1b8>
 1bc:	0f b6 44 24 10       	movzbl 0x10(%esp),%eax
 1c1:	e8 fc ff ff ff       	call   1c2 <usb_check_event+0x1c2>
 1c6:	83 c4 10             	add    $0x10,%esp
 1c9:	eb 88                	jmp    153 <usb_check_event+0x153>
 1cb:	83 c4 1c             	add    $0x1c,%esp
 1ce:	5b                   	pop    %ebx
 1cf:	5e                   	pop    %esi
 1d0:	5f                   	pop    %edi
 1d1:	5d                   	pop    %ebp
 1d2:	c3                   	ret    
