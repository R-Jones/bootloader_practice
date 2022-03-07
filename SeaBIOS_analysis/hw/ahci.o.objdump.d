
./ahci.o:     file format elf32-i386


Disassembly of section .text.memalign_tmp:

00000000 <memalign_tmp>:
   0:	83 ec 08             	sub    $0x8,%esp
   3:	89 c1                	mov    %eax,%ecx
   5:	89 44 24 04          	mov    %eax,0x4(%esp)
   9:	89 14 24             	mov    %edx,(%esp)
   c:	b8 00 00 00 00       	mov    $0x0,%eax
  11:	e8 fc ff ff ff       	call   12 <memalign_tmp+0x12>
  16:	85 c0                	test   %eax,%eax
  18:	8b 14 24             	mov    (%esp),%edx
  1b:	8b 4c 24 04          	mov    0x4(%esp),%ecx
  1f:	75 0d                	jne    2e <memalign_tmp+0x2e>
  21:	b8 00 00 00 00       	mov    $0x0,%eax
  26:	83 c4 08             	add    $0x8,%esp
  29:	e9 fc ff ff ff       	jmp    2a <memalign_tmp+0x2a>
  2e:	83 c4 08             	add    $0x8,%esp
  31:	c3                   	ret    

Disassembly of section .text.ahci_port_writel.isra.0:

00000000 <ahci_port_writel.isra.0>:
   0:	c1 e2 07             	shl    $0x7,%edx
   3:	8d 94 0a 00 01 00 00 	lea    0x100(%edx,%ecx,1),%edx
   a:	01 d0                	add    %edx,%eax
   c:	8b 54 24 04          	mov    0x4(%esp),%edx
  10:	89 10                	mov    %edx,(%eax)
  12:	c3                   	ret    

Disassembly of section .text.ahci_port_readl.isra.0:

00000000 <ahci_port_readl.isra.0>:
   0:	c1 e2 07             	shl    $0x7,%edx
   3:	8d 94 0a 00 01 00 00 	lea    0x100(%edx,%ecx,1),%edx
   a:	01 d0                	add    %edx,%eax
   c:	8b 00                	mov    (%eax),%eax
   e:	c3                   	ret    

Disassembly of section .text.ahci_command:

00000000 <ahci_command>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 0c             	sub    $0xc,%esp
   7:	89 14 24             	mov    %edx,(%esp)
   a:	8b 70 24             	mov    0x24(%eax),%esi
   d:	8b 50 30             	mov    0x30(%eax),%edx
  10:	8b 68 2c             	mov    0x2c(%eax),%ebp
  13:	8b 78 28             	mov    0x28(%eax),%edi
  16:	8b 58 34             	mov    0x34(%eax),%ebx
  19:	66 c7 02 27 80       	movw   $0x8027,(%edx)
  1e:	8b 44 24 20          	mov    0x20(%esp),%eax
  22:	89 82 80 00 00 00    	mov    %eax,0x80(%edx)
  28:	c7 82 84 00 00 00 00 	movl   $0x0,0x84(%edx)
  2f:	00 00 00 
  32:	8b 44 24 24          	mov    0x24(%esp),%eax
  36:	48                   	dec    %eax
  37:	89 82 8c 00 00 00    	mov    %eax,0x8c(%edx)
  3d:	83 3c 24 01          	cmpl   $0x1,(%esp)
  41:	19 c0                	sbb    %eax,%eax
  43:	83 e0 c0             	and    $0xffffffc0,%eax
  46:	05 40 00 01 00       	add    $0x10040,%eax
  4b:	c1 e1 05             	shl    $0x5,%ecx
  4e:	09 c1                	or     %eax,%ecx
  50:	83 c9 05             	or     $0x5,%ecx
  53:	89 0f                	mov    %ecx,(%edi)
  55:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%edi)
  5c:	89 57 08             	mov    %edx,0x8(%edi)
  5f:	c7 47 0c 00 00 00 00 	movl   $0x0,0xc(%edi)
  66:	53                   	push   %ebx
  67:	68 00 00 00 00       	push   $0x0
  6c:	e8 fc ff ff ff       	call   6d <ahci_command+0x6d>
  71:	8b 46 08             	mov    0x8(%esi),%eax
  74:	b9 10 00 00 00       	mov    $0x10,%ecx
  79:	89 da                	mov    %ebx,%edx
  7b:	e8 fc ff ff ff       	call   7c <ahci_command+0x7c>
  80:	5a                   	pop    %edx
  81:	5f                   	pop    %edi
  82:	85 c0                	test   %eax,%eax
  84:	74 0e                	je     94 <ahci_command+0x94>
  86:	8b 7e 08             	mov    0x8(%esi),%edi
  89:	50                   	push   %eax
  8a:	89 da                	mov    %ebx,%edx
  8c:	89 f8                	mov    %edi,%eax
  8e:	e8 fc ff ff ff       	call   8f <ahci_command+0x8f>
  93:	58                   	pop    %eax
  94:	8b 46 08             	mov    0x8(%esi),%eax
  97:	6a 01                	push   $0x1
  99:	b9 38 00 00 00       	mov    $0x38,%ecx
  9e:	89 da                	mov    %ebx,%edx
  a0:	e8 fc ff ff ff       	call   a1 <ahci_command+0xa1>
  a5:	b8 00 7d 00 00       	mov    $0x7d00,%eax
  aa:	e8 fc ff ff ff       	call   ab <ahci_command+0xab>
  af:	89 44 24 04          	mov    %eax,0x4(%esp)
  b3:	58                   	pop    %eax
  b4:	8b 46 08             	mov    0x8(%esi),%eax
  b7:	b9 10 00 00 00       	mov    $0x10,%ecx
  bc:	89 da                	mov    %ebx,%edx
  be:	e8 fc ff ff ff       	call   bf <ahci_command+0xbf>
  c3:	89 c7                	mov    %eax,%edi
  c5:	85 c0                	test   %eax,%eax
  c7:	74 30                	je     f9 <ahci_command+0xf9>
  c9:	8b 46 08             	mov    0x8(%esi),%eax
  cc:	57                   	push   %edi
  cd:	89 da                	mov    %ebx,%edx
  cf:	e8 fc ff ff ff       	call   d0 <ahci_command+0xd0>
  d4:	58                   	pop    %eax
  d5:	f7 c7 02 00 00 00    	test   $0x2,%edi
  db:	74 0a                	je     e7 <ahci_command+0xe7>
  dd:	0f b6 45 22          	movzbl 0x22(%ebp),%eax
  e1:	0f b6 55 23          	movzbl 0x23(%ebp),%edx
  e5:	eb 39                	jmp    120 <ahci_command+0x120>
  e7:	f7 c7 01 00 00 00    	test   $0x1,%edi
  ed:	74 0a                	je     f9 <ahci_command+0xf9>
  ef:	0f b6 45 42          	movzbl 0x42(%ebp),%eax
  f3:	0f b6 55 43          	movzbl 0x43(%ebp),%edx
  f7:	eb 27                	jmp    120 <ahci_command+0x120>
  f9:	8b 04 24             	mov    (%esp),%eax
  fc:	e8 fc ff ff ff       	call   fd <ahci_command+0xfd>
 101:	85 c0                	test   %eax,%eax
 103:	74 14                	je     119 <ahci_command+0x119>
 105:	ba 00 00 00 00       	mov    $0x0,%edx
 10a:	b8 99 00 00 00       	mov    $0x99,%eax
 10f:	e8 fc ff ff ff       	call   110 <ahci_command+0x110>
 114:	e9 53 01 00 00       	jmp    26c <ahci_command+0x26c>
 119:	e8 fc ff ff ff       	call   11a <ahci_command+0x11a>
 11e:	eb 94                	jmp    b4 <ahci_command+0xb4>
 120:	89 54 24 08          	mov    %edx,0x8(%esp)
 124:	50                   	push   %eax
 125:	89 44 24 08          	mov    %eax,0x8(%esp)
 129:	57                   	push   %edi
 12a:	53                   	push   %ebx
 12b:	68 17 00 00 00       	push   $0x17
 130:	e8 fc ff ff ff       	call   131 <ahci_command+0x131>
 135:	83 c4 10             	add    $0x10,%esp
 138:	8b 44 24 04          	mov    0x4(%esp),%eax
 13c:	a8 80                	test   $0x80,%al
 13e:	8b 54 24 08          	mov    0x8(%esp),%edx
 142:	0f 85 6c ff ff ff    	jne    b4 <ahci_command+0xb4>
 148:	89 c1                	mov    %eax,%ecx
 14a:	81 e1 e1 00 00 00    	and    $0xe1,%ecx
 150:	83 f9 40             	cmp    $0x40,%ecx
 153:	75 16                	jne    16b <ahci_command+0x16b>
 155:	50                   	push   %eax
 156:	53                   	push   %ebx
 157:	68 43 00 00 00       	push   $0x43
 15c:	e8 fc ff ff ff       	call   15d <ahci_command+0x15d>
 161:	83 c4 0c             	add    $0xc,%esp
 164:	31 c0                	xor    %eax,%eax
 166:	e9 04 01 00 00       	jmp    26f <ahci_command+0x26f>
 16b:	52                   	push   %edx
 16c:	50                   	push   %eax
 16d:	53                   	push   %ebx
 16e:	68 6b 00 00 00       	push   $0x6b
 173:	e8 fc ff ff ff       	call   174 <ahci_command+0x174>
 178:	8b 46 08             	mov    0x8(%esi),%eax
 17b:	b9 18 00 00 00       	mov    $0x18,%ecx
 180:	89 da                	mov    %ebx,%edx
 182:	e8 fc ff ff ff       	call   183 <ahci_command+0x183>
 187:	8b 7e 08             	mov    0x8(%esi),%edi
 18a:	83 e0 fe             	and    $0xfffffffe,%eax
 18d:	50                   	push   %eax
 18e:	89 da                	mov    %ebx,%edx
 190:	89 f8                	mov    %edi,%eax
 192:	e8 fc ff ff ff       	call   193 <ahci_command+0x193>
 197:	83 c4 14             	add    $0x14,%esp
 19a:	8b 46 08             	mov    0x8(%esi),%eax
 19d:	b9 18 00 00 00       	mov    $0x18,%ecx
 1a2:	89 da                	mov    %ebx,%edx
 1a4:	e8 fc ff ff ff       	call   1a5 <ahci_command+0x1a5>
 1a9:	0f ba e0 0f          	bt     $0xf,%eax
 1ad:	73 07                	jae    1b6 <ahci_command+0x1b6>
 1af:	e8 fc ff ff ff       	call   1b0 <ahci_command+0x1b0>
 1b4:	eb e4                	jmp    19a <ahci_command+0x19a>
 1b6:	8b 46 08             	mov    0x8(%esi),%eax
 1b9:	b9 30 00 00 00       	mov    $0x30,%ecx
 1be:	89 da                	mov    %ebx,%edx
 1c0:	e8 fc ff ff ff       	call   1c1 <ahci_command+0x1c1>
 1c5:	89 c2                	mov    %eax,%edx
 1c7:	8b 46 08             	mov    0x8(%esi),%eax
 1ca:	52                   	push   %edx
 1cb:	89 da                	mov    %ebx,%edx
 1cd:	e8 fc ff ff ff       	call   1ce <ahci_command+0x1ce>
 1d2:	8b 46 08             	mov    0x8(%esi),%eax
 1d5:	b9 10 00 00 00       	mov    $0x10,%ecx
 1da:	89 da                	mov    %ebx,%edx
 1dc:	e8 fc ff ff ff       	call   1dd <ahci_command+0x1dd>
 1e1:	89 c2                	mov    %eax,%edx
 1e3:	8b 46 08             	mov    0x8(%esi),%eax
 1e6:	52                   	push   %edx
 1e7:	89 da                	mov    %ebx,%edx
 1e9:	e8 fc ff ff ff       	call   1ea <ahci_command+0x1ea>
 1ee:	8b 46 08             	mov    0x8(%esi),%eax
 1f1:	b9 20 00 00 00       	mov    $0x20,%ecx
 1f6:	89 da                	mov    %ebx,%edx
 1f8:	e8 fc ff ff ff       	call   1f9 <ahci_command+0x1f9>
 1fd:	5a                   	pop    %edx
 1fe:	59                   	pop    %ecx
 1ff:	a8 88                	test   $0x88,%al
 201:	74 49                	je     24c <ahci_command+0x24c>
 203:	53                   	push   %ebx
 204:	68 9b 00 00 00       	push   $0x9b
 209:	e8 fc ff ff ff       	call   20a <ahci_command+0x20a>
 20e:	8b 46 08             	mov    0x8(%esi),%eax
 211:	b9 2c 00 00 00       	mov    $0x2c,%ecx
 216:	89 da                	mov    %ebx,%edx
 218:	e8 fc ff ff ff       	call   219 <ahci_command+0x219>
 21d:	89 c7                	mov    %eax,%edi
 21f:	8b 46 08             	mov    0x8(%esi),%eax
 222:	89 fa                	mov    %edi,%edx
 224:	83 ca 01             	or     $0x1,%edx
 227:	52                   	push   %edx
 228:	89 da                	mov    %ebx,%edx
 22a:	e8 fc ff ff ff       	call   22b <ahci_command+0x22b>
 22f:	b8 01 00 00 00       	mov    $0x1,%eax
 234:	e8 fc ff ff ff       	call   235 <ahci_command+0x235>
 239:	8b 46 08             	mov    0x8(%esi),%eax
 23c:	57                   	push   %edi
 23d:	b9 2c 00 00 00       	mov    $0x2c,%ecx
 242:	89 da                	mov    %ebx,%edx
 244:	e8 fc ff ff ff       	call   245 <ahci_command+0x245>
 249:	83 c4 10             	add    $0x10,%esp
 24c:	8b 46 08             	mov    0x8(%esi),%eax
 24f:	b9 18 00 00 00       	mov    $0x18,%ecx
 254:	89 da                	mov    %ebx,%edx
 256:	e8 fc ff ff ff       	call   257 <ahci_command+0x257>
 25b:	8b 76 08             	mov    0x8(%esi),%esi
 25e:	83 c8 01             	or     $0x1,%eax
 261:	50                   	push   %eax
 262:	89 da                	mov    %ebx,%edx
 264:	89 f0                	mov    %esi,%eax
 266:	e8 fc ff ff ff       	call   267 <ahci_command+0x267>
 26b:	58                   	pop    %eax
 26c:	83 c8 ff             	or     $0xffffffff,%eax
 26f:	83 c4 0c             	add    $0xc,%esp
 272:	5b                   	pop    %ebx
 273:	5e                   	pop    %esi
 274:	5f                   	pop    %edi
 275:	5d                   	pop    %ebp
 276:	c3                   	ret    

Disassembly of section .text.ahci_disk_readwrite_aligned:

00000000 <ahci_disk_readwrite_aligned>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 10             	sub    $0x10,%esp
   7:	89 04 24             	mov    %eax,(%esp)
   a:	89 54 24 04          	mov    %edx,0x4(%esp)
   e:	8b 68 04             	mov    0x4(%eax),%ebp
  11:	8b 5d 30             	mov    0x30(%ebp),%ebx
  14:	8b 70 0c             	mov    0xc(%eax),%esi
  17:	8b 78 10             	mov    0x10(%eax),%edi
  1a:	b9 40 00 00 00       	mov    $0x40,%ecx
  1f:	31 d2                	xor    %edx,%edx
  21:	89 d8                	mov    %ebx,%eax
  23:	e8 fc ff ff ff       	call   24 <ahci_disk_readwrite_aligned+0x24>
  28:	8b 04 24             	mov    (%esp),%eax
  2b:	0f b7 48 0a          	movzwl 0xa(%eax),%ecx
  2f:	66 81 f9 ff 00       	cmp    $0xff,%cx
  34:	77 25                	ja     5b <ahci_disk_readwrite_aligned+0x5b>
  36:	0f b7 c1             	movzwl %cx,%eax
  39:	31 d2                	xor    %edx,%edx
  3b:	01 f0                	add    %esi,%eax
  3d:	11 fa                	adc    %edi,%edx
  3f:	89 44 24 08          	mov    %eax,0x8(%esp)
  43:	89 54 24 0c          	mov    %edx,0xc(%esp)
  47:	b8 ff ff ff 0f       	mov    $0xfffffff,%eax
  4c:	3b 44 24 08          	cmp    0x8(%esp),%eax
  50:	b8 00 00 00 00       	mov    $0x0,%eax
  55:	1b 44 24 0c          	sbb    0xc(%esp),%eax
  59:	73 33                	jae    8e <ahci_disk_readwrite_aligned+0x8e>
  5b:	88 6b 0d             	mov    %ch,0xd(%ebx)
  5e:	89 f0                	mov    %esi,%eax
  60:	89 fa                	mov    %edi,%edx
  62:	0f ac d0 18          	shrd   $0x18,%edx,%eax
  66:	c1 ea 18             	shr    $0x18,%edx
  69:	88 43 08             	mov    %al,0x8(%ebx)
  6c:	89 f8                	mov    %edi,%eax
  6e:	88 43 09             	mov    %al,0x9(%ebx)
  71:	88 63 0a             	mov    %ah,0xa(%ebx)
  74:	89 f0                	mov    %esi,%eax
  76:	25 ff ff ff 00       	and    $0xffffff,%eax
  7b:	89 c6                	mov    %eax,%esi
  7d:	31 ff                	xor    %edi,%edi
  7f:	83 7c 24 04 01       	cmpl   $0x1,0x4(%esp)
  84:	19 c0                	sbb    %eax,%eax
  86:	83 e0 f0             	and    $0xfffffff0,%eax
  89:	83 c0 35             	add    $0x35,%eax
  8c:	eb 0d                	jmp    9b <ahci_disk_readwrite_aligned+0x9b>
  8e:	83 7c 24 04 01       	cmpl   $0x1,0x4(%esp)
  93:	19 c0                	sbb    %eax,%eax
  95:	83 e0 fe             	and    $0xfffffffe,%eax
  98:	83 e8 36             	sub    $0x36,%eax
  9b:	c6 43 03 01          	movb   $0x1,0x3(%ebx)
  9f:	88 43 02             	mov    %al,0x2(%ebx)
  a2:	88 4b 0c             	mov    %cl,0xc(%ebx)
  a5:	66 89 73 04          	mov    %si,0x4(%ebx)
  a9:	89 f0                	mov    %esi,%eax
  ab:	89 fa                	mov    %edi,%edx
  ad:	0f ac d0 10          	shrd   $0x10,%edx,%eax
  b1:	c1 ea 10             	shr    $0x10,%edx
  b4:	88 43 06             	mov    %al,0x6(%ebx)
  b7:	89 f0                	mov    %esi,%eax
  b9:	89 fa                	mov    %edi,%edx
  bb:	0f ac d0 18          	shrd   $0x18,%edx,%eax
  bf:	c1 ea 18             	shr    $0x18,%edx
  c2:	83 e0 0f             	and    $0xf,%eax
  c5:	83 c8 40             	or     $0x40,%eax
  c8:	88 43 07             	mov    %al,0x7(%ebx)
  cb:	c1 e1 09             	shl    $0x9,%ecx
  ce:	51                   	push   %ecx
  cf:	8b 44 24 04          	mov    0x4(%esp),%eax
  d3:	ff 30                	push   (%eax)
  d5:	31 c9                	xor    %ecx,%ecx
  d7:	8b 54 24 0c          	mov    0xc(%esp),%edx
  db:	89 e8                	mov    %ebp,%eax
  dd:	e8 fc ff ff ff       	call   de <ahci_disk_readwrite_aligned+0xde>
  e2:	89 c3                	mov    %eax,%ebx
  e4:	8b 44 24 08          	mov    0x8(%esp),%eax
  e8:	8b 28                	mov    (%eax),%ebp
  ea:	0f b7 48 0a          	movzwl 0xa(%eax),%ecx
  ee:	8b 50 0c             	mov    0xc(%eax),%edx
  f1:	58                   	pop    %eax
  f2:	5e                   	pop    %esi
  f3:	b8 b4 00 00 00       	mov    $0xb4,%eax
  f8:	83 7c 24 04 00       	cmpl   $0x0,0x4(%esp)
  fd:	75 05                	jne    104 <ahci_disk_readwrite_aligned+0x104>
  ff:	b8 ba 00 00 00       	mov    $0xba,%eax
 104:	53                   	push   %ebx
 105:	55                   	push   %ebp
 106:	51                   	push   %ecx
 107:	52                   	push   %edx
 108:	50                   	push   %eax
 109:	68 bf 00 00 00       	push   $0xbf
 10e:	e8 fc ff ff ff       	call   10f <ahci_disk_readwrite_aligned+0x10f>
 113:	89 d8                	mov    %ebx,%eax
 115:	c1 f8 1f             	sar    $0x1f,%eax
 118:	83 e0 0c             	and    $0xc,%eax
 11b:	83 c4 28             	add    $0x28,%esp
 11e:	5b                   	pop    %ebx
 11f:	5e                   	pop    %esi
 120:	5f                   	pop    %edi
 121:	5d                   	pop    %ebp
 122:	c3                   	ret    

Disassembly of section .text.ahci_disk_readwrite:

00000000 <ahci_disk_readwrite>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 14             	sub    $0x14,%esp
   7:	89 c5                	mov    %eax,%ebp
   9:	8b 18                	mov    (%eax),%ebx
   b:	f6 c3 01             	test   $0x1,%bl
   e:	75 0c                	jne    1c <ahci_disk_readwrite+0x1c>
  10:	83 c4 14             	add    $0x14,%esp
  13:	5b                   	pop    %ebx
  14:	5e                   	pop    %esi
  15:	5f                   	pop    %edi
  16:	5d                   	pop    %ebp
  17:	e9 fc ff ff ff       	jmp    18 <ahci_disk_readwrite+0x18>
  1c:	89 e7                	mov    %esp,%edi
  1e:	b9 05 00 00 00       	mov    $0x5,%ecx
  23:	89 c6                	mov    %eax,%esi
  25:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  27:	8b 35 00 00 00 00    	mov    0x0,%esi
  2d:	89 34 24             	mov    %esi,(%esp)
  30:	66 c7 44 24 0a 01 00 	movw   $0x1,0xa(%esp)
  37:	31 ff                	xor    %edi,%edi
  39:	85 d2                	test   %edx,%edx
  3b:	74 63                	je     a0 <ahci_disk_readwrite+0xa0>
  3d:	66 39 7d 0a          	cmp    %di,0xa(%ebp)
  41:	76 63                	jbe    a6 <ahci_disk_readwrite+0xa6>
  43:	b9 00 02 00 00       	mov    $0x200,%ecx
  48:	89 da                	mov    %ebx,%edx
  4a:	89 f0                	mov    %esi,%eax
  4c:	e8 fc ff ff ff       	call   4d <ahci_disk_readwrite+0x4d>
  51:	ba 01 00 00 00       	mov    $0x1,%edx
  56:	89 e0                	mov    %esp,%eax
  58:	e8 fc ff ff ff       	call   59 <ahci_disk_readwrite+0x59>
  5d:	85 c0                	test   %eax,%eax
  5f:	75 47                	jne    a8 <ahci_disk_readwrite+0xa8>
  61:	81 c3 00 02 00 00    	add    $0x200,%ebx
  67:	83 44 24 0c 01       	addl   $0x1,0xc(%esp)
  6c:	83 54 24 10 00       	adcl   $0x0,0x10(%esp)
  71:	47                   	inc    %edi
  72:	eb c9                	jmp    3d <ahci_disk_readwrite+0x3d>
  74:	31 d2                	xor    %edx,%edx
  76:	89 e0                	mov    %esp,%eax
  78:	e8 fc ff ff ff       	call   79 <ahci_disk_readwrite+0x79>
  7d:	85 c0                	test   %eax,%eax
  7f:	75 27                	jne    a8 <ahci_disk_readwrite+0xa8>
  81:	b9 00 02 00 00       	mov    $0x200,%ecx
  86:	89 f2                	mov    %esi,%edx
  88:	89 d8                	mov    %ebx,%eax
  8a:	e8 fc ff ff ff       	call   8b <ahci_disk_readwrite+0x8b>
  8f:	81 c3 00 02 00 00    	add    $0x200,%ebx
  95:	83 44 24 0c 01       	addl   $0x1,0xc(%esp)
  9a:	83 54 24 10 00       	adcl   $0x0,0x10(%esp)
  9f:	47                   	inc    %edi
  a0:	66 39 7d 0a          	cmp    %di,0xa(%ebp)
  a4:	77 ce                	ja     74 <ahci_disk_readwrite+0x74>
  a6:	31 c0                	xor    %eax,%eax
  a8:	83 c4 14             	add    $0x14,%esp
  ab:	5b                   	pop    %ebx
  ac:	5e                   	pop    %esi
  ad:	5f                   	pop    %edi
  ae:	5d                   	pop    %ebp
  af:	c3                   	ret    

Disassembly of section .text.ahci_port_reset:

00000000 <ahci_port_reset>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	89 c6                	mov    %eax,%esi
   5:	89 d3                	mov    %edx,%ebx
   7:	b8 f4 01 00 00       	mov    $0x1f4,%eax
   c:	e8 fc ff ff ff       	call   d <ahci_port_reset+0xd>
  11:	89 c7                	mov    %eax,%edi
  13:	8b 46 08             	mov    0x8(%esi),%eax
  16:	b9 18 00 00 00       	mov    $0x18,%ecx
  1b:	89 da                	mov    %ebx,%edx
  1d:	e8 fc ff ff ff       	call   1e <ahci_port_reset+0x1e>
  22:	89 c2                	mov    %eax,%edx
  24:	a9 11 c0 00 00       	test   $0xc011,%eax
  29:	74 32                	je     5d <ahci_port_reset+0x5d>
  2b:	8b 46 08             	mov    0x8(%esi),%eax
  2e:	83 e2 ee             	and    $0xffffffee,%edx
  31:	52                   	push   %edx
  32:	89 da                	mov    %ebx,%edx
  34:	e8 fc ff ff ff       	call   35 <ahci_port_reset+0x35>
  39:	89 f8                	mov    %edi,%eax
  3b:	e8 fc ff ff ff       	call   3c <ahci_port_reset+0x3c>
  40:	59                   	pop    %ecx
  41:	85 c0                	test   %eax,%eax
  43:	74 11                	je     56 <ahci_port_reset+0x56>
  45:	ba 00 00 00 00       	mov    $0x0,%edx
  4a:	b8 46 01 00 00       	mov    $0x146,%eax
  4f:	e8 fc ff ff ff       	call   50 <ahci_port_reset+0x50>
  54:	eb 07                	jmp    5d <ahci_port_reset+0x5d>
  56:	e8 fc ff ff ff       	call   57 <ahci_port_reset+0x57>
  5b:	eb b6                	jmp    13 <ahci_port_reset+0x13>
  5d:	8b 46 08             	mov    0x8(%esi),%eax
  60:	6a 00                	push   $0x0
  62:	b9 14 00 00 00       	mov    $0x14,%ecx
  67:	89 da                	mov    %ebx,%edx
  69:	e8 fc ff ff ff       	call   6a <ahci_port_reset+0x6a>
  6e:	8b 46 08             	mov    0x8(%esi),%eax
  71:	b9 10 00 00 00       	mov    $0x10,%ecx
  76:	89 da                	mov    %ebx,%edx
  78:	e8 fc ff ff ff       	call   79 <ahci_port_reset+0x79>
  7d:	5a                   	pop    %edx
  7e:	85 c0                	test   %eax,%eax
  80:	74 0e                	je     90 <ahci_port_reset+0x90>
  82:	8b 76 08             	mov    0x8(%esi),%esi
  85:	50                   	push   %eax
  86:	89 da                	mov    %ebx,%edx
  88:	89 f0                	mov    %esi,%eax
  8a:	e8 fc ff ff ff       	call   8b <ahci_port_reset+0x8b>
  8f:	58                   	pop    %eax
  90:	5b                   	pop    %ebx
  91:	5e                   	pop    %esi
  92:	5f                   	pop    %edi
  93:	c3                   	ret    

Disassembly of section .text.ahci_port_release:

00000000 <ahci_port_release>:
   0:	53                   	push   %ebx
   1:	89 c3                	mov    %eax,%ebx
   3:	8b 50 34             	mov    0x34(%eax),%edx
   6:	8b 40 24             	mov    0x24(%eax),%eax
   9:	e8 fc ff ff ff       	call   a <ahci_port_release+0xa>
   e:	8b 43 28             	mov    0x28(%ebx),%eax
  11:	e8 fc ff ff ff       	call   12 <ahci_port_release+0x12>
  16:	8b 43 2c             	mov    0x2c(%ebx),%eax
  19:	e8 fc ff ff ff       	call   1a <ahci_port_release+0x1a>
  1e:	8b 43 30             	mov    0x30(%ebx),%eax
  21:	e8 fc ff ff ff       	call   22 <ahci_port_release+0x22>
  26:	89 d8                	mov    %ebx,%eax
  28:	5b                   	pop    %ebx
  29:	e9 fc ff ff ff       	jmp    2a <ahci_port_release+0x2a>

Disassembly of section .text.ahci_port_setup:

00000000 <ahci_port_setup>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	81 ec 48 02 00 00    	sub    $0x248,%esp
   a:	89 c3                	mov    %eax,%ebx
   c:	8b 68 24             	mov    0x24(%eax),%ebp
   f:	8b 40 34             	mov    0x34(%eax),%eax
  12:	89 04 24             	mov    %eax,(%esp)
  15:	8b 45 08             	mov    0x8(%ebp),%eax
  18:	b9 18 00 00 00       	mov    $0x18,%ecx
  1d:	8b 14 24             	mov    (%esp),%edx
  20:	e8 fc ff ff ff       	call   21 <ahci_port_setup+0x21>
  25:	89 c6                	mov    %eax,%esi
  27:	8b 45 08             	mov    0x8(%ebp),%eax
  2a:	89 f2                	mov    %esi,%edx
  2c:	83 ca 10             	or     $0x10,%edx
  2f:	52                   	push   %edx
  30:	8b 54 24 04          	mov    0x4(%esp),%edx
  34:	e8 fc ff ff ff       	call   35 <ahci_port_setup+0x35>
  39:	8b 45 08             	mov    0x8(%ebp),%eax
  3c:	89 f2                	mov    %esi,%edx
  3e:	83 ca 12             	or     $0x12,%edx
  41:	52                   	push   %edx
  42:	8b 54 24 08          	mov    0x8(%esp),%edx
  46:	e8 fc ff ff ff       	call   47 <ahci_port_setup+0x47>
  4b:	b8 0a 00 00 00       	mov    $0xa,%eax
  50:	e8 fc ff ff ff       	call   51 <ahci_port_setup+0x51>
  55:	89 c7                	mov    %eax,%edi
  57:	58                   	pop    %eax
  58:	5a                   	pop    %edx
  59:	8b 45 08             	mov    0x8(%ebp),%eax
  5c:	b9 28 00 00 00       	mov    $0x28,%ecx
  61:	8b 14 24             	mov    (%esp),%edx
  64:	e8 fc ff ff ff       	call   65 <ahci_port_setup+0x65>
  69:	83 e0 07             	and    $0x7,%eax
  6c:	83 f8 03             	cmp    $0x3,%eax
  6f:	75 3b                	jne    ac <ahci_port_setup+0xac>
  71:	ff 73 34             	push   0x34(%ebx)
  74:	68 f0 00 00 00       	push   $0xf0
  79:	e8 fc ff ff ff       	call   7a <ahci_port_setup+0x7a>
  7e:	8b 45 08             	mov    0x8(%ebp),%eax
  81:	b9 30 00 00 00       	mov    $0x30,%ecx
  86:	8b 54 24 08          	mov    0x8(%esp),%edx
  8a:	e8 fc ff ff ff       	call   8b <ahci_port_setup+0x8b>
  8f:	89 c2                	mov    %eax,%edx
  91:	58                   	pop    %eax
  92:	59                   	pop    %ecx
  93:	85 d2                	test   %edx,%edx
  95:	74 34                	je     cb <ahci_port_setup+0xcb>
  97:	8b 45 08             	mov    0x8(%ebp),%eax
  9a:	52                   	push   %edx
  9b:	b9 30 00 00 00       	mov    $0x30,%ecx
  a0:	8b 54 24 04          	mov    0x4(%esp),%edx
  a4:	e8 fc ff ff ff       	call   a5 <ahci_port_setup+0xa5>
  a9:	5f                   	pop    %edi
  aa:	eb 1f                	jmp    cb <ahci_port_setup+0xcb>
  ac:	89 f8                	mov    %edi,%eax
  ae:	e8 fc ff ff ff       	call   af <ahci_port_setup+0xaf>
  b3:	85 c0                	test   %eax,%eax
  b5:	74 0d                	je     c4 <ahci_port_setup+0xc4>
  b7:	ff 73 34             	push   0x34(%ebx)
  ba:	68 02 01 00 00       	push   $0x102
  bf:	e9 9c 03 00 00       	jmp    460 <ahci_port_setup+0x460>
  c4:	e8 fc ff ff ff       	call   c5 <ahci_port_setup+0xc5>
  c9:	eb 8e                	jmp    59 <ahci_port_setup+0x59>
  cb:	b8 00 7d 00 00       	mov    $0x7d00,%eax
  d0:	e8 fc ff ff ff       	call   d1 <ahci_port_setup+0xd1>
  d5:	89 44 24 04          	mov    %eax,0x4(%esp)
  d9:	8b 45 08             	mov    0x8(%ebp),%eax
  dc:	b9 20 00 00 00       	mov    $0x20,%ecx
  e1:	8b 14 24             	mov    (%esp),%edx
  e4:	e8 fc ff ff ff       	call   e5 <ahci_port_setup+0xe5>
  e9:	89 c7                	mov    %eax,%edi
  eb:	a8 88                	test   $0x88,%al
  ed:	74 3c                	je     12b <ahci_port_setup+0x12b>
  ef:	8b 44 24 04          	mov    0x4(%esp),%eax
  f3:	e8 fc ff ff ff       	call   f4 <ahci_port_setup+0xf4>
  f8:	85 c0                	test   %eax,%eax
  fa:	74 28                	je     124 <ahci_port_setup+0x124>
  fc:	ba 00 00 00 00       	mov    $0x0,%edx
 101:	b8 d6 01 00 00       	mov    $0x1d6,%eax
 106:	e8 fc ff ff ff       	call   107 <ahci_port_setup+0x107>
 10b:	57                   	push   %edi
 10c:	ff 73 34             	push   0x34(%ebx)
 10f:	68 16 01 00 00       	push   $0x116
 114:	e8 fc ff ff ff       	call   115 <ahci_port_setup+0x115>
 119:	83 c4 0c             	add    $0xc,%esp
 11c:	83 c8 ff             	or     $0xffffffff,%eax
 11f:	e9 a2 03 00 00       	jmp    4c6 <ahci_port_setup+0x4c6>
 124:	e8 fc ff ff ff       	call   125 <ahci_port_setup+0x125>
 129:	eb ae                	jmp    d9 <ahci_port_setup+0xd9>
 12b:	8b 45 08             	mov    0x8(%ebp),%eax
 12e:	83 ce 13             	or     $0x13,%esi
 131:	56                   	push   %esi
 132:	b9 18 00 00 00       	mov    $0x18,%ecx
 137:	8b 54 24 04          	mov    0x4(%esp),%edx
 13b:	e8 fc ff ff ff       	call   13c <ahci_port_setup+0x13c>
 140:	8b 73 30             	mov    0x30(%ebx),%esi
 143:	b9 40 00 00 00       	mov    $0x40,%ecx
 148:	31 d2                	xor    %edx,%edx
 14a:	89 f0                	mov    %esi,%eax
 14c:	e8 fc ff ff ff       	call   14d <ahci_port_setup+0x14d>
 151:	c6 46 02 a1          	movb   $0xa1,0x2(%esi)
 155:	68 00 02 00 00       	push   $0x200
 15a:	8d 74 24 50          	lea    0x50(%esp),%esi
 15e:	56                   	push   %esi
 15f:	31 c9                	xor    %ecx,%ecx
 161:	31 d2                	xor    %edx,%edx
 163:	89 d8                	mov    %ebx,%eax
 165:	e8 fc ff ff ff       	call   166 <ahci_port_setup+0x166>
 16a:	83 c4 0c             	add    $0xc,%esp
 16d:	85 c0                	test   %eax,%eax
 16f:	75 09                	jne    17a <ahci_port_setup+0x17a>
 171:	c7 43 38 01 00 00 00 	movl   $0x1,0x38(%ebx)
 178:	eb 3c                	jmp    1b6 <ahci_port_setup+0x1b6>
 17a:	c7 43 38 00 00 00 00 	movl   $0x0,0x38(%ebx)
 181:	8b 7b 30             	mov    0x30(%ebx),%edi
 184:	b9 40 00 00 00       	mov    $0x40,%ecx
 189:	31 d2                	xor    %edx,%edx
 18b:	89 f8                	mov    %edi,%eax
 18d:	e8 fc ff ff ff       	call   18e <ahci_port_setup+0x18e>
 192:	c6 47 02 ec          	movb   $0xec,0x2(%edi)
 196:	68 00 02 00 00       	push   $0x200
 19b:	56                   	push   %esi
 19c:	31 c9                	xor    %ecx,%ecx
 19e:	31 d2                	xor    %edx,%edx
 1a0:	89 d8                	mov    %ebx,%eax
 1a2:	e8 fc ff ff ff       	call   1a3 <ahci_port_setup+0x1a3>
 1a7:	89 c2                	mov    %eax,%edx
 1a9:	58                   	pop    %eax
 1aa:	59                   	pop    %ecx
 1ab:	83 c8 ff             	or     $0xffffffff,%eax
 1ae:	85 d2                	test   %edx,%edx
 1b0:	0f 88 10 03 00 00    	js     4c6 <ahci_port_setup+0x4c6>
 1b6:	8b 04 24             	mov    (%esp),%eax
 1b9:	89 43 14             	mov    %eax,0x14(%ebx)
 1bc:	8b 44 24 48          	mov    0x48(%esp),%eax
 1c0:	88 c2                	mov    %al,%dl
 1c2:	c0 ea 07             	shr    $0x7,%dl
 1c5:	88 53 18             	mov    %dl,0x18(%ebx)
 1c8:	83 7b 38 00          	cmpl   $0x0,0x38(%ebx)
 1cc:	0f 85 62 02 00 00    	jne    434 <ahci_port_setup+0x434>
 1d2:	c6 03 50             	movb   $0x50,(%ebx)
 1d5:	66 c7 43 1a 00 02    	movw   $0x200,0x1a(%ebx)
 1db:	66 8b 44 24 4a       	mov    0x4a(%esp),%ax
 1e0:	66 89 43 1e          	mov    %ax,0x1e(%ebx)
 1e4:	66 8b 44 24 4e       	mov    0x4e(%esp),%ax
 1e9:	66 89 43 1c          	mov    %ax,0x1c(%ebx)
 1ed:	8b 44 24 54          	mov    0x54(%esp),%eax
 1f1:	66 89 43 20          	mov    %ax,0x20(%ebx)
 1f5:	f6 84 24 ef 00 00 00 	testb  $0x4,0xef(%esp)
 1fc:	04 
 1fd:	74 10                	je     20f <ahci_port_setup+0x20f>
 1ff:	8b 84 24 10 01 00 00 	mov    0x110(%esp),%eax
 206:	8b 94 24 14 01 00 00 	mov    0x114(%esp),%edx
 20d:	eb 09                	jmp    218 <ahci_port_setup+0x218>
 20f:	8b 84 24 c0 00 00 00 	mov    0xc0(%esp),%eax
 216:	31 d2                	xor    %edx,%edx
 218:	89 43 0c             	mov    %eax,0xc(%ebx)
 21b:	89 53 10             	mov    %edx,0x10(%ebx)
 21e:	89 c6                	mov    %eax,%esi
 220:	89 d7                	mov    %edx,%edi
 222:	0f ac fe 0b          	shrd   $0xb,%edi,%esi
 226:	c1 ef 0b             	shr    $0xb,%edi
 229:	89 74 24 04          	mov    %esi,0x4(%esp)
 22d:	89 7c 24 08          	mov    %edi,0x8(%esp)
 231:	b9 ff ff 00 00       	mov    $0xffff,%ecx
 236:	3b 4c 24 04          	cmp    0x4(%esp),%ecx
 23a:	b9 00 00 00 00       	mov    $0x0,%ecx
 23f:	1b 4c 24 08          	sbb    0x8(%esp),%ecx
 243:	be 4d 00 00 00       	mov    $0x4d,%esi
 248:	73 14                	jae    25e <ahci_port_setup+0x25e>
 24a:	0f ac d0 15          	shrd   $0x15,%edx,%eax
 24e:	c1 ea 15             	shr    $0x15,%edx
 251:	89 44 24 04          	mov    %eax,0x4(%esp)
 255:	89 54 24 08          	mov    %edx,0x8(%esp)
 259:	be 47 00 00 00       	mov    $0x47,%esi
 25e:	8d 44 24 48          	lea    0x48(%esp),%eax
 262:	e8 fc ff ff ff       	call   263 <ahci_port_setup+0x263>
 267:	89 c7                	mov    %eax,%edi
 269:	8d 4c 24 48          	lea    0x48(%esp),%ecx
 26d:	ba 28 00 00 00       	mov    $0x28,%edx
 272:	8d 44 24 1f          	lea    0x1f(%esp),%eax
 276:	e8 fc ff ff ff       	call   277 <ahci_port_setup+0x277>
 27b:	89 f1                	mov    %esi,%ecx
 27d:	0f be d1             	movsbl %cl,%edx
 280:	52                   	push   %edx
 281:	ff 74 24 08          	push   0x8(%esp)
 285:	57                   	push   %edi
 286:	50                   	push   %eax
 287:	ff 73 34             	push   0x34(%ebx)
 28a:	68 3b 01 00 00       	push   $0x13b
 28f:	6a 50                	push   $0x50
 291:	e8 fc ff ff ff       	call   292 <ahci_port_setup+0x292>
 296:	89 43 3c             	mov    %eax,0x3c(%ebx)
 299:	31 c9                	xor    %ecx,%ecx
 29b:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 29f:	8b 45 00             	mov    0x0(%ebp),%eax
 2a2:	e8 fc ff ff ff       	call   2a3 <ahci_port_setup+0x2a3>
 2a7:	89 43 40             	mov    %eax,0x40(%ebx)
 2aa:	66 8b 94 24 ce 00 00 	mov    0xce(%esp),%dx
 2b1:	00 
 2b2:	83 c4 1c             	add    $0x1c,%esp
 2b5:	c6 44 24 0f ff       	movb   $0xff,0xf(%esp)
 2ba:	f6 c2 04             	test   $0x4,%dl
 2bd:	74 26                	je     2e5 <ahci_port_setup+0x2e5>
 2bf:	8b 84 24 f8 00 00 00 	mov    0xf8(%esp),%eax
 2c6:	83 e0 7f             	and    $0x7f,%eax
 2c9:	b9 06 00 00 00       	mov    $0x6,%ecx
 2ce:	88 4c 24 0f          	mov    %cl,0xf(%esp)
 2d2:	89 c6                	mov    %eax,%esi
 2d4:	d3 fe                	sar    %cl,%esi
 2d6:	83 e6 01             	and    $0x1,%esi
 2d9:	75 0a                	jne    2e5 <ahci_port_setup+0x2e5>
 2db:	83 e9 01             	sub    $0x1,%ecx
 2de:	73 ee                	jae    2ce <ahci_port_setup+0x2ce>
 2e0:	c6 44 24 0f ff       	movb   $0xff,0xf(%esp)
 2e5:	80 e2 02             	and    $0x2,%dl
 2e8:	74 42                	je     32c <ahci_port_setup+0x32c>
 2ea:	66 8b 84 24 c6 00 00 	mov    0xc6(%esp),%ax
 2f1:	00 
 2f2:	89 c2                	mov    %eax,%edx
 2f4:	83 e2 07             	and    $0x7,%edx
 2f7:	be 02 00 00 00       	mov    $0x2,%esi
 2fc:	a8 04                	test   $0x4,%al
 2fe:	75 10                	jne    310 <ahci_port_setup+0x310>
 300:	be 01 00 00 00       	mov    $0x1,%esi
 305:	80 e2 02             	and    $0x2,%dl
 308:	75 06                	jne    310 <ahci_port_setup+0x310>
 30a:	83 e0 01             	and    $0x1,%eax
 30d:	8d 70 ff             	lea    -0x1(%eax),%esi
 310:	8b 84 24 c8 00 00 00 	mov    0xc8(%esp),%eax
 317:	c6 44 24 04 04       	movb   $0x4,0x4(%esp)
 31c:	a8 02                	test   $0x2,%al
 31e:	75 16                	jne    336 <ahci_port_setup+0x336>
 320:	83 e0 01             	and    $0x1,%eax
 323:	83 c0 02             	add    $0x2,%eax
 326:	88 44 24 04          	mov    %al,0x4(%esp)
 32a:	eb 0a                	jmp    336 <ahci_port_setup+0x336>
 32c:	c6 44 24 04 ff       	movb   $0xff,0x4(%esp)
 331:	be ff ff ff ff       	mov    $0xffffffff,%esi
 336:	0f be 7c 24 04       	movsbl 0x4(%esp),%edi
 33b:	89 f0                	mov    %esi,%eax
 33d:	0f be c0             	movsbl %al,%eax
 340:	89 44 24 10          	mov    %eax,0x10(%esp)
 344:	0f be 44 24 0f       	movsbl 0xf(%esp),%eax
 349:	89 44 24 14          	mov    %eax,0x14(%esp)
 34d:	57                   	push   %edi
 34e:	ff 74 24 14          	push   0x14(%esp)
 352:	ff 74 24 1c          	push   0x1c(%esp)
 356:	ff 73 34             	push   0x34(%ebx)
 359:	68 66 01 00 00       	push   $0x166
 35e:	e8 fc ff ff ff       	call   35f <ahci_port_setup+0x35f>
 363:	8b 43 30             	mov    0x30(%ebx),%eax
 366:	b9 40 00 00 00       	mov    $0x40,%ecx
 36b:	31 d2                	xor    %edx,%edx
 36d:	89 44 24 2c          	mov    %eax,0x2c(%esp)
 371:	e8 fc ff ff ff       	call   372 <ahci_port_setup+0x372>
 376:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 37a:	c6 40 02 ef          	movb   $0xef,0x2(%eax)
 37e:	8b 43 30             	mov    0x30(%ebx),%eax
 381:	c6 40 03 03          	movb   $0x3,0x3(%eax)
 385:	83 c4 14             	add    $0x14,%esp
 388:	80 7c 24 0f ff       	cmpb   $0xff,0xf(%esp)
 38d:	74 1d                	je     3ac <ahci_port_setup+0x3ac>
 38f:	ff 74 24 14          	push   0x14(%esp)
 393:	ff 73 34             	push   0x34(%ebx)
 396:	68 9f 01 00 00       	push   $0x19f
 39b:	e8 fc ff ff ff       	call   39c <ahci_port_setup+0x39c>
 3a0:	8b 53 30             	mov    0x30(%ebx),%edx
 3a3:	8a 44 24 1b          	mov    0x1b(%esp),%al
 3a7:	83 c8 40             	or     $0x40,%eax
 3aa:	eb 20                	jmp    3cc <ahci_port_setup+0x3cc>
 3ac:	8b 43 34             	mov    0x34(%ebx),%eax
 3af:	89 f1                	mov    %esi,%ecx
 3b1:	fe c1                	inc    %cl
 3b3:	74 1f                	je     3d4 <ahci_port_setup+0x3d4>
 3b5:	ff 74 24 10          	push   0x10(%esp)
 3b9:	50                   	push   %eax
 3ba:	68 c6 01 00 00       	push   $0x1c6
 3bf:	e8 fc ff ff ff       	call   3c0 <ahci_port_setup+0x3c0>
 3c4:	8b 53 30             	mov    0x30(%ebx),%edx
 3c7:	89 f0                	mov    %esi,%eax
 3c9:	83 c8 20             	or     $0x20,%eax
 3cc:	88 42 0c             	mov    %al,0xc(%edx)
 3cf:	83 c4 0c             	add    $0xc,%esp
 3d2:	eb 33                	jmp    407 <ahci_port_setup+0x407>
 3d4:	80 7c 24 04 02       	cmpb   $0x2,0x4(%esp)
 3d9:	7e 18                	jle    3f3 <ahci_port_setup+0x3f3>
 3db:	57                   	push   %edi
 3dc:	50                   	push   %eax
 3dd:	68 f2 01 00 00       	push   $0x1f2
 3e2:	e8 fc ff ff ff       	call   3e3 <ahci_port_setup+0x3e3>
 3e7:	8b 53 30             	mov    0x30(%ebx),%edx
 3ea:	8a 44 24 10          	mov    0x10(%esp),%al
 3ee:	83 c8 08             	or     $0x8,%eax
 3f1:	eb d9                	jmp    3cc <ahci_port_setup+0x3cc>
 3f3:	50                   	push   %eax
 3f4:	68 18 02 00 00       	push   $0x218
 3f9:	e8 fc ff ff ff       	call   3fa <ahci_port_setup+0x3fa>
 3fe:	8b 43 30             	mov    0x30(%ebx),%eax
 401:	c6 40 0c 00          	movb   $0x0,0xc(%eax)
 405:	5e                   	pop    %esi
 406:	5f                   	pop    %edi
 407:	6a 00                	push   $0x0
 409:	6a 00                	push   $0x0
 40b:	31 c9                	xor    %ecx,%ecx
 40d:	ba 01 00 00 00       	mov    $0x1,%edx
 412:	89 d8                	mov    %ebx,%eax
 414:	e8 fc ff ff ff       	call   415 <ahci_port_setup+0x415>
 419:	5a                   	pop    %edx
 41a:	59                   	pop    %ecx
 41b:	85 c0                	test   %eax,%eax
 41d:	0f 89 8e 00 00 00    	jns    4b1 <ahci_port_setup+0x4b1>
 423:	ff 73 34             	push   0x34(%ebx)
 426:	68 43 02 00 00       	push   $0x243
 42b:	e8 fc ff ff ff       	call   42c <ahci_port_setup+0x42c>
 430:	5e                   	pop    %esi
 431:	5f                   	pop    %edi
 432:	eb 7d                	jmp    4b1 <ahci_port_setup+0x4b1>
 434:	c6 03 51             	movb   $0x51,(%ebx)
 437:	66 c7 43 1a 00 08    	movw   $0x800,0x1a(%ebx)
 43d:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%ebx)
 444:	c7 43 10 ff ff ff ff 	movl   $0xffffffff,0x10(%ebx)
 44b:	66 c1 e8 08          	shr    $0x8,%ax
 44f:	83 e0 1f             	and    $0x1f,%eax
 452:	66 83 f8 05          	cmp    $0x5,%ax
 456:	74 14                	je     46c <ahci_port_setup+0x46c>
 458:	ff 73 34             	push   0x34(%ebx)
 45b:	68 67 02 00 00       	push   $0x267
 460:	e8 fc ff ff ff       	call   461 <ahci_port_setup+0x461>
 465:	5a                   	pop    %edx
 466:	59                   	pop    %ecx
 467:	e9 b0 fc ff ff       	jmp    11c <ahci_port_setup+0x11c>
 46c:	8d 44 24 48          	lea    0x48(%esp),%eax
 470:	e8 fc ff ff ff       	call   471 <ahci_port_setup+0x471>
 475:	89 c6                	mov    %eax,%esi
 477:	8d 4c 24 48          	lea    0x48(%esp),%ecx
 47b:	ba 28 00 00 00       	mov    $0x28,%edx
 480:	8d 44 24 1f          	lea    0x1f(%esp),%eax
 484:	e8 fc ff ff ff       	call   485 <ahci_port_setup+0x485>
 489:	56                   	push   %esi
 48a:	50                   	push   %eax
 48b:	ff 73 34             	push   0x34(%ebx)
 48e:	68 8c 02 00 00       	push   $0x28c
 493:	6a 50                	push   $0x50
 495:	e8 fc ff ff ff       	call   496 <ahci_port_setup+0x496>
 49a:	89 43 3c             	mov    %eax,0x3c(%ebx)
 49d:	31 c9                	xor    %ecx,%ecx
 49f:	8b 54 24 14          	mov    0x14(%esp),%edx
 4a3:	8b 45 00             	mov    0x0(%ebp),%eax
 4a6:	e8 fc ff ff ff       	call   4a7 <ahci_port_setup+0x4a7>
 4ab:	89 43 40             	mov    %eax,0x40(%ebx)
 4ae:	83 c4 14             	add    $0x14,%esp
 4b1:	83 c3 02             	add    $0x2,%ebx
 4b4:	53                   	push   %ebx
 4b5:	31 c9                	xor    %ecx,%ecx
 4b7:	8b 54 24 04          	mov    0x4(%esp),%edx
 4bb:	8b 45 00             	mov    0x0(%ebp),%eax
 4be:	e8 fc ff ff ff       	call   4bf <ahci_port_setup+0x4bf>
 4c3:	58                   	pop    %eax
 4c4:	31 c0                	xor    %eax,%eax
 4c6:	81 c4 48 02 00 00    	add    $0x248,%esp
 4cc:	5b                   	pop    %ebx
 4cd:	5e                   	pop    %esi
 4ce:	5f                   	pop    %edi
 4cf:	5d                   	pop    %ebp
 4d0:	c3                   	ret    

Disassembly of section .text.ahci_port_detect:

00000000 <ahci_port_detect>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 c5                	mov    %eax,%ebp
   6:	ff 70 34             	push   0x34(%eax)
   9:	68 b1 02 00 00       	push   $0x2b1
   e:	e8 fc ff ff ff       	call   f <ahci_port_detect+0xf>
  13:	8b 55 34             	mov    0x34(%ebp),%edx
  16:	8b 45 24             	mov    0x24(%ebp),%eax
  19:	e8 fc ff ff ff       	call   1a <ahci_port_detect+0x1a>
  1e:	89 e8                	mov    %ebp,%eax
  20:	e8 fc ff ff ff       	call   21 <ahci_port_detect+0x21>
  25:	5a                   	pop    %edx
  26:	59                   	pop    %ecx
  27:	85 c0                	test   %eax,%eax
  29:	78 29                	js     54 <ahci_port_detect+0x54>
  2b:	b9 10 00 00 00       	mov    $0x10,%ecx
  30:	ba 44 00 00 00       	mov    $0x44,%edx
  35:	b8 00 00 00 00       	mov    $0x0,%eax
  3a:	e8 fc ff ff ff       	call   3b <ahci_port_detect+0x3b>
  3f:	89 c3                	mov    %eax,%ebx
  41:	85 c0                	test   %eax,%eax
  43:	75 1a                	jne    5f <ahci_port_detect+0x5f>
  45:	ba 00 00 00 00       	mov    $0x0,%edx
  4a:	b8 84 01 00 00       	mov    $0x184,%eax
  4f:	e8 fc ff ff ff       	call   50 <ahci_port_detect+0x50>
  54:	89 e8                	mov    %ebp,%eax
  56:	5b                   	pop    %ebx
  57:	5e                   	pop    %esi
  58:	5f                   	pop    %edi
  59:	5d                   	pop    %ebp
  5a:	e9 fc ff ff ff       	jmp    5b <ahci_port_detect+0x5b>
  5f:	b9 11 00 00 00       	mov    $0x11,%ecx
  64:	89 c7                	mov    %eax,%edi
  66:	89 ee                	mov    %ebp,%esi
  68:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  6a:	89 e8                	mov    %ebp,%eax
  6c:	e8 fc ff ff ff       	call   6d <ahci_port_detect+0x6d>
  71:	8b 53 34             	mov    0x34(%ebx),%edx
  74:	8b 43 24             	mov    0x24(%ebx),%eax
  77:	e8 fc ff ff ff       	call   78 <ahci_port_detect+0x78>
  7c:	8b 43 28             	mov    0x28(%ebx),%eax
  7f:	e8 fc ff ff ff       	call   80 <ahci_port_detect+0x80>
  84:	8b 43 2c             	mov    0x2c(%ebx),%eax
  87:	e8 fc ff ff ff       	call   88 <ahci_port_detect+0x88>
  8c:	8b 43 30             	mov    0x30(%ebx),%eax
  8f:	e8 fc ff ff ff       	call   90 <ahci_port_detect+0x90>
  94:	b9 00 04 00 00       	mov    $0x400,%ecx
  99:	ba 00 04 00 00       	mov    $0x400,%edx
  9e:	b8 00 00 00 00       	mov    $0x0,%eax
  a3:	e8 fc ff ff ff       	call   a4 <ahci_port_detect+0xa4>
  a8:	89 43 28             	mov    %eax,0x28(%ebx)
  ab:	b9 00 01 00 00       	mov    $0x100,%ecx
  b0:	ba 00 01 00 00       	mov    $0x100,%edx
  b5:	b8 00 00 00 00       	mov    $0x0,%eax
  ba:	e8 fc ff ff ff       	call   bb <ahci_port_detect+0xbb>
  bf:	89 43 2c             	mov    %eax,0x2c(%ebx)
  c2:	b9 00 01 00 00       	mov    $0x100,%ecx
  c7:	ba 00 01 00 00       	mov    $0x100,%edx
  cc:	b8 00 00 00 00       	mov    $0x0,%eax
  d1:	e8 fc ff ff ff       	call   d2 <ahci_port_detect+0xd2>
  d6:	89 43 30             	mov    %eax,0x30(%ebx)
  d9:	8b 53 28             	mov    0x28(%ebx),%edx
  dc:	85 d2                	test   %edx,%edx
  de:	74 0a                	je     ea <ahci_port_detect+0xea>
  e0:	83 7b 2c 00          	cmpl   $0x0,0x2c(%ebx)
  e4:	74 04                	je     ea <ahci_port_detect+0xea>
  e6:	85 c0                	test   %eax,%eax
  e8:	75 32                	jne    11c <ahci_port_detect+0x11c>
  ea:	ba 00 00 00 00       	mov    $0x0,%edx
  ef:	b8 95 01 00 00       	mov    $0x195,%eax
  f4:	e8 fc ff ff ff       	call   f5 <ahci_port_detect+0xf5>
  f9:	8b 43 28             	mov    0x28(%ebx),%eax
  fc:	e8 fc ff ff ff       	call   fd <ahci_port_detect+0xfd>
 101:	8b 43 2c             	mov    0x2c(%ebx),%eax
 104:	e8 fc ff ff ff       	call   105 <ahci_port_detect+0x105>
 109:	8b 43 30             	mov    0x30(%ebx),%eax
 10c:	e8 fc ff ff ff       	call   10d <ahci_port_detect+0x10d>
 111:	89 d8                	mov    %ebx,%eax
 113:	5b                   	pop    %ebx
 114:	5e                   	pop    %esi
 115:	5f                   	pop    %edi
 116:	5d                   	pop    %ebp
 117:	e9 fc ff ff ff       	jmp    118 <ahci_port_detect+0x118>
 11c:	8b 6b 34             	mov    0x34(%ebx),%ebp
 11f:	8b 43 24             	mov    0x24(%ebx),%eax
 122:	8b 40 08             	mov    0x8(%eax),%eax
 125:	52                   	push   %edx
 126:	31 c9                	xor    %ecx,%ecx
 128:	89 ea                	mov    %ebp,%edx
 12a:	e8 fc ff ff ff       	call   12b <ahci_port_detect+0x12b>
 12f:	8b 53 34             	mov    0x34(%ebx),%edx
 132:	8b 43 24             	mov    0x24(%ebx),%eax
 135:	8b 40 08             	mov    0x8(%eax),%eax
 138:	ff 73 2c             	push   0x2c(%ebx)
 13b:	b9 08 00 00 00       	mov    $0x8,%ecx
 140:	e8 fc ff ff ff       	call   141 <ahci_port_detect+0x141>
 145:	8b 53 34             	mov    0x34(%ebx),%edx
 148:	8b 43 24             	mov    0x24(%ebx),%eax
 14b:	8b 40 08             	mov    0x8(%eax),%eax
 14e:	b9 18 00 00 00       	mov    $0x18,%ecx
 153:	e8 fc ff ff ff       	call   154 <ahci_port_detect+0x154>
 158:	8b 53 34             	mov    0x34(%ebx),%edx
 15b:	8b 4b 24             	mov    0x24(%ebx),%ecx
 15e:	8b 69 08             	mov    0x8(%ecx),%ebp
 161:	83 c8 11             	or     $0x11,%eax
 164:	50                   	push   %eax
 165:	b9 18 00 00 00       	mov    $0x18,%ecx
 16a:	89 e8                	mov    %ebp,%eax
 16c:	e8 fc ff ff ff       	call   16d <ahci_port_detect+0x16d>
 171:	ff 73 3c             	push   0x3c(%ebx)
 174:	ff 73 34             	push   0x34(%ebx)
 177:	68 c3 02 00 00       	push   $0x2c3
 17c:	e8 fc ff ff ff       	call   17d <ahci_port_detect+0x17d>
 181:	83 c4 18             	add    $0x18,%esp
 184:	89 d8                	mov    %ebx,%eax
 186:	83 7b 38 00          	cmpl   $0x0,0x38(%ebx)
 18a:	8b 4b 40             	mov    0x40(%ebx),%ecx
 18d:	8b 53 3c             	mov    0x3c(%ebx),%edx
 190:	75 09                	jne    19b <ahci_port_detect+0x19b>
 192:	5b                   	pop    %ebx
 193:	5e                   	pop    %esi
 194:	5f                   	pop    %edi
 195:	5d                   	pop    %ebp
 196:	e9 fc ff ff ff       	jmp    197 <ahci_port_detect+0x197>
 19b:	5b                   	pop    %ebx
 19c:	5e                   	pop    %esi
 19d:	5f                   	pop    %edi
 19e:	5d                   	pop    %ebp
 19f:	e9 fc ff ff ff       	jmp    1a0 <ahci_port_detect+0x1a0>

Disassembly of section .text.ahci_atapi_process_op:

00000000 <ahci_atapi_process_op>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 c3                	mov    %eax,%ebx
   6:	8a 40 08             	mov    0x8(%eax),%al
   9:	83 e8 03             	sub    $0x3,%eax
   c:	a8 fd                	test   $0xfd,%al
   e:	74 60                	je     70 <ahci_atapi_process_op+0x70>
  10:	8b 6b 04             	mov    0x4(%ebx),%ebp
  13:	8b 7d 30             	mov    0x30(%ebp),%edi
  16:	8d 57 40             	lea    0x40(%edi),%edx
  19:	b9 0c 00 00 00       	mov    $0xc,%ecx
  1e:	89 d8                	mov    %ebx,%eax
  20:	e8 fc ff ff ff       	call   21 <ahci_atapi_process_op+0x21>
  25:	89 c6                	mov    %eax,%esi
  27:	85 c0                	test   %eax,%eax
  29:	79 0b                	jns    36 <ahci_atapi_process_op+0x36>
  2b:	89 d8                	mov    %ebx,%eax
  2d:	5b                   	pop    %ebx
  2e:	5e                   	pop    %esi
  2f:	5f                   	pop    %edi
  30:	5d                   	pop    %ebp
  31:	e9 fc ff ff ff       	jmp    32 <ahci_atapi_process_op+0x32>
  36:	b9 40 00 00 00       	mov    $0x40,%ecx
  3b:	31 d2                	xor    %edx,%edx
  3d:	89 f8                	mov    %edi,%eax
  3f:	e8 fc ff ff ff       	call   40 <ahci_atapi_process_op+0x40>
  44:	66 c7 47 02 a0 01    	movw   $0x1a0,0x2(%edi)
  4a:	66 89 77 05          	mov    %si,0x5(%edi)
  4e:	0f b7 43 0a          	movzwl 0xa(%ebx),%eax
  52:	0f af c6             	imul   %esi,%eax
  55:	50                   	push   %eax
  56:	ff 33                	push   (%ebx)
  58:	b9 01 00 00 00       	mov    $0x1,%ecx
  5d:	31 d2                	xor    %edx,%edx
  5f:	89 e8                	mov    %ebp,%eax
  61:	e8 fc ff ff ff       	call   62 <ahci_atapi_process_op+0x62>
  66:	5a                   	pop    %edx
  67:	59                   	pop    %ecx
  68:	c1 f8 1f             	sar    $0x1f,%eax
  6b:	83 e0 0c             	and    $0xc,%eax
  6e:	eb 05                	jmp    75 <ahci_atapi_process_op+0x75>
  70:	b8 03 00 00 00       	mov    $0x3,%eax
  75:	5b                   	pop    %ebx
  76:	5e                   	pop    %esi
  77:	5f                   	pop    %edi
  78:	5d                   	pop    %ebp
  79:	c3                   	ret    

Disassembly of section .text.ahci_process_op:

00000000 <ahci_process_op>:
   0:	8a 50 08             	mov    0x8(%eax),%dl
   3:	80 fa 02             	cmp    $0x2,%dl
   6:	74 0c                	je     14 <ahci_process_op+0x14>
   8:	80 fa 03             	cmp    $0x3,%dl
   b:	75 0e                	jne    1b <ahci_process_op+0x1b>
   d:	ba 01 00 00 00       	mov    $0x1,%edx
  12:	eb 02                	jmp    16 <ahci_process_op+0x16>
  14:	31 d2                	xor    %edx,%edx
  16:	e9 fc ff ff ff       	jmp    17 <ahci_process_op+0x17>
  1b:	e9 fc ff ff ff       	jmp    1c <ahci_process_op+0x1c>

Disassembly of section .text.ahci_setup:

00000000 <ahci_setup>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	68 df 02 00 00       	push   $0x2df
   9:	e8 fc ff ff ff       	call   a <ahci_setup+0xa>
   e:	a1 00 00 00 00       	mov    0x0,%eax
  13:	8d 78 fc             	lea    -0x4(%eax),%edi
  16:	58                   	pop    %eax
  17:	83 ff fc             	cmp    $0xfffffffc,%edi
  1a:	0f 84 25 02 00 00    	je     245 <ahci_setup+0x245>
  20:	66 81 7f 14 06 01    	cmpw   $0x106,0x14(%edi)
  26:	0f 85 0e 02 00 00    	jne    23a <ahci_setup+0x23a>
  2c:	80 7f 16 01          	cmpb   $0x1,0x16(%edi)
  30:	0f 85 04 02 00 00    	jne    23a <ahci_setup+0x23a>
  36:	e8 fc ff ff ff       	call   37 <ahci_setup+0x37>
  3b:	85 c0                	test   %eax,%eax
  3d:	0f 88 f7 01 00 00    	js     23a <ahci_setup+0x23a>
  43:	ba 24 00 00 00       	mov    $0x24,%edx
  48:	89 f8                	mov    %edi,%eax
  4a:	e8 fc ff ff ff       	call   4b <ahci_setup+0x4b>
  4f:	89 c6                	mov    %eax,%esi
  51:	85 c0                	test   %eax,%eax
  53:	0f 84 e1 01 00 00    	je     23a <ahci_setup+0x23a>
  59:	b9 10 00 00 00       	mov    $0x10,%ecx
  5e:	ba 14 00 00 00       	mov    $0x14,%edx
  63:	b8 00 00 00 00       	mov    $0x0,%eax
  68:	e8 fc ff ff ff       	call   69 <ahci_setup+0x69>
  6d:	89 c3                	mov    %eax,%ebx
  6f:	85 c0                	test   %eax,%eax
  71:	75 14                	jne    87 <ahci_setup+0x87>
  73:	ba 00 00 00 00       	mov    $0x0,%edx
  78:	b8 84 02 00 00       	mov    $0x284,%eax
  7d:	e8 fc ff ff ff       	call   7e <ahci_setup+0x7e>
  82:	e9 b3 01 00 00       	jmp    23a <ahci_setup+0x23a>
  87:	89 38                	mov    %edi,(%eax)
  89:	89 70 08             	mov    %esi,0x8(%eax)
  8c:	0f b7 07             	movzwl (%edi),%eax
  8f:	ba 3c 00 00 00       	mov    $0x3c,%edx
  94:	e8 fc ff ff ff       	call   95 <ahci_setup+0x95>
  99:	88 43 04             	mov    %al,0x4(%ebx)
  9c:	0f b6 c0             	movzbl %al,%eax
  9f:	50                   	push   %eax
  a0:	ff 73 08             	push   0x8(%ebx)
  a3:	57                   	push   %edi
  a4:	68 ea 02 00 00       	push   $0x2ea
  a9:	e8 fc ff ff ff       	call   aa <ahci_setup+0xaa>
  ae:	89 f8                	mov    %edi,%eax
  b0:	e8 fc ff ff ff       	call   b1 <ahci_setup+0xb1>
  b5:	8b 43 08             	mov    0x8(%ebx),%eax
  b8:	8b 40 04             	mov    0x4(%eax),%eax
  bb:	0d 00 00 00 80       	or     $0x80000000,%eax
  c0:	8b 53 08             	mov    0x8(%ebx),%edx
  c3:	89 42 04             	mov    %eax,0x4(%edx)
  c6:	8b 43 08             	mov    0x8(%ebx),%eax
  c9:	8b 00                	mov    (%eax),%eax
  cb:	89 43 0c             	mov    %eax,0xc(%ebx)
  ce:	8b 43 08             	mov    0x8(%ebx),%eax
  d1:	8b 40 0c             	mov    0xc(%eax),%eax
  d4:	89 43 10             	mov    %eax,0x10(%ebx)
  d7:	50                   	push   %eax
  d8:	ff 73 0c             	push   0xc(%ebx)
  db:	68 15 03 00 00       	push   $0x315
  e0:	e8 fc ff ff ff       	call   e1 <ahci_setup+0xe1>
  e5:	83 c4 1c             	add    $0x1c,%esp
  e8:	31 ed                	xor    %ebp,%ebp
  ea:	b8 01 00 00 00       	mov    $0x1,%eax
  ef:	89 e9                	mov    %ebp,%ecx
  f1:	d3 e0                	shl    %cl,%eax
  f3:	23 43 10             	and    0x10(%ebx),%eax
  f6:	0f 84 34 01 00 00    	je     230 <ahci_setup+0x230>
  fc:	b9 10 00 00 00       	mov    $0x10,%ecx
 101:	ba 44 00 00 00       	mov    $0x44,%edx
 106:	b8 00 00 00 00       	mov    $0x0,%eax
 10b:	e8 fc ff ff ff       	call   10c <ahci_setup+0x10c>
 110:	89 c6                	mov    %eax,%esi
 112:	85 c0                	test   %eax,%eax
 114:	75 26                	jne    13c <ahci_setup+0x13c>
 116:	b9 10 00 00 00       	mov    $0x10,%ecx
 11b:	ba 44 00 00 00       	mov    $0x44,%edx
 120:	b8 00 00 00 00       	mov    $0x0,%eax
 125:	e8 fc ff ff ff       	call   126 <ahci_setup+0x126>
 12a:	89 c6                	mov    %eax,%esi
 12c:	85 c0                	test   %eax,%eax
 12e:	75 0c                	jne    13c <ahci_setup+0x13c>
 130:	ba 00 00 00 00       	mov    $0x0,%edx
 135:	b8 59 01 00 00       	mov    $0x159,%eax
 13a:	eb 67                	jmp    1a3 <ahci_setup+0x1a3>
 13c:	b9 44 00 00 00       	mov    $0x44,%ecx
 141:	31 d2                	xor    %edx,%edx
 143:	89 f0                	mov    %esi,%eax
 145:	e8 fc ff ff ff       	call   146 <ahci_setup+0x146>
 14a:	89 6e 34             	mov    %ebp,0x34(%esi)
 14d:	89 5e 24             	mov    %ebx,0x24(%esi)
 150:	ba 00 04 00 00       	mov    $0x400,%edx
 155:	b8 00 04 00 00       	mov    $0x400,%eax
 15a:	e8 fc ff ff ff       	call   15b <ahci_setup+0x15b>
 15f:	89 46 28             	mov    %eax,0x28(%esi)
 162:	ba 00 01 00 00       	mov    $0x100,%edx
 167:	b8 00 01 00 00       	mov    $0x100,%eax
 16c:	e8 fc ff ff ff       	call   16d <ahci_setup+0x16d>
 171:	89 46 2c             	mov    %eax,0x2c(%esi)
 174:	ba 00 01 00 00       	mov    $0x100,%edx
 179:	b8 00 01 00 00       	mov    $0x100,%eax
 17e:	e8 fc ff ff ff       	call   17f <ahci_setup+0x17f>
 183:	89 c2                	mov    %eax,%edx
 185:	89 46 30             	mov    %eax,0x30(%esi)
 188:	8b 46 28             	mov    0x28(%esi),%eax
 18b:	85 c0                	test   %eax,%eax
 18d:	74 0a                	je     199 <ahci_setup+0x199>
 18f:	83 7e 2c 00          	cmpl   $0x0,0x2c(%esi)
 193:	74 04                	je     199 <ahci_setup+0x199>
 195:	85 d2                	test   %edx,%edx
 197:	75 14                	jne    1ad <ahci_setup+0x1ad>
 199:	ba 00 00 00 00       	mov    $0x0,%edx
 19e:	b8 63 01 00 00       	mov    $0x163,%eax
 1a3:	e8 fc ff ff ff       	call   1a4 <ahci_setup+0x1a4>
 1a8:	e9 83 00 00 00       	jmp    230 <ahci_setup+0x230>
 1ad:	b9 00 04 00 00       	mov    $0x400,%ecx
 1b2:	31 d2                	xor    %edx,%edx
 1b4:	e8 fc ff ff ff       	call   1b5 <ahci_setup+0x1b5>
 1b9:	8b 46 2c             	mov    0x2c(%esi),%eax
 1bc:	b9 00 01 00 00       	mov    $0x100,%ecx
 1c1:	31 d2                	xor    %edx,%edx
 1c3:	e8 fc ff ff ff       	call   1c4 <ahci_setup+0x1c4>
 1c8:	8b 46 30             	mov    0x30(%esi),%eax
 1cb:	b9 00 01 00 00       	mov    $0x100,%ecx
 1d0:	31 d2                	xor    %edx,%edx
 1d2:	e8 fc ff ff ff       	call   1d3 <ahci_setup+0x1d3>
 1d7:	8b 43 08             	mov    0x8(%ebx),%eax
 1da:	ff 76 28             	push   0x28(%esi)
 1dd:	31 c9                	xor    %ecx,%ecx
 1df:	89 ea                	mov    %ebp,%edx
 1e1:	e8 fc ff ff ff       	call   1e2 <ahci_setup+0x1e2>
 1e6:	8b 43 08             	mov    0x8(%ebx),%eax
 1e9:	ff 76 2c             	push   0x2c(%esi)
 1ec:	b9 08 00 00 00       	mov    $0x8,%ecx
 1f1:	89 ea                	mov    %ebp,%edx
 1f3:	e8 fc ff ff ff       	call   1f4 <ahci_setup+0x1f4>
 1f8:	59                   	pop    %ecx
 1f9:	58                   	pop    %eax
 1fa:	83 7b 0c 00          	cmpl   $0x0,0xc(%ebx)
 1fe:	79 24                	jns    224 <ahci_setup+0x224>
 200:	8b 43 08             	mov    0x8(%ebx),%eax
 203:	6a 00                	push   $0x0
 205:	b9 04 00 00 00       	mov    $0x4,%ecx
 20a:	89 ea                	mov    %ebp,%edx
 20c:	e8 fc ff ff ff       	call   20d <ahci_setup+0x20d>
 211:	8b 43 08             	mov    0x8(%ebx),%eax
 214:	6a 00                	push   $0x0
 216:	b9 0c 00 00 00       	mov    $0xc,%ecx
 21b:	89 ea                	mov    %ebp,%edx
 21d:	e8 fc ff ff ff       	call   21e <ahci_setup+0x21e>
 222:	58                   	pop    %eax
 223:	5a                   	pop    %edx
 224:	89 f2                	mov    %esi,%edx
 226:	b8 00 00 00 00       	mov    $0x0,%eax
 22b:	e8 fc ff ff ff       	call   22c <ahci_setup+0x22c>
 230:	45                   	inc    %ebp
 231:	83 fd 20             	cmp    $0x20,%ebp
 234:	0f 85 b0 fe ff ff    	jne    ea <ahci_setup+0xea>
 23a:	8b 7f 04             	mov    0x4(%edi),%edi
 23d:	83 ef 04             	sub    $0x4,%edi
 240:	e9 d2 fd ff ff       	jmp    17 <ahci_setup+0x17>
 245:	5b                   	pop    %ebx
 246:	5e                   	pop    %esi
 247:	5f                   	pop    %edi
 248:	5d                   	pop    %ebp
 249:	c3                   	ret    
