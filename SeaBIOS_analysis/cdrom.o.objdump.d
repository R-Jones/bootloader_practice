
./cdrom.o:     file format elf32-i386


Disassembly of section .text.cdemu_process_op:

00000000 <cdemu_process_op>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 18             	sub    $0x18,%esp
   7:	89 c6                	mov    %eax,%esi
   9:	8a 40 08             	mov    0x8(%eax),%al
   c:	8d 50 fd             	lea    -0x3(%eax),%edx
   f:	80 e2 fd             	and    $0xfd,%dl
  12:	0f 84 53 01 00 00    	je     16b <cdemu_process_op+0x16b>
  18:	3c 02                	cmp    $0x2,%al
  1a:	0f 85 3d 01 00 00    	jne    15d <cdemu_process_op+0x15d>
  20:	a1 00 00 00 00       	mov    0x0,%eax
  25:	89 44 24 08          	mov    %eax,0x8(%esp)
  29:	c6 44 24 0c 02       	movb   $0x2,0xc(%esp)
  2e:	a1 04 00 00 00       	mov    0x4,%eax
  33:	31 d2                	xor    %edx,%edx
  35:	8b 4e 0c             	mov    0xc(%esi),%ecx
  38:	8b 5e 10             	mov    0x10(%esi),%ebx
  3b:	0f ac d9 02          	shrd   $0x2,%ebx,%ecx
  3f:	c1 eb 02             	shr    $0x2,%ebx
  42:	01 c8                	add    %ecx,%eax
  44:	11 da                	adc    %ebx,%edx
  46:	89 44 24 10          	mov    %eax,0x10(%esp)
  4a:	89 54 24 14          	mov    %edx,0x14(%esp)
  4e:	0f b7 7e 0a          	movzwl 0xa(%esi),%edi
  52:	66 c7 46 0a 00 00    	movw   $0x0,0xa(%esi)
  58:	8b 2d 00 00 00 00    	mov    0x0,%ebp
  5e:	8b 46 0c             	mov    0xc(%esi),%eax
  61:	83 e0 03             	and    $0x3,%eax
  64:	74 69                	je     cf <cdemu_process_op+0xcf>
  66:	89 3c 24             	mov    %edi,(%esp)
  69:	66 c7 44 24 0e 01 00 	movw   $0x1,0xe(%esp)
  70:	89 6c 24 04          	mov    %ebp,0x4(%esp)
  74:	8d 44 24 04          	lea    0x4(%esp),%eax
  78:	e8 fc ff ff ff       	call   79 <cdemu_process_op+0x79>
  7d:	89 c3                	mov    %eax,%ebx
  7f:	85 c0                	test   %eax,%eax
  81:	0f 85 e9 00 00 00    	jne    170 <cdemu_process_op+0x170>
  87:	8b 56 0c             	mov    0xc(%esi),%edx
  8a:	88 d0                	mov    %dl,%al
  8c:	83 e0 03             	and    $0x3,%eax
  8f:	b3 04                	mov    $0x4,%bl
  91:	29 c3                	sub    %eax,%ebx
  93:	0f b6 c3             	movzbl %bl,%eax
  96:	39 c7                	cmp    %eax,%edi
  98:	7d 05                	jge    9f <cdemu_process_op+0x9f>
  9a:	8b 0c 24             	mov    (%esp),%ecx
  9d:	88 cb                	mov    %cl,%bl
  9f:	0f b6 cb             	movzbl %bl,%ecx
  a2:	29 cf                	sub    %ecx,%edi
  a4:	c1 e1 09             	shl    $0x9,%ecx
  a7:	83 e2 03             	and    $0x3,%edx
  aa:	c1 e2 09             	shl    $0x9,%edx
  ad:	01 ea                	add    %ebp,%edx
  af:	89 0c 24             	mov    %ecx,(%esp)
  b2:	8b 06                	mov    (%esi),%eax
  b4:	e8 fc ff ff ff       	call   b5 <cdemu_process_op+0xb5>
  b9:	8b 0c 24             	mov    (%esp),%ecx
  bc:	01 0e                	add    %ecx,(%esi)
  be:	0f b6 db             	movzbl %bl,%ebx
  c1:	66 01 5e 0a          	add    %bx,0xa(%esi)
  c5:	83 44 24 10 01       	addl   $0x1,0x10(%esp)
  ca:	83 54 24 14 00       	adcl   $0x0,0x14(%esp)
  cf:	83 ff 03             	cmp    $0x3,%edi
  d2:	7e 4d                	jle    121 <cdemu_process_op+0x121>
  d4:	89 f8                	mov    %edi,%eax
  d6:	c1 f8 02             	sar    $0x2,%eax
  d9:	66 89 44 24 0e       	mov    %ax,0xe(%esp)
  de:	8b 06                	mov    (%esi),%eax
  e0:	89 44 24 04          	mov    %eax,0x4(%esp)
  e4:	8d 44 24 04          	lea    0x4(%esp),%eax
  e8:	e8 fc ff ff ff       	call   e9 <cdemu_process_op+0xe9>
  ed:	89 c3                	mov    %eax,%ebx
  ef:	66 8b 44 24 0e       	mov    0xe(%esp),%ax
  f4:	c1 e0 02             	shl    $0x2,%eax
  f7:	66 01 46 0a          	add    %ax,0xa(%esi)
  fb:	85 db                	test   %ebx,%ebx
  fd:	75 71                	jne    170 <cdemu_process_op+0x170>
  ff:	89 f8                	mov    %edi,%eax
 101:	83 e7 03             	and    $0x3,%edi
 104:	89 c2                	mov    %eax,%edx
 106:	81 e2 fc 00 00 00    	and    $0xfc,%edx
 10c:	c1 e2 09             	shl    $0x9,%edx
 10f:	01 16                	add    %edx,(%esi)
 111:	c0 e8 02             	shr    $0x2,%al
 114:	0f b6 c0             	movzbl %al,%eax
 117:	31 d2                	xor    %edx,%edx
 119:	01 44 24 10          	add    %eax,0x10(%esp)
 11d:	11 54 24 14          	adc    %edx,0x14(%esp)
 121:	31 db                	xor    %ebx,%ebx
 123:	85 ff                	test   %edi,%edi
 125:	74 49                	je     170 <cdemu_process_op+0x170>
 127:	66 c7 44 24 0e 01 00 	movw   $0x1,0xe(%esp)
 12e:	89 6c 24 04          	mov    %ebp,0x4(%esp)
 132:	8d 44 24 04          	lea    0x4(%esp),%eax
 136:	e8 fc ff ff ff       	call   137 <cdemu_process_op+0x137>
 13b:	89 c3                	mov    %eax,%ebx
 13d:	85 c0                	test   %eax,%eax
 13f:	75 2f                	jne    170 <cdemu_process_op+0x170>
 141:	89 f8                	mov    %edi,%eax
 143:	0f b6 c8             	movzbl %al,%ecx
 146:	c1 e1 09             	shl    $0x9,%ecx
 149:	89 ea                	mov    %ebp,%edx
 14b:	8b 06                	mov    (%esi),%eax
 14d:	e8 fc ff ff ff       	call   14e <cdemu_process_op+0x14e>
 152:	89 f8                	mov    %edi,%eax
 154:	0f b6 f8             	movzbl %al,%edi
 157:	66 01 7e 0a          	add    %di,0xa(%esi)
 15b:	eb 13                	jmp    170 <cdemu_process_op+0x170>
 15d:	89 f0                	mov    %esi,%eax
 15f:	83 c4 18             	add    $0x18,%esp
 162:	5b                   	pop    %ebx
 163:	5e                   	pop    %esi
 164:	5f                   	pop    %edi
 165:	5d                   	pop    %ebp
 166:	e9 fc ff ff ff       	jmp    167 <cdemu_process_op+0x167>
 16b:	bb 03 00 00 00       	mov    $0x3,%ebx
 170:	89 d8                	mov    %ebx,%eax
 172:	83 c4 18             	add    $0x18,%esp
 175:	5b                   	pop    %ebx
 176:	5e                   	pop    %esi
 177:	5f                   	pop    %edi
 178:	5d                   	pop    %ebp
 179:	c3                   	ret    

Disassembly of section .text.cdrom_prepboot:

00000000 <cdrom_prepboot>:
   0:	80 3d 00 00 00 00 00 	cmpb   $0x0,0x0
   7:	74 5e                	je     67 <cdrom_prepboot+0x67>
   9:	53                   	push   %ebx
   a:	e8 fc ff ff ff       	call   b <cdrom_prepboot+0xb>
   f:	85 c0                	test   %eax,%eax
  11:	78 52                	js     65 <cdrom_prepboot+0x65>
  13:	b9 10 00 00 00       	mov    $0x10,%ecx
  18:	ba 24 00 00 00       	mov    $0x24,%edx
  1d:	b8 00 00 00 00       	mov    $0x0,%eax
  22:	e8 fc ff ff ff       	call   23 <cdrom_prepboot+0x23>
  27:	89 c3                	mov    %eax,%ebx
  29:	85 c0                	test   %eax,%eax
  2b:	75 10                	jne    3d <cdrom_prepboot+0x3d>
  2d:	ba 00 00 00 00       	mov    $0x0,%edx
  32:	b8 75 00 00 00       	mov    $0x75,%eax
  37:	5b                   	pop    %ebx
  38:	e9 fc ff ff ff       	jmp    39 <cdrom_prepboot+0x39>
  3d:	a3 00 00 00 00       	mov    %eax,0x0
  42:	b9 24 00 00 00       	mov    $0x24,%ecx
  47:	31 d2                	xor    %edx,%edx
  49:	e8 fc ff ff ff       	call   4a <cdrom_prepboot+0x4a>
  4e:	c6 03 40             	movb   $0x40,(%ebx)
  51:	66 c7 43 1a 00 02    	movw   $0x200,0x1a(%ebx)
  57:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%ebx)
  5e:	c7 43 10 ff ff ff ff 	movl   $0xffffffff,0x10(%ebx)
  65:	5b                   	pop    %ebx
  66:	c3                   	ret    
  67:	c3                   	ret    

Disassembly of section .text.cdrom_boot:

00000000 <cdrom_boot>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	81 ec 1c 08 00 00    	sub    $0x81c,%esp
   a:	89 c6                	mov    %eax,%esi
   c:	89 c2                	mov    %eax,%edx
   e:	b8 02 00 00 00       	mov    $0x2,%eax
  13:	e8 fc ff ff ff       	call   14 <cdrom_boot+0x14>
  18:	89 04 24             	mov    %eax,(%esp)
  1b:	b9 14 00 00 00       	mov    $0x14,%ecx
  20:	31 d2                	xor    %edx,%edx
  22:	8d 44 24 08          	lea    0x8(%esp),%eax
  26:	e8 fc ff ff ff       	call   27 <cdrom_boot+0x27>
  2b:	89 74 24 0c          	mov    %esi,0xc(%esp)
  2f:	85 f6                	test   %esi,%esi
  31:	0f 84 57 02 00 00    	je     28e <cdrom_boot+0x28e>
  37:	83 3c 24 00          	cmpl   $0x0,(%esp)
  3b:	0f 88 4d 02 00 00    	js     28e <cdrom_boot+0x28e>
  41:	8d 44 24 08          	lea    0x8(%esp),%eax
  45:	e8 fc ff ff ff       	call   46 <cdrom_boot+0x46>
  4a:	85 c0                	test   %eax,%eax
  4c:	74 0d                	je     5b <cdrom_boot+0x5b>
  4e:	50                   	push   %eax
  4f:	68 00 00 00 00       	push   $0x0
  54:	e8 fc ff ff ff       	call   55 <cdrom_boot+0x55>
  59:	59                   	pop    %ecx
  5a:	5b                   	pop    %ebx
  5b:	c6 44 24 10 02       	movb   $0x2,0x10(%esp)
  60:	c7 44 24 14 11 00 00 	movl   $0x11,0x14(%esp)
  67:	00 
  68:	c7 44 24 18 00 00 00 	movl   $0x0,0x18(%esp)
  6f:	00 
  70:	66 c7 44 24 12 01 00 	movw   $0x1,0x12(%esp)
  77:	8d 7c 24 1c          	lea    0x1c(%esp),%edi
  7b:	89 7c 24 08          	mov    %edi,0x8(%esp)
  7f:	8d 44 24 08          	lea    0x8(%esp),%eax
  83:	e8 fc ff ff ff       	call   84 <cdrom_boot+0x84>
  88:	bb 03 00 00 00       	mov    $0x3,%ebx
  8d:	85 c0                	test   %eax,%eax
  8f:	0f 85 2f 02 00 00    	jne    2c4 <cdrom_boot+0x2c4>
  95:	bb 04 00 00 00       	mov    $0x4,%ebx
  9a:	80 7c 24 1c 00       	cmpb   $0x0,0x1c(%esp)
  9f:	0f 85 1f 02 00 00    	jne    2c4 <cdrom_boot+0x2c4>
  a5:	ba 1b 00 00 00       	mov    $0x1b,%edx
  aa:	8d 44 24 1d          	lea    0x1d(%esp),%eax
  ae:	e8 fc ff ff ff       	call   af <cdrom_boot+0xaf>
  b3:	bb 05 00 00 00       	mov    $0x5,%ebx
  b8:	85 c0                	test   %eax,%eax
  ba:	0f 85 04 02 00 00    	jne    2c4 <cdrom_boot+0x2c4>
  c0:	8b 44 24 63          	mov    0x63(%esp),%eax
  c4:	89 44 24 14          	mov    %eax,0x14(%esp)
  c8:	c7 44 24 18 00 00 00 	movl   $0x0,0x18(%esp)
  cf:	00 
  d0:	66 c7 44 24 12 01 00 	movw   $0x1,0x12(%esp)
  d7:	8d 44 24 08          	lea    0x8(%esp),%eax
  db:	e8 fc ff ff ff       	call   dc <cdrom_boot+0xdc>
  e0:	89 c3                	mov    %eax,%ebx
  e2:	85 c0                	test   %eax,%eax
  e4:	0f 85 ab 01 00 00    	jne    295 <cdrom_boot+0x295>
  ea:	80 7c 24 1c 01       	cmpb   $0x1,0x1c(%esp)
  ef:	0f 85 a7 01 00 00    	jne    29c <cdrom_boot+0x29c>
  f5:	80 7c 24 1d 00       	cmpb   $0x0,0x1d(%esp)
  fa:	0f 85 a3 01 00 00    	jne    2a3 <cdrom_boot+0x2a3>
 100:	80 7c 24 3a 55       	cmpb   $0x55,0x3a(%esp)
 105:	0f 85 9f 01 00 00    	jne    2aa <cdrom_boot+0x2aa>
 10b:	80 7c 24 3b aa       	cmpb   $0xaa,0x3b(%esp)
 110:	0f 85 94 01 00 00    	jne    2aa <cdrom_boot+0x2aa>
 116:	80 7c 24 3c 88       	cmpb   $0x88,0x3c(%esp)
 11b:	0f 85 90 01 00 00    	jne    2b1 <cdrom_boot+0x2b1>
 121:	ba 00 08 00 00       	mov    $0x800,%edx
 126:	89 f8                	mov    %edi,%eax
 128:	e8 fc ff ff ff       	call   129 <cdrom_boot+0x129>
 12d:	89 35 00 00 00 00    	mov    %esi,0x0
 133:	0f b6 4c 24 3d       	movzbl 0x3d(%esp),%ecx
 138:	0f b7 6c 24 3e       	movzwl 0x3e(%esp),%ebp
 13d:	66 85 ed             	test   %bp,%bp
 140:	75 05                	jne    147 <cdrom_boot+0x147>
 142:	bd c0 07 00 00       	mov    $0x7c0,%ebp
 147:	66 89 2d 0c 00 00 00 	mov    %bp,0xc
 14e:	66 c7 05 0a 00 00 00 	movw   $0x0,0xa
 155:	00 00 
 157:	66 8b 7c 24 42       	mov    0x42(%esp),%di
 15c:	66 89 3d 0e 00 00 00 	mov    %di,0xe
 163:	8b 44 24 44          	mov    0x44(%esp),%eax
 167:	a3 04 00 00 00       	mov    %eax,0x4
 16c:	8b 56 14             	mov    0x14(%esi),%edx
 16f:	89 d6                	mov    %edx,%esi
 171:	d1 ee                	shr    %esi
 173:	89 f0                	mov    %esi,%eax
 175:	a2 03 00 00 00       	mov    %al,0x3
 17a:	83 e2 01             	and    $0x1,%edx
 17d:	66 89 15 08 00 00 00 	mov    %dx,0x8
 184:	0f b7 f7             	movzwl %di,%esi
 187:	83 c6 03             	add    $0x3,%esi
 18a:	c1 fe 02             	sar    $0x2,%esi
 18d:	8b 44 24 44          	mov    0x44(%esp),%eax
 191:	89 44 24 14          	mov    %eax,0x14(%esp)
 195:	c7 44 24 18 00 00 00 	movl   $0x0,0x18(%esp)
 19c:	00 
 19d:	c1 e5 04             	shl    $0x4,%ebp
 1a0:	89 ef                	mov    %ebp,%edi
 1a2:	89 7c 24 08          	mov    %edi,0x8(%esp)
 1a6:	66 85 f6             	test   %si,%si
 1a9:	74 42                	je     1ed <cdrom_boot+0x1ed>
 1ab:	0f b7 fe             	movzwl %si,%edi
 1ae:	83 ff 20             	cmp    $0x20,%edi
 1b1:	7e 05                	jle    1b8 <cdrom_boot+0x1b8>
 1b3:	bf 20 00 00 00       	mov    $0x20,%edi
 1b8:	88 4c 24 07          	mov    %cl,0x7(%esp)
 1bc:	66 89 7c 24 12       	mov    %di,0x12(%esp)
 1c1:	8d 44 24 08          	lea    0x8(%esp),%eax
 1c5:	e8 fc ff ff ff       	call   1c6 <cdrom_boot+0x1c6>
 1ca:	85 c0                	test   %eax,%eax
 1cc:	0f 85 e6 00 00 00    	jne    2b8 <cdrom_boot+0x2b8>
 1d2:	29 fe                	sub    %edi,%esi
 1d4:	89 f8                	mov    %edi,%eax
 1d6:	99                   	cltd   
 1d7:	01 7c 24 14          	add    %edi,0x14(%esp)
 1db:	11 54 24 18          	adc    %edx,0x18(%esp)
 1df:	c1 e7 0b             	shl    $0xb,%edi
 1e2:	03 7c 24 08          	add    0x8(%esp),%edi
 1e6:	0f b6 4c 24 07       	movzbl 0x7(%esp),%ecx
 1eb:	eb b5                	jmp    1a2 <cdrom_boot+0x1a2>
 1ed:	84 c9                	test   %cl,%cl
 1ef:	75 10                	jne    201 <cdrom_boot+0x201>
 1f1:	8a 04 24             	mov    (%esp),%al
 1f4:	83 e8 20             	sub    $0x20,%eax
 1f7:	a2 02 00 00 00       	mov    %al,0x2
 1fc:	e9 c3 00 00 00       	jmp    2c4 <cdrom_boot+0x2c4>
 201:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
 208:	0f 84 b1 00 00 00    	je     2bf <cdrom_boot+0x2bf>
 20e:	80 f9 03             	cmp    $0x3,%cl
 211:	77 41                	ja     254 <cdrom_boot+0x254>
 213:	c6 05 02 00 00 00 00 	movb   $0x0,0x2
 21a:	66 83 0d 10 04 00 00 	orw    $0x41,0x410
 221:	41 
 222:	80 f9 02             	cmp    $0x2,%cl
 225:	74 10                	je     237 <cdrom_boot+0x237>
 227:	80 f9 03             	cmp    $0x3,%cl
 22a:	74 16                	je     242 <cdrom_boot+0x242>
 22c:	66 c7 05 10 00 00 00 	movw   $0xf01,0x10
 233:	01 0f 
 235:	eb 14                	jmp    24b <cdrom_boot+0x24b>
 237:	66 c7 05 10 00 00 00 	movw   $0x1201,0x10
 23e:	01 12 
 240:	eb 09                	jmp    24b <cdrom_boot+0x24b>
 242:	66 c7 05 10 00 00 00 	movw   $0x2401,0x10
 249:	01 24 
 24b:	c6 05 12 00 00 00 4f 	movb   $0x4f,0x12
 252:	eb 25                	jmp    279 <cdrom_boot+0x279>
 254:	c6 05 02 00 00 00 80 	movb   $0x80,0x2
 25b:	fe 05 75 04 00 00    	incb   0x475
 261:	66 8b 85 c3 01 00 00 	mov    0x1c3(%ebp),%ax
 268:	66 a3 10 00 00 00    	mov    %ax,0x10
 26e:	8a 85 c5 01 00 00    	mov    0x1c5(%ebp),%al
 274:	a2 12 00 00 00       	mov    %al,0x12
 279:	88 0d 01 00 00 00    	mov    %cl,0x1
 27f:	51                   	push   %ecx
 280:	68 39 00 00 00       	push   $0x39
 285:	e8 fc ff ff ff       	call   286 <cdrom_boot+0x286>
 28a:	58                   	pop    %eax
 28b:	5a                   	pop    %edx
 28c:	eb 36                	jmp    2c4 <cdrom_boot+0x2c4>
 28e:	bb 01 00 00 00       	mov    $0x1,%ebx
 293:	eb 2f                	jmp    2c4 <cdrom_boot+0x2c4>
 295:	bb 07 00 00 00       	mov    $0x7,%ebx
 29a:	eb 28                	jmp    2c4 <cdrom_boot+0x2c4>
 29c:	bb 08 00 00 00       	mov    $0x8,%ebx
 2a1:	eb 21                	jmp    2c4 <cdrom_boot+0x2c4>
 2a3:	bb 09 00 00 00       	mov    $0x9,%ebx
 2a8:	eb 1a                	jmp    2c4 <cdrom_boot+0x2c4>
 2aa:	bb 0a 00 00 00       	mov    $0xa,%ebx
 2af:	eb 13                	jmp    2c4 <cdrom_boot+0x2c4>
 2b1:	bb 0b 00 00 00       	mov    $0xb,%ebx
 2b6:	eb 0c                	jmp    2c4 <cdrom_boot+0x2c4>
 2b8:	bb 0c 00 00 00       	mov    $0xc,%ebx
 2bd:	eb 05                	jmp    2c4 <cdrom_boot+0x2c4>
 2bf:	bb 0d 00 00 00       	mov    $0xd,%ebx
 2c4:	89 d8                	mov    %ebx,%eax
 2c6:	81 c4 1c 08 00 00    	add    $0x81c,%esp
 2cc:	5b                   	pop    %ebx
 2cd:	5e                   	pop    %esi
 2ce:	5f                   	pop    %edi
 2cf:	5d                   	pop    %ebp
 2d0:	c3                   	ret    

Disassembly of section .text.cdrom_media_info:

00000000 <cdrom_media_info>:
   0:	53                   	push   %ebx
   1:	81 ec 14 08 00 00    	sub    $0x814,%esp
   7:	89 c3                	mov    %eax,%ebx
   9:	b9 14 00 00 00       	mov    $0x14,%ecx
   e:	31 d2                	xor    %edx,%edx
  10:	89 e0                	mov    %esp,%eax
  12:	e8 fc ff ff ff       	call   13 <cdrom_media_info+0x13>
  17:	89 5c 24 04          	mov    %ebx,0x4(%esp)
  1b:	89 e0                	mov    %esp,%eax
  1d:	e8 fc ff ff ff       	call   1e <cdrom_media_info+0x1e>
  22:	85 c0                	test   %eax,%eax
  24:	74 07                	je     2d <cdrom_media_info+0x2d>
  26:	31 db                	xor    %ebx,%ebx
  28:	e9 8c 00 00 00       	jmp    b9 <cdrom_media_info+0xb9>
  2d:	c6 44 24 08 02       	movb   $0x2,0x8(%esp)
  32:	c7 44 24 0c 11 00 00 	movl   $0x11,0xc(%esp)
  39:	00 
  3a:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
  41:	00 
  42:	66 c7 44 24 0a 01 00 	movw   $0x1,0xa(%esp)
  49:	8d 5c 24 14          	lea    0x14(%esp),%ebx
  4d:	89 1c 24             	mov    %ebx,(%esp)
  50:	89 e0                	mov    %esp,%eax
  52:	e8 fc ff ff ff       	call   53 <cdrom_media_info+0x53>
  57:	85 c0                	test   %eax,%eax
  59:	75 cb                	jne    26 <cdrom_media_info+0x26>
  5b:	80 7c 24 14 00       	cmpb   $0x0,0x14(%esp)
  60:	75 c4                	jne    26 <cdrom_media_info+0x26>
  62:	ba 1b 00 00 00       	mov    $0x1b,%edx
  67:	8d 44 24 15          	lea    0x15(%esp),%eax
  6b:	e8 fc ff ff ff       	call   6c <cdrom_media_info+0x6c>
  70:	85 c0                	test   %eax,%eax
  72:	75 b2                	jne    26 <cdrom_media_info+0x26>
  74:	c6 44 24 08 02       	movb   $0x2,0x8(%esp)
  79:	c7 44 24 0c 10 00 00 	movl   $0x10,0xc(%esp)
  80:	00 
  81:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
  88:	00 
  89:	66 c7 44 24 0a 01 00 	movw   $0x1,0xa(%esp)
  90:	89 1c 24             	mov    %ebx,(%esp)
  93:	89 e0                	mov    %esp,%eax
  95:	e8 fc ff ff ff       	call   96 <cdrom_media_info+0x96>
  9a:	85 c0                	test   %eax,%eax
  9c:	75 88                	jne    26 <cdrom_media_info+0x26>
  9e:	8d 44 24 3c          	lea    0x3c(%esp),%eax
  a2:	50                   	push   %eax
  a3:	68 49 00 00 00       	push   $0x49
  a8:	6a 1e                	push   $0x1e
  aa:	e8 fc ff ff ff       	call   ab <cdrom_media_info+0xab>
  af:	89 c3                	mov    %eax,%ebx
  b1:	e8 fc ff ff ff       	call   b2 <cdrom_media_info+0xb2>
  b6:	83 c4 0c             	add    $0xc,%esp
  b9:	89 d8                	mov    %ebx,%eax
  bb:	81 c4 14 08 00 00    	add    $0x814,%esp
  c1:	5b                   	pop    %ebx
  c2:	c3                   	ret    
