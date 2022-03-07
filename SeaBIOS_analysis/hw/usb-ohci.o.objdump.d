
./usb-ohci.o:     file format elf32-i386


Disassembly of section .text.ohci_hub_detect:

00000000 <ohci_hub_detect>:
   0:	8b 40 08             	mov    0x8(%eax),%eax
   3:	8b 40 14             	mov    0x14(%eax),%eax
   6:	83 c2 14             	add    $0x14,%edx
   9:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
   d:	83 e0 01             	and    $0x1,%eax
  10:	c3                   	ret    

Disassembly of section .text.ohci_hub_disconnect:

00000000 <ohci_hub_disconnect>:
   0:	8b 40 08             	mov    0x8(%eax),%eax
   3:	8b 40 14             	mov    0x14(%eax),%eax
   6:	83 c2 14             	add    $0x14,%edx
   9:	c7 44 90 04 01 02 00 	movl   $0x201,0x4(%eax,%edx,4)
  10:	00 
  11:	c3                   	ret    

Disassembly of section .text.ohci_hub_reset:

00000000 <ohci_hub_reset>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	51                   	push   %ecx
   5:	89 c3                	mov    %eax,%ebx
   7:	89 d6                	mov    %edx,%esi
   9:	8b 78 08             	mov    0x8(%eax),%edi
   c:	8b 47 14             	mov    0x14(%edi),%eax
   f:	8d 6a 14             	lea    0x14(%edx),%ebp
  12:	c7 44 a8 04 10 00 00 	movl   $0x10,0x4(%eax,%ebp,4)
  19:	00 
  1a:	b8 64 00 00 00       	mov    $0x64,%eax
  1f:	e8 fc ff ff ff       	call   20 <ohci_hub_reset+0x20>
  24:	89 04 24             	mov    %eax,(%esp)
  27:	8b 47 14             	mov    0x14(%edi),%eax
  2a:	8b 44 a8 04          	mov    0x4(%eax,%ebp,4),%eax
  2e:	a8 10                	test   $0x10,%al
  30:	74 30                	je     62 <ohci_hub_reset+0x62>
  32:	8b 04 24             	mov    (%esp),%eax
  35:	e8 fc ff ff ff       	call   36 <ohci_hub_reset+0x36>
  3a:	85 c0                	test   %eax,%eax
  3c:	74 1d                	je     5b <ohci_hub_reset+0x5b>
  3e:	ba 00 00 00 00       	mov    $0x0,%edx
  43:	b8 4b 00 00 00       	mov    $0x4b,%eax
  48:	e8 fc ff ff ff       	call   49 <ohci_hub_reset+0x49>
  4d:	89 f2                	mov    %esi,%edx
  4f:	89 d8                	mov    %ebx,%eax
  51:	e8 fc ff ff ff       	call   52 <ohci_hub_reset+0x52>
  56:	83 ca ff             	or     $0xffffffff,%edx
  59:	eb 1c                	jmp    77 <ohci_hub_reset+0x77>
  5b:	e8 fc ff ff ff       	call   5c <ohci_hub_reset+0x5c>
  60:	eb c5                	jmp    27 <ohci_hub_reset+0x27>
  62:	89 c1                	mov    %eax,%ecx
  64:	83 e1 03             	and    $0x3,%ecx
  67:	83 ca ff             	or     $0xffffffff,%edx
  6a:	83 f9 03             	cmp    $0x3,%ecx
  6d:	75 08                	jne    77 <ohci_hub_reset+0x77>
  6f:	c1 e8 09             	shr    $0x9,%eax
  72:	83 e0 01             	and    $0x1,%eax
  75:	89 c2                	mov    %eax,%edx
  77:	89 d0                	mov    %edx,%eax
  79:	5a                   	pop    %edx
  7a:	5b                   	pop    %ebx
  7b:	5e                   	pop    %esi
  7c:	5f                   	pop    %edi
  7d:	5d                   	pop    %ebp
  7e:	c3                   	ret    

Disassembly of section .text.ohci_desc2pipe:

00000000 <ohci_desc2pipe>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	89 c3                	mov    %eax,%ebx
   5:	89 d6                	mov    %edx,%esi
   7:	89 cf                	mov    %ecx,%edi
   9:	8d 40 10             	lea    0x10(%eax),%eax
   c:	e8 fc ff ff ff       	call   d <ohci_desc2pipe+0xd>
  11:	0f b7 47 04          	movzwl 0x4(%edi),%eax
  15:	c1 e0 10             	shl    $0x10,%eax
  18:	0f b6 56 19          	movzbl 0x19(%esi),%edx
  1c:	09 d0                	or     %edx,%eax
  1e:	0f b6 53 15          	movzbl 0x15(%ebx),%edx
  22:	c1 e2 07             	shl    $0x7,%edx
  25:	09 d0                	or     %edx,%eax
  27:	31 d2                	xor    %edx,%edx
  29:	80 7e 18 00          	cmpb   $0x0,0x18(%esi)
  2d:	0f 95 c2             	setne  %dl
  30:	c1 e2 0d             	shl    $0xd,%edx
  33:	09 d0                	or     %edx,%eax
  35:	80 cc 40             	or     $0x40,%ah
  38:	89 03                	mov    %eax,(%ebx)
  3a:	8b 06                	mov    (%esi),%eax
  3c:	8b 40 08             	mov    0x8(%eax),%eax
  3f:	8b 40 14             	mov    0x14(%eax),%eax
  42:	89 43 1c             	mov    %eax,0x1c(%ebx)
  45:	5b                   	pop    %ebx
  46:	5e                   	pop    %esi
  47:	5f                   	pop    %edi
  48:	c3                   	ret    

Disassembly of section .text.ohci_waittick:

00000000 <ohci_waittick>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	8b 70 18             	mov    0x18(%eax),%esi
   6:	8b be 80 00 00 00    	mov    0x80(%esi),%edi
   c:	b8 88 13 00 00       	mov    $0x1388,%eax
  11:	e8 fc ff ff ff       	call   12 <ohci_waittick+0x12>
  16:	89 c3                	mov    %eax,%ebx
  18:	39 be 80 00 00 00    	cmp    %edi,0x80(%esi)
  1e:	75 24                	jne    44 <ohci_waittick+0x44>
  20:	89 d8                	mov    %ebx,%eax
  22:	e8 fc ff ff ff       	call   23 <ohci_waittick+0x23>
  27:	85 c0                	test   %eax,%eax
  29:	74 12                	je     3d <ohci_waittick+0x3d>
  2b:	ba 00 00 00 00       	mov    $0x0,%edx
  30:	b8 88 00 00 00       	mov    $0x88,%eax
  35:	5b                   	pop    %ebx
  36:	5e                   	pop    %esi
  37:	5f                   	pop    %edi
  38:	e9 fc ff ff ff       	jmp    39 <ohci_waittick+0x39>
  3d:	e8 fc ff ff ff       	call   3e <ohci_waittick+0x3e>
  42:	eb d4                	jmp    18 <ohci_waittick+0x18>
  44:	5b                   	pop    %ebx
  45:	5e                   	pop    %esi
  46:	5f                   	pop    %edi
  47:	c3                   	ret    

Disassembly of section .text.configure_ohci:

00000000 <configure_ohci>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 30             	sub    $0x30,%esp
   7:	89 c3                	mov    %eax,%ebx
   9:	b9 00 01 00 00       	mov    $0x100,%ecx
   e:	ba 00 01 00 00       	mov    $0x100,%edx
  13:	b8 00 00 00 00       	mov    $0x0,%eax
  18:	e8 fc ff ff ff       	call   19 <configure_ohci+0x19>
  1d:	89 44 24 04          	mov    %eax,0x4(%esp)
  21:	b9 10 00 00 00       	mov    $0x10,%ecx
  26:	ba 10 00 00 00       	mov    $0x10,%edx
  2b:	b8 00 00 00 00       	mov    $0x0,%eax
  30:	e8 fc ff ff ff       	call   31 <configure_ohci+0x31>
  35:	89 04 24             	mov    %eax,(%esp)
  38:	85 c0                	test   %eax,%eax
  3a:	74 07                	je     43 <configure_ohci+0x43>
  3c:	83 7c 24 04 00       	cmpl   $0x0,0x4(%esp)
  41:	75 14                	jne    57 <configure_ohci+0x57>
  43:	ba 00 00 00 00       	mov    $0x0,%edx
  48:	b8 f1 00 00 00       	mov    $0xf1,%eax
  4d:	e8 fc ff ff ff       	call   4e <configure_ohci+0x4e>
  52:	e9 13 02 00 00       	jmp    26a <configure_ohci+0x26a>
  57:	b9 00 01 00 00       	mov    $0x100,%ecx
  5c:	31 d2                	xor    %edx,%edx
  5e:	8b 44 24 04          	mov    0x4(%esp),%eax
  62:	e8 fc ff ff ff       	call   63 <configure_ohci+0x63>
  67:	b9 10 00 00 00       	mov    $0x10,%ecx
  6c:	31 d2                	xor    %edx,%edx
  6e:	8b 04 24             	mov    (%esp),%eax
  71:	e8 fc ff ff ff       	call   72 <configure_ohci+0x72>
  76:	8b 04 24             	mov    (%esp),%eax
  79:	c7 00 00 40 00 00    	movl   $0x4000,(%eax)
  7f:	31 c0                	xor    %eax,%eax
  81:	8b 7c 24 04          	mov    0x4(%esp),%edi
  85:	8b 34 24             	mov    (%esp),%esi
  88:	89 34 87             	mov    %esi,(%edi,%eax,4)
  8b:	40                   	inc    %eax
  8c:	83 f8 20             	cmp    $0x20,%eax
  8f:	75 f0                	jne    81 <configure_ohci+0x81>
  91:	8b 43 14             	mov    0x14(%ebx),%eax
  94:	8b 70 34             	mov    0x34(%eax),%esi
  97:	8b 43 14             	mov    0x14(%ebx),%eax
  9a:	8b 78 04             	mov    0x4(%eax),%edi
  9d:	81 e7 00 02 00 00    	and    $0x200,%edi
  a3:	8b 43 14             	mov    0x14(%ebx),%eax
  a6:	89 78 04             	mov    %edi,0x4(%eax)
  a9:	8b 43 14             	mov    0x14(%ebx),%eax
  ac:	8b 40 04             	mov    0x4(%eax),%eax
  af:	b8 32 00 00 00       	mov    $0x32,%eax
  b4:	e8 fc ff ff ff       	call   b5 <configure_ohci+0xb5>
  b9:	b8 0a 00 00 00       	mov    $0xa,%eax
  be:	e8 fc ff ff ff       	call   bf <configure_ohci+0xbf>
  c3:	89 c5                	mov    %eax,%ebp
  c5:	8b 43 14             	mov    0x14(%ebx),%eax
  c8:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%eax)
  cf:	8b 43 14             	mov    0x14(%ebx),%eax
  d2:	8b 40 08             	mov    0x8(%eax),%eax
  d5:	85 c0                	test   %eax,%eax
  d7:	74 1f                	je     f8 <configure_ohci+0xf8>
  d9:	89 e8                	mov    %ebp,%eax
  db:	e8 fc ff ff ff       	call   dc <configure_ohci+0xdc>
  e0:	85 c0                	test   %eax,%eax
  e2:	74 eb                	je     cf <configure_ohci+0xcf>
  e4:	ba 00 00 00 00       	mov    $0x0,%edx
  e9:	b8 c3 00 00 00       	mov    $0xc3,%eax
  ee:	e8 fc ff ff ff       	call   ef <configure_ohci+0xef>
  f3:	e9 5b 01 00 00       	jmp    253 <configure_ohci+0x253>
  f8:	8b 43 14             	mov    0x14(%ebx),%eax
  fb:	c7 40 20 00 00 00 00 	movl   $0x0,0x20(%eax)
 102:	8b 43 14             	mov    0x14(%ebx),%eax
 105:	c7 40 28 00 00 00 00 	movl   $0x0,0x28(%eax)
 10c:	8b 43 14             	mov    0x14(%ebx),%eax
 10f:	8b 4c 24 04          	mov    0x4(%esp),%ecx
 113:	89 48 18             	mov    %ecx,0x18(%eax)
 116:	89 f1                	mov    %esi,%ecx
 118:	81 e1 ff 3f 00 00    	and    $0x3fff,%ecx
 11e:	6b c1 06             	imul   $0x6,%ecx,%eax
 121:	2d ec 04 00 00       	sub    $0x4ec,%eax
 126:	bd 07 00 00 00       	mov    $0x7,%ebp
 12b:	31 d2                	xor    %edx,%edx
 12d:	f7 f5                	div    %ebp
 12f:	c1 e0 10             	shl    $0x10,%eax
 132:	f7 d6                	not    %esi
 134:	81 e6 00 00 00 80    	and    $0x80000000,%esi
 13a:	09 ce                	or     %ecx,%esi
 13c:	09 f0                	or     %esi,%eax
 13e:	8b 53 14             	mov    0x14(%ebx),%edx
 141:	89 42 34             	mov    %eax,0x34(%edx)
 144:	8d 04 c9             	lea    (%ecx,%ecx,8),%eax
 147:	b9 0a 00 00 00       	mov    $0xa,%ecx
 14c:	31 d2                	xor    %edx,%edx
 14e:	f7 f1                	div    %ecx
 150:	8b 53 14             	mov    0x14(%ebx),%edx
 153:	89 42 40             	mov    %eax,0x40(%edx)
 156:	8b 43 14             	mov    0x14(%ebx),%eax
 159:	8b 40 04             	mov    0x4(%eax),%eax
 15c:	81 cf b7 00 00 00    	or     $0xb7,%edi
 162:	8b 43 14             	mov    0x14(%ebx),%eax
 165:	89 78 04             	mov    %edi,0x4(%eax)
 168:	8b 43 14             	mov    0x14(%ebx),%eax
 16b:	8b 40 04             	mov    0x4(%eax),%eax
 16e:	e8 fc ff ff ff       	call   16f <configure_ohci+0x16f>
 173:	8b 43 14             	mov    0x14(%ebx),%eax
 176:	8b 70 48             	mov    0x48(%eax),%esi
 179:	8b 43 14             	mov    0x14(%ebx),%eax
 17c:	c7 40 50 00 00 01 00 	movl   $0x10000,0x50(%eax)
 183:	8b 43 14             	mov    0x14(%ebx),%eax
 186:	c7 40 4c 00 00 ff ff 	movl   $0xffff0000,0x4c(%eax)
 18d:	89 f0                	mov    %esi,%eax
 18f:	c1 e8 18             	shr    $0x18,%eax
 192:	01 c0                	add    %eax,%eax
 194:	e8 fc ff ff ff       	call   195 <configure_ohci+0x195>
 199:	b9 24 00 00 00       	mov    $0x24,%ecx
 19e:	31 d2                	xor    %edx,%edx
 1a0:	8d 44 24 0c          	lea    0xc(%esp),%eax
 1a4:	e8 fc ff ff ff       	call   1a5 <configure_ohci+0x1a5>
 1a9:	89 5c 24 14          	mov    %ebx,0x14(%esp)
 1ad:	81 e6 ff 00 00 00    	and    $0xff,%esi
 1b3:	89 74 24 28          	mov    %esi,0x28(%esp)
 1b7:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 1be:	00 
 1bf:	8d 44 24 0c          	lea    0xc(%esp),%eax
 1c3:	e8 fc ff ff ff       	call   1c4 <configure_ohci+0x1c4>
 1c8:	8b 6c 24 2c          	mov    0x2c(%esp),%ebp
 1cc:	53                   	push   %ebx
 1cd:	68 00 00 00 00       	push   $0x0
 1d2:	e8 fc ff ff ff       	call   1d3 <configure_ohci+0x1d3>
 1d7:	8b 43 14             	mov    0x14(%ebx),%eax
 1da:	8b 78 04             	mov    0x4(%eax),%edi
 1dd:	58                   	pop    %eax
 1de:	5a                   	pop    %edx
 1df:	f7 c7 30 00 00 00    	test   $0x30,%edi
 1e5:	74 13                	je     1fa <configure_ohci+0x1fa>
 1e7:	89 fa                	mov    %edi,%edx
 1e9:	83 e2 cf             	and    $0xffffffcf,%edx
 1ec:	8b 43 14             	mov    0x14(%ebx),%eax
 1ef:	89 50 04             	mov    %edx,0x4(%eax)
 1f2:	8b 43 14             	mov    0x14(%ebx),%eax
 1f5:	e8 fc ff ff ff       	call   1f6 <configure_ohci+0x1f6>
 1fa:	8b 43 14             	mov    0x14(%ebx),%eax
 1fd:	8d 70 20             	lea    0x20(%eax),%esi
 200:	8b 0e                	mov    (%esi),%ecx
 202:	85 c9                	test   %ecx,%ecx
 204:	74 29                	je     22f <configure_ohci+0x22f>
 206:	8d 51 10             	lea    0x10(%ecx),%edx
 209:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 20d:	89 d8                	mov    %ebx,%eax
 20f:	e8 fc ff ff ff       	call   210 <configure_ohci+0x210>
 214:	85 c0                	test   %eax,%eax
 216:	8b 4c 24 08          	mov    0x8(%esp),%ecx
 21a:	74 0e                	je     22a <configure_ohci+0x22a>
 21c:	8b 41 0c             	mov    0xc(%ecx),%eax
 21f:	89 06                	mov    %eax,(%esi)
 221:	89 c8                	mov    %ecx,%eax
 223:	e8 fc ff ff ff       	call   224 <configure_ohci+0x224>
 228:	eb d6                	jmp    200 <configure_ohci+0x200>
 22a:	8d 71 0c             	lea    0xc(%ecx),%esi
 22d:	eb d1                	jmp    200 <configure_ohci+0x200>
 22f:	8b 43 14             	mov    0x14(%ebx),%eax
 232:	c7 40 24 00 00 00 00 	movl   $0x0,0x24(%eax)
 239:	8b 43 14             	mov    0x14(%ebx),%eax
 23c:	c7 40 2c 00 00 00 00 	movl   $0x0,0x2c(%eax)
 243:	8b 43 14             	mov    0x14(%ebx),%eax
 246:	89 78 04             	mov    %edi,0x4(%eax)
 249:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
 24f:	85 ed                	test   %ebp,%ebp
 251:	75 2f                	jne    282 <configure_ohci+0x282>
 253:	8b 43 14             	mov    0x14(%ebx),%eax
 256:	8b 40 04             	mov    0x4(%eax),%eax
 259:	25 00 02 00 00       	and    $0x200,%eax
 25e:	8b 53 14             	mov    0x14(%ebx),%edx
 261:	89 42 04             	mov    %eax,0x4(%edx)
 264:	8b 43 14             	mov    0x14(%ebx),%eax
 267:	8b 40 04             	mov    0x4(%eax),%eax
 26a:	8b 44 24 04          	mov    0x4(%esp),%eax
 26e:	e8 fc ff ff ff       	call   26f <configure_ohci+0x26f>
 273:	8b 04 24             	mov    (%esp),%eax
 276:	83 c4 30             	add    $0x30,%esp
 279:	5b                   	pop    %ebx
 27a:	5e                   	pop    %esi
 27b:	5f                   	pop    %edi
 27c:	5d                   	pop    %ebp
 27d:	e9 fc ff ff ff       	jmp    27e <configure_ohci+0x27e>
 282:	83 c4 30             	add    $0x30,%esp
 285:	5b                   	pop    %ebx
 286:	5e                   	pop    %esi
 287:	5f                   	pop    %edi
 288:	5d                   	pop    %ebp
 289:	c3                   	ret    

Disassembly of section .text.ohci_setup:

00000000 <ohci_setup>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	a1 00 00 00 00       	mov    0x0,%eax
   8:	8d 58 fc             	lea    -0x4(%eax),%ebx
   b:	83 fb fc             	cmp    $0xfffffffc,%ebx
   e:	0f 84 ac 00 00 00    	je     c0 <ohci_setup+0xc0>
  14:	0f b7 43 14          	movzwl 0x14(%ebx),%eax
  18:	c1 e0 08             	shl    $0x8,%eax
  1b:	0f b6 53 16          	movzbl 0x16(%ebx),%edx
  1f:	09 d0                	or     %edx,%eax
  21:	3d 10 03 0c 00       	cmp    $0xc0310,%eax
  26:	0f 85 89 00 00 00    	jne    b5 <ohci_setup+0xb5>
  2c:	ba 10 00 00 00       	mov    $0x10,%edx
  31:	89 d8                	mov    %ebx,%eax
  33:	e8 fc ff ff ff       	call   34 <ohci_setup+0x34>
  38:	89 c7                	mov    %eax,%edi
  3a:	85 c0                	test   %eax,%eax
  3c:	74 77                	je     b5 <ohci_setup+0xb5>
  3e:	b9 10 00 00 00       	mov    $0x10,%ecx
  43:	ba 18 00 00 00       	mov    $0x18,%edx
  48:	b8 00 00 00 00       	mov    $0x0,%eax
  4d:	e8 fc ff ff ff       	call   4e <ohci_setup+0x4e>
  52:	89 c6                	mov    %eax,%esi
  54:	85 c0                	test   %eax,%eax
  56:	75 11                	jne    69 <ohci_setup+0x69>
  58:	ba 00 00 00 00       	mov    $0x0,%edx
  5d:	b8 15 01 00 00       	mov    $0x115,%eax
  62:	e8 fc ff ff ff       	call   63 <ohci_setup+0x63>
  67:	eb 4c                	jmp    b5 <ohci_setup+0xb5>
  69:	b9 18 00 00 00       	mov    $0x18,%ecx
  6e:	31 d2                	xor    %edx,%edx
  70:	e8 fc ff ff ff       	call   71 <ohci_setup+0x71>
  75:	89 5e 08             	mov    %ebx,0x8(%esi)
  78:	c6 46 10 02          	movb   $0x2,0x10(%esi)
  7c:	89 7e 14             	mov    %edi,0x14(%esi)
  7f:	57                   	push   %edi
  80:	53                   	push   %ebx
  81:	68 14 00 00 00       	push   $0x14
  86:	e8 fc ff ff ff       	call   87 <ohci_setup+0x87>
  8b:	89 d8                	mov    %ebx,%eax
  8d:	e8 fc ff ff ff       	call   8e <ohci_setup+0x8e>
  92:	8b 46 14             	mov    0x14(%esi),%eax
  95:	c7 40 14 ff ff ff ff 	movl   $0xffffffff,0x14(%eax)
  9c:	8b 46 14             	mov    0x14(%esi),%eax
  9f:	c7 40 0c ff ff ff ff 	movl   $0xffffffff,0xc(%eax)
  a6:	89 f2                	mov    %esi,%edx
  a8:	b8 00 00 00 00       	mov    $0x0,%eax
  ad:	e8 fc ff ff ff       	call   ae <ohci_setup+0xae>
  b2:	83 c4 0c             	add    $0xc,%esp
  b5:	8b 5b 04             	mov    0x4(%ebx),%ebx
  b8:	83 eb 04             	sub    $0x4,%ebx
  bb:	e9 4b ff ff ff       	jmp    b <ohci_setup+0xb>
  c0:	5b                   	pop    %ebx
  c1:	5e                   	pop    %esi
  c2:	5f                   	pop    %edi
  c3:	c3                   	ret    

Disassembly of section .text.ohci_realloc_pipe:

00000000 <ohci_realloc_pipe>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 24             	sub    $0x24,%esp
   7:	89 44 24 04          	mov    %eax,0x4(%esp)
   b:	89 d0                	mov    %edx,%eax
   d:	89 cf                	mov    %ecx,%edi
   f:	e8 fc ff ff ff       	call   10 <ohci_realloc_pipe+0x10>
  14:	85 ff                	test   %edi,%edi
  16:	0f 84 51 02 00 00    	je     26d <ohci_realloc_pipe+0x26d>
  1c:	8a 5f 03             	mov    0x3(%edi),%bl
  1f:	83 e3 03             	and    $0x3,%ebx
  22:	8b 44 24 04          	mov    0x4(%esp),%eax
  26:	8b 00                	mov    (%eax),%eax
  28:	8b 40 08             	mov    0x8(%eax),%eax
  2b:	89 04 24             	mov    %eax,(%esp)
  2e:	80 fb 03             	cmp    $0x3,%bl
  31:	0f 85 94 01 00 00    	jne    1cb <ohci_realloc_pipe+0x1cb>
  37:	89 fa                	mov    %edi,%edx
  39:	8b 44 24 04          	mov    0x4(%esp),%eax
  3d:	e8 fc ff ff ff       	call   3e <ohci_realloc_pipe+0x3e>
  42:	89 44 24 08          	mov    %eax,0x8(%esp)
  46:	50                   	push   %eax
  47:	ff 74 24 04          	push   0x4(%esp)
  4b:	68 34 00 00 00       	push   $0x34
  50:	e8 fc ff ff ff       	call   51 <ohci_realloc_pipe+0x51>
  55:	8b 44 24 14          	mov    0x14(%esp),%eax
  59:	89 44 24 18          	mov    %eax,0x18(%esp)
  5d:	83 c4 0c             	add    $0xc,%esp
  60:	83 f8 05             	cmp    $0x5,%eax
  63:	7e 08                	jle    6d <ohci_realloc_pipe+0x6d>
  65:	c7 44 24 0c 05 00 00 	movl   $0x5,0xc(%esp)
  6c:	00 
  6d:	66 8b 6f 04          	mov    0x4(%edi),%bp
  71:	b8 01 00 00 00       	mov    $0x1,%eax
  76:	8a 4c 24 0c          	mov    0xc(%esp),%cl
  7a:	d3 e0                	shl    %cl,%eax
  7c:	89 44 24 18          	mov    %eax,0x18(%esp)
  80:	b8 02 00 00 00       	mov    $0x2,%eax
  85:	e8 fc ff ff ff       	call   86 <ohci_realloc_pipe+0x86>
  8a:	8b 5c 24 18          	mov    0x18(%esp),%ebx
  8e:	8d 44 03 ff          	lea    -0x1(%ebx,%eax,1),%eax
  92:	8a 4c 24 0c          	mov    0xc(%esp),%cl
  96:	d3 e8                	shr    %cl,%eax
  98:	89 44 24 1c          	mov    %eax,0x1c(%esp)
  9c:	40                   	inc    %eax
  9d:	89 44 24 10          	mov    %eax,0x10(%esp)
  a1:	b9 10 00 00 00       	mov    $0x10,%ecx
  a6:	ba 2c 00 00 00       	mov    $0x2c,%edx
  ab:	b8 00 00 00 00       	mov    $0x0,%eax
  b0:	e8 fc ff ff ff       	call   b1 <ohci_realloc_pipe+0xb1>
  b5:	89 c3                	mov    %eax,%ebx
  b7:	8b 44 24 10          	mov    0x10(%esp),%eax
  bb:	c1 e0 04             	shl    $0x4,%eax
  be:	89 44 24 20          	mov    %eax,0x20(%esp)
  c2:	b9 10 00 00 00       	mov    $0x10,%ecx
  c7:	89 c2                	mov    %eax,%edx
  c9:	b8 00 00 00 00       	mov    $0x0,%eax
  ce:	e8 fc ff ff ff       	call   cf <ohci_realloc_pipe+0xcf>
  d3:	89 c6                	mov    %eax,%esi
  d5:	0f b7 c5             	movzwl %bp,%eax
  d8:	89 44 24 14          	mov    %eax,0x14(%esp)
  dc:	8b 54 24 10          	mov    0x10(%esp),%edx
  e0:	0f af d0             	imul   %eax,%edx
  e3:	b9 10 00 00 00       	mov    $0x10,%ecx
  e8:	b8 00 00 00 00       	mov    $0x0,%eax
  ed:	e8 fc ff ff ff       	call   ee <ohci_realloc_pipe+0xee>
  f2:	89 c5                	mov    %eax,%ebp
  f4:	85 f6                	test   %esi,%esi
  f6:	0f 94 c0             	sete   %al
  f9:	85 db                	test   %ebx,%ebx
  fb:	0f 94 c2             	sete   %dl
  fe:	08 d0                	or     %dl,%al
 100:	75 04                	jne    106 <ohci_realloc_pipe+0x106>
 102:	85 ed                	test   %ebp,%ebp
 104:	75 1a                	jne    120 <ohci_realloc_pipe+0x120>
 106:	89 d8                	mov    %ebx,%eax
 108:	e8 fc ff ff ff       	call   109 <ohci_realloc_pipe+0x109>
 10d:	89 f0                	mov    %esi,%eax
 10f:	e8 fc ff ff ff       	call   110 <ohci_realloc_pipe+0x110>
 114:	89 e8                	mov    %ebp,%eax
 116:	e8 fc ff ff ff       	call   117 <ohci_realloc_pipe+0x117>
 11b:	e9 10 01 00 00       	jmp    230 <ohci_realloc_pipe+0x230>
 120:	b9 2c 00 00 00       	mov    $0x2c,%ecx
 125:	31 d2                	xor    %edx,%edx
 127:	89 d8                	mov    %ebx,%eax
 129:	e8 fc ff ff ff       	call   12a <ohci_realloc_pipe+0x12a>
 12e:	89 f9                	mov    %edi,%ecx
 130:	8b 54 24 04          	mov    0x4(%esp),%edx
 134:	89 d8                	mov    %ebx,%eax
 136:	e8 fc ff ff ff       	call   137 <ohci_realloc_pipe+0x137>
 13b:	81 23 ff bf ff ff    	andl   $0xffffbfff,(%ebx)
 141:	89 6b 20             	mov    %ebp,0x20(%ebx)
 144:	8b 44 24 10          	mov    0x10(%esp),%eax
 148:	89 43 24             	mov    %eax,0x24(%ebx)
 14b:	89 73 28             	mov    %esi,0x28(%ebx)
 14e:	89 73 08             	mov    %esi,0x8(%ebx)
 151:	8b 44 24 20          	mov    0x20(%esp),%eax
 155:	8d 44 06 f0          	lea    -0x10(%esi,%eax,1),%eax
 159:	89 43 04             	mov    %eax,0x4(%ebx)
 15c:	31 c0                	xor    %eax,%eax
 15e:	8b 7c 24 14          	mov    0x14(%esp),%edi
 162:	8d 57 ff             	lea    -0x1(%edi),%edx
 165:	83 c6 10             	add    $0x10,%esi
 168:	3b 44 24 1c          	cmp    0x1c(%esp),%eax
 16c:	7d 1a                	jge    188 <ohci_realloc_pipe+0x188>
 16e:	c7 46 f0 00 00 10 f0 	movl   $0xf0100000,-0x10(%esi)
 175:	89 6e f4             	mov    %ebp,-0xc(%esi)
 178:	89 76 f8             	mov    %esi,-0x8(%esi)
 17b:	8d 0c 2a             	lea    (%edx,%ebp,1),%ecx
 17e:	89 4e fc             	mov    %ecx,-0x4(%esi)
 181:	40                   	inc    %eax
 182:	03 6c 24 14          	add    0x14(%esp),%ebp
 186:	eb dd                	jmp    165 <ohci_realloc_pipe+0x165>
 188:	8b 04 24             	mov    (%esp),%eax
 18b:	8b 40 14             	mov    0x14(%eax),%eax
 18e:	8b 50 18             	mov    0x18(%eax),%edx
 191:	83 7c 24 08 00       	cmpl   $0x0,0x8(%esp)
 196:	75 0d                	jne    1a5 <ohci_realloc_pipe+0x1a5>
 198:	8b 02                	mov    (%edx),%eax
 19a:	8b 50 0c             	mov    0xc(%eax),%edx
 19d:	89 53 0c             	mov    %edx,0xc(%ebx)
 1a0:	89 58 0c             	mov    %ebx,0xc(%eax)
 1a3:	eb 1e                	jmp    1c3 <ohci_realloc_pipe+0x1c3>
 1a5:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
 1a9:	49                   	dec    %ecx
 1aa:	b8 01 00 00 00       	mov    $0x1,%eax
 1af:	d3 e0                	shl    %cl,%eax
 1b1:	8b 0c 82             	mov    (%edx,%eax,4),%ecx
 1b4:	89 4b 0c             	mov    %ecx,0xc(%ebx)
 1b7:	89 1c 82             	mov    %ebx,(%edx,%eax,4)
 1ba:	03 44 24 18          	add    0x18(%esp),%eax
 1be:	83 f8 1f             	cmp    $0x1f,%eax
 1c1:	7e f4                	jle    1b7 <ohci_realloc_pipe+0x1b7>
 1c3:	8d 7b 10             	lea    0x10(%ebx),%edi
 1c6:	e9 a2 00 00 00       	jmp    26d <ohci_realloc_pipe+0x26d>
 1cb:	ff 34 24             	push   (%esp)
 1ce:	68 50 00 00 00       	push   $0x50
 1d3:	e8 fc ff ff ff       	call   1d4 <ohci_realloc_pipe+0x1d4>
 1d8:	0f b6 d3             	movzbl %bl,%edx
 1db:	8b 44 24 08          	mov    0x8(%esp),%eax
 1df:	e8 fc ff ff ff       	call   1e0 <ohci_realloc_pipe+0x1e0>
 1e4:	89 c6                	mov    %eax,%esi
 1e6:	58                   	pop    %eax
 1e7:	5a                   	pop    %edx
 1e8:	85 f6                	test   %esi,%esi
 1ea:	74 12                	je     1fe <ohci_realloc_pipe+0x1fe>
 1ec:	8d 46 f0             	lea    -0x10(%esi),%eax
 1ef:	89 f9                	mov    %edi,%ecx
 1f1:	8b 54 24 04          	mov    0x4(%esp),%edx
 1f5:	e8 fc ff ff ff       	call   1f6 <ohci_realloc_pipe+0x1f6>
 1fa:	89 f7                	mov    %esi,%edi
 1fc:	eb 6f                	jmp    26d <ohci_realloc_pipe+0x26d>
 1fe:	b9 10 00 00 00       	mov    $0x10,%ecx
 203:	ba 2c 00 00 00       	mov    $0x2c,%edx
 208:	b8 00 00 00 00       	mov    $0x0,%eax
 20d:	84 db                	test   %bl,%bl
 20f:	74 05                	je     216 <ohci_realloc_pipe+0x216>
 211:	b8 00 00 00 00       	mov    $0x0,%eax
 216:	e8 fc ff ff ff       	call   217 <ohci_realloc_pipe+0x217>
 21b:	89 c6                	mov    %eax,%esi
 21d:	85 c0                	test   %eax,%eax
 21f:	75 13                	jne    234 <ohci_realloc_pipe+0x234>
 221:	ba 00 00 00 00       	mov    $0x0,%edx
 226:	b8 a8 01 00 00       	mov    $0x1a8,%eax
 22b:	e8 fc ff ff ff       	call   22c <ohci_realloc_pipe+0x22c>
 230:	31 ff                	xor    %edi,%edi
 232:	eb 39                	jmp    26d <ohci_realloc_pipe+0x26d>
 234:	b9 2c 00 00 00       	mov    $0x2c,%ecx
 239:	31 d2                	xor    %edx,%edx
 23b:	e8 fc ff ff ff       	call   23c <ohci_realloc_pipe+0x23c>
 240:	89 f9                	mov    %edi,%ecx
 242:	8b 54 24 04          	mov    0x4(%esp),%edx
 246:	89 f0                	mov    %esi,%eax
 248:	e8 fc ff ff ff       	call   249 <ohci_realloc_pipe+0x249>
 24d:	8b 04 24             	mov    (%esp),%eax
 250:	8b 40 14             	mov    0x14(%eax),%eax
 253:	84 db                	test   %bl,%bl
 255:	75 08                	jne    25f <ohci_realloc_pipe+0x25f>
 257:	8d 50 20             	lea    0x20(%eax),%edx
 25a:	8b 40 20             	mov    0x20(%eax),%eax
 25d:	eb 06                	jmp    265 <ohci_realloc_pipe+0x265>
 25f:	8d 50 28             	lea    0x28(%eax),%edx
 262:	8b 40 28             	mov    0x28(%eax),%eax
 265:	89 46 0c             	mov    %eax,0xc(%esi)
 268:	89 32                	mov    %esi,(%edx)
 26a:	8d 7e 10             	lea    0x10(%esi),%edi
 26d:	89 f8                	mov    %edi,%eax
 26f:	83 c4 24             	add    $0x24,%esp
 272:	5b                   	pop    %ebx
 273:	5e                   	pop    %esi
 274:	5f                   	pop    %edi
 275:	5d                   	pop    %ebp
 276:	c3                   	ret    

Disassembly of section .text.ohci_send_pipe:

00000000 <ohci_send_pipe>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	81 ec 44 01 00 00    	sub    $0x144,%esp
   a:	89 c3                	mov    %eax,%ebx
   c:	89 54 24 08          	mov    %edx,0x8(%esp)
  10:	89 cf                	mov    %ecx,%edi
  12:	50                   	push   %eax
  13:	68 6a 00 00 00       	push   $0x6a
  18:	e8 fc ff ff ff       	call   19 <ohci_send_pipe+0x19>
  1d:	8d 74 24 2c          	lea    0x2c(%esp),%esi
  21:	83 e6 f0             	and    $0xfffffff0,%esi
  24:	b9 20 01 00 00       	mov    $0x120,%ecx
  29:	31 d2                	xor    %edx,%edx
  2b:	89 f0                	mov    %esi,%eax
  2d:	e8 fc ff ff ff       	call   2e <ohci_send_pipe+0x2e>
  32:	8b 43 08             	mov    0x8(%ebx),%eax
  35:	66 89 44 24 18       	mov    %ax,0x18(%esp)
  3a:	58                   	pop    %eax
  3b:	5a                   	pop    %edx
  3c:	85 ff                	test   %edi,%edi
  3e:	74 23                	je     63 <ohci_send_pipe+0x63>
  40:	c7 06 00 00 00 f2    	movl   $0xf2000000,(%esi)
  46:	89 7e 04             	mov    %edi,0x4(%esi)
  49:	8d 46 10             	lea    0x10(%esi),%eax
  4c:	89 46 08             	mov    %eax,0x8(%esi)
  4f:	8d 57 07             	lea    0x7(%edi),%edx
  52:	89 56 0c             	mov    %edx,0xc(%esi)
  55:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  5c:	bd 00 00 00 03       	mov    $0x3000000,%ebp
  61:	eb 0b                	jmp    6e <ohci_send_pipe+0x6e>
  63:	89 f0                	mov    %esi,%eax
  65:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
  6c:	31 ed                	xor    %ebp,%ebp
  6e:	8b 94 24 58 01 00 00 	mov    0x158(%esp),%edx
  75:	8b 8c 24 5c 01 00 00 	mov    0x15c(%esp),%ecx
  7c:	01 d1                	add    %edx,%ecx
  7e:	89 4c 24 04          	mov    %ecx,0x4(%esp)
  82:	83 7c 24 08 01       	cmpl   $0x1,0x8(%esp)
  87:	19 c9                	sbb    %ecx,%ecx
  89:	81 e1 00 00 f8 ff    	and    $0xfff80000,%ecx
  8f:	81 c1 00 00 10 00    	add    $0x100000,%ecx
  95:	09 e9                	or     %ebp,%ecx
  97:	81 c9 00 00 00 f0    	or     $0xf0000000,%ecx
  9d:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
  a1:	0f b7 4c 24 10       	movzwl 0x10(%esp),%ecx
  a6:	f7 d9                	neg    %ecx
  a8:	89 4c 24 10          	mov    %ecx,0x10(%esp)
  ac:	3b 54 24 04          	cmp    0x4(%esp),%edx
  b0:	73 4e                	jae    100 <ohci_send_pipe+0x100>
  b2:	8d 8e 20 01 00 00    	lea    0x120(%esi),%ecx
  b8:	39 c8                	cmp    %ecx,%eax
  ba:	72 0c                	jb     c8 <ohci_send_pipe+0xc8>
  bc:	ba 00 00 00 00       	mov    $0x0,%edx
  c1:	b8 ec 01 00 00       	mov    $0x1ec,%eax
  c6:	eb 50                	jmp    118 <ohci_send_pipe+0x118>
  c8:	89 d5                	mov    %edx,%ebp
  ca:	81 e5 ff 0f 00 00    	and    $0xfff,%ebp
  d0:	b9 00 20 00 00       	mov    $0x2000,%ecx
  d5:	29 e9                	sub    %ebp,%ecx
  d7:	8b 6c 24 04          	mov    0x4(%esp),%ebp
  db:	29 d5                	sub    %edx,%ebp
  dd:	39 e9                	cmp    %ebp,%ecx
  df:	7d 06                	jge    e7 <ohci_send_pipe+0xe7>
  e1:	23 4c 24 10          	and    0x10(%esp),%ecx
  e5:	89 cd                	mov    %ecx,%ebp
  e7:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
  eb:	89 08                	mov    %ecx,(%eax)
  ed:	89 50 04             	mov    %edx,0x4(%eax)
  f0:	83 c0 10             	add    $0x10,%eax
  f3:	89 40 f8             	mov    %eax,-0x8(%eax)
  f6:	01 ea                	add    %ebp,%edx
  f8:	8d 4a ff             	lea    -0x1(%edx),%ecx
  fb:	89 48 fc             	mov    %ecx,-0x4(%eax)
  fe:	eb ac                	jmp    ac <ohci_send_pipe+0xac>
 100:	85 ff                	test   %edi,%edi
 102:	74 49                	je     14d <ohci_send_pipe+0x14d>
 104:	8d 96 20 01 00 00    	lea    0x120(%esi),%edx
 10a:	39 d0                	cmp    %edx,%eax
 10c:	72 14                	jb     122 <ohci_send_pipe+0x122>
 10e:	ba 00 00 00 00       	mov    $0x0,%edx
 113:	b8 fd 01 00 00       	mov    $0x1fd,%eax
 118:	e8 fc ff ff ff       	call   119 <ohci_send_pipe+0x119>
 11d:	e9 bd 00 00 00       	jmp    1df <ohci_send_pipe+0x1df>
 122:	83 7c 24 08 01       	cmpl   $0x1,0x8(%esp)
 127:	19 d2                	sbb    %edx,%edx
 129:	81 e2 00 00 08 00    	and    $0x80000,%edx
 12f:	81 ea 00 00 f8 0c    	sub    $0xcf80000,%edx
 135:	89 10                	mov    %edx,(%eax)
 137:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 13e:	8d 50 10             	lea    0x10(%eax),%edx
 141:	89 50 08             	mov    %edx,0x8(%eax)
 144:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
 14b:	89 d0                	mov    %edx,%eax
 14d:	8b 53 f8             	mov    -0x8(%ebx),%edx
 150:	83 e2 02             	and    $0x2,%edx
 153:	09 f2                	or     %esi,%edx
 155:	89 53 f8             	mov    %edx,-0x8(%ebx)
 158:	89 43 f4             	mov    %eax,-0xc(%ebx)
 15b:	81 63 f0 ff bf ff ff 	andl   $0xffffbfff,-0x10(%ebx)
 162:	8b 43 0c             	mov    0xc(%ebx),%eax
 165:	8b 3c 24             	mov    (%esp),%edi
 168:	89 78 08             	mov    %edi,0x8(%eax)
 16b:	8b 94 24 5c 01 00 00 	mov    0x15c(%esp),%edx
 172:	89 d8                	mov    %ebx,%eax
 174:	e8 fc ff ff ff       	call   175 <ohci_send_pipe+0x175>
 179:	e8 fc ff ff ff       	call   17a <ohci_send_pipe+0x17a>
 17e:	89 c6                	mov    %eax,%esi
 180:	8b 43 f8             	mov    -0x8(%ebx),%eax
 183:	83 e0 fc             	and    $0xfffffffc,%eax
 186:	3b 43 f4             	cmp    -0xc(%ebx),%eax
 189:	74 3f                	je     1ca <ohci_send_pipe+0x1ca>
 18b:	89 f0                	mov    %esi,%eax
 18d:	e8 fc ff ff ff       	call   18e <ohci_send_pipe+0x18e>
 192:	85 c0                	test   %eax,%eax
 194:	74 2d                	je     1c3 <ohci_send_pipe+0x1c3>
 196:	ba 00 00 00 00       	mov    $0x0,%edx
 19b:	b8 c0 01 00 00       	mov    $0x1c0,%eax
 1a0:	e8 fc ff ff ff       	call   1a1 <ohci_send_pipe+0x1a1>
 1a5:	ff 73 fc             	push   -0x4(%ebx)
 1a8:	ff 73 f8             	push   -0x8(%ebx)
 1ab:	ff 73 f4             	push   -0xc(%ebx)
 1ae:	ff 73 f0             	push   -0x10(%ebx)
 1b1:	68 7d 00 00 00       	push   $0x7d
 1b6:	e8 fc ff ff ff       	call   1b7 <ohci_send_pipe+0x1b7>
 1bb:	83 c4 14             	add    $0x14,%esp
 1be:	83 c8 ff             	or     $0xffffffff,%eax
 1c1:	eb 09                	jmp    1cc <ohci_send_pipe+0x1cc>
 1c3:	e8 fc ff ff ff       	call   1c4 <ohci_send_pipe+0x1c4>
 1c8:	eb b6                	jmp    180 <ohci_send_pipe+0x180>
 1ca:	31 c0                	xor    %eax,%eax
 1cc:	81 4b f0 00 40 00 00 	orl    $0x4000,-0x10(%ebx)
 1d3:	85 c0                	test   %eax,%eax
 1d5:	74 0b                	je     1e2 <ohci_send_pipe+0x1e2>
 1d7:	8b 43 0c             	mov    0xc(%ebx),%eax
 1da:	e8 fc ff ff ff       	call   1db <ohci_send_pipe+0x1db>
 1df:	83 c8 ff             	or     $0xffffffff,%eax
 1e2:	81 c4 44 01 00 00    	add    $0x144,%esp
 1e8:	5b                   	pop    %ebx
 1e9:	5e                   	pop    %esi
 1ea:	5f                   	pop    %edi
 1eb:	5d                   	pop    %ebp
 1ec:	c3                   	ret    

Disassembly of section .text.ohci_poll_intr:

00000000 <ohci_poll_intr>:
   0:	e8 fc ff ff ff       	call   1 <ohci_poll_intr+0x1>
