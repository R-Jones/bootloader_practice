
./usb-ehci.o:     file format elf32-i386


Disassembly of section .text.ehci_hub_disconnect:

00000000 <ehci_hub_disconnect>:
   0:	8b 40 08             	mov    0x8(%eax),%eax
   3:	8b 48 18             	mov    0x18(%eax),%ecx
   6:	83 c2 10             	add    $0x10,%edx
   9:	8b 44 91 04          	mov    0x4(%ecx,%edx,4),%eax
   d:	83 e0 fb             	and    $0xfffffffb,%eax
  10:	89 44 91 04          	mov    %eax,0x4(%ecx,%edx,4)
  14:	c3                   	ret    

Disassembly of section .text.ehci_waittick:

00000000 <ehci_waittick>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 c3                	mov    %eax,%ebx
   4:	b8 64 00 00 00       	mov    $0x64,%eax
   9:	e8 fc ff ff ff       	call   a <ehci_waittick+0xa>
   e:	89 c6                	mov    %eax,%esi
  10:	8b 43 18             	mov    0x18(%ebx),%eax
  13:	8b 40 04             	mov    0x4(%eax),%eax
  16:	a8 20                	test   $0x20,%al
  18:	74 17                	je     31 <ehci_waittick+0x31>
  1a:	89 f0                	mov    %esi,%eax
  1c:	e8 fc ff ff ff       	call   1d <ehci_waittick+0x1d>
  21:	85 c0                	test   %eax,%eax
  23:	74 1f                	je     44 <ehci_waittick+0x44>
  25:	ba 00 00 00 00       	mov    $0x0,%edx
  2a:	b8 a5 00 00 00       	mov    $0xa5,%eax
  2f:	eb 3e                	jmp    6f <ehci_waittick+0x6f>
  31:	8b 43 18             	mov    0x18(%ebx),%eax
  34:	8b 00                	mov    (%eax),%eax
  36:	a8 40                	test   $0x40,%al
  38:	75 e0                	jne    1a <ehci_waittick+0x1a>
  3a:	83 c8 40             	or     $0x40,%eax
  3d:	8b 53 18             	mov    0x18(%ebx),%edx
  40:	89 02                	mov    %eax,(%edx)
  42:	eb 0c                	jmp    50 <ehci_waittick+0x50>
  44:	e8 fc ff ff ff       	call   45 <ehci_waittick+0x45>
  49:	eb c5                	jmp    10 <ehci_waittick+0x10>
  4b:	e8 fc ff ff ff       	call   4c <ehci_waittick+0x4c>
  50:	8b 43 18             	mov    0x18(%ebx),%eax
  53:	8b 40 04             	mov    0x4(%eax),%eax
  56:	a8 20                	test   $0x20,%al
  58:	75 1c                	jne    76 <ehci_waittick+0x76>
  5a:	89 f0                	mov    %esi,%eax
  5c:	e8 fc ff ff ff       	call   5d <ehci_waittick+0x5d>
  61:	85 c0                	test   %eax,%eax
  63:	74 e6                	je     4b <ehci_waittick+0x4b>
  65:	ba 00 00 00 00       	mov    $0x0,%edx
  6a:	b8 b2 00 00 00       	mov    $0xb2,%eax
  6f:	5b                   	pop    %ebx
  70:	5e                   	pop    %esi
  71:	e9 fc ff ff ff       	jmp    72 <ehci_waittick+0x72>
  76:	8b 43 18             	mov    0x18(%ebx),%eax
  79:	c7 40 04 20 00 00 00 	movl   $0x20,0x4(%eax)
  80:	5b                   	pop    %ebx
  81:	5e                   	pop    %esi
  82:	c3                   	ret    

Disassembly of section .text.ehci_hub_reset:

00000000 <ehci_hub_reset>:
   0:	53                   	push   %ebx
   1:	8b 40 08             	mov    0x8(%eax),%eax
   4:	8b 40 18             	mov    0x18(%eax),%eax
   7:	8d 1c 90             	lea    (%eax,%edx,4),%ebx
   a:	8b 43 44             	mov    0x44(%ebx),%eax
   d:	80 e4 fe             	and    $0xfe,%ah
  10:	89 43 44             	mov    %eax,0x44(%ebx)
  13:	b8 02 00 00 00       	mov    $0x2,%eax
  18:	e8 fc ff ff ff       	call   19 <ehci_hub_reset+0x19>
  1d:	8b 43 44             	mov    0x44(%ebx),%eax
  20:	a8 01                	test   $0x1,%al
  22:	74 0f                	je     33 <ehci_hub_reset+0x33>
  24:	ba 02 00 00 00       	mov    $0x2,%edx
  29:	a8 04                	test   $0x4,%al
  2b:	75 09                	jne    36 <ehci_hub_reset+0x36>
  2d:	80 cc 20             	or     $0x20,%ah
  30:	89 43 44             	mov    %eax,0x44(%ebx)
  33:	83 ca ff             	or     $0xffffffff,%edx
  36:	89 d0                	mov    %edx,%eax
  38:	5b                   	pop    %ebx
  39:	c3                   	ret    

Disassembly of section .text.ehci_hub_detect:

00000000 <ehci_hub_detect>:
   0:	8b 40 08             	mov    0x8(%eax),%eax
   3:	8b 48 18             	mov    0x18(%eax),%ecx
   6:	83 c2 10             	add    $0x10,%edx
   9:	8b 44 91 04          	mov    0x4(%ecx,%edx,4),%eax
   d:	a8 01                	test   $0x1,%al
   f:	74 3a                	je     4b <ehci_hub_detect+0x4b>
  11:	53                   	push   %ebx
  12:	89 c3                	mov    %eax,%ebx
  14:	81 e3 00 0c 00 00    	and    $0xc00,%ebx
  1a:	81 fb 00 04 00 00    	cmp    $0x400,%ebx
  20:	75 0c                	jne    2e <ehci_hub_detect+0x2e>
  22:	80 cc 20             	or     $0x20,%ah
  25:	89 44 91 04          	mov    %eax,0x4(%ecx,%edx,4)
  29:	83 c8 ff             	or     $0xffffffff,%eax
  2c:	eb 20                	jmp    4e <ehci_hub_detect+0x4e>
  2e:	25 fb fe ff ff       	and    $0xfffffefb,%eax
  33:	80 cc 01             	or     $0x1,%ah
  36:	89 44 91 04          	mov    %eax,0x4(%ecx,%edx,4)
  3a:	b8 32 00 00 00       	mov    $0x32,%eax
  3f:	e8 fc ff ff ff       	call   40 <ehci_hub_detect+0x40>
  44:	b8 01 00 00 00       	mov    $0x1,%eax
  49:	eb 03                	jmp    4e <ehci_hub_detect+0x4e>
  4b:	31 c0                	xor    %eax,%eax
  4d:	c3                   	ret    
  4e:	5b                   	pop    %ebx
  4f:	c3                   	ret    

Disassembly of section .text.ehci_desc2pipe:

00000000 <ehci_desc2pipe>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 c3                	mov    %eax,%ebx
   6:	89 d6                	mov    %edx,%esi
   8:	89 cf                	mov    %ecx,%edi
   a:	83 c0 50             	add    $0x50,%eax
   d:	e8 fc ff ff ff       	call   e <ehci_desc2pipe+0xe>
  12:	0f b6 4b 57          	movzbl 0x57(%ebx),%ecx
  16:	89 ca                	mov    %ecx,%edx
  18:	0f b7 43 58          	movzwl 0x58(%ebx),%eax
  1c:	c1 e0 10             	shl    $0x10,%eax
  1f:	c1 e1 0c             	shl    $0xc,%ecx
  22:	09 c8                	or     %ecx,%eax
  24:	0f b6 4b 56          	movzbl 0x56(%ebx),%ecx
  28:	09 c8                	or     %ecx,%eax
  2a:	0f b6 4b 55          	movzbl 0x55(%ebx),%ecx
  2e:	c1 e1 08             	shl    $0x8,%ecx
  31:	09 c8                	or     %ecx,%eax
  33:	89 43 04             	mov    %eax,0x4(%ebx)
  36:	c7 43 08 00 00 00 40 	movl   $0x40000000,0x8(%ebx)
  3d:	8b 0e                	mov    (%esi),%ecx
  3f:	8b 49 04             	mov    0x4(%ecx),%ecx
  42:	85 c9                	test   %ecx,%ecx
  44:	74 27                	je     6d <ehci_desc2pipe+0x6d>
  46:	8b 69 04             	mov    0x4(%ecx),%ebp
  49:	80 7d 07 02          	cmpb   $0x2,0x7(%ebp)
  4d:	75 18                	jne    67 <ehci_desc2pipe+0x67>
  4f:	8b 4e 08             	mov    0x8(%esi),%ecx
  52:	41                   	inc    %ecx
  53:	c1 e1 17             	shl    $0x17,%ecx
  56:	0f b6 75 06          	movzbl 0x6(%ebp),%esi
  5a:	c1 e6 10             	shl    $0x10,%esi
  5d:	09 f1                	or     %esi,%ecx
  5f:	81 c9 00 00 00 40    	or     $0x40000000,%ecx
  65:	eb 03                	jmp    6a <ehci_desc2pipe+0x6a>
  67:	8b 4d b8             	mov    -0x48(%ebp),%ecx
  6a:	89 4b 08             	mov    %ecx,0x8(%ebx)
  6d:	8a 4f 03             	mov    0x3(%edi),%cl
  70:	80 e1 03             	and    $0x3,%cl
  73:	75 1d                	jne    92 <ehci_desc2pipe+0x92>
  75:	80 fa 02             	cmp    $0x2,%dl
  78:	0f 95 c2             	setne  %dl
  7b:	0f b6 d2             	movzbl %dl,%edx
  7e:	4a                   	dec    %edx
  7f:	81 e2 00 00 00 f8    	and    $0xf8000000,%edx
  85:	81 c2 00 40 00 08    	add    $0x8004000,%edx
  8b:	09 d0                	or     %edx,%eax
  8d:	89 43 04             	mov    %eax,0x4(%ebx)
  90:	eb 0c                	jmp    9e <ehci_desc2pipe+0x9e>
  92:	80 f9 03             	cmp    $0x3,%cl
  95:	75 07                	jne    9e <ehci_desc2pipe+0x9e>
  97:	81 4b 08 01 1c 00 00 	orl    $0x1c01,0x8(%ebx)
  9e:	5b                   	pop    %ebx
  9f:	5e                   	pop    %esi
  a0:	5f                   	pop    %edi
  a1:	5d                   	pop    %ebp
  a2:	c3                   	ret    

Disassembly of section .text.configure_ehci:

00000000 <configure_ehci>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 38             	sub    $0x38,%esp
   7:	89 c3                	mov    %eax,%ebx
   9:	b9 00 10 00 00       	mov    $0x1000,%ecx
   e:	ba 00 10 00 00       	mov    $0x1000,%edx
  13:	b8 00 00 00 00       	mov    $0x0,%eax
  18:	e8 fc ff ff ff       	call   19 <configure_ehci+0x19>
  1d:	89 04 24             	mov    %eax,(%esp)
  20:	b9 80 00 00 00       	mov    $0x80,%ecx
  25:	ba 44 00 00 00       	mov    $0x44,%edx
  2a:	b8 00 00 00 00       	mov    $0x0,%eax
  2f:	e8 fc ff ff ff       	call   30 <configure_ehci+0x30>
  34:	89 c7                	mov    %eax,%edi
  36:	b9 80 00 00 00       	mov    $0x80,%ecx
  3b:	ba 44 00 00 00       	mov    $0x44,%edx
  40:	b8 00 00 00 00       	mov    $0x0,%eax
  45:	e8 fc ff ff ff       	call   46 <configure_ehci+0x46>
  4a:	89 c6                	mov    %eax,%esi
  4c:	85 ff                	test   %edi,%edi
  4e:	0f 94 c0             	sete   %al
  51:	83 3c 24 00          	cmpl   $0x0,(%esp)
  55:	0f 94 c2             	sete   %dl
  58:	08 d0                	or     %dl,%al
  5a:	75 04                	jne    60 <configure_ehci+0x60>
  5c:	85 f6                	test   %esi,%esi
  5e:	75 11                	jne    71 <configure_ehci+0x71>
  60:	ba 00 00 00 00       	mov    $0x0,%edx
  65:	b8 e1 00 00 00       	mov    $0xe1,%eax
  6a:	e8 fc ff ff ff       	call   6b <configure_ehci+0x6b>
  6f:	eb 46                	jmp    b7 <configure_ehci+0xb7>
  71:	8b 43 18             	mov    0x18(%ebx),%eax
  74:	8b 00                	mov    (%eax),%eax
  76:	83 e0 cd             	and    $0xffffffcd,%eax
  79:	83 c8 02             	or     $0x2,%eax
  7c:	8b 53 18             	mov    0x18(%ebx),%edx
  7f:	89 02                	mov    %eax,(%edx)
  81:	b8 fa 00 00 00       	mov    $0xfa,%eax
  86:	e8 fc ff ff ff       	call   87 <configure_ehci+0x87>
  8b:	89 c5                	mov    %eax,%ebp
  8d:	8b 43 18             	mov    0x18(%ebx),%eax
  90:	8b 00                	mov    (%eax),%eax
  92:	89 44 24 04          	mov    %eax,0x4(%esp)
  96:	f6 44 24 04 02       	testb  $0x2,0x4(%esp)
  9b:	74 2c                	je     c9 <configure_ehci+0xc9>
  9d:	89 e8                	mov    %ebp,%eax
  9f:	e8 fc ff ff ff       	call   a0 <configure_ehci+0xa0>
  a4:	85 c0                	test   %eax,%eax
  a6:	74 1a                	je     c2 <configure_ehci+0xc2>
  a8:	ba 00 00 00 00       	mov    $0x0,%edx
  ad:	b8 f1 00 00 00       	mov    $0xf1,%eax
  b2:	e8 fc ff ff ff       	call   b3 <configure_ehci+0xb3>
  b7:	ff 0d 00 00 00 00    	decl   0x0
  bd:	e9 8f 01 00 00       	jmp    251 <configure_ehci+0x251>
  c2:	e8 fc ff ff ff       	call   c3 <configure_ehci+0xc3>
  c7:	eb c4                	jmp    8d <configure_ehci+0x8d>
  c9:	8b 43 18             	mov    0x18(%ebx),%eax
  cc:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
  d3:	b9 44 00 00 00       	mov    $0x44,%ecx
  d8:	31 d2                	xor    %edx,%edx
  da:	89 f8                	mov    %edi,%eax
  dc:	e8 fc ff ff ff       	call   dd <configure_ehci+0xdd>
  e1:	c7 07 01 00 00 00    	movl   $0x1,(%edi)
  e7:	c7 47 08 01 00 00 00 	movl   $0x1,0x8(%edi)
  ee:	c7 47 18 40 00 00 00 	movl   $0x40,0x18(%edi)
  f5:	c7 47 14 01 00 00 00 	movl   $0x1,0x14(%edi)
  fc:	c7 47 10 01 00 00 00 	movl   $0x1,0x10(%edi)
 103:	31 c0                	xor    %eax,%eax
 105:	89 fa                	mov    %edi,%edx
 107:	83 ca 02             	or     $0x2,%edx
 10a:	8b 0c 24             	mov    (%esp),%ecx
 10d:	89 14 81             	mov    %edx,(%ecx,%eax,4)
 110:	40                   	inc    %eax
 111:	3d 00 04 00 00       	cmp    $0x400,%eax
 116:	75 f2                	jne    10a <configure_ehci+0x10a>
 118:	8b 43 18             	mov    0x18(%ebx),%eax
 11b:	8b 0c 24             	mov    (%esp),%ecx
 11e:	89 48 14             	mov    %ecx,0x14(%eax)
 121:	b9 44 00 00 00       	mov    $0x44,%ecx
 126:	31 d2                	xor    %edx,%edx
 128:	89 f0                	mov    %esi,%eax
 12a:	e8 fc ff ff ff       	call   12b <configure_ehci+0x12b>
 12f:	89 f0                	mov    %esi,%eax
 131:	83 c8 02             	or     $0x2,%eax
 134:	89 06                	mov    %eax,(%esi)
 136:	c7 46 04 00 80 00 00 	movl   $0x8000,0x4(%esi)
 13d:	c7 46 18 40 00 00 00 	movl   $0x40,0x18(%esi)
 144:	c7 46 14 01 00 00 00 	movl   $0x1,0x14(%esi)
 14b:	c7 46 10 01 00 00 00 	movl   $0x1,0x10(%esi)
 152:	89 73 1c             	mov    %esi,0x1c(%ebx)
 155:	8b 43 18             	mov    0x18(%ebx),%eax
 158:	89 70 18             	mov    %esi,0x18(%eax)
 15b:	8b 54 24 04          	mov    0x4(%esp),%edx
 15f:	83 ca 31             	or     $0x31,%edx
 162:	8b 43 18             	mov    0x18(%ebx),%eax
 165:	89 10                	mov    %edx,(%eax)
 167:	8b 43 18             	mov    0x18(%ebx),%eax
 16a:	c7 40 40 01 00 00 00 	movl   $0x1,0x40(%eax)
 171:	ff 0d 00 00 00 00    	decl   0x0
 177:	31 c0                	xor    %eax,%eax
 179:	3b 43 20             	cmp    0x20(%ebx),%eax
 17c:	7d 1a                	jge    198 <configure_ehci+0x198>
 17e:	8b 4b 18             	mov    0x18(%ebx),%ecx
 181:	8d 68 10             	lea    0x10(%eax),%ebp
 184:	8b 54 a9 04          	mov    0x4(%ecx,%ebp,4),%edx
 188:	0f ba e2 0c          	bt     $0xc,%edx
 18c:	72 07                	jb     195 <configure_ehci+0x195>
 18e:	80 ce 10             	or     $0x10,%dh
 191:	89 54 a9 04          	mov    %edx,0x4(%ecx,%ebp,4)
 195:	40                   	inc    %eax
 196:	eb e1                	jmp    179 <configure_ehci+0x179>
 198:	b8 14 00 00 00       	mov    $0x14,%eax
 19d:	e8 fc ff ff ff       	call   19e <configure_ehci+0x19e>
 1a2:	b9 24 00 00 00       	mov    $0x24,%ecx
 1a7:	31 d2                	xor    %edx,%edx
 1a9:	8d 44 24 14          	lea    0x14(%esp),%eax
 1ad:	e8 fc ff ff ff       	call   1ae <configure_ehci+0x1ae>
 1b2:	89 5c 24 1c          	mov    %ebx,0x1c(%esp)
 1b6:	8b 43 20             	mov    0x20(%ebx),%eax
 1b9:	89 44 24 30          	mov    %eax,0x30(%esp)
 1bd:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
 1c4:	00 
 1c5:	8d 44 24 14          	lea    0x14(%esp),%eax
 1c9:	e8 fc ff ff ff       	call   1ca <configure_ehci+0x1ca>
 1ce:	8b 44 24 34          	mov    0x34(%esp),%eax
 1d2:	89 44 24 0c          	mov    %eax,0xc(%esp)
 1d6:	53                   	push   %ebx
 1d7:	68 00 00 00 00       	push   $0x0
 1dc:	e8 fc ff ff ff       	call   1dd <configure_ehci+0x1dd>
 1e1:	8b 43 1c             	mov    0x1c(%ebx),%eax
 1e4:	89 44 24 10          	mov    %eax,0x10(%esp)
 1e8:	5a                   	pop    %edx
 1e9:	59                   	pop    %ecx
 1ea:	89 c1                	mov    %eax,%ecx
 1ec:	89 cd                	mov    %ecx,%ebp
 1ee:	89 e9                	mov    %ebp,%ecx
 1f0:	8b 6d 00             	mov    0x0(%ebp),%ebp
 1f3:	89 4c 24 10          	mov    %ecx,0x10(%esp)
 1f7:	83 e5 e0             	and    $0xffffffe0,%ebp
 1fa:	39 6c 24 08          	cmp    %ebp,0x8(%esp)
 1fe:	74 19                	je     219 <configure_ehci+0x219>
 200:	8d 55 50             	lea    0x50(%ebp),%edx
 203:	89 d8                	mov    %ebx,%eax
 205:	e8 fc ff ff ff       	call   206 <configure_ehci+0x206>
 20a:	85 c0                	test   %eax,%eax
 20c:	8b 4c 24 10          	mov    0x10(%esp),%ecx
 210:	74 dc                	je     1ee <configure_ehci+0x1ee>
 212:	8b 45 00             	mov    0x0(%ebp),%eax
 215:	89 01                	mov    %eax,(%ecx)
 217:	eb d3                	jmp    1ec <configure_ehci+0x1ec>
 219:	89 d8                	mov    %ebx,%eax
 21b:	e8 fc ff ff ff       	call   21c <configure_ehci+0x21c>
 220:	8b 03                	mov    (%ebx),%eax
 222:	85 c0                	test   %eax,%eax
 224:	74 0e                	je     234 <configure_ehci+0x234>
 226:	8b 10                	mov    (%eax),%edx
 228:	89 13                	mov    %edx,(%ebx)
 22a:	83 e8 50             	sub    $0x50,%eax
 22d:	e8 fc ff ff ff       	call   22e <configure_ehci+0x22e>
 232:	eb ec                	jmp    220 <configure_ehci+0x220>
 234:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%esp)
 239:	75 3a                	jne    275 <configure_ehci+0x275>
 23b:	8b 44 24 04          	mov    0x4(%esp),%eax
 23f:	83 e0 fe             	and    $0xfffffffe,%eax
 242:	8b 53 18             	mov    0x18(%ebx),%edx
 245:	89 02                	mov    %eax,(%edx)
 247:	b8 04 00 00 00       	mov    $0x4,%eax
 24c:	e8 fc ff ff ff       	call   24d <configure_ehci+0x24d>
 251:	8b 04 24             	mov    (%esp),%eax
 254:	e8 fc ff ff ff       	call   255 <configure_ehci+0x255>
 259:	89 f8                	mov    %edi,%eax
 25b:	e8 fc ff ff ff       	call   25c <configure_ehci+0x25c>
 260:	89 f0                	mov    %esi,%eax
 262:	e8 fc ff ff ff       	call   263 <configure_ehci+0x263>
 267:	89 d8                	mov    %ebx,%eax
 269:	83 c4 38             	add    $0x38,%esp
 26c:	5b                   	pop    %ebx
 26d:	5e                   	pop    %esi
 26e:	5f                   	pop    %edi
 26f:	5d                   	pop    %ebp
 270:	e9 fc ff ff ff       	jmp    271 <configure_ehci+0x271>
 275:	83 c4 38             	add    $0x38,%esp
 278:	5b                   	pop    %ebx
 279:	5e                   	pop    %esi
 27a:	5f                   	pop    %edi
 27b:	5d                   	pop    %ebp
 27c:	c3                   	ret    

Disassembly of section .text.ehci_setup:

00000000 <ehci_setup>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	a1 00 00 00 00       	mov    0x0,%eax
   9:	8d 58 fc             	lea    -0x4(%eax),%ebx
   c:	83 fb fc             	cmp    $0xfffffffc,%ebx
   f:	0f 84 c2 00 00 00    	je     d7 <ehci_setup+0xd7>
  15:	0f b7 43 14          	movzwl 0x14(%ebx),%eax
  19:	c1 e0 08             	shl    $0x8,%eax
  1c:	0f b6 53 16          	movzbl 0x16(%ebx),%edx
  20:	09 d0                	or     %edx,%eax
  22:	3d 20 03 0c 00       	cmp    $0xc0320,%eax
  27:	0f 85 9f 00 00 00    	jne    cc <ehci_setup+0xcc>
  2d:	ba 10 00 00 00       	mov    $0x10,%edx
  32:	89 d8                	mov    %ebx,%eax
  34:	e8 fc ff ff ff       	call   35 <ehci_setup+0x35>
  39:	89 c6                	mov    %eax,%esi
  3b:	85 c0                	test   %eax,%eax
  3d:	0f 84 89 00 00 00    	je     cc <ehci_setup+0xcc>
  43:	8b 68 08             	mov    0x8(%eax),%ebp
  46:	b9 10 00 00 00       	mov    $0x10,%ecx
  4b:	ba 24 00 00 00       	mov    $0x24,%edx
  50:	b8 00 00 00 00       	mov    $0x0,%eax
  55:	e8 fc ff ff ff       	call   56 <ehci_setup+0x56>
  5a:	89 c7                	mov    %eax,%edi
  5c:	85 c0                	test   %eax,%eax
  5e:	75 11                	jne    71 <ehci_setup+0x71>
  60:	ba 00 00 00 00       	mov    $0x0,%edx
  65:	b8 31 01 00 00       	mov    $0x131,%eax
  6a:	e8 fc ff ff ff       	call   6b <ehci_setup+0x6b>
  6f:	eb 5b                	jmp    cc <ehci_setup+0xcc>
  71:	b9 24 00 00 00       	mov    $0x24,%ecx
  76:	31 d2                	xor    %edx,%edx
  78:	e8 fc ff ff ff       	call   79 <ehci_setup+0x79>
  7d:	89 5f 08             	mov    %ebx,0x8(%edi)
  80:	c6 47 10 03          	movb   $0x3,0x10(%edi)
  84:	89 77 14             	mov    %esi,0x14(%edi)
  87:	8b 46 04             	mov    0x4(%esi),%eax
  8a:	83 e0 0f             	and    $0xf,%eax
  8d:	89 47 20             	mov    %eax,0x20(%edi)
  90:	0f b6 06             	movzbl (%esi),%eax
  93:	01 c6                	add    %eax,%esi
  95:	89 77 18             	mov    %esi,0x18(%edi)
  98:	83 e5 01             	and    $0x1,%ebp
  9b:	74 07                	je     a4 <ehci_setup+0xa4>
  9d:	c7 46 10 00 00 00 00 	movl   $0x0,0x10(%esi)
  a4:	ff 05 00 00 00 00    	incl   0x0
  aa:	56                   	push   %esi
  ab:	53                   	push   %ebx
  ac:	68 14 00 00 00       	push   $0x14
  b1:	e8 fc ff ff ff       	call   b2 <ehci_setup+0xb2>
  b6:	89 d8                	mov    %ebx,%eax
  b8:	e8 fc ff ff ff       	call   b9 <ehci_setup+0xb9>
  bd:	89 fa                	mov    %edi,%edx
  bf:	b8 00 00 00 00       	mov    $0x0,%eax
  c4:	e8 fc ff ff ff       	call   c5 <ehci_setup+0xc5>
  c9:	83 c4 0c             	add    $0xc,%esp
  cc:	8b 5b 04             	mov    0x4(%ebx),%ebx
  cf:	83 eb 04             	sub    $0x4,%ebx
  d2:	e9 35 ff ff ff       	jmp    c <ehci_setup+0xc>
  d7:	5b                   	pop    %ebx
  d8:	5e                   	pop    %esi
  d9:	5f                   	pop    %edi
  da:	5d                   	pop    %ebp
  db:	c3                   	ret    

Disassembly of section .text.ehci_wait_controllers:

00000000 <ehci_wait_controllers>:
   0:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
   7:	74 07                	je     10 <ehci_wait_controllers+0x10>
   9:	e8 fc ff ff ff       	call   a <ehci_wait_controllers+0xa>
   e:	eb f0                	jmp    0 <ehci_wait_controllers>
  10:	c3                   	ret    

Disassembly of section .text.ehci_realloc_pipe:

00000000 <ehci_realloc_pipe>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 24             	sub    $0x24,%esp
   7:	89 44 24 04          	mov    %eax,0x4(%esp)
   b:	89 d0                	mov    %edx,%eax
   d:	89 cb                	mov    %ecx,%ebx
   f:	e8 fc ff ff ff       	call   10 <ehci_realloc_pipe+0x10>
  14:	85 db                	test   %ebx,%ebx
  16:	0f 84 a7 02 00 00    	je     2c3 <ehci_realloc_pipe+0x2c3>
  1c:	8a 4b 03             	mov    0x3(%ebx),%cl
  1f:	83 e1 03             	and    $0x3,%ecx
  22:	8b 44 24 04          	mov    0x4(%esp),%eax
  26:	8b 00                	mov    (%eax),%eax
  28:	8b 40 08             	mov    0x8(%eax),%eax
  2b:	89 04 24             	mov    %eax,(%esp)
  2e:	80 f9 03             	cmp    $0x3,%cl
  31:	0f 85 ce 01 00 00    	jne    205 <ehci_realloc_pipe+0x205>
  37:	89 da                	mov    %ebx,%edx
  39:	8b 44 24 04          	mov    0x4(%esp),%eax
  3d:	e8 fc ff ff ff       	call   3e <ehci_realloc_pipe+0x3e>
  42:	89 44 24 08          	mov    %eax,0x8(%esp)
  46:	50                   	push   %eax
  47:	ff 74 24 04          	push   0x4(%esp)
  4b:	68 34 00 00 00       	push   $0x34
  50:	e8 fc ff ff ff       	call   51 <ehci_realloc_pipe+0x51>
  55:	8b 44 24 14          	mov    0x14(%esp),%eax
  59:	89 44 24 18          	mov    %eax,0x18(%esp)
  5d:	83 c4 0c             	add    $0xc,%esp
  60:	83 f8 0a             	cmp    $0xa,%eax
  63:	7e 08                	jle    6d <ehci_realloc_pipe+0x6d>
  65:	c7 44 24 0c 0a 00 00 	movl   $0xa,0xc(%esp)
  6c:	00 
  6d:	0f b7 43 04          	movzwl 0x4(%ebx),%eax
  71:	89 44 24 14          	mov    %eax,0x14(%esp)
  75:	b8 01 00 00 00       	mov    $0x1,%eax
  7a:	8a 4c 24 0c          	mov    0xc(%esp),%cl
  7e:	d3 e0                	shl    %cl,%eax
  80:	89 44 24 18          	mov    %eax,0x18(%esp)
  84:	b8 02 00 00 00       	mov    $0x2,%eax
  89:	e8 fc ff ff ff       	call   8a <ehci_realloc_pipe+0x8a>
  8e:	8b 7c 24 18          	mov    0x18(%esp),%edi
  92:	8d 44 07 ff          	lea    -0x1(%edi,%eax,1),%eax
  96:	8a 4c 24 0c          	mov    0xc(%esp),%cl
  9a:	d3 e8                	shr    %cl,%eax
  9c:	89 44 24 10          	mov    %eax,0x10(%esp)
  a0:	b9 80 00 00 00       	mov    $0x80,%ecx
  a5:	ba 5c 00 00 00       	mov    $0x5c,%edx
  aa:	b8 00 00 00 00       	mov    $0x0,%eax
  af:	e8 fc ff ff ff       	call   b0 <ehci_realloc_pipe+0xb0>
  b4:	89 c6                	mov    %eax,%esi
  b6:	8b 44 24 10          	mov    0x10(%esp),%eax
  ba:	c1 e0 06             	shl    $0x6,%eax
  bd:	89 44 24 1c          	mov    %eax,0x1c(%esp)
  c1:	b9 40 00 00 00       	mov    $0x40,%ecx
  c6:	89 c2                	mov    %eax,%edx
  c8:	b8 00 00 00 00       	mov    $0x0,%eax
  cd:	e8 fc ff ff ff       	call   ce <ehci_realloc_pipe+0xce>
  d2:	89 c5                	mov    %eax,%ebp
  d4:	8b 44 24 14          	mov    0x14(%esp),%eax
  d8:	0f af 44 24 10       	imul   0x10(%esp),%eax
  dd:	89 44 24 20          	mov    %eax,0x20(%esp)
  e1:	b9 10 00 00 00       	mov    $0x10,%ecx
  e6:	89 c2                	mov    %eax,%edx
  e8:	b8 00 00 00 00       	mov    $0x0,%eax
  ed:	e8 fc ff ff ff       	call   ee <ehci_realloc_pipe+0xee>
  f2:	89 c7                	mov    %eax,%edi
  f4:	85 ed                	test   %ebp,%ebp
  f6:	0f 94 c0             	sete   %al
  f9:	85 f6                	test   %esi,%esi
  fb:	0f 94 c2             	sete   %dl
  fe:	08 d0                	or     %dl,%al
 100:	75 04                	jne    106 <ehci_realloc_pipe+0x106>
 102:	85 ff                	test   %edi,%edi
 104:	75 29                	jne    12f <ehci_realloc_pipe+0x12f>
 106:	ba 00 00 00 00       	mov    $0x0,%edx
 10b:	b8 94 01 00 00       	mov    $0x194,%eax
 110:	e8 fc ff ff ff       	call   111 <ehci_realloc_pipe+0x111>
 115:	89 f0                	mov    %esi,%eax
 117:	e8 fc ff ff ff       	call   118 <ehci_realloc_pipe+0x118>
 11c:	89 e8                	mov    %ebp,%eax
 11e:	e8 fc ff ff ff       	call   11f <ehci_realloc_pipe+0x11f>
 123:	89 f8                	mov    %edi,%eax
 125:	e8 fc ff ff ff       	call   126 <ehci_realloc_pipe+0x126>
 12a:	e9 55 01 00 00       	jmp    284 <ehci_realloc_pipe+0x284>
 12f:	b9 5c 00 00 00       	mov    $0x5c,%ecx
 134:	31 d2                	xor    %edx,%edx
 136:	89 f0                	mov    %esi,%eax
 138:	e8 fc ff ff ff       	call   139 <ehci_realloc_pipe+0x139>
 13d:	8b 4c 24 1c          	mov    0x1c(%esp),%ecx
 141:	31 d2                	xor    %edx,%edx
 143:	89 e8                	mov    %ebp,%eax
 145:	e8 fc ff ff ff       	call   146 <ehci_realloc_pipe+0x146>
 14a:	8b 4c 24 20          	mov    0x20(%esp),%ecx
 14e:	31 d2                	xor    %edx,%edx
 150:	89 f8                	mov    %edi,%eax
 152:	e8 fc ff ff ff       	call   153 <ehci_realloc_pipe+0x153>
 157:	89 d9                	mov    %ebx,%ecx
 159:	8b 54 24 04          	mov    0x4(%esp),%edx
 15d:	89 f0                	mov    %esi,%eax
 15f:	e8 fc ff ff ff       	call   160 <ehci_realloc_pipe+0x160>
 164:	89 6e 48             	mov    %ebp,0x48(%esi)
 167:	89 6e 44             	mov    %ebp,0x44(%esi)
 16a:	89 7e 4c             	mov    %edi,0x4c(%esi)
 16d:	89 6e 10             	mov    %ebp,0x10(%esi)
 170:	8b 44 24 14          	mov    0x14(%esp),%eax
 174:	c1 e0 10             	shl    $0x10,%eax
 177:	25 00 00 ff 7f       	and    $0x7fff0000,%eax
 17c:	0d 80 0d 00 00       	or     $0xd80,%eax
 181:	89 44 24 04          	mov    %eax,0x4(%esp)
 185:	8d 45 40             	lea    0x40(%ebp),%eax
 188:	31 d2                	xor    %edx,%edx
 18a:	8b 5c 24 10          	mov    0x10(%esp),%ebx
 18e:	4b                   	dec    %ebx
 18f:	39 54 24 10          	cmp    %edx,0x10(%esp)
 193:	7e 26                	jle    1bb <ehci_realloc_pipe+0x1bb>
 195:	89 e9                	mov    %ebp,%ecx
 197:	39 da                	cmp    %ebx,%edx
 199:	74 02                	je     19d <ehci_realloc_pipe+0x19d>
 19b:	89 c1                	mov    %eax,%ecx
 19d:	89 48 c0             	mov    %ecx,-0x40(%eax)
 1a0:	c7 40 c4 01 00 00 00 	movl   $0x1,-0x3c(%eax)
 1a7:	8b 4c 24 04          	mov    0x4(%esp),%ecx
 1ab:	89 48 c8             	mov    %ecx,-0x38(%eax)
 1ae:	89 78 cc             	mov    %edi,-0x34(%eax)
 1b1:	42                   	inc    %edx
 1b2:	83 c0 40             	add    $0x40,%eax
 1b5:	03 7c 24 14          	add    0x14(%esp),%edi
 1b9:	eb d4                	jmp    18f <ehci_realloc_pipe+0x18f>
 1bb:	8b 04 24             	mov    (%esp),%eax
 1be:	8b 40 18             	mov    0x18(%eax),%eax
 1c1:	8b 40 14             	mov    0x14(%eax),%eax
 1c4:	89 f2                	mov    %esi,%edx
 1c6:	83 ca 02             	or     $0x2,%edx
 1c9:	83 7c 24 08 00       	cmpl   $0x0,0x8(%esp)
 1ce:	75 0e                	jne    1de <ehci_realloc_pipe+0x1de>
 1d0:	8b 00                	mov    (%eax),%eax
 1d2:	83 e0 e0             	and    $0xffffffe0,%eax
 1d5:	8b 08                	mov    (%eax),%ecx
 1d7:	89 0e                	mov    %ecx,(%esi)
 1d9:	e9 e0 00 00 00       	jmp    2be <ehci_realloc_pipe+0x2be>
 1de:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
 1e2:	49                   	dec    %ecx
 1e3:	bb 01 00 00 00       	mov    $0x1,%ebx
 1e8:	d3 e3                	shl    %cl,%ebx
 1ea:	89 d9                	mov    %ebx,%ecx
 1ec:	8b 1c 98             	mov    (%eax,%ebx,4),%ebx
 1ef:	89 1e                	mov    %ebx,(%esi)
 1f1:	89 14 88             	mov    %edx,(%eax,%ecx,4)
 1f4:	03 4c 24 18          	add    0x18(%esp),%ecx
 1f8:	81 f9 ff 03 00 00    	cmp    $0x3ff,%ecx
 1fe:	7e f1                	jle    1f1 <ehci_realloc_pipe+0x1f1>
 200:	e9 bb 00 00 00       	jmp    2c0 <ehci_realloc_pipe+0x2c0>
 205:	0f b6 d1             	movzbl %cl,%edx
 208:	88 4c 24 0c          	mov    %cl,0xc(%esp)
 20c:	52                   	push   %edx
 20d:	89 54 24 0c          	mov    %edx,0xc(%esp)
 211:	ff 74 24 04          	push   0x4(%esp)
 215:	68 50 00 00 00       	push   $0x50
 21a:	e8 fc ff ff ff       	call   21b <ehci_realloc_pipe+0x21b>
 21f:	8b 54 24 14          	mov    0x14(%esp),%edx
 223:	8b 44 24 0c          	mov    0xc(%esp),%eax
 227:	e8 fc ff ff ff       	call   228 <ehci_realloc_pipe+0x228>
 22c:	89 c6                	mov    %eax,%esi
 22e:	83 c4 0c             	add    $0xc,%esp
 231:	85 c0                	test   %eax,%eax
 233:	8a 4c 24 0c          	mov    0xc(%esp),%cl
 237:	74 19                	je     252 <ehci_realloc_pipe+0x252>
 239:	8d 40 b0             	lea    -0x50(%eax),%eax
 23c:	89 d9                	mov    %ebx,%ecx
 23e:	8b 54 24 04          	mov    0x4(%esp),%edx
 242:	e8 fc ff ff ff       	call   243 <ehci_realloc_pipe+0x243>
 247:	c7 46 c8 00 00 00 00 	movl   $0x0,-0x38(%esi)
 24e:	89 f3                	mov    %esi,%ebx
 250:	eb 71                	jmp    2c3 <ehci_realloc_pipe+0x2c3>
 252:	84 c9                	test   %cl,%cl
 254:	b9 80 00 00 00       	mov    $0x80,%ecx
 259:	ba 5c 00 00 00       	mov    $0x5c,%edx
 25e:	b8 00 00 00 00       	mov    $0x0,%eax
 263:	74 05                	je     26a <ehci_realloc_pipe+0x26a>
 265:	b8 00 00 00 00       	mov    $0x0,%eax
 26a:	e8 fc ff ff ff       	call   26b <ehci_realloc_pipe+0x26b>
 26f:	89 c6                	mov    %eax,%esi
 271:	85 c0                	test   %eax,%eax
 273:	75 13                	jne    288 <ehci_realloc_pipe+0x288>
 275:	ba 00 00 00 00       	mov    $0x0,%edx
 27a:	b8 e1 01 00 00       	mov    $0x1e1,%eax
 27f:	e8 fc ff ff ff       	call   280 <ehci_realloc_pipe+0x280>
 284:	31 db                	xor    %ebx,%ebx
 286:	eb 3b                	jmp    2c3 <ehci_realloc_pipe+0x2c3>
 288:	b9 5c 00 00 00       	mov    $0x5c,%ecx
 28d:	31 d2                	xor    %edx,%edx
 28f:	e8 fc ff ff ff       	call   290 <ehci_realloc_pipe+0x290>
 294:	89 d9                	mov    %ebx,%ecx
 296:	8b 54 24 04          	mov    0x4(%esp),%edx
 29a:	89 f0                	mov    %esi,%eax
 29c:	e8 fc ff ff ff       	call   29d <ehci_realloc_pipe+0x29d>
 2a1:	c7 46 14 01 00 00 00 	movl   $0x1,0x14(%esi)
 2a8:	c7 46 10 01 00 00 00 	movl   $0x1,0x10(%esi)
 2af:	8b 04 24             	mov    (%esp),%eax
 2b2:	8b 40 1c             	mov    0x1c(%eax),%eax
 2b5:	8b 10                	mov    (%eax),%edx
 2b7:	89 16                	mov    %edx,(%esi)
 2b9:	89 f2                	mov    %esi,%edx
 2bb:	83 ca 02             	or     $0x2,%edx
 2be:	89 10                	mov    %edx,(%eax)
 2c0:	8d 5e 50             	lea    0x50(%esi),%ebx
 2c3:	89 d8                	mov    %ebx,%eax
 2c5:	83 c4 24             	add    $0x24,%esp
 2c8:	5b                   	pop    %ebx
 2c9:	5e                   	pop    %esi
 2ca:	5f                   	pop    %edi
 2cb:	5d                   	pop    %ebp
 2cc:	c3                   	ret    

Disassembly of section .text.ehci_send_pipe:

00000000 <ehci_send_pipe>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	81 ec dc 01 00 00    	sub    $0x1dc,%esp
   a:	89 c3                	mov    %eax,%ebx
   c:	89 54 24 04          	mov    %edx,0x4(%esp)
  10:	89 cd                	mov    %ecx,%ebp
  12:	83 e8 50             	sub    $0x50,%eax
  15:	89 44 24 0c          	mov    %eax,0xc(%esp)
  19:	ff b4 24 f4 01 00 00 	push   0x1f4(%esp)
  20:	ff b4 24 f4 01 00 00 	push   0x1f4(%esp)
  27:	ff 74 24 0c          	push   0xc(%esp)
  2b:	ff 74 24 18          	push   0x18(%esp)
  2f:	68 6d 00 00 00       	push   $0x6d
  34:	e8 fc ff ff ff       	call   35 <ehci_send_pipe+0x35>
  39:	8d 74 24 70          	lea    0x70(%esp),%esi
  3d:	83 e6 c0             	and    $0xffffffc0,%esi
  40:	89 74 24 14          	mov    %esi,0x14(%esp)
  44:	b9 80 01 00 00       	mov    $0x180,%ecx
  49:	31 d2                	xor    %edx,%edx
  4b:	89 f0                	mov    %esi,%eax
  4d:	e8 fc ff ff ff       	call   4e <ehci_send_pipe+0x4e>
  52:	8b 43 08             	mov    0x8(%ebx),%eax
  55:	66 89 44 24 28       	mov    %ax,0x28(%esp)
  5a:	83 c4 14             	add    $0x14,%esp
  5d:	85 ed                	test   %ebp,%ebp
  5f:	74 3c                	je     9d <ehci_send_pipe+0x9d>
  61:	8d 46 40             	lea    0x40(%esi),%eax
  64:	89 06                	mov    %eax,(%esi)
  66:	c7 46 04 01 00 00 00 	movl   $0x1,0x4(%esi)
  6d:	c7 46 08 80 0e 08 00 	movl   $0x80e80,0x8(%esi)
  74:	89 ea                	mov    %ebp,%edx
  76:	8d 4e 0c             	lea    0xc(%esi),%ecx
  79:	8d 7d 08             	lea    0x8(%ebp),%edi
  7c:	39 d7                	cmp    %edx,%edi
  7e:	76 13                	jbe    93 <ehci_send_pipe+0x93>
  80:	89 11                	mov    %edx,(%ecx)
  82:	81 c2 00 10 00 00    	add    $0x1000,%edx
  88:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
  8e:	83 c1 04             	add    $0x4,%ecx
  91:	eb e9                	jmp    7c <ehci_send_pipe+0x7c>
  93:	c7 44 24 08 00 00 00 	movl   $0x80000000,0x8(%esp)
  9a:	80 
  9b:	eb 0a                	jmp    a7 <ehci_send_pipe+0xa7>
  9d:	89 f0                	mov    %esi,%eax
  9f:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  a6:	00 
  a7:	8b 94 24 f0 01 00 00 	mov    0x1f0(%esp),%edx
  ae:	8b bc 24 f4 01 00 00 	mov    0x1f4(%esp),%edi
  b5:	01 d7                	add    %edx,%edi
  b7:	89 7c 24 10          	mov    %edi,0x10(%esp)
  bb:	31 c9                	xor    %ecx,%ecx
  bd:	83 7c 24 04 00       	cmpl   $0x0,0x4(%esp)
  c2:	0f 95 c1             	setne  %cl
  c5:	c1 e1 08             	shl    $0x8,%ecx
  c8:	89 4c 24 18          	mov    %ecx,0x18(%esp)
  cc:	0f b7 4c 24 14       	movzwl 0x14(%esp),%ecx
  d1:	f7 d9                	neg    %ecx
  d3:	89 4c 24 14          	mov    %ecx,0x14(%esp)
  d7:	3b 54 24 10          	cmp    0x10(%esp),%edx
  db:	8d 8e 80 01 00 00    	lea    0x180(%esi),%ecx
  e1:	73 7c                	jae    15f <ehci_send_pipe+0x15f>
  e3:	39 c8                	cmp    %ecx,%eax
  e5:	72 0c                	jb     f3 <ehci_send_pipe+0xf3>
  e7:	ba 00 00 00 00       	mov    $0x0,%edx
  ec:	b8 42 02 00 00       	mov    $0x242,%eax
  f1:	eb 7e                	jmp    171 <ehci_send_pipe+0x171>
  f3:	89 d7                	mov    %edx,%edi
  f5:	81 e7 ff 0f 00 00    	and    $0xfff,%edi
  fb:	b9 00 50 00 00       	mov    $0x5000,%ecx
 100:	29 f9                	sub    %edi,%ecx
 102:	8b 7c 24 10          	mov    0x10(%esp),%edi
 106:	29 d7                	sub    %edx,%edi
 108:	39 f9                	cmp    %edi,%ecx
 10a:	7d 06                	jge    112 <ehci_send_pipe+0x112>
 10c:	8b 7c 24 14          	mov    0x14(%esp),%edi
 110:	21 cf                	and    %ecx,%edi
 112:	83 c0 40             	add    $0x40,%eax
 115:	89 40 c0             	mov    %eax,-0x40(%eax)
 118:	c7 40 c4 01 00 00 00 	movl   $0x1,-0x3c(%eax)
 11f:	89 f9                	mov    %edi,%ecx
 121:	c1 e1 10             	shl    $0x10,%ecx
 124:	81 e1 00 00 ff 7f    	and    $0x7fff0000,%ecx
 12a:	0b 4c 24 18          	or     0x18(%esp),%ecx
 12e:	0b 4c 24 08          	or     0x8(%esp),%ecx
 132:	81 c9 80 0c 00 00    	or     $0xc80,%ecx
 138:	89 48 c8             	mov    %ecx,-0x38(%eax)
 13b:	8d 48 cc             	lea    -0x34(%eax),%ecx
 13e:	01 d7                	add    %edx,%edi
 140:	39 d7                	cmp    %edx,%edi
 142:	76 14                	jbe    158 <ehci_send_pipe+0x158>
 144:	83 c1 04             	add    $0x4,%ecx
 147:	89 51 fc             	mov    %edx,-0x4(%ecx)
 14a:	81 c2 00 10 00 00    	add    $0x1000,%edx
 150:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
 156:	eb e8                	jmp    140 <ehci_send_pipe+0x140>
 158:	89 fa                	mov    %edi,%edx
 15a:	e9 78 ff ff ff       	jmp    d7 <ehci_send_pipe+0xd7>
 15f:	85 ed                	test   %ebp,%ebp
 161:	74 3e                	je     1a1 <ehci_send_pipe+0x1a1>
 163:	39 c8                	cmp    %ecx,%eax
 165:	72 14                	jb     17b <ehci_send_pipe+0x17b>
 167:	ba 00 00 00 00       	mov    $0x0,%edx
 16c:	b8 54 02 00 00       	mov    $0x254,%eax
 171:	e8 fc ff ff ff       	call   172 <ehci_send_pipe+0x172>
 176:	e9 ec 00 00 00       	jmp    267 <ehci_send_pipe+0x267>
 17b:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 181:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
 188:	83 7c 24 04 01       	cmpl   $0x1,0x4(%esp)
 18d:	19 d2                	sbb    %edx,%edx
 18f:	81 e2 00 01 00 00    	and    $0x100,%edx
 195:	81 ea 80 f3 ff 7f    	sub    $0x7ffff380,%edx
 19b:	89 50 08             	mov    %edx,0x8(%eax)
 19e:	83 c0 40             	add    $0x40,%eax
 1a1:	c7 40 c0 01 00 00 00 	movl   $0x1,-0x40(%eax)
 1a8:	89 73 c0             	mov    %esi,-0x40(%ebx)
 1ab:	8b 94 24 f4 01 00 00 	mov    0x1f4(%esp),%edx
 1b2:	89 d8                	mov    %ebx,%eax
 1b4:	e8 fc ff ff ff       	call   1b5 <ehci_send_pipe+0x1b5>
 1b9:	e8 fc ff ff ff       	call   1ba <ehci_send_pipe+0x1ba>
 1be:	89 c7                	mov    %eax,%edi
 1c0:	81 c6 80 01 00 00    	add    $0x180,%esi
 1c6:	8b 04 24             	mov    (%esp),%eax
 1c9:	8b 68 08             	mov    0x8(%eax),%ebp
 1cc:	f7 c5 80 00 00 00    	test   $0x80,%ebp
 1d2:	74 69                	je     23d <ehci_send_pipe+0x23d>
 1d4:	89 f8                	mov    %edi,%eax
 1d6:	e8 fc ff ff ff       	call   1d7 <ehci_send_pipe+0x1d7>
 1db:	85 c0                	test   %eax,%eax
 1dd:	74 57                	je     236 <ehci_send_pipe+0x236>
 1df:	8b 73 bc             	mov    -0x44(%ebx),%esi
 1e2:	8b 7b c8             	mov    -0x38(%ebx),%edi
 1e5:	8b 4b c0             	mov    -0x40(%ebx),%ecx
 1e8:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 1ec:	ba 00 00 00 00       	mov    $0x0,%edx
 1f1:	b8 05 02 00 00       	mov    $0x205,%eax
 1f6:	e8 fc ff ff ff       	call   1f7 <ehci_send_pipe+0x1f7>
 1fb:	55                   	push   %ebp
 1fc:	ff 74 24 04          	push   0x4(%esp)
 200:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
 204:	51                   	push   %ecx
 205:	57                   	push   %edi
 206:	56                   	push   %esi
 207:	ff 74 24 20          	push   0x20(%esp)
 20b:	68 9a 00 00 00       	push   $0x9a
 210:	e8 fc ff ff ff       	call   211 <ehci_send_pipe+0x211>
 215:	c7 43 c0 01 00 00 00 	movl   $0x1,-0x40(%ebx)
 21c:	c7 43 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebx)
 223:	81 63 c8 00 00 00 80 	andl   $0x80000000,-0x38(%ebx)
 22a:	8b 03                	mov    (%ebx),%eax
 22c:	e8 fc ff ff ff       	call   22d <ehci_send_pipe+0x22d>
 231:	83 c4 1c             	add    $0x1c,%esp
 234:	eb 31                	jmp    267 <ehci_send_pipe+0x267>
 236:	e8 fc ff ff ff       	call   237 <ehci_send_pipe+0x237>
 23b:	eb 89                	jmp    1c6 <ehci_send_pipe+0x1c6>
 23d:	f7 c5 40 00 00 00    	test   $0x40,%ebp
 243:	74 27                	je     26c <ehci_send_pipe+0x26c>
 245:	55                   	push   %ebp
 246:	68 d2 00 00 00       	push   $0xd2
 24b:	e8 fc ff ff ff       	call   24c <ehci_send_pipe+0x24c>
 250:	c7 43 c0 01 00 00 00 	movl   $0x1,-0x40(%ebx)
 257:	c7 43 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebx)
 25e:	81 63 c8 00 00 00 80 	andl   $0x80000000,-0x38(%ebx)
 265:	58                   	pop    %eax
 266:	5a                   	pop    %edx
 267:	83 c8 ff             	or     $0xffffffff,%eax
 26a:	eb 0f                	jmp    27b <ehci_send_pipe+0x27b>
 26c:	83 04 24 40          	addl   $0x40,(%esp)
 270:	39 34 24             	cmp    %esi,(%esp)
 273:	0f 85 4d ff ff ff    	jne    1c6 <ehci_send_pipe+0x1c6>
 279:	31 c0                	xor    %eax,%eax
 27b:	81 c4 dc 01 00 00    	add    $0x1dc,%esp
 281:	5b                   	pop    %ebx
 282:	5e                   	pop    %esi
 283:	5f                   	pop    %edi
 284:	5d                   	pop    %ebp
 285:	c3                   	ret    

Disassembly of section .text.ehci_poll_intr:

00000000 <ehci_poll_intr>:
   0:	e8 fc ff ff ff       	call   1 <ehci_poll_intr+0x1>
