
./usb-msc.o:     file format elf32-i386


Disassembly of section .text.usb_process_op:

00000000 <usb_process_op>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 2c             	sub    $0x2c,%esp
   7:	89 c3                	mov    %eax,%ebx
   9:	ff 30                	push   (%eax)
   b:	0f b7 40 0a          	movzwl 0xa(%eax),%eax
   f:	50                   	push   %eax
  10:	6a 00                	push   $0x0
  12:	ff 73 04             	push   0x4(%ebx)
  15:	68 00 00 00 00       	push   $0x0
  1a:	e8 fc ff ff ff       	call   1b <usb_process_op+0x1b>
  1f:	8b 6b 04             	mov    0x4(%ebx),%ebp
  22:	b9 1f 00 00 00       	mov    $0x1f,%ecx
  27:	31 d2                	xor    %edx,%edx
  29:	8d 44 24 21          	lea    0x21(%esp),%eax
  2d:	e8 fc ff ff ff       	call   2e <usb_process_op+0x2e>
  32:	b9 0c 00 00 00       	mov    $0xc,%ecx
  37:	8d 54 24 30          	lea    0x30(%esp),%edx
  3b:	89 d8                	mov    %ebx,%eax
  3d:	e8 fc ff ff ff       	call   3e <usb_process_op+0x3e>
  42:	83 c4 14             	add    $0x14,%esp
  45:	85 c0                	test   %eax,%eax
  47:	79 0e                	jns    57 <usb_process_op+0x57>
  49:	89 d8                	mov    %ebx,%eax
  4b:	e8 fc ff ff ff       	call   4c <usb_process_op+0x4c>
  50:	89 c1                	mov    %eax,%ecx
  52:	e9 c4 00 00 00       	jmp    11b <usb_process_op+0x11b>
  57:	89 c6                	mov    %eax,%esi
  59:	0f b7 7b 0a          	movzwl 0xa(%ebx),%edi
  5d:	0f af f8             	imul   %eax,%edi
  60:	c7 44 24 0d 55 53 42 	movl   $0x43425355,0xd(%esp)
  67:	43 
  68:	c7 44 24 11 e7 03 00 	movl   $0x3e7,0x11(%esp)
  6f:	00 
  70:	89 7c 24 15          	mov    %edi,0x15(%esp)
  74:	89 d8                	mov    %ebx,%eax
  76:	e8 fc ff ff ff       	call   77 <usb_process_op+0x77>
  7b:	85 c0                	test   %eax,%eax
  7d:	0f 95 c0             	setne  %al
  80:	c1 e0 07             	shl    $0x7,%eax
  83:	88 44 24 19          	mov    %al,0x19(%esp)
  87:	8b 45 2c             	mov    0x2c(%ebp),%eax
  8a:	88 44 24 1a          	mov    %al,0x1a(%esp)
  8e:	c6 44 24 1b 0c       	movb   $0xc,0x1b(%esp)
  93:	8b 45 28             	mov    0x28(%ebp),%eax
  96:	6a 1f                	push   $0x1f
  98:	8d 4c 24 11          	lea    0x11(%esp),%ecx
  9c:	31 d2                	xor    %edx,%edx
  9e:	e8 fc ff ff ff       	call   9f <usb_process_op+0x9f>
  a3:	5a                   	pop    %edx
  a4:	85 c0                	test   %eax,%eax
  a6:	75 63                	jne    10b <usb_process_op+0x10b>
  a8:	85 ff                	test   %edi,%edi
  aa:	75 1c                	jne    c8 <usb_process_op+0xc8>
  ac:	8b 45 24             	mov    0x24(%ebp),%eax
  af:	6a 0d                	push   $0xd
  b1:	8d 4c 24 04          	lea    0x4(%esp),%ecx
  b5:	ba 80 00 00 00       	mov    $0x80,%edx
  ba:	e8 fc ff ff ff       	call   bb <usb_process_op+0xbb>
  bf:	89 c1                	mov    %eax,%ecx
  c1:	5f                   	pop    %edi
  c2:	85 c0                	test   %eax,%eax
  c4:	74 22                	je     e8 <usb_process_op+0xe8>
  c6:	eb 43                	jmp    10b <usb_process_op+0x10b>
  c8:	8b 0b                	mov    (%ebx),%ecx
  ca:	0f b6 54 24 19       	movzbl 0x19(%esp),%edx
  cf:	85 d2                	test   %edx,%edx
  d1:	75 05                	jne    d8 <usb_process_op+0xd8>
  d3:	8b 45 28             	mov    0x28(%ebp),%eax
  d6:	eb 03                	jmp    db <usb_process_op+0xdb>
  d8:	8b 45 24             	mov    0x24(%ebp),%eax
  db:	57                   	push   %edi
  dc:	e8 fc ff ff ff       	call   dd <usb_process_op+0xdd>
  e1:	5a                   	pop    %edx
  e2:	85 c0                	test   %eax,%eax
  e4:	74 c6                	je     ac <usb_process_op+0xac>
  e6:	eb 23                	jmp    10b <usb_process_op+0x10b>
  e8:	8a 44 24 0c          	mov    0xc(%esp),%al
  ec:	84 c0                	test   %al,%al
  ee:	74 2b                	je     11b <usb_process_op+0x11b>
  f0:	3c 02                	cmp    $0x2,%al
  f2:	74 17                	je     10b <usb_process_op+0x10b>
  f4:	b9 0c 00 00 00       	mov    $0xc,%ecx
  f9:	85 f6                	test   %esi,%esi
  fb:	74 1e                	je     11b <usb_process_op+0x11b>
  fd:	8b 44 24 08          	mov    0x8(%esp),%eax
 101:	31 d2                	xor    %edx,%edx
 103:	f7 f6                	div    %esi
 105:	66 29 43 0a          	sub    %ax,0xa(%ebx)
 109:	eb 10                	jmp    11b <usb_process_op+0x11b>
 10b:	68 2d 00 00 00       	push   $0x2d
 110:	e8 fc ff ff ff       	call   111 <usb_process_op+0x111>
 115:	58                   	pop    %eax
 116:	b9 0c 00 00 00       	mov    $0xc,%ecx
 11b:	89 c8                	mov    %ecx,%eax
 11d:	83 c4 2c             	add    $0x2c,%esp
 120:	5b                   	pop    %ebx
 121:	5e                   	pop    %esi
 122:	5f                   	pop    %edi
 123:	5d                   	pop    %ebp
 124:	c3                   	ret    

Disassembly of section .text.usb_msc_setup:

00000000 <usb_msc_setup>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 18             	sub    $0x18,%esp
   7:	89 c3                	mov    %eax,%ebx
   9:	8b 50 10             	mov    0x10(%eax),%edx
   c:	0f b6 42 06          	movzbl 0x6(%edx),%eax
  10:	0f b6 52 07          	movzbl 0x7(%edx),%edx
  14:	8d 48 fb             	lea    -0x5(%eax),%ecx
  17:	80 f9 01             	cmp    $0x1,%cl
  1a:	76 04                	jbe    20 <usb_msc_setup+0x20>
  1c:	3c 02                	cmp    $0x2,%al
  1e:	75 05                	jne    25 <usb_msc_setup+0x25>
  20:	80 fa 50             	cmp    $0x50,%dl
  23:	74 14                	je     39 <usb_msc_setup+0x39>
  25:	52                   	push   %edx
  26:	50                   	push   %eax
  27:	68 46 00 00 00       	push   $0x46
  2c:	e8 fc ff ff ff       	call   2d <usb_msc_setup+0x2d>
  31:	83 c4 0c             	add    $0xc,%esp
  34:	e9 61 01 00 00       	jmp    19a <usb_msc_setup+0x19a>
  39:	b9 80 00 00 00       	mov    $0x80,%ecx
  3e:	ba 02 00 00 00       	mov    $0x2,%edx
  43:	89 d8                	mov    %ebx,%eax
  45:	e8 fc ff ff ff       	call   46 <usb_msc_setup+0x46>
  4a:	89 c7                	mov    %eax,%edi
  4c:	31 c9                	xor    %ecx,%ecx
  4e:	ba 02 00 00 00       	mov    $0x2,%edx
  53:	89 d8                	mov    %ebx,%eax
  55:	e8 fc ff ff ff       	call   56 <usb_msc_setup+0x56>
  5a:	89 c6                	mov    %eax,%esi
  5c:	85 ff                	test   %edi,%edi
  5e:	0f 84 0e 01 00 00    	je     172 <usb_msc_setup+0x172>
  64:	85 c0                	test   %eax,%eax
  66:	0f 84 06 01 00 00    	je     172 <usb_msc_setup+0x172>
  6c:	89 fa                	mov    %edi,%edx
  6e:	89 d8                	mov    %ebx,%eax
  70:	e8 fc ff ff ff       	call   71 <usb_msc_setup+0x71>
  75:	89 c7                	mov    %eax,%edi
  77:	89 f2                	mov    %esi,%edx
  79:	89 d8                	mov    %ebx,%eax
  7b:	e8 fc ff ff ff       	call   7c <usb_msc_setup+0x7c>
  80:	89 04 24             	mov    %eax,(%esp)
  83:	85 ff                	test   %edi,%edi
  85:	0f 84 f0 00 00 00    	je     17b <usb_msc_setup+0x17b>
  8b:	85 c0                	test   %eax,%eax
  8d:	0f 84 e8 00 00 00    	je     17b <usb_msc_setup+0x17b>
  93:	8b 43 04             	mov    0x4(%ebx),%eax
  96:	c7 44 24 10 a1 fe 00 	movl   $0xfea1,0x10(%esp)
  9d:	00 
  9e:	c7 44 24 14 00 00 01 	movl   $0x10000,0x14(%esp)
  a5:	00 
  a6:	8d 4c 24 0f          	lea    0xf(%esp),%ecx
  aa:	8d 54 24 10          	lea    0x10(%esp),%edx
  ae:	e8 fc ff ff ff       	call   af <usb_msc_setup+0xaf>
  b3:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  ba:	00 
  bb:	85 c0                	test   %eax,%eax
  bd:	75 09                	jne    c8 <usb_msc_setup+0xc8>
  bf:	0f b6 44 24 0f       	movzbl 0xf(%esp),%eax
  c4:	89 44 24 08          	mov    %eax,0x8(%esp)
  c8:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  cf:	00 
  d0:	31 ed                	xor    %ebp,%ebp
  d2:	b9 10 00 00 00       	mov    $0x10,%ecx
  d7:	ba 30 00 00 00       	mov    $0x30,%edx
  dc:	b8 00 00 00 00       	mov    $0x0,%eax
  e1:	e8 fc ff ff ff       	call   e2 <usb_msc_setup+0xe2>
  e6:	89 c6                	mov    %eax,%esi
  e8:	85 c0                	test   %eax,%eax
  ea:	75 11                	jne    fd <usb_msc_setup+0xfd>
  ec:	ba 00 00 00 00       	mov    $0x0,%edx
  f1:	b8 94 00 00 00       	mov    $0x94,%eax
  f6:	e8 fc ff ff ff       	call   f7 <usb_msc_setup+0xf7>
  fb:	eb 5f                	jmp    15c <usb_msc_setup+0x15c>
  fd:	b9 30 00 00 00       	mov    $0x30,%ecx
 102:	31 d2                	xor    %edx,%edx
 104:	e8 fc ff ff ff       	call   105 <usb_msc_setup+0x105>
 109:	89 f8                	mov    %edi,%eax
 10b:	e8 fc ff ff ff       	call   10c <usb_msc_setup+0x10c>
 110:	83 f8 01             	cmp    $0x1,%eax
 113:	b0 70                	mov    $0x70,%al
 115:	1c ff                	sbb    $0xff,%al
 117:	88 06                	mov    %al,(%esi)
 119:	89 7e 24             	mov    %edi,0x24(%esi)
 11c:	8b 04 24             	mov    (%esp),%eax
 11f:	89 46 28             	mov    %eax,0x28(%esi)
 122:	89 6e 2c             	mov    %ebp,0x2c(%esi)
 125:	89 ea                	mov    %ebp,%edx
 127:	89 d8                	mov    %ebx,%eax
 129:	e8 fc ff ff ff       	call   12a <usb_msc_setup+0x12a>
 12e:	89 c1                	mov    %eax,%ecx
 130:	ba 7d 00 00 00       	mov    $0x7d,%edx
 135:	89 f0                	mov    %esi,%eax
 137:	e8 fc ff ff ff       	call   138 <usb_msc_setup+0x138>
 13c:	85 c0                	test   %eax,%eax
 13e:	74 14                	je     154 <usb_msc_setup+0x154>
 140:	68 85 00 00 00       	push   $0x85
 145:	e8 fc ff ff ff       	call   146 <usb_msc_setup+0x146>
 14a:	89 f0                	mov    %esi,%eax
 14c:	e8 fc ff ff ff       	call   14d <usb_msc_setup+0x14d>
 151:	5a                   	pop    %edx
 152:	eb 08                	jmp    15c <usb_msc_setup+0x15c>
 154:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 15b:	00 
 15c:	45                   	inc    %ebp
 15d:	3b 6c 24 08          	cmp    0x8(%esp),%ebp
 161:	0f 8e 6b ff ff ff    	jle    d2 <usb_msc_setup+0xd2>
 167:	31 c0                	xor    %eax,%eax
 169:	83 7c 24 04 00       	cmpl   $0x0,0x4(%esp)
 16e:	75 2d                	jne    19d <usb_msc_setup+0x19d>
 170:	eb 09                	jmp    17b <usb_msc_setup+0x17b>
 172:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 179:	31 ff                	xor    %edi,%edi
 17b:	68 a9 00 00 00       	push   $0xa9
 180:	e8 fc ff ff ff       	call   181 <usb_msc_setup+0x181>
 185:	89 fa                	mov    %edi,%edx
 187:	89 d8                	mov    %ebx,%eax
 189:	e8 fc ff ff ff       	call   18a <usb_msc_setup+0x18a>
 18e:	8b 54 24 04          	mov    0x4(%esp),%edx
 192:	89 d8                	mov    %ebx,%eax
 194:	e8 fc ff ff ff       	call   195 <usb_msc_setup+0x195>
 199:	58                   	pop    %eax
 19a:	83 c8 ff             	or     $0xffffffff,%eax
 19d:	83 c4 18             	add    $0x18,%esp
 1a0:	5b                   	pop    %ebx
 1a1:	5e                   	pop    %esi
 1a2:	5f                   	pop    %edi
 1a3:	5d                   	pop    %ebp
 1a4:	c3                   	ret    
