
./usb-uhci.o:     file format elf32-i386


Disassembly of section .text.uhci_hub_disconnect:

00000000 <uhci_hub_disconnect>:
   0:	8b 40 08             	mov    0x8(%eax),%eax
   3:	8b 40 14             	mov    0x14(%eax),%eax
   6:	8d 54 50 10          	lea    0x10(%eax,%edx,2),%edx
   a:	31 c0                	xor    %eax,%eax
   c:	66 ef                	out    %ax,(%dx)
   e:	c3                   	ret    

Disassembly of section .text.uhci_hub_reset:

00000000 <uhci_hub_reset>:
   0:	51                   	push   %ecx
   1:	8b 40 08             	mov    0x8(%eax),%eax
   4:	8b 40 14             	mov    0x14(%eax),%eax
   7:	8d 54 50 10          	lea    0x10(%eax,%edx,2),%edx
   b:	31 c0                	xor    %eax,%eax
   d:	66 ef                	out    %ax,(%dx)
   f:	89 14 24             	mov    %edx,(%esp)
  12:	b8 06 00 00 00       	mov    $0x6,%eax
  17:	e8 fc ff ff ff       	call   18 <uhci_hub_reset+0x18>
  1c:	8b 14 24             	mov    (%esp),%edx
  1f:	66 ed                	in     (%dx),%ax
  21:	a8 01                	test   $0x1,%al
  23:	74 14                	je     39 <uhci_hub_reset+0x39>
  25:	89 c1                	mov    %eax,%ecx
  27:	b8 04 00 00 00       	mov    $0x4,%eax
  2c:	66 ef                	out    %ax,(%dx)
  2e:	89 c8                	mov    %ecx,%eax
  30:	66 c1 e8 08          	shr    $0x8,%ax
  34:	83 e0 01             	and    $0x1,%eax
  37:	eb 03                	jmp    3c <uhci_hub_reset+0x3c>
  39:	83 c8 ff             	or     $0xffffffff,%eax
  3c:	5a                   	pop    %edx
  3d:	c3                   	ret    

Disassembly of section .text.uhci_hub_detect:

00000000 <uhci_hub_detect>:
   0:	8b 40 08             	mov    0x8(%eax),%eax
   3:	8b 40 14             	mov    0x14(%eax),%eax
   6:	8d 54 50 10          	lea    0x10(%eax,%edx,2),%edx
   a:	66 ed                	in     (%dx),%ax
   c:	a8 01                	test   $0x1,%al
   e:	74 17                	je     27 <uhci_hub_detect+0x27>
  10:	b8 00 02 00 00       	mov    $0x200,%eax
  15:	66 ef                	out    %ax,(%dx)
  17:	b8 32 00 00 00       	mov    $0x32,%eax
  1c:	e8 fc ff ff ff       	call   1d <uhci_hub_detect+0x1d>
  21:	b8 01 00 00 00       	mov    $0x1,%eax
  26:	c3                   	ret    
  27:	31 c0                	xor    %eax,%eax
  29:	c3                   	ret    

Disassembly of section .text.uhci_waittick:

00000000 <uhci_waittick>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	8d 58 06             	lea    0x6(%eax),%ebx
   6:	89 da                	mov    %ebx,%edx
   8:	66 ed                	in     (%dx),%ax
   a:	89 c7                	mov    %eax,%edi
   c:	b8 88 13 00 00       	mov    $0x1388,%eax
  11:	e8 fc ff ff ff       	call   12 <uhci_waittick+0x12>
  16:	89 c6                	mov    %eax,%esi
  18:	89 da                	mov    %ebx,%edx
  1a:	66 ed                	in     (%dx),%ax
  1c:	66 39 c7             	cmp    %ax,%di
  1f:	75 24                	jne    45 <uhci_waittick+0x45>
  21:	89 f0                	mov    %esi,%eax
  23:	e8 fc ff ff ff       	call   24 <uhci_waittick+0x24>
  28:	85 c0                	test   %eax,%eax
  2a:	74 12                	je     3e <uhci_waittick+0x3e>
  2c:	ba 00 00 00 00       	mov    $0x0,%edx
  31:	b8 7f 00 00 00       	mov    $0x7f,%eax
  36:	5b                   	pop    %ebx
  37:	5e                   	pop    %esi
  38:	5f                   	pop    %edi
  39:	e9 fc ff ff ff       	jmp    3a <uhci_waittick+0x3a>
  3e:	e8 fc ff ff ff       	call   3f <uhci_waittick+0x3f>
  43:	eb d3                	jmp    18 <uhci_waittick+0x18>
  45:	5b                   	pop    %ebx
  46:	5e                   	pop    %esi
  47:	5f                   	pop    %edi
  48:	c3                   	ret    

Disassembly of section .text.wait_td:

00000000 <wait_td>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 c3                	mov    %eax,%ebx
   4:	89 d6                	mov    %edx,%esi
   6:	8b 4b 04             	mov    0x4(%ebx),%ecx
   9:	0f ba e1 17          	bt     $0x17,%ecx
   d:	73 26                	jae    35 <wait_td+0x35>
   f:	89 f0                	mov    %esi,%eax
  11:	e8 fc ff ff ff       	call   12 <wait_td+0x12>
  16:	85 c0                	test   %eax,%eax
  18:	74 14                	je     2e <wait_td+0x2e>
  1a:	ba 00 00 00 00       	mov    $0x0,%edx
  1f:	b8 b6 01 00 00       	mov    $0x1b6,%eax
  24:	e8 fc ff ff ff       	call   25 <wait_td+0x25>
  29:	83 c8 ff             	or     $0xffffffff,%eax
  2c:	eb 23                	jmp    51 <wait_td+0x51>
  2e:	e8 fc ff ff ff       	call   2f <wait_td+0x2f>
  33:	eb d1                	jmp    6 <wait_td+0x6>
  35:	31 c0                	xor    %eax,%eax
  37:	f7 c1 00 00 76 00    	test   $0x760000,%ecx
  3d:	74 12                	je     51 <wait_td+0x51>
  3f:	51                   	push   %ecx
  40:	68 00 00 00 00       	push   $0x0
  45:	e8 fc ff ff ff       	call   46 <wait_td+0x46>
  4a:	58                   	pop    %eax
  4b:	5a                   	pop    %edx
  4c:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
  51:	5b                   	pop    %ebx
  52:	5e                   	pop    %esi
  53:	c3                   	ret    

Disassembly of section .text.configure_uhci:

00000000 <configure_uhci>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 34             	sub    $0x34,%esp
   7:	89 c3                	mov    %eax,%ebx
   9:	b9 10 00 00 00       	mov    $0x10,%ecx
   e:	ba 10 00 00 00       	mov    $0x10,%edx
  13:	b8 00 00 00 00       	mov    $0x0,%eax
  18:	e8 fc ff ff ff       	call   19 <configure_uhci+0x19>
  1d:	89 04 24             	mov    %eax,(%esp)
  20:	b9 00 10 00 00       	mov    $0x1000,%ecx
  25:	ba 00 10 00 00       	mov    $0x1000,%edx
  2a:	b8 00 00 00 00       	mov    $0x0,%eax
  2f:	e8 fc ff ff ff       	call   30 <configure_uhci+0x30>
  34:	89 44 24 04          	mov    %eax,0x4(%esp)
  38:	b9 10 00 00 00       	mov    $0x10,%ecx
  3d:	ba 1c 00 00 00       	mov    $0x1c,%edx
  42:	b8 00 00 00 00       	mov    $0x0,%eax
  47:	e8 fc ff ff ff       	call   48 <configure_uhci+0x48>
  4c:	89 c6                	mov    %eax,%esi
  4e:	b9 10 00 00 00       	mov    $0x10,%ecx
  53:	ba 1c 00 00 00       	mov    $0x1c,%edx
  58:	b8 00 00 00 00       	mov    $0x0,%eax
  5d:	e8 fc ff ff ff       	call   5e <configure_uhci+0x5e>
  62:	89 c7                	mov    %eax,%edi
  64:	83 3c 24 00          	cmpl   $0x0,(%esp)
  68:	0f 94 c0             	sete   %al
  6b:	83 7c 24 04 00       	cmpl   $0x0,0x4(%esp)
  70:	0f 94 c2             	sete   %dl
  73:	09 d0                	or     %edx,%eax
  75:	85 f6                	test   %esi,%esi
  77:	0f 94 c2             	sete   %dl
  7a:	08 d0                	or     %dl,%al
  7c:	75 04                	jne    82 <configure_uhci+0x82>
  7e:	85 ff                	test   %edi,%edi
  80:	75 14                	jne    96 <configure_uhci+0x96>
  82:	ba 00 00 00 00       	mov    $0x0,%edx
  87:	b8 be 00 00 00       	mov    $0xbe,%eax
  8c:	e8 fc ff ff ff       	call   8d <configure_uhci+0x8d>
  91:	e9 3d 01 00 00       	jmp    1d3 <configure_uhci+0x1d3>
  96:	b9 10 00 00 00       	mov    $0x10,%ecx
  9b:	31 d2                	xor    %edx,%edx
  9d:	8b 04 24             	mov    (%esp),%eax
  a0:	e8 fc ff ff ff       	call   a1 <configure_uhci+0xa1>
  a5:	8b 04 24             	mov    (%esp),%eax
  a8:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  ae:	c7 40 08 69 7f e0 ff 	movl   $0xffe07f69,0x8(%eax)
  b5:	b9 1c 00 00 00       	mov    $0x1c,%ecx
  ba:	31 d2                	xor    %edx,%edx
  bc:	89 f8                	mov    %edi,%eax
  be:	e8 fc ff ff ff       	call   bf <configure_uhci+0xbf>
  c3:	8b 04 24             	mov    (%esp),%eax
  c6:	89 47 04             	mov    %eax,0x4(%edi)
  c9:	c7 07 01 00 00 00    	movl   $0x1,(%edi)
  cf:	89 5f 0c             	mov    %ebx,0xc(%edi)
  d2:	b9 1c 00 00 00       	mov    $0x1c,%ecx
  d7:	31 d2                	xor    %edx,%edx
  d9:	89 f0                	mov    %esi,%eax
  db:	e8 fc ff ff ff       	call   dc <configure_uhci+0xdc>
  e0:	c7 46 04 01 00 00 00 	movl   $0x1,0x4(%esi)
  e7:	89 f8                	mov    %edi,%eax
  e9:	83 c8 02             	or     $0x2,%eax
  ec:	89 06                	mov    %eax,(%esi)
  ee:	89 5e 0c             	mov    %ebx,0xc(%esi)
  f1:	31 c0                	xor    %eax,%eax
  f3:	89 f2                	mov    %esi,%edx
  f5:	83 ca 02             	or     $0x2,%edx
  f8:	8b 4c 24 04          	mov    0x4(%esp),%ecx
  fc:	89 14 81             	mov    %edx,(%ecx,%eax,4)
  ff:	40                   	inc    %eax
 100:	3d 00 04 00 00       	cmp    $0x400,%eax
 105:	75 f1                	jne    f8 <configure_uhci+0xf8>
 107:	89 4b 1c             	mov    %ecx,0x1c(%ebx)
 10a:	89 73 18             	mov    %esi,0x18(%ebx)
 10d:	8b 4b 14             	mov    0x14(%ebx),%ecx
 110:	8d 51 0c             	lea    0xc(%ecx),%edx
 113:	b0 40                	mov    $0x40,%al
 115:	ee                   	out    %al,(%dx)
 116:	8d 51 08             	lea    0x8(%ecx),%edx
 119:	8b 44 24 04          	mov    0x4(%esp),%eax
 11d:	ef                   	out    %eax,(%dx)
 11e:	8d 51 06             	lea    0x6(%ecx),%edx
 121:	31 c0                	xor    %eax,%eax
 123:	66 ef                	out    %ax,(%dx)
 125:	b8 c1 00 00 00       	mov    $0xc1,%eax
 12a:	89 ca                	mov    %ecx,%edx
 12c:	66 ef                	out    %ax,(%dx)
 12e:	e8 fc ff ff ff       	call   12f <configure_uhci+0x12f>
 133:	b9 24 00 00 00       	mov    $0x24,%ecx
 138:	31 d2                	xor    %edx,%edx
 13a:	8d 44 24 10          	lea    0x10(%esp),%eax
 13e:	e8 fc ff ff ff       	call   13f <configure_uhci+0x13f>
 143:	89 5c 24 18          	mov    %ebx,0x18(%esp)
 147:	c7 44 24 2c 02 00 00 	movl   $0x2,0x2c(%esp)
 14e:	00 
 14f:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
 156:	00 
 157:	8d 44 24 10          	lea    0x10(%esp),%eax
 15b:	e8 fc ff ff ff       	call   15c <configure_uhci+0x15c>
 160:	8b 44 24 30          	mov    0x30(%esp),%eax
 164:	89 44 24 08          	mov    %eax,0x8(%esp)
 168:	53                   	push   %ebx
 169:	68 1b 00 00 00       	push   $0x1b
 16e:	e8 fc ff ff ff       	call   16f <configure_uhci+0x16f>
 173:	8b 43 1c             	mov    0x1c(%ebx),%eax
 176:	8b 08                	mov    (%eax),%ecx
 178:	83 e1 f0             	and    $0xfffffff0,%ecx
 17b:	58                   	pop    %eax
 17c:	5a                   	pop    %edx
 17d:	8b 29                	mov    (%ecx),%ebp
 17f:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
 183:	83 fd 01             	cmp    $0x1,%ebp
 186:	74 20                	je     1a8 <configure_uhci+0x1a8>
 188:	83 e5 f0             	and    $0xfffffff0,%ebp
 18b:	8d 55 0c             	lea    0xc(%ebp),%edx
 18e:	89 d8                	mov    %ebx,%eax
 190:	e8 fc ff ff ff       	call   191 <configure_uhci+0x191>
 195:	85 c0                	test   %eax,%eax
 197:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
 19b:	75 04                	jne    1a1 <configure_uhci+0x1a1>
 19d:	89 e9                	mov    %ebp,%ecx
 19f:	eb dc                	jmp    17d <configure_uhci+0x17d>
 1a1:	8b 45 00             	mov    0x0(%ebp),%eax
 1a4:	89 01                	mov    %eax,(%ecx)
 1a6:	eb d5                	jmp    17d <configure_uhci+0x17d>
 1a8:	0f b7 43 14          	movzwl 0x14(%ebx),%eax
 1ac:	e8 fc ff ff ff       	call   1ad <configure_uhci+0x1ad>
 1b1:	8b 03                	mov    (%ebx),%eax
 1b3:	85 c0                	test   %eax,%eax
 1b5:	74 0e                	je     1c5 <configure_uhci+0x1c5>
 1b7:	8b 10                	mov    (%eax),%edx
 1b9:	89 13                	mov    %edx,(%ebx)
 1bb:	83 e8 0c             	sub    $0xc,%eax
 1be:	e8 fc ff ff ff       	call   1bf <configure_uhci+0x1bf>
 1c3:	eb ec                	jmp    1b1 <configure_uhci+0x1b1>
 1c5:	83 7c 24 08 00       	cmpl   $0x0,0x8(%esp)
 1ca:	75 34                	jne    200 <configure_uhci+0x200>
 1cc:	8b 53 14             	mov    0x14(%ebx),%edx
 1cf:	31 c0                	xor    %eax,%eax
 1d1:	66 ef                	out    %ax,(%dx)
 1d3:	8b 04 24             	mov    (%esp),%eax
 1d6:	e8 fc ff ff ff       	call   1d7 <configure_uhci+0x1d7>
 1db:	8b 44 24 04          	mov    0x4(%esp),%eax
 1df:	e8 fc ff ff ff       	call   1e0 <configure_uhci+0x1e0>
 1e4:	89 f0                	mov    %esi,%eax
 1e6:	e8 fc ff ff ff       	call   1e7 <configure_uhci+0x1e7>
 1eb:	89 f8                	mov    %edi,%eax
 1ed:	e8 fc ff ff ff       	call   1ee <configure_uhci+0x1ee>
 1f2:	89 d8                	mov    %ebx,%eax
 1f4:	83 c4 34             	add    $0x34,%esp
 1f7:	5b                   	pop    %ebx
 1f8:	5e                   	pop    %esi
 1f9:	5f                   	pop    %edi
 1fa:	5d                   	pop    %ebp
 1fb:	e9 fc ff ff ff       	jmp    1fc <configure_uhci+0x1fc>
 200:	83 c4 34             	add    $0x34,%esp
 203:	5b                   	pop    %ebx
 204:	5e                   	pop    %esi
 205:	5f                   	pop    %edi
 206:	5d                   	pop    %ebp
 207:	c3                   	ret    

Disassembly of section .text.uhci_setup:

00000000 <uhci_setup>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	a1 00 00 00 00       	mov    0x0,%eax
   8:	8d 58 fc             	lea    -0x4(%eax),%ebx
   b:	83 fb fc             	cmp    $0xfffffffc,%ebx
   e:	0f 84 d3 00 00 00    	je     e7 <uhci_setup+0xe7>
  14:	0f b7 43 14          	movzwl 0x14(%ebx),%eax
  18:	c1 e0 08             	shl    $0x8,%eax
  1b:	0f b6 53 16          	movzbl 0x16(%ebx),%edx
  1f:	09 d0                	or     %edx,%eax
  21:	3d 00 03 0c 00       	cmp    $0xc0300,%eax
  26:	0f 85 b0 00 00 00    	jne    dc <uhci_setup+0xdc>
  2c:	ba 20 00 00 00       	mov    $0x20,%edx
  31:	89 d8                	mov    %ebx,%eax
  33:	e8 fc ff ff ff       	call   34 <uhci_setup+0x34>
  38:	0f b7 f8             	movzwl %ax,%edi
  3b:	66 85 ff             	test   %di,%di
  3e:	0f 84 98 00 00 00    	je     dc <uhci_setup+0xdc>
  44:	b9 10 00 00 00       	mov    $0x10,%ecx
  49:	ba 20 00 00 00       	mov    $0x20,%edx
  4e:	b8 00 00 00 00       	mov    $0x0,%eax
  53:	e8 fc ff ff ff       	call   54 <uhci_setup+0x54>
  58:	89 c6                	mov    %eax,%esi
  5a:	85 c0                	test   %eax,%eax
  5c:	75 11                	jne    6f <uhci_setup+0x6f>
  5e:	ba 00 00 00 00       	mov    $0x0,%edx
  63:	b8 fe 00 00 00       	mov    $0xfe,%eax
  68:	e8 fc ff ff ff       	call   69 <uhci_setup+0x69>
  6d:	eb 6d                	jmp    dc <uhci_setup+0xdc>
  6f:	b9 20 00 00 00       	mov    $0x20,%ecx
  74:	31 d2                	xor    %edx,%edx
  76:	e8 fc ff ff ff       	call   77 <uhci_setup+0x77>
  7b:	89 5e 08             	mov    %ebx,0x8(%esi)
  7e:	c6 46 10 01          	movb   $0x1,0x10(%esi)
  82:	66 89 7e 14          	mov    %di,0x14(%esi)
  86:	57                   	push   %edi
  87:	53                   	push   %ebx
  88:	68 2f 00 00 00       	push   $0x2f
  8d:	e8 fc ff ff ff       	call   8e <uhci_setup+0x8e>
  92:	89 d8                	mov    %ebx,%eax
  94:	e8 fc ff ff ff       	call   95 <uhci_setup+0x95>
  99:	0f b7 03             	movzwl (%ebx),%eax
  9c:	b9 00 8f 00 00       	mov    $0x8f00,%ecx
  a1:	ba c0 00 00 00       	mov    $0xc0,%edx
  a6:	e8 fc ff ff ff       	call   a7 <uhci_setup+0xa7>
  ab:	8b 56 14             	mov    0x14(%esi),%edx
  ae:	b8 02 00 00 00       	mov    $0x2,%eax
  b3:	66 ef                	out    %ax,(%dx)
  b5:	b8 05 00 00 00       	mov    $0x5,%eax
  ba:	e8 fc ff ff ff       	call   bb <uhci_setup+0xbb>
  bf:	8b 4e 14             	mov    0x14(%esi),%ecx
  c2:	31 c0                	xor    %eax,%eax
  c4:	8d 51 04             	lea    0x4(%ecx),%edx
  c7:	66 ef                	out    %ax,(%dx)
  c9:	89 ca                	mov    %ecx,%edx
  cb:	66 ef                	out    %ax,(%dx)
  cd:	89 f2                	mov    %esi,%edx
  cf:	b8 00 00 00 00       	mov    $0x0,%eax
  d4:	e8 fc ff ff ff       	call   d5 <uhci_setup+0xd5>
  d9:	83 c4 0c             	add    $0xc,%esp
  dc:	8b 5b 04             	mov    0x4(%ebx),%ebx
  df:	83 eb 04             	sub    $0x4,%ebx
  e2:	e9 24 ff ff ff       	jmp    b <uhci_setup+0xb>
  e7:	5b                   	pop    %ebx
  e8:	5e                   	pop    %esi
  e9:	5f                   	pop    %edi
  ea:	c3                   	ret    

Disassembly of section .text.uhci_realloc_pipe:

00000000 <uhci_realloc_pipe>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 34             	sub    $0x34,%esp
   7:	89 44 24 04          	mov    %eax,0x4(%esp)
   b:	89 d0                	mov    %edx,%eax
   d:	89 cf                	mov    %ecx,%edi
   f:	e8 fc ff ff ff       	call   10 <uhci_realloc_pipe+0x10>
  14:	85 ff                	test   %edi,%edi
  16:	0f 84 e9 02 00 00    	je     305 <uhci_realloc_pipe+0x305>
  1c:	8a 5f 03             	mov    0x3(%edi),%bl
  1f:	83 e3 03             	and    $0x3,%ebx
  22:	8b 44 24 04          	mov    0x4(%esp),%eax
  26:	8b 00                	mov    (%eax),%eax
  28:	8b 70 08             	mov    0x8(%eax),%esi
  2b:	80 fb 03             	cmp    $0x3,%bl
  2e:	0f 85 1f 02 00 00    	jne    253 <uhci_realloc_pipe+0x253>
  34:	89 fa                	mov    %edi,%edx
  36:	8b 44 24 04          	mov    0x4(%esp),%eax
  3a:	e8 fc ff ff ff       	call   3b <uhci_realloc_pipe+0x3b>
  3f:	89 44 24 08          	mov    %eax,0x8(%esp)
  43:	50                   	push   %eax
  44:	56                   	push   %esi
  45:	68 4d 00 00 00       	push   $0x4d
  4a:	e8 fc ff ff ff       	call   4b <uhci_realloc_pipe+0x4b>
  4f:	8b 44 24 14          	mov    0x14(%esp),%eax
  53:	89 44 24 18          	mov    %eax,0x18(%esp)
  57:	83 c4 0c             	add    $0xc,%esp
  5a:	83 f8 0a             	cmp    $0xa,%eax
  5d:	7e 08                	jle    67 <uhci_realloc_pipe+0x67>
  5f:	c7 44 24 0c 0a 00 00 	movl   $0xa,0xc(%esp)
  66:	00 
  67:	66 8b 6f 04          	mov    0x4(%edi),%bp
  6b:	b8 01 00 00 00       	mov    $0x1,%eax
  70:	8a 4c 24 0c          	mov    0xc(%esp),%cl
  74:	d3 e0                	shl    %cl,%eax
  76:	89 44 24 1c          	mov    %eax,0x1c(%esp)
  7a:	b8 02 00 00 00       	mov    $0x2,%eax
  7f:	e8 fc ff ff ff       	call   80 <uhci_realloc_pipe+0x80>
  84:	8b 5c 24 1c          	mov    0x1c(%esp),%ebx
  88:	8d 44 03 ff          	lea    -0x1(%ebx,%eax,1),%eax
  8c:	8a 4c 24 0c          	mov    0xc(%esp),%cl
  90:	d3 e8                	shr    %cl,%eax
  92:	40                   	inc    %eax
  93:	83 e0 fe             	and    $0xfffffffe,%eax
  96:	89 44 24 10          	mov    %eax,0x10(%esp)
  9a:	b9 10 00 00 00       	mov    $0x10,%ecx
  9f:	ba 1c 00 00 00       	mov    $0x1c,%edx
  a4:	b8 00 00 00 00       	mov    $0x0,%eax
  a9:	e8 fc ff ff ff       	call   aa <uhci_realloc_pipe+0xaa>
  ae:	89 c3                	mov    %eax,%ebx
  b0:	8b 54 24 10          	mov    0x10(%esp),%edx
  b4:	c1 e2 04             	shl    $0x4,%edx
  b7:	b9 10 00 00 00       	mov    $0x10,%ecx
  bc:	b8 00 00 00 00       	mov    $0x0,%eax
  c1:	e8 fc ff ff ff       	call   c2 <uhci_realloc_pipe+0xc2>
  c6:	89 04 24             	mov    %eax,(%esp)
  c9:	0f b7 c5             	movzwl %bp,%eax
  cc:	89 44 24 14          	mov    %eax,0x14(%esp)
  d0:	8b 54 24 10          	mov    0x10(%esp),%edx
  d4:	0f af d0             	imul   %eax,%edx
  d7:	b9 10 00 00 00       	mov    $0x10,%ecx
  dc:	b8 00 00 00 00       	mov    $0x0,%eax
  e1:	e8 fc ff ff ff       	call   e2 <uhci_realloc_pipe+0xe2>
  e6:	89 c5                	mov    %eax,%ebp
  e8:	83 3c 24 00          	cmpl   $0x0,(%esp)
  ec:	0f 94 c0             	sete   %al
  ef:	85 db                	test   %ebx,%ebx
  f1:	0f 94 c2             	sete   %dl
  f4:	08 d0                	or     %dl,%al
  f6:	75 04                	jne    fc <uhci_realloc_pipe+0xfc>
  f8:	85 ed                	test   %ebp,%ebp
  fa:	75 2a                	jne    126 <uhci_realloc_pipe+0x126>
  fc:	ba 00 00 00 00       	mov    $0x0,%edx
 101:	b8 34 01 00 00       	mov    $0x134,%eax
 106:	e8 fc ff ff ff       	call   107 <uhci_realloc_pipe+0x107>
 10b:	89 d8                	mov    %ebx,%eax
 10d:	e8 fc ff ff ff       	call   10e <uhci_realloc_pipe+0x10e>
 112:	8b 04 24             	mov    (%esp),%eax
 115:	e8 fc ff ff ff       	call   116 <uhci_realloc_pipe+0x116>
 11a:	89 e8                	mov    %ebp,%eax
 11c:	e8 fc ff ff ff       	call   11d <uhci_realloc_pipe+0x11d>
 121:	e9 df 01 00 00       	jmp    305 <uhci_realloc_pipe+0x305>
 126:	b9 1c 00 00 00       	mov    $0x1c,%ecx
 12b:	31 d2                	xor    %edx,%edx
 12d:	89 d8                	mov    %ebx,%eax
 12f:	e8 fc ff ff ff       	call   130 <uhci_realloc_pipe+0x130>
 134:	8d 43 0c             	lea    0xc(%ebx),%eax
 137:	89 f9                	mov    %edi,%ecx
 139:	8b 54 24 04          	mov    0x4(%esp),%edx
 13d:	89 44 24 30          	mov    %eax,0x30(%esp)
 141:	e8 fc ff ff ff       	call   142 <uhci_realloc_pipe+0x142>
 146:	0f b6 53 11          	movzbl 0x11(%ebx),%edx
 14a:	c1 e2 07             	shl    $0x7,%edx
 14d:	0f b6 4b 12          	movzbl 0x12(%ebx),%ecx
 151:	09 ca                	or     %ecx,%edx
 153:	8b 04 24             	mov    (%esp),%eax
 156:	89 43 04             	mov    %eax,0x4(%ebx)
 159:	89 43 08             	mov    %eax,0x8(%ebx)
 15c:	8b 4e 14             	mov    0x14(%esi),%ecx
 15f:	66 89 4b 18          	mov    %cx,0x18(%ebx)
 163:	80 7b 13 01          	cmpb   $0x1,0x13(%ebx)
 167:	19 c0                	sbb    %eax,%eax
 169:	89 44 24 04          	mov    %eax,0x4(%esp)
 16d:	81 64 24 04 00 00 00 	andl   $0xfc000000,0x4(%esp)
 174:	fc 
 175:	81 44 24 04 00 00 80 	addl   $0x1c800000,0x4(%esp)
 17c:	1c 
 17d:	8b 44 24 14          	mov    0x14(%esp),%eax
 181:	8d 48 ff             	lea    -0x1(%eax),%ecx
 184:	c1 e1 15             	shl    $0x15,%ecx
 187:	89 4c 24 24          	mov    %ecx,0x24(%esp)
 18b:	c1 e2 08             	shl    $0x8,%edx
 18e:	89 54 24 28          	mov    %edx,0x28(%esp)
 192:	8b 04 24             	mov    (%esp),%eax
 195:	8d 50 10             	lea    0x10(%eax),%edx
 198:	89 6c 24 18          	mov    %ebp,0x18(%esp)
 19c:	31 ed                	xor    %ebp,%ebp
 19e:	c7 44 24 20 00 00 00 	movl   $0x0,0x20(%esp)
 1a5:	00 
 1a6:	8b 44 24 10          	mov    0x10(%esp),%eax
 1aa:	48                   	dec    %eax
 1ab:	89 44 24 2c          	mov    %eax,0x2c(%esp)
 1af:	8b 44 24 30          	mov    0x30(%esp),%eax
 1b3:	39 6c 24 10          	cmp    %ebp,0x10(%esp)
 1b7:	7e 48                	jle    201 <uhci_realloc_pipe+0x201>
 1b9:	8b 3c 24             	mov    (%esp),%edi
 1bc:	39 6c 24 2c          	cmp    %ebp,0x2c(%esp)
 1c0:	74 02                	je     1c4 <uhci_realloc_pipe+0x1c4>
 1c2:	89 d7                	mov    %edx,%edi
 1c4:	89 7a f0             	mov    %edi,-0x10(%edx)
 1c7:	8b 7c 24 04          	mov    0x4(%esp),%edi
 1cb:	89 7a f4             	mov    %edi,-0xc(%edx)
 1ce:	8b 4c 24 24          	mov    0x24(%esp),%ecx
 1d2:	0b 4c 24 20          	or     0x20(%esp),%ecx
 1d6:	0b 4c 24 28          	or     0x28(%esp),%ecx
 1da:	83 c9 69             	or     $0x69,%ecx
 1dd:	89 4a f8             	mov    %ecx,-0x8(%edx)
 1e0:	8b 7c 24 18          	mov    0x18(%esp),%edi
 1e4:	89 7a fc             	mov    %edi,-0x4(%edx)
 1e7:	81 74 24 20 00 00 08 	xorl   $0x80000,0x20(%esp)
 1ee:	00 
 1ef:	89 e9                	mov    %ebp,%ecx
 1f1:	41                   	inc    %ecx
 1f2:	89 cd                	mov    %ecx,%ebp
 1f4:	83 c2 10             	add    $0x10,%edx
 1f7:	8b 7c 24 14          	mov    0x14(%esp),%edi
 1fb:	01 7c 24 18          	add    %edi,0x18(%esp)
 1ff:	eb b2                	jmp    1b3 <uhci_realloc_pipe+0x1b3>
 201:	8b 56 1c             	mov    0x1c(%esi),%edx
 204:	89 df                	mov    %ebx,%edi
 206:	83 cf 02             	or     $0x2,%edi
 209:	83 7c 24 08 00       	cmpl   $0x0,0x8(%esp)
 20e:	75 1c                	jne    22c <uhci_realloc_pipe+0x22c>
 210:	8b 12                	mov    (%edx),%edx
 212:	83 e2 f0             	and    $0xfffffff0,%edx
 215:	8b 0a                	mov    (%edx),%ecx
 217:	89 0b                	mov    %ecx,(%ebx)
 219:	89 3a                	mov    %edi,(%edx)
 21b:	3b 56 18             	cmp    0x18(%esi),%edx
 21e:	0f 85 e3 00 00 00    	jne    307 <uhci_realloc_pipe+0x307>
 224:	89 5e 18             	mov    %ebx,0x18(%esi)
 227:	e9 db 00 00 00       	jmp    307 <uhci_realloc_pipe+0x307>
 22c:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
 230:	49                   	dec    %ecx
 231:	be 01 00 00 00       	mov    $0x1,%esi
 236:	d3 e6                	shl    %cl,%esi
 238:	89 f1                	mov    %esi,%ecx
 23a:	8b 34 b2             	mov    (%edx,%esi,4),%esi
 23d:	89 33                	mov    %esi,(%ebx)
 23f:	89 3c 8a             	mov    %edi,(%edx,%ecx,4)
 242:	03 4c 24 1c          	add    0x1c(%esp),%ecx
 246:	81 f9 ff 03 00 00    	cmp    $0x3ff,%ecx
 24c:	7e f1                	jle    23f <uhci_realloc_pipe+0x23f>
 24e:	e9 b4 00 00 00       	jmp    307 <uhci_realloc_pipe+0x307>
 253:	0f b6 d3             	movzbl %bl,%edx
 256:	52                   	push   %edx
 257:	89 54 24 04          	mov    %edx,0x4(%esp)
 25b:	56                   	push   %esi
 25c:	68 69 00 00 00       	push   $0x69
 261:	e8 fc ff ff ff       	call   262 <uhci_realloc_pipe+0x262>
 266:	8b 54 24 0c          	mov    0xc(%esp),%edx
 26a:	89 f0                	mov    %esi,%eax
 26c:	e8 fc ff ff ff       	call   26d <uhci_realloc_pipe+0x26d>
 271:	83 c4 0c             	add    $0xc,%esp
 274:	85 c0                	test   %eax,%eax
 276:	74 13                	je     28b <uhci_realloc_pipe+0x28b>
 278:	89 f9                	mov    %edi,%ecx
 27a:	8b 54 24 04          	mov    0x4(%esp),%edx
 27e:	89 04 24             	mov    %eax,(%esp)
 281:	e8 fc ff ff ff       	call   282 <uhci_realloc_pipe+0x282>
 286:	8b 04 24             	mov    (%esp),%eax
 289:	eb 7c                	jmp    307 <uhci_realloc_pipe+0x307>
 28b:	b9 10 00 00 00       	mov    $0x10,%ecx
 290:	ba 1c 00 00 00       	mov    $0x1c,%edx
 295:	b8 00 00 00 00       	mov    $0x0,%eax
 29a:	84 db                	test   %bl,%bl
 29c:	74 05                	je     2a3 <uhci_realloc_pipe+0x2a3>
 29e:	b8 00 00 00 00       	mov    $0x0,%eax
 2a3:	e8 fc ff ff ff       	call   2a4 <uhci_realloc_pipe+0x2a4>
 2a8:	89 c5                	mov    %eax,%ebp
 2aa:	85 c0                	test   %eax,%eax
 2ac:	75 11                	jne    2bf <uhci_realloc_pipe+0x2bf>
 2ae:	ba 00 00 00 00       	mov    $0x0,%edx
 2b3:	b8 84 01 00 00       	mov    $0x184,%eax
 2b8:	e8 fc ff ff ff       	call   2b9 <uhci_realloc_pipe+0x2b9>
 2bd:	eb 46                	jmp    305 <uhci_realloc_pipe+0x305>
 2bf:	b9 1c 00 00 00       	mov    $0x1c,%ecx
 2c4:	31 d2                	xor    %edx,%edx
 2c6:	e8 fc ff ff ff       	call   2c7 <uhci_realloc_pipe+0x2c7>
 2cb:	8d 45 0c             	lea    0xc(%ebp),%eax
 2ce:	89 f9                	mov    %edi,%ecx
 2d0:	8b 54 24 04          	mov    0x4(%esp),%edx
 2d4:	89 04 24             	mov    %eax,(%esp)
 2d7:	e8 fc ff ff ff       	call   2d8 <uhci_realloc_pipe+0x2d8>
 2dc:	c7 45 04 01 00 00 00 	movl   $0x1,0x4(%ebp)
 2e3:	8b 56 14             	mov    0x14(%esi),%edx
 2e6:	66 89 55 18          	mov    %dx,0x18(%ebp)
 2ea:	8b 56 18             	mov    0x18(%esi),%edx
 2ed:	8b 0a                	mov    (%edx),%ecx
 2ef:	89 4d 00             	mov    %ecx,0x0(%ebp)
 2f2:	89 e9                	mov    %ebp,%ecx
 2f4:	83 c9 02             	or     $0x2,%ecx
 2f7:	89 0a                	mov    %ecx,(%edx)
 2f9:	84 db                	test   %bl,%bl
 2fb:	8b 04 24             	mov    (%esp),%eax
 2fe:	75 07                	jne    307 <uhci_realloc_pipe+0x307>
 300:	89 6e 18             	mov    %ebp,0x18(%esi)
 303:	eb 02                	jmp    307 <uhci_realloc_pipe+0x307>
 305:	31 c0                	xor    %eax,%eax
 307:	83 c4 34             	add    $0x34,%esp
 30a:	5b                   	pop    %ebx
 30b:	5e                   	pop    %esi
 30c:	5f                   	pop    %edi
 30d:	5d                   	pop    %ebp
 30e:	c3                   	ret    

Disassembly of section .text.uhci_send_pipe:

00000000 <uhci_send_pipe>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	81 ec 34 01 00 00    	sub    $0x134,%esp
   a:	89 c6                	mov    %eax,%esi
   c:	89 54 24 14          	mov    %edx,0x14(%esp)
  10:	89 4c 24 04          	mov    %ecx,0x4(%esp)
  14:	ff b4 24 4c 01 00 00 	push   0x14c(%esp)
  1b:	ff b4 24 4c 01 00 00 	push   0x14c(%esp)
  22:	ff 74 24 1c          	push   0x1c(%esp)
  26:	83 e8 0c             	sub    $0xc,%eax
  29:	50                   	push   %eax
  2a:	68 86 00 00 00       	push   $0x86
  2f:	e8 fc ff ff ff       	call   30 <uhci_send_pipe+0x30>
  34:	0f b7 46 08          	movzwl 0x8(%esi),%eax
  38:	89 44 24 1c          	mov    %eax,0x1c(%esp)
  3c:	0f b6 46 07          	movzbl 0x7(%esi),%eax
  40:	89 44 24 20          	mov    %eax,0x20(%esp)
  44:	0f b6 46 05          	movzbl 0x5(%esi),%eax
  48:	c1 e0 07             	shl    $0x7,%eax
  4b:	0f b6 56 06          	movzbl 0x6(%esi),%edx
  4f:	09 d0                	or     %edx,%eax
  51:	89 c5                	mov    %eax,%ebp
  53:	8a 5e 0e             	mov    0xe(%esi),%bl
  56:	8d 7c 24 48          	lea    0x48(%esp),%edi
  5a:	83 e7 f0             	and    $0xfffffff0,%edi
  5d:	b9 00 01 00 00       	mov    $0x100,%ecx
  62:	31 d2                	xor    %edx,%edx
  64:	89 f8                	mov    %edi,%eax
  66:	e8 fc ff ff ff       	call   67 <uhci_send_pipe+0x67>
  6b:	8b 94 24 60 01 00 00 	mov    0x160(%esp),%edx
  72:	89 f0                	mov    %esi,%eax
  74:	e8 fc ff ff ff       	call   75 <uhci_send_pipe+0x75>
  79:	e8 fc ff ff ff       	call   7a <uhci_send_pipe+0x7a>
  7e:	89 44 24 24          	mov    %eax,0x24(%esp)
  82:	89 7e f8             	mov    %edi,-0x8(%esi)
  85:	83 c4 14             	add    $0x14,%esp
  88:	83 7c 24 04 00       	cmpl   $0x0,0x4(%esp)
  8d:	74 3e                	je     cd <uhci_send_pipe+0xcd>
  8f:	8d 47 10             	lea    0x10(%edi),%eax
  92:	83 c8 04             	or     $0x4,%eax
  95:	89 07                	mov    %eax,(%edi)
  97:	89 e8                	mov    %ebp,%eax
  99:	c1 e0 08             	shl    $0x8,%eax
  9c:	0d 2d 00 e0 00       	or     $0xe0002d,%eax
  a1:	89 47 08             	mov    %eax,0x8(%edi)
  a4:	8b 44 24 04          	mov    0x4(%esp),%eax
  a8:	89 47 0c             	mov    %eax,0xc(%edi)
  ab:	83 7c 24 0c 01       	cmpl   $0x1,0xc(%esp)
  b0:	19 c0                	sbb    %eax,%eax
  b2:	25 00 00 00 fc       	and    $0xfc000000,%eax
  b7:	05 00 00 80 1c       	add    $0x1c800000,%eax
  bc:	89 47 04             	mov    %eax,0x4(%edi)
  bf:	bb 01 00 00 00       	mov    $0x1,%ebx
  c4:	c7 04 24 00 00 08 00 	movl   $0x80000,(%esp)
  cb:	eb 0f                	jmp    dc <uhci_send_pipe+0xdc>
  cd:	31 c0                	xor    %eax,%eax
  cf:	84 db                	test   %bl,%bl
  d1:	0f 95 c0             	setne  %al
  d4:	c1 e0 13             	shl    $0x13,%eax
  d7:	89 04 24             	mov    %eax,(%esp)
  da:	31 db                	xor    %ebx,%ebx
  dc:	c1 e5 08             	shl    $0x8,%ebp
  df:	89 6c 24 1c          	mov    %ebp,0x1c(%esp)
  e3:	83 7c 24 14 01       	cmpl   $0x1,0x14(%esp)
  e8:	19 c0                	sbb    %eax,%eax
  ea:	89 44 24 18          	mov    %eax,0x18(%esp)
  ee:	83 64 24 18 78       	andl   $0x78,0x18(%esp)
  f3:	83 44 24 18 69       	addl   $0x69,0x18(%esp)
  f8:	83 7c 24 0c 01       	cmpl   $0x1,0xc(%esp)
  fd:	19 ed                	sbb    %ebp,%ebp
  ff:	81 e5 00 00 00 fc    	and    $0xfc000000,%ebp
 105:	81 c5 00 00 80 1c    	add    $0x1c800000,%ebp
 10b:	83 bc 24 4c 01 00 00 	cmpl   $0x0,0x14c(%esp)
 112:	00 
 113:	0f 84 a0 00 00 00    	je     1b9 <uhci_send_pipe+0x1b9>
 119:	8d 43 01             	lea    0x1(%ebx),%eax
 11c:	89 44 24 20          	mov    %eax,0x20(%esp)
 120:	83 e3 0f             	and    $0xf,%ebx
 123:	c1 e3 04             	shl    $0x4,%ebx
 126:	01 fb                	add    %edi,%ebx
 128:	8b 54 24 10          	mov    0x10(%esp),%edx
 12c:	89 d8                	mov    %ebx,%eax
 12e:	e8 fc ff ff ff       	call   12f <uhci_send_pipe+0x12f>
 133:	85 c0                	test   %eax,%eax
 135:	0f 85 52 01 00 00    	jne    28d <uhci_send_pipe+0x28d>
 13b:	8b 94 24 4c 01 00 00 	mov    0x14c(%esp),%edx
 142:	8b 44 24 08          	mov    0x8(%esp),%eax
 146:	39 c2                	cmp    %eax,%edx
 148:	7e 02                	jle    14c <uhci_send_pipe+0x14c>
 14a:	89 c2                	mov    %eax,%edx
 14c:	8b 44 24 20          	mov    0x20(%esp),%eax
 150:	83 e0 0f             	and    $0xf,%eax
 153:	c1 e0 04             	shl    $0x4,%eax
 156:	01 f8                	add    %edi,%eax
 158:	8b 4c 24 08          	mov    0x8(%esp),%ecx
 15c:	39 8c 24 4c 01 00 00 	cmp    %ecx,0x14c(%esp)
 163:	7f 0c                	jg     171 <uhci_send_pipe+0x171>
 165:	b9 01 00 00 00       	mov    $0x1,%ecx
 16a:	83 7c 24 04 00       	cmpl   $0x0,0x4(%esp)
 16f:	74 05                	je     176 <uhci_send_pipe+0x176>
 171:	83 c8 04             	or     $0x4,%eax
 174:	89 c1                	mov    %eax,%ecx
 176:	89 0b                	mov    %ecx,(%ebx)
 178:	8d 42 ff             	lea    -0x1(%edx),%eax
 17b:	c1 e0 15             	shl    $0x15,%eax
 17e:	8b 4c 24 1c          	mov    0x1c(%esp),%ecx
 182:	0b 4c 24 18          	or     0x18(%esp),%ecx
 186:	0b 0c 24             	or     (%esp),%ecx
 189:	09 c8                	or     %ecx,%eax
 18b:	89 43 08             	mov    %eax,0x8(%ebx)
 18e:	8b 84 24 48 01 00 00 	mov    0x148(%esp),%eax
 195:	89 43 0c             	mov    %eax,0xc(%ebx)
 198:	89 6b 04             	mov    %ebp,0x4(%ebx)
 19b:	81 34 24 00 00 08 00 	xorl   $0x80000,(%esp)
 1a2:	01 94 24 48 01 00 00 	add    %edx,0x148(%esp)
 1a9:	29 94 24 4c 01 00 00 	sub    %edx,0x14c(%esp)
 1b0:	8b 5c 24 20          	mov    0x20(%esp),%ebx
 1b4:	e9 52 ff ff ff       	jmp    10b <uhci_send_pipe+0x10b>
 1b9:	83 7c 24 04 00       	cmpl   $0x0,0x4(%esp)
 1be:	74 57                	je     217 <uhci_send_pipe+0x217>
 1c0:	83 e3 0f             	and    $0xf,%ebx
 1c3:	c1 e3 04             	shl    $0x4,%ebx
 1c6:	01 fb                	add    %edi,%ebx
 1c8:	8b 54 24 10          	mov    0x10(%esp),%edx
 1cc:	89 d8                	mov    %ebx,%eax
 1ce:	e8 fc ff ff ff       	call   1cf <uhci_send_pipe+0x1cf>
 1d3:	85 c0                	test   %eax,%eax
 1d5:	0f 85 b2 00 00 00    	jne    28d <uhci_send_pipe+0x28d>
 1db:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
 1e1:	83 7c 24 14 01       	cmpl   $0x1,0x14(%esp)
 1e6:	19 c0                	sbb    %eax,%eax
 1e8:	83 e0 88             	and    $0xffffff88,%eax
 1eb:	05 e1 00 00 00       	add    $0xe1,%eax
 1f0:	0b 44 24 1c          	or     0x1c(%esp),%eax
 1f4:	0d 00 00 e8 ff       	or     $0xffe80000,%eax
 1f9:	89 43 08             	mov    %eax,0x8(%ebx)
 1fc:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
 203:	83 7c 24 0c 01       	cmpl   $0x1,0xc(%esp)
 208:	19 c0                	sbb    %eax,%eax
 20a:	25 00 00 00 fc       	and    $0xfc000000,%eax
 20f:	05 00 00 80 04       	add    $0x4800000,%eax
 214:	89 43 04             	mov    %eax,0x4(%ebx)
 217:	83 3c 24 00          	cmpl   $0x0,(%esp)
 21b:	0f 95 46 0e          	setne  0xe(%esi)
 21f:	8b 5e f8             	mov    -0x8(%esi),%ebx
 222:	f6 c3 01             	test   $0x1,%bl
 225:	0f 85 88 00 00 00    	jne    2b3 <uhci_send_pipe+0x2b3>
 22b:	8b 44 24 10          	mov    0x10(%esp),%eax
 22f:	e8 fc ff ff ff       	call   230 <uhci_send_pipe+0x230>
 234:	85 c0                	test   %eax,%eax
 236:	74 4e                	je     286 <uhci_send_pipe+0x286>
 238:	ba 00 00 00 00       	mov    $0x0,%edx
 23d:	b8 9e 01 00 00       	mov    $0x19e,%eax
 242:	e8 fc ff ff ff       	call   243 <uhci_send_pipe+0x243>
 247:	8b 7e 0c             	mov    0xc(%esi),%edi
 24a:	8d 57 02             	lea    0x2(%edi),%edx
 24d:	66 ed                	in     (%dx),%ax
 24f:	0f b7 c8             	movzwl %ax,%ecx
 252:	89 fa                	mov    %edi,%edx
 254:	66 ed                	in     (%dx),%ax
 256:	51                   	push   %ecx
 257:	0f b7 c0             	movzwl %ax,%eax
 25a:	50                   	push   %eax
 25b:	89 d8                	mov    %ebx,%eax
 25d:	83 e0 f0             	and    $0xfffffff0,%eax
 260:	ff 70 04             	push   0x4(%eax)
 263:	53                   	push   %ebx
 264:	8d 46 f4             	lea    -0xc(%esi),%eax
 267:	50                   	push   %eax
 268:	68 b3 00 00 00       	push   $0xb3
 26d:	e8 fc ff ff ff       	call   26e <uhci_send_pipe+0x26e>
 272:	c7 46 f8 01 00 00 00 	movl   $0x1,-0x8(%esi)
 279:	0f b7 c7             	movzwl %di,%eax
 27c:	e8 fc ff ff ff       	call   27d <uhci_send_pipe+0x27d>
 281:	83 c4 18             	add    $0x18,%esp
 284:	eb 22                	jmp    2a8 <uhci_send_pipe+0x2a8>
 286:	e8 fc ff ff ff       	call   287 <uhci_send_pipe+0x287>
 28b:	eb 92                	jmp    21f <uhci_send_pipe+0x21f>
 28d:	68 e1 00 00 00       	push   $0xe1
 292:	e8 fc ff ff ff       	call   293 <uhci_send_pipe+0x293>
 297:	c7 46 f8 01 00 00 00 	movl   $0x1,-0x8(%esi)
 29e:	0f b7 46 0c          	movzwl 0xc(%esi),%eax
 2a2:	e8 fc ff ff ff       	call   2a3 <uhci_send_pipe+0x2a3>
 2a7:	58                   	pop    %eax
 2a8:	c7 84 24 4c 01 00 00 	movl   $0xffffffff,0x14c(%esp)
 2af:	ff ff ff ff 
 2b3:	8b 84 24 4c 01 00 00 	mov    0x14c(%esp),%eax
 2ba:	81 c4 34 01 00 00    	add    $0x134,%esp
 2c0:	5b                   	pop    %ebx
 2c1:	5e                   	pop    %esi
 2c2:	5f                   	pop    %edi
 2c3:	5d                   	pop    %ebp
 2c4:	c3                   	ret    

Disassembly of section .text.uhci_poll_intr:

00000000 <uhci_poll_intr>:
   0:	e8 fc ff ff ff       	call   1 <uhci_poll_intr+0x1>
