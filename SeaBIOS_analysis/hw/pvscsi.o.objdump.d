
./pvscsi.o:     file format elf32-i386


Disassembly of section .text.pvscsi_init_rings.constprop.0:

00000000 <pvscsi_init_rings.constprop.0>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	81 ec 10 02 00 00    	sub    $0x210,%esp
   a:	89 c6                	mov    %eax,%esi
   c:	89 d5                	mov    %edx,%ebp
   e:	89 e7                	mov    %esp,%edi
  10:	b9 84 00 00 00       	mov    $0x84,%ecx
  15:	31 c0                	xor    %eax,%eax
  17:	f3 ab                	rep stos %eax,%es:(%edi)
  19:	b9 10 00 00 00       	mov    $0x10,%ecx
  1e:	ba 0c 00 00 00       	mov    $0xc,%edx
  23:	b8 00 00 00 00       	mov    $0x0,%eax
  28:	e8 fc ff ff ff       	call   29 <pvscsi_init_rings.constprop.0+0x29>
  2d:	85 c0                	test   %eax,%eax
  2f:	75 0c                	jne    3d <pvscsi_init_rings.constprop.0+0x3d>
  31:	ba 00 00 00 00       	mov    $0x0,%edx
  36:	b8 ac 00 00 00       	mov    $0xac,%eax
  3b:	eb 60                	jmp    9d <pvscsi_init_rings.constprop.0+0x9d>
  3d:	89 c3                	mov    %eax,%ebx
  3f:	b9 00 10 00 00       	mov    $0x1000,%ecx
  44:	ba 00 10 00 00       	mov    $0x1000,%edx
  49:	b8 00 00 00 00       	mov    $0x0,%eax
  4e:	e8 fc ff ff ff       	call   4f <pvscsi_init_rings.constprop.0+0x4f>
  53:	89 03                	mov    %eax,(%ebx)
  55:	b9 00 10 00 00       	mov    $0x1000,%ecx
  5a:	ba 00 10 00 00       	mov    $0x1000,%edx
  5f:	b8 00 00 00 00       	mov    $0x0,%eax
  64:	e8 fc ff ff ff       	call   65 <pvscsi_init_rings.constprop.0+0x65>
  69:	89 43 04             	mov    %eax,0x4(%ebx)
  6c:	b9 00 10 00 00       	mov    $0x1000,%ecx
  71:	ba 00 10 00 00       	mov    $0x1000,%edx
  76:	b8 00 00 00 00       	mov    $0x0,%eax
  7b:	e8 fc ff ff ff       	call   7c <pvscsi_init_rings.constprop.0+0x7c>
  80:	89 43 08             	mov    %eax,0x8(%ebx)
  83:	8b 3b                	mov    (%ebx),%edi
  85:	85 ff                	test   %edi,%edi
  87:	74 0a                	je     93 <pvscsi_init_rings.constprop.0+0x93>
  89:	83 7b 04 00          	cmpl   $0x0,0x4(%ebx)
  8d:	74 04                	je     93 <pvscsi_init_rings.constprop.0+0x93>
  8f:	85 c0                	test   %eax,%eax
  91:	75 19                	jne    ac <pvscsi_init_rings.constprop.0+0xac>
  93:	ba 00 00 00 00       	mov    $0x0,%edx
  98:	b8 b7 00 00 00       	mov    $0xb7,%eax
  9d:	81 c4 10 02 00 00    	add    $0x210,%esp
  a3:	5b                   	pop    %ebx
  a4:	5e                   	pop    %esi
  a5:	5f                   	pop    %edi
  a6:	5d                   	pop    %ebp
  a7:	e9 fc ff ff ff       	jmp    a8 <pvscsi_init_rings.constprop.0+0xa8>
  ac:	b9 00 10 00 00       	mov    $0x1000,%ecx
  b1:	31 d2                	xor    %edx,%edx
  b3:	89 f8                	mov    %edi,%eax
  b5:	e8 fc ff ff ff       	call   b6 <pvscsi_init_rings.constprop.0+0xb6>
  ba:	8b 43 04             	mov    0x4(%ebx),%eax
  bd:	b9 00 10 00 00       	mov    $0x1000,%ecx
  c2:	31 d2                	xor    %edx,%edx
  c4:	e8 fc ff ff ff       	call   c5 <pvscsi_init_rings.constprop.0+0xc5>
  c9:	8b 43 08             	mov    0x8(%ebx),%eax
  cc:	b9 00 10 00 00       	mov    $0x1000,%ecx
  d1:	31 d2                	xor    %edx,%edx
  d3:	e8 fc ff ff ff       	call   d4 <pvscsi_init_rings.constprop.0+0xd4>
  d8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  df:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
  e6:	00 
  e7:	8b 03                	mov    (%ebx),%eax
  e9:	c1 e8 0c             	shr    $0xc,%eax
  ec:	89 44 24 08          	mov    %eax,0x8(%esp)
  f0:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
  f7:	00 
  f8:	8b 43 04             	mov    0x4(%ebx),%eax
  fb:	c1 e8 0c             	shr    $0xc,%eax
  fe:	89 44 24 10          	mov    %eax,0x10(%esp)
 102:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
 109:	00 
 10a:	8b 43 08             	mov    0x8(%ebx),%eax
 10d:	c1 e8 0c             	shr    $0xc,%eax
 110:	89 84 24 10 01 00 00 	mov    %eax,0x110(%esp)
 117:	c7 84 24 14 01 00 00 	movl   $0x0,0x114(%esp)
 11e:	00 00 00 00 
 122:	c7 06 03 00 00 00    	movl   $0x3,(%esi)
 128:	31 c0                	xor    %eax,%eax
 12a:	8b 14 84             	mov    (%esp,%eax,4),%edx
 12d:	89 56 04             	mov    %edx,0x4(%esi)
 130:	40                   	inc    %eax
 131:	3d 84 00 00 00       	cmp    $0x84,%eax
 136:	75 f2                	jne    12a <pvscsi_init_rings.constprop.0+0x12a>
 138:	89 5d 00             	mov    %ebx,0x0(%ebp)
 13b:	81 c4 10 02 00 00    	add    $0x210,%esp
 141:	5b                   	pop    %ebx
 142:	5e                   	pop    %esi
 143:	5f                   	pop    %edi
 144:	5d                   	pop    %ebp
 145:	c3                   	ret    

Disassembly of section .text.init_pvscsi:

00000000 <init_pvscsi>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 0c             	sub    $0xc,%esp
   7:	89 c6                	mov    %eax,%esi
   9:	ba 10 00 00 00       	mov    $0x10,%edx
   e:	e8 fc ff ff ff       	call   f <init_pvscsi+0xf>
  13:	85 c0                	test   %eax,%eax
  15:	0f 84 f4 00 00 00    	je     10f <init_pvscsi+0x10f>
  1b:	89 c5                	mov    %eax,%ebp
  1d:	89 f0                	mov    %esi,%eax
  1f:	e8 fc ff ff ff       	call   20 <init_pvscsi+0x20>
  24:	55                   	push   %ebp
  25:	56                   	push   %esi
  26:	68 00 00 00 00       	push   $0x0
  2b:	e8 fc ff ff ff       	call   2c <init_pvscsi+0x2c>
  30:	c7 45 00 01 00 00 00 	movl   $0x1,0x0(%ebp)
  37:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
  3e:	00 
  3f:	8d 54 24 14          	lea    0x14(%esp),%edx
  43:	89 e8                	mov    %ebp,%eax
  45:	e8 fc ff ff ff       	call   46 <init_pvscsi+0x46>
  4a:	83 c4 0c             	add    $0xc,%esp
  4d:	31 ff                	xor    %edi,%edi
  4f:	8b 44 24 08          	mov    0x8(%esp),%eax
  53:	89 04 24             	mov    %eax,(%esp)
  56:	b9 10 00 00 00       	mov    $0x10,%ecx
  5b:	ba 30 00 00 00       	mov    $0x30,%edx
  60:	b8 00 00 00 00       	mov    $0x0,%eax
  65:	e8 fc ff ff ff       	call   66 <init_pvscsi+0x66>
  6a:	89 c3                	mov    %eax,%ebx
  6c:	85 c0                	test   %eax,%eax
  6e:	75 14                	jne    84 <init_pvscsi+0x84>
  70:	ba 00 00 00 00       	mov    $0x0,%edx
  75:	b8 09 01 00 00       	mov    $0x109,%eax
  7a:	e8 fc ff ff ff       	call   7b <init_pvscsi+0x7b>
  7f:	e9 81 00 00 00       	jmp    105 <init_pvscsi+0x105>
  84:	b9 30 00 00 00       	mov    $0x30,%ecx
  89:	31 d2                	xor    %edx,%edx
  8b:	e8 fc ff ff ff       	call   8c <init_pvscsi+0x8c>
  90:	c6 03 83             	movb   $0x83,(%ebx)
  93:	0f b7 06             	movzwl (%esi),%eax
  96:	89 43 14             	mov    %eax,0x14(%ebx)
  99:	89 f8                	mov    %edi,%eax
  9b:	88 43 28             	mov    %al,0x28(%ebx)
  9e:	c6 43 29 00          	movb   $0x0,0x29(%ebx)
  a2:	89 6b 24             	mov    %ebp,0x24(%ebx)
  a5:	8b 04 24             	mov    (%esp),%eax
  a8:	89 43 2c             	mov    %eax,0x2c(%ebx)
  ab:	8d 43 02             	lea    0x2(%ebx),%eax
  ae:	50                   	push   %eax
  af:	31 c9                	xor    %ecx,%ecx
  b1:	89 fa                	mov    %edi,%edx
  b3:	89 f0                	mov    %esi,%eax
  b5:	e8 fc ff ff ff       	call   b6 <init_pvscsi+0xb6>
  ba:	6a 00                	push   $0x0
  bc:	57                   	push   %edi
  bd:	56                   	push   %esi
  be:	68 1e 00 00 00       	push   $0x1e
  c3:	6a 50                	push   $0x50
  c5:	e8 fc ff ff ff       	call   c6 <init_pvscsi+0xc6>
  ca:	89 44 24 18          	mov    %eax,0x18(%esp)
  ce:	31 c9                	xor    %ecx,%ecx
  d0:	89 fa                	mov    %edi,%edx
  d2:	89 f0                	mov    %esi,%eax
  d4:	e8 fc ff ff ff       	call   d5 <init_pvscsi+0xd5>
  d9:	89 c1                	mov    %eax,%ecx
  db:	8b 54 24 18          	mov    0x18(%esp),%edx
  df:	89 d8                	mov    %ebx,%eax
  e1:	e8 fc ff ff ff       	call   e2 <init_pvscsi+0xe2>
  e6:	89 44 24 1c          	mov    %eax,0x1c(%esp)
  ea:	8b 44 24 18          	mov    0x18(%esp),%eax
  ee:	e8 fc ff ff ff       	call   ef <init_pvscsi+0xef>
  f3:	83 c4 18             	add    $0x18,%esp
  f6:	8b 54 24 04          	mov    0x4(%esp),%edx
  fa:	85 d2                	test   %edx,%edx
  fc:	74 07                	je     105 <init_pvscsi+0x105>
  fe:	89 d8                	mov    %ebx,%eax
 100:	e8 fc ff ff ff       	call   101 <init_pvscsi+0x101>
 105:	47                   	inc    %edi
 106:	83 ff 40             	cmp    $0x40,%edi
 109:	0f 85 40 ff ff ff    	jne    4f <init_pvscsi+0x4f>
 10f:	83 c4 0c             	add    $0xc,%esp
 112:	5b                   	pop    %ebx
 113:	5e                   	pop    %esi
 114:	5f                   	pop    %edi
 115:	5d                   	pop    %ebp
 116:	c3                   	ret    

Disassembly of section .text.pvscsi_process_op:

00000000 <pvscsi_process_op>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 0c             	sub    $0xc,%esp
   7:	89 c7                	mov    %eax,%edi
   9:	8b 68 04             	mov    0x4(%eax),%ebp
   c:	8b 45 2c             	mov    0x2c(%ebp),%eax
   f:	89 04 24             	mov    %eax,(%esp)
  12:	8b 30                	mov    (%eax),%esi
  14:	8b 4e 08             	mov    0x8(%esi),%ecx
  17:	8b 46 14             	mov    0x14(%esi),%eax
  1a:	89 44 24 08          	mov    %eax,0x8(%esp)
  1e:	8b 16                	mov    (%esi),%edx
  20:	8b 5e 10             	mov    0x10(%esi),%ebx
  23:	89 d0                	mov    %edx,%eax
  25:	29 d8                	sub    %ebx,%eax
  27:	d3 e8                	shr    %cl,%eax
  29:	85 c0                	test   %eax,%eax
  2b:	74 19                	je     46 <pvscsi_process_op+0x46>
  2d:	53                   	push   %ebx
  2e:	52                   	push   %edx
  2f:	68 2f 00 00 00       	push   $0x2f
  34:	e8 fc ff ff ff       	call   35 <pvscsi_process_op+0x35>
  39:	83 c4 0c             	add    $0xc,%esp
  3c:	b8 0c 00 00 00       	mov    $0xc,%eax
  41:	e9 09 01 00 00       	jmp    14f <pvscsi_process_op+0x14f>
  46:	b8 01 00 00 00       	mov    $0x1,%eax
  4b:	d3 e0                	shl    %cl,%eax
  4d:	8d 58 ff             	lea    -0x1(%eax),%ebx
  50:	21 d3                	and    %edx,%ebx
  52:	c1 e3 07             	shl    $0x7,%ebx
  55:	8b 04 24             	mov    (%esp),%eax
  58:	03 58 04             	add    0x4(%eax),%ebx
  5b:	8d 53 28             	lea    0x28(%ebx),%edx
  5e:	b9 10 00 00 00       	mov    $0x10,%ecx
  63:	89 f8                	mov    %edi,%eax
  65:	e8 fc ff ff ff       	call   66 <pvscsi_process_op+0x66>
  6a:	89 44 24 04          	mov    %eax,0x4(%esp)
  6e:	85 c0                	test   %eax,%eax
  70:	79 0e                	jns    80 <pvscsi_process_op+0x80>
  72:	89 f8                	mov    %edi,%eax
  74:	83 c4 0c             	add    $0xc,%esp
  77:	5b                   	pop    %ebx
  78:	5e                   	pop    %esi
  79:	5f                   	pop    %edi
  7a:	5d                   	pop    %ebp
  7b:	e9 fc ff ff ff       	jmp    7c <pvscsi_process_op+0x7c>
  80:	c6 43 42 00          	movb   $0x0,0x42(%ebx)
  84:	8a 45 28             	mov    0x28(%ebp),%al
  87:	88 43 43             	mov    %al,0x43(%ebx)
  8a:	8d 43 39             	lea    0x39(%ebx),%eax
  8d:	b9 08 00 00 00       	mov    $0x8,%ecx
  92:	31 d2                	xor    %edx,%edx
  94:	e8 fc ff ff ff       	call   95 <pvscsi_process_op+0x95>
  99:	8a 45 29             	mov    0x29(%ebp),%al
  9c:	88 43 3a             	mov    %al,0x3a(%ebx)
  9f:	c7 43 20 00 00 00 00 	movl   $0x0,0x20(%ebx)
  a6:	c7 43 18 00 00 00 00 	movl   $0x0,0x18(%ebx)
  ad:	c7 43 1c 00 00 00 00 	movl   $0x0,0x1c(%ebx)
  b4:	c6 43 38 10          	movb   $0x10,0x38(%ebx)
  b8:	c6 43 44 00          	movb   $0x0,0x44(%ebx)
  bc:	c6 43 41 20          	movb   $0x20,0x41(%ebx)
  c0:	89 f8                	mov    %edi,%eax
  c2:	e8 fc ff ff ff       	call   c3 <pvscsi_process_op+0xc3>
  c7:	83 f8 01             	cmp    $0x1,%eax
  ca:	19 c0                	sbb    %eax,%eax
  cc:	83 e0 08             	and    $0x8,%eax
  cf:	83 c0 08             	add    $0x8,%eax
  d2:	89 43 24             	mov    %eax,0x24(%ebx)
  d5:	0f b7 47 0a          	movzwl 0xa(%edi),%eax
  d9:	0f af 44 24 04       	imul   0x4(%esp),%eax
  de:	89 43 10             	mov    %eax,0x10(%ebx)
  e1:	c1 f8 1f             	sar    $0x1f,%eax
  e4:	89 43 14             	mov    %eax,0x14(%ebx)
  e7:	8b 07                	mov    (%edi),%eax
  e9:	89 43 08             	mov    %eax,0x8(%ebx)
  ec:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
  f3:	ff 06                	incl   (%esi)
  f5:	8b 45 24             	mov    0x24(%ebp),%eax
  f8:	c7 80 18 40 00 00 00 	movl   $0x0,0x4018(%eax)
  ff:	00 00 00 
 102:	8b 5d 24             	mov    0x24(%ebp),%ebx
 105:	8b 83 0c 10 00 00    	mov    0x100c(%ebx),%eax
 10b:	a8 03                	test   $0x3,%al
 10d:	75 0c                	jne    11b <pvscsi_process_op+0x11b>
 10f:	b8 05 00 00 00       	mov    $0x5,%eax
 114:	e8 fc ff ff ff       	call   115 <pvscsi_process_op+0x115>
 119:	eb ea                	jmp    105 <pvscsi_process_op+0x105>
 11b:	c7 83 0c 10 00 00 03 	movl   $0x3,0x100c(%ebx)
 122:	00 00 00 
 125:	8b 56 10             	mov    0x10(%esi),%edx
 128:	b8 01 00 00 00       	mov    $0x1,%eax
 12d:	8a 4c 24 08          	mov    0x8(%esp),%cl
 131:	d3 e0                	shl    %cl,%eax
 133:	48                   	dec    %eax
 134:	21 d0                	and    %edx,%eax
 136:	c1 e0 05             	shl    $0x5,%eax
 139:	8b 3c 24             	mov    (%esp),%edi
 13c:	03 47 08             	add    0x8(%edi),%eax
 13f:	66 8b 40 14          	mov    0x14(%eax),%ax
 143:	42                   	inc    %edx
 144:	89 56 10             	mov    %edx,0x10(%esi)
 147:	66 f7 d8             	neg    %ax
 14a:	19 c0                	sbb    %eax,%eax
 14c:	83 e0 0c             	and    $0xc,%eax
 14f:	83 c4 0c             	add    $0xc,%esp
 152:	5b                   	pop    %ebx
 153:	5e                   	pop    %esi
 154:	5f                   	pop    %edi
 155:	5d                   	pop    %ebp
 156:	c3                   	ret    

Disassembly of section .text.pvscsi_setup:

00000000 <pvscsi_setup>:
   0:	53                   	push   %ebx
   1:	68 5f 00 00 00       	push   $0x5f
   6:	e8 fc ff ff ff       	call   7 <pvscsi_setup+0x7>
   b:	a1 00 00 00 00       	mov    0x0,%eax
  10:	8d 58 fc             	lea    -0x4(%eax),%ebx
  13:	58                   	pop    %eax
  14:	83 fb fc             	cmp    $0xfffffffc,%ebx
  17:	74 1d                	je     36 <pvscsi_setup+0x36>
  19:	81 7b 10 ad 15 c0 07 	cmpl   $0x7c015ad,0x10(%ebx)
  20:	75 0c                	jne    2e <pvscsi_setup+0x2e>
  22:	89 da                	mov    %ebx,%edx
  24:	b8 00 00 00 00       	mov    $0x0,%eax
  29:	e8 fc ff ff ff       	call   2a <pvscsi_setup+0x2a>
  2e:	8b 5b 04             	mov    0x4(%ebx),%ebx
  31:	83 eb 04             	sub    $0x4,%ebx
  34:	eb de                	jmp    14 <pvscsi_setup+0x14>
  36:	5b                   	pop    %ebx
  37:	c3                   	ret    
