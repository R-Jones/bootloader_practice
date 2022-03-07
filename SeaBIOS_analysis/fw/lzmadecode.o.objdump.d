
./lzmadecode.o:     file format elf32-i386


Disassembly of section .text.LzmaDecodeProperties:

00000000 <LzmaDecodeProperties>:
   0:	83 f9 04             	cmp    $0x4,%ecx
   3:	7e 35                	jle    3a <LzmaDecodeProperties+0x3a>
   5:	53                   	push   %ebx
   6:	89 c3                	mov    %eax,%ebx
   8:	8a 02                	mov    (%edx),%al
   a:	ba 01 00 00 00       	mov    $0x1,%edx
   f:	3c e0                	cmp    $0xe0,%al
  11:	77 2d                	ja     40 <LzmaDecodeProperties+0x40>
  13:	31 d2                	xor    %edx,%edx
  15:	3c 2c                	cmp    $0x2c,%al
  17:	76 06                	jbe    1f <LzmaDecodeProperties+0x1f>
  19:	42                   	inc    %edx
  1a:	83 e8 2d             	sub    $0x2d,%eax
  1d:	eb f6                	jmp    15 <LzmaDecodeProperties+0x15>
  1f:	89 53 08             	mov    %edx,0x8(%ebx)
  22:	31 d2                	xor    %edx,%edx
  24:	3c 08                	cmp    $0x8,%al
  26:	76 06                	jbe    2e <LzmaDecodeProperties+0x2e>
  28:	42                   	inc    %edx
  29:	83 e8 09             	sub    $0x9,%eax
  2c:	eb f6                	jmp    24 <LzmaDecodeProperties+0x24>
  2e:	89 53 04             	mov    %edx,0x4(%ebx)
  31:	0f b6 c0             	movzbl %al,%eax
  34:	89 03                	mov    %eax,(%ebx)
  36:	31 d2                	xor    %edx,%edx
  38:	eb 06                	jmp    40 <LzmaDecodeProperties+0x40>
  3a:	b8 01 00 00 00       	mov    $0x1,%eax
  3f:	c3                   	ret    
  40:	89 d0                	mov    %edx,%eax
  42:	5b                   	pop    %ebx
  43:	c3                   	ret    

Disassembly of section .text.LzmaDecode:

00000000 <LzmaDecode>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 44             	sub    $0x44,%esp
   7:	89 54 24 20          	mov    %edx,0x20(%esp)
   b:	89 ca                	mov    %ecx,%edx
   d:	8b 70 0c             	mov    0xc(%eax),%esi
  10:	89 74 24 0c          	mov    %esi,0xc(%esp)
  14:	8b 48 08             	mov    0x8(%eax),%ecx
  17:	bb 01 00 00 00       	mov    $0x1,%ebx
  1c:	89 df                	mov    %ebx,%edi
  1e:	d3 e7                	shl    %cl,%edi
  20:	4f                   	dec    %edi
  21:	89 7c 24 34          	mov    %edi,0x34(%esp)
  25:	8b 48 04             	mov    0x4(%eax),%ecx
  28:	d3 e3                	shl    %cl,%ebx
  2a:	8d 73 ff             	lea    -0x1(%ebx),%esi
  2d:	89 74 24 40          	mov    %esi,0x40(%esp)
  31:	8b 38                	mov    (%eax),%edi
  33:	89 7c 24 30          	mov    %edi,0x30(%esp)
  37:	8b 74 24 58          	mov    0x58(%esp),%esi
  3b:	c7 06 00 00 00 00    	movl   $0x0,(%esi)
  41:	8b 7c 24 64          	mov    0x64(%esp),%edi
  45:	c7 07 00 00 00 00    	movl   $0x0,(%edi)
  4b:	8b 4c 24 30          	mov    0x30(%esp),%ecx
  4f:	03 48 04             	add    0x4(%eax),%ecx
  52:	b8 00 03 00 00       	mov    $0x300,%eax
  57:	d3 e0                	shl    %cl,%eax
  59:	05 36 07 00 00       	add    $0x736,%eax
  5e:	31 c9                	xor    %ecx,%ecx
  60:	39 c1                	cmp    %eax,%ecx
  62:	73 0d                	jae    71 <LzmaDecode+0x71>
  64:	8b 74 24 0c          	mov    0xc(%esp),%esi
  68:	66 c7 04 4e 00 04    	movw   $0x400,(%esi,%ecx,2)
  6e:	41                   	inc    %ecx
  6f:	eb ef                	jmp    60 <LzmaDecode+0x60>
  71:	03 54 24 20          	add    0x20(%esp),%edx
  75:	89 54 24 04          	mov    %edx,0x4(%esp)
  79:	8b 44 24 20          	mov    0x20(%esp),%eax
  7d:	83 c0 05             	add    $0x5,%eax
  80:	8b 6c 24 20          	mov    0x20(%esp),%ebp
  84:	31 ff                	xor    %edi,%edi
  86:	39 6c 24 04          	cmp    %ebp,0x4(%esp)
  8a:	75 0a                	jne    96 <LzmaDecode+0x96>
  8c:	b8 01 00 00 00       	mov    $0x1,%eax
  91:	e9 83 09 00 00       	jmp    a19 <LzmaDecode+0xa19>
  96:	c1 e7 08             	shl    $0x8,%edi
  99:	89 fa                	mov    %edi,%edx
  9b:	45                   	inc    %ebp
  9c:	0f b6 4d ff          	movzbl -0x1(%ebp),%ecx
  a0:	89 cf                	mov    %ecx,%edi
  a2:	09 d7                	or     %edx,%edi
  a4:	39 e8                	cmp    %ebp,%eax
  a6:	75 de                	jne    86 <LzmaDecode+0x86>
  a8:	83 ca ff             	or     $0xffffffff,%edx
  ab:	c7 44 24 24 01 00 00 	movl   $0x1,0x24(%esp)
  b2:	00 
  b3:	c7 44 24 1c 01 00 00 	movl   $0x1,0x1c(%esp)
  ba:	00 
  bb:	c7 44 24 14 01 00 00 	movl   $0x1,0x14(%esp)
  c2:	00 
  c3:	c7 44 24 10 01 00 00 	movl   $0x1,0x10(%esp)
  ca:	00 
  cb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  d2:	c6 44 24 18 00       	movb   $0x0,0x18(%esp)
  d7:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  de:	00 
  df:	8b 44 24 08          	mov    0x8(%esp),%eax
  e3:	3b 44 24 60          	cmp    0x60(%esp),%eax
  e7:	0f 83 01 09 00 00    	jae    9ee <LzmaDecode+0x9ee>
  ed:	8b 44 24 08          	mov    0x8(%esp),%eax
  f1:	23 44 24 34          	and    0x34(%esp),%eax
  f5:	8b 0c 24             	mov    (%esp),%ecx
  f8:	c1 e1 04             	shl    $0x4,%ecx
  fb:	01 c8                	add    %ecx,%eax
  fd:	01 c0                	add    %eax,%eax
  ff:	89 44 24 28          	mov    %eax,0x28(%esp)
 103:	8b 74 24 0c          	mov    0xc(%esp),%esi
 107:	01 c6                	add    %eax,%esi
 109:	81 fa ff ff ff 00    	cmp    $0xffffff,%edx
 10f:	77 1b                	ja     12c <LzmaDecode+0x12c>
 111:	3b 6c 24 04          	cmp    0x4(%esp),%ebp
 115:	0f 84 71 ff ff ff    	je     8c <LzmaDecode+0x8c>
 11b:	c1 e2 08             	shl    $0x8,%edx
 11e:	89 f8                	mov    %edi,%eax
 120:	c1 e0 08             	shl    $0x8,%eax
 123:	0f b6 4d 00          	movzbl 0x0(%ebp),%ecx
 127:	89 cf                	mov    %ecx,%edi
 129:	09 c7                	or     %eax,%edi
 12b:	45                   	inc    %ebp
 12c:	66 8b 0e             	mov    (%esi),%cx
 12f:	89 d0                	mov    %edx,%eax
 131:	c1 e8 0b             	shr    $0xb,%eax
 134:	89 44 24 2c          	mov    %eax,0x2c(%esp)
 138:	0f b7 c1             	movzwl %cx,%eax
 13b:	89 c3                	mov    %eax,%ebx
 13d:	0f af 44 24 2c       	imul   0x2c(%esp),%eax
 142:	39 c7                	cmp    %eax,%edi
 144:	0f 83 cc 01 00 00    	jae    316 <LzmaDecode+0x316>
 14a:	ba 00 08 00 00       	mov    $0x800,%edx
 14f:	29 da                	sub    %ebx,%edx
 151:	c1 fa 05             	sar    $0x5,%edx
 154:	01 ca                	add    %ecx,%edx
 156:	66 89 16             	mov    %dx,(%esi)
 159:	8b 54 24 08          	mov    0x8(%esp),%edx
 15d:	23 54 24 40          	and    0x40(%esp),%edx
 161:	8a 4c 24 30          	mov    0x30(%esp),%cl
 165:	d3 e2                	shl    %cl,%edx
 167:	0f b6 5c 24 18       	movzbl 0x18(%esp),%ebx
 16c:	b9 08 00 00 00       	mov    $0x8,%ecx
 171:	2b 4c 24 30          	sub    0x30(%esp),%ecx
 175:	d3 fb                	sar    %cl,%ebx
 177:	01 da                	add    %ebx,%edx
 179:	69 d2 00 06 00 00    	imul   $0x600,%edx,%edx
 17f:	8b 74 24 0c          	mov    0xc(%esp),%esi
 183:	8d b4 16 6c 0e 00 00 	lea    0xe6c(%esi,%edx,1),%esi
 18a:	89 74 24 2c          	mov    %esi,0x2c(%esp)
 18e:	83 3c 24 06          	cmpl   $0x6,(%esp)
 192:	0f 8e b7 00 00 00    	jle    24f <LzmaDecode+0x24f>
 198:	8b 54 24 08          	mov    0x8(%esp),%edx
 19c:	2b 54 24 10          	sub    0x10(%esp),%edx
 1a0:	8b 74 24 5c          	mov    0x5c(%esp),%esi
 1a4:	0f b6 34 16          	movzbl (%esi,%edx,1),%esi
 1a8:	89 74 24 18          	mov    %esi,0x18(%esp)
 1ac:	ba 01 00 00 00       	mov    $0x1,%edx
 1b1:	8b 5c 24 18          	mov    0x18(%esp),%ebx
 1b5:	01 5c 24 18          	add    %ebx,0x18(%esp)
 1b9:	8b 74 24 18          	mov    0x18(%esp),%esi
 1bd:	81 e6 00 01 00 00    	and    $0x100,%esi
 1c3:	89 74 24 28          	mov    %esi,0x28(%esp)
 1c7:	8d 8c 32 00 01 00 00 	lea    0x100(%edx,%esi,1),%ecx
 1ce:	01 c9                	add    %ecx,%ecx
 1d0:	03 4c 24 2c          	add    0x2c(%esp),%ecx
 1d4:	3d ff ff ff 00       	cmp    $0xffffff,%eax
 1d9:	77 1b                	ja     1f6 <LzmaDecode+0x1f6>
 1db:	3b 6c 24 04          	cmp    0x4(%esp),%ebp
 1df:	0f 84 a7 fe ff ff    	je     8c <LzmaDecode+0x8c>
 1e5:	c1 e0 08             	shl    $0x8,%eax
 1e8:	c1 e7 08             	shl    $0x8,%edi
 1eb:	89 fb                	mov    %edi,%ebx
 1ed:	0f b6 75 00          	movzbl 0x0(%ebp),%esi
 1f1:	89 f7                	mov    %esi,%edi
 1f3:	09 df                	or     %ebx,%edi
 1f5:	45                   	inc    %ebp
 1f6:	66 8b 31             	mov    (%ecx),%si
 1f9:	89 c3                	mov    %eax,%ebx
 1fb:	c1 eb 0b             	shr    $0xb,%ebx
 1fe:	89 5c 24 3c          	mov    %ebx,0x3c(%esp)
 202:	0f b7 de             	movzwl %si,%ebx
 205:	89 5c 24 38          	mov    %ebx,0x38(%esp)
 209:	8b 5c 24 3c          	mov    0x3c(%esp),%ebx
 20d:	0f af 5c 24 38       	imul   0x38(%esp),%ebx
 212:	39 df                	cmp    %ebx,%edi
 214:	73 1e                	jae    234 <LzmaDecode+0x234>
 216:	b8 00 08 00 00       	mov    $0x800,%eax
 21b:	2b 44 24 38          	sub    0x38(%esp),%eax
 21f:	c1 f8 05             	sar    $0x5,%eax
 222:	01 f0                	add    %esi,%eax
 224:	66 89 01             	mov    %ax,(%ecx)
 227:	01 d2                	add    %edx,%edx
 229:	89 d8                	mov    %ebx,%eax
 22b:	83 7c 24 28 00       	cmpl   $0x0,0x28(%esp)
 230:	74 24                	je     256 <LzmaDecode+0x256>
 232:	eb 70                	jmp    2a4 <LzmaDecode+0x2a4>
 234:	29 d8                	sub    %ebx,%eax
 236:	29 df                	sub    %ebx,%edi
 238:	89 f3                	mov    %esi,%ebx
 23a:	66 c1 eb 05          	shr    $0x5,%bx
 23e:	29 de                	sub    %ebx,%esi
 240:	66 89 31             	mov    %si,(%ecx)
 243:	01 d2                	add    %edx,%edx
 245:	42                   	inc    %edx
 246:	83 7c 24 28 00       	cmpl   $0x0,0x28(%esp)
 24b:	75 09                	jne    256 <LzmaDecode+0x256>
 24d:	eb 55                	jmp    2a4 <LzmaDecode+0x2a4>
 24f:	ba 01 00 00 00       	mov    $0x1,%edx
 254:	eb 4e                	jmp    2a4 <LzmaDecode+0x2a4>
 256:	81 fa ff 00 00 00    	cmp    $0xff,%edx
 25c:	0f 8e 4f ff ff ff    	jle    1b1 <LzmaDecode+0x1b1>
 262:	eb 7a                	jmp    2de <LzmaDecode+0x2de>
 264:	8d 34 12             	lea    (%edx,%edx,1),%esi
 267:	03 74 24 2c          	add    0x2c(%esp),%esi
 26b:	89 74 24 18          	mov    %esi,0x18(%esp)
 26f:	3d ff ff ff 00       	cmp    $0xffffff,%eax
 274:	76 38                	jbe    2ae <LzmaDecode+0x2ae>
 276:	8b 74 24 18          	mov    0x18(%esp),%esi
 27a:	0f b7 1e             	movzwl (%esi),%ebx
 27d:	89 de                	mov    %ebx,%esi
 27f:	89 c1                	mov    %eax,%ecx
 281:	c1 e9 0b             	shr    $0xb,%ecx
 284:	0f af cb             	imul   %ebx,%ecx
 287:	39 cf                	cmp    %ecx,%edi
 289:	73 40                	jae    2cb <LzmaDecode+0x2cb>
 28b:	b8 00 08 00 00       	mov    $0x800,%eax
 290:	29 d8                	sub    %ebx,%eax
 292:	c1 f8 05             	sar    $0x5,%eax
 295:	89 c3                	mov    %eax,%ebx
 297:	01 f3                	add    %esi,%ebx
 299:	01 d2                	add    %edx,%edx
 29b:	8b 44 24 18          	mov    0x18(%esp),%eax
 29f:	66 89 18             	mov    %bx,(%eax)
 2a2:	89 c8                	mov    %ecx,%eax
 2a4:	81 fa ff 00 00 00    	cmp    $0xff,%edx
 2aa:	7e b8                	jle    264 <LzmaDecode+0x264>
 2ac:	eb 30                	jmp    2de <LzmaDecode+0x2de>
 2ae:	3b 6c 24 04          	cmp    0x4(%esp),%ebp
 2b2:	0f 84 d4 fd ff ff    	je     8c <LzmaDecode+0x8c>
 2b8:	c1 e0 08             	shl    $0x8,%eax
 2bb:	c1 e7 08             	shl    $0x8,%edi
 2be:	89 f9                	mov    %edi,%ecx
 2c0:	0f b6 5d 00          	movzbl 0x0(%ebp),%ebx
 2c4:	89 df                	mov    %ebx,%edi
 2c6:	09 cf                	or     %ecx,%edi
 2c8:	45                   	inc    %ebp
 2c9:	eb ab                	jmp    276 <LzmaDecode+0x276>
 2cb:	29 cf                	sub    %ecx,%edi
 2cd:	66 c1 eb 05          	shr    $0x5,%bx
 2d1:	29 de                	sub    %ebx,%esi
 2d3:	89 f3                	mov    %esi,%ebx
 2d5:	01 d2                	add    %edx,%edx
 2d7:	42                   	inc    %edx
 2d8:	29 c8                	sub    %ecx,%eax
 2da:	89 c1                	mov    %eax,%ecx
 2dc:	eb bd                	jmp    29b <LzmaDecode+0x29b>
 2de:	88 54 24 18          	mov    %dl,0x18(%esp)
 2e2:	8b 74 24 08          	mov    0x8(%esp),%esi
 2e6:	8d 4e 01             	lea    0x1(%esi),%ecx
 2e9:	8b 74 24 5c          	mov    0x5c(%esp),%esi
 2ed:	8b 5c 24 08          	mov    0x8(%esp),%ebx
 2f1:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
 2f4:	83 3c 24 03          	cmpl   $0x3,(%esp)
 2f8:	0f 8e de 06 00 00    	jle    9dc <LzmaDecode+0x9dc>
 2fe:	83 3c 24 09          	cmpl   $0x9,(%esp)
 302:	7f 09                	jg     30d <LzmaDecode+0x30d>
 304:	83 2c 24 03          	subl   $0x3,(%esp)
 308:	e9 d6 06 00 00       	jmp    9e3 <LzmaDecode+0x9e3>
 30d:	83 2c 24 06          	subl   $0x6,(%esp)
 311:	e9 cd 06 00 00       	jmp    9e3 <LzmaDecode+0x9e3>
 316:	29 c2                	sub    %eax,%edx
 318:	29 c7                	sub    %eax,%edi
 31a:	89 c8                	mov    %ecx,%eax
 31c:	66 c1 e8 05          	shr    $0x5,%ax
 320:	29 c1                	sub    %eax,%ecx
 322:	66 89 0e             	mov    %cx,(%esi)
 325:	8b 04 24             	mov    (%esp),%eax
 328:	05 c0 00 00 00       	add    $0xc0,%eax
 32d:	01 c0                	add    %eax,%eax
 32f:	89 44 24 18          	mov    %eax,0x18(%esp)
 333:	8b 74 24 0c          	mov    0xc(%esp),%esi
 337:	01 c6                	add    %eax,%esi
 339:	81 fa ff ff ff 00    	cmp    $0xffffff,%edx
 33f:	77 1b                	ja     35c <LzmaDecode+0x35c>
 341:	3b 6c 24 04          	cmp    0x4(%esp),%ebp
 345:	0f 84 41 fd ff ff    	je     8c <LzmaDecode+0x8c>
 34b:	c1 e2 08             	shl    $0x8,%edx
 34e:	c1 e7 08             	shl    $0x8,%edi
 351:	89 f9                	mov    %edi,%ecx
 353:	0f b6 5d 00          	movzbl 0x0(%ebp),%ebx
 357:	89 df                	mov    %ebx,%edi
 359:	09 cf                	or     %ecx,%edi
 35b:	45                   	inc    %ebp
 35c:	0f b7 06             	movzwl (%esi),%eax
 35f:	89 c3                	mov    %eax,%ebx
 361:	89 d1                	mov    %edx,%ecx
 363:	c1 e9 0b             	shr    $0xb,%ecx
 366:	89 44 24 2c          	mov    %eax,0x2c(%esp)
 36a:	0f af c8             	imul   %eax,%ecx
 36d:	39 cf                	cmp    %ecx,%edi
 36f:	73 4a                	jae    3bb <LzmaDecode+0x3bb>
 371:	b8 00 08 00 00       	mov    $0x800,%eax
 376:	2b 44 24 2c          	sub    0x2c(%esp),%eax
 37a:	c1 f8 05             	sar    $0x5,%eax
 37d:	01 d8                	add    %ebx,%eax
 37f:	66 89 06             	mov    %ax,(%esi)
 382:	83 3c 24 06          	cmpl   $0x6,(%esp)
 386:	7e 09                	jle    391 <LzmaDecode+0x391>
 388:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
 38f:	eb 07                	jmp    398 <LzmaDecode+0x398>
 391:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 398:	8b 44 24 0c          	mov    0xc(%esp),%eax
 39c:	8d 90 64 06 00 00    	lea    0x664(%eax),%edx
 3a2:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 3a6:	89 44 24 24          	mov    %eax,0x24(%esp)
 3aa:	8b 44 24 14          	mov    0x14(%esp),%eax
 3ae:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 3b2:	8b 44 24 10          	mov    0x10(%esp),%eax
 3b6:	e9 4f 02 00 00       	jmp    60a <LzmaDecode+0x60a>
 3bb:	29 ca                	sub    %ecx,%edx
 3bd:	29 cf                	sub    %ecx,%edi
 3bf:	89 c1                	mov    %eax,%ecx
 3c1:	66 c1 e9 05          	shr    $0x5,%cx
 3c5:	29 cb                	sub    %ecx,%ebx
 3c7:	66 89 1e             	mov    %bx,(%esi)
 3ca:	8b 44 24 0c          	mov    0xc(%esp),%eax
 3ce:	8b 74 24 18          	mov    0x18(%esp),%esi
 3d2:	8d 74 30 18          	lea    0x18(%eax,%esi,1),%esi
 3d6:	81 fa ff ff ff 00    	cmp    $0xffffff,%edx
 3dc:	77 1b                	ja     3f9 <LzmaDecode+0x3f9>
 3de:	3b 6c 24 04          	cmp    0x4(%esp),%ebp
 3e2:	0f 84 a4 fc ff ff    	je     8c <LzmaDecode+0x8c>
 3e8:	c1 e2 08             	shl    $0x8,%edx
 3eb:	c1 e7 08             	shl    $0x8,%edi
 3ee:	89 f9                	mov    %edi,%ecx
 3f0:	0f b6 5d 00          	movzbl 0x0(%ebp),%ebx
 3f4:	89 df                	mov    %ebx,%edi
 3f6:	09 cf                	or     %ecx,%edi
 3f8:	45                   	inc    %ebp
 3f9:	0f b7 06             	movzwl (%esi),%eax
 3fc:	89 c3                	mov    %eax,%ebx
 3fe:	89 d1                	mov    %edx,%ecx
 400:	c1 e9 0b             	shr    $0xb,%ecx
 403:	89 44 24 2c          	mov    %eax,0x2c(%esp)
 407:	0f af c8             	imul   %eax,%ecx
 40a:	39 cf                	cmp    %ecx,%edi
 40c:	0f 83 d0 00 00 00    	jae    4e2 <LzmaDecode+0x4e2>
 412:	b8 00 08 00 00       	mov    $0x800,%eax
 417:	2b 44 24 2c          	sub    0x2c(%esp),%eax
 41b:	c1 f8 05             	sar    $0x5,%eax
 41e:	01 d8                	add    %ebx,%eax
 420:	66 89 06             	mov    %ax,(%esi)
 423:	8b 44 24 0c          	mov    0xc(%esp),%eax
 427:	8b 54 24 28          	mov    0x28(%esp),%edx
 42b:	8d 9c 10 e0 01 00 00 	lea    0x1e0(%eax,%edx,1),%ebx
 432:	81 f9 ff ff ff 00    	cmp    $0xffffff,%ecx
 438:	77 1b                	ja     455 <LzmaDecode+0x455>
 43a:	3b 6c 24 04          	cmp    0x4(%esp),%ebp
 43e:	0f 84 48 fc ff ff    	je     8c <LzmaDecode+0x8c>
 444:	c1 e1 08             	shl    $0x8,%ecx
 447:	89 f8                	mov    %edi,%eax
 449:	c1 e0 08             	shl    $0x8,%eax
 44c:	0f b6 55 00          	movzbl 0x0(%ebp),%edx
 450:	89 d7                	mov    %edx,%edi
 452:	09 c7                	or     %eax,%edi
 454:	45                   	inc    %ebp
 455:	0f b7 33             	movzwl (%ebx),%esi
 458:	89 f2                	mov    %esi,%edx
 45a:	89 c8                	mov    %ecx,%eax
 45c:	c1 e8 0b             	shr    $0xb,%eax
 45f:	0f af c6             	imul   %esi,%eax
 462:	39 c7                	cmp    %eax,%edi
 464:	73 58                	jae    4be <LzmaDecode+0x4be>
 466:	b9 00 08 00 00       	mov    $0x800,%ecx
 46b:	29 f1                	sub    %esi,%ecx
 46d:	c1 f9 05             	sar    $0x5,%ecx
 470:	01 f1                	add    %esi,%ecx
 472:	66 89 0b             	mov    %cx,(%ebx)
 475:	83 7c 24 08 00       	cmpl   $0x0,0x8(%esp)
 47a:	0f 84 0c fc ff ff    	je     8c <LzmaDecode+0x8c>
 480:	83 3c 24 06          	cmpl   $0x6,(%esp)
 484:	7e 09                	jle    48f <LzmaDecode+0x48f>
 486:	c7 04 24 0b 00 00 00 	movl   $0xb,(%esp)
 48d:	eb 07                	jmp    496 <LzmaDecode+0x496>
 48f:	c7 04 24 09 00 00 00 	movl   $0x9,(%esp)
 496:	8b 54 24 08          	mov    0x8(%esp),%edx
 49a:	2b 54 24 10          	sub    0x10(%esp),%edx
 49e:	8b 74 24 5c          	mov    0x5c(%esp),%esi
 4a2:	8a 14 16             	mov    (%esi,%edx,1),%dl
 4a5:	88 54 24 18          	mov    %dl,0x18(%esp)
 4a9:	8b 54 24 08          	mov    0x8(%esp),%edx
 4ad:	8d 4a 01             	lea    0x1(%edx),%ecx
 4b0:	89 d3                	mov    %edx,%ebx
 4b2:	8a 54 24 18          	mov    0x18(%esp),%dl
 4b6:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
 4b9:	e9 25 05 00 00       	jmp    9e3 <LzmaDecode+0x9e3>
 4be:	29 c1                	sub    %eax,%ecx
 4c0:	29 c7                	sub    %eax,%edi
 4c2:	89 f0                	mov    %esi,%eax
 4c4:	66 c1 e8 05          	shr    $0x5,%ax
 4c8:	29 c2                	sub    %eax,%edx
 4ca:	66 89 13             	mov    %dx,(%ebx)
 4cd:	8b 44 24 14          	mov    0x14(%esp),%eax
 4d1:	8b 54 24 10          	mov    0x10(%esp),%edx
 4d5:	89 54 24 14          	mov    %edx,0x14(%esp)
 4d9:	89 44 24 10          	mov    %eax,0x10(%esp)
 4dd:	e9 fc 00 00 00       	jmp    5de <LzmaDecode+0x5de>
 4e2:	29 ca                	sub    %ecx,%edx
 4e4:	29 cf                	sub    %ecx,%edi
 4e6:	89 c1                	mov    %eax,%ecx
 4e8:	66 c1 e9 05          	shr    $0x5,%cx
 4ec:	29 cb                	sub    %ecx,%ebx
 4ee:	66 89 1e             	mov    %bx,(%esi)
 4f1:	8b 44 24 0c          	mov    0xc(%esp),%eax
 4f5:	8b 74 24 18          	mov    0x18(%esp),%esi
 4f9:	8d 74 30 30          	lea    0x30(%eax,%esi,1),%esi
 4fd:	81 fa ff ff ff 00    	cmp    $0xffffff,%edx
 503:	77 1b                	ja     520 <LzmaDecode+0x520>
 505:	3b 6c 24 04          	cmp    0x4(%esp),%ebp
 509:	0f 84 7d fb ff ff    	je     8c <LzmaDecode+0x8c>
 50f:	c1 e2 08             	shl    $0x8,%edx
 512:	c1 e7 08             	shl    $0x8,%edi
 515:	89 f9                	mov    %edi,%ecx
 517:	0f b6 5d 00          	movzbl 0x0(%ebp),%ebx
 51b:	89 df                	mov    %ebx,%edi
 51d:	09 cf                	or     %ecx,%edi
 51f:	45                   	inc    %ebp
 520:	0f b7 06             	movzwl (%esi),%eax
 523:	89 c3                	mov    %eax,%ebx
 525:	89 d1                	mov    %edx,%ecx
 527:	c1 e9 0b             	shr    $0xb,%ecx
 52a:	89 44 24 28          	mov    %eax,0x28(%esp)
 52e:	0f af c8             	imul   %eax,%ecx
 531:	39 cf                	cmp    %ecx,%edi
 533:	73 16                	jae    54b <LzmaDecode+0x54b>
 535:	b8 00 08 00 00       	mov    $0x800,%eax
 53a:	2b 44 24 28          	sub    0x28(%esp),%eax
 53e:	c1 f8 05             	sar    $0x5,%eax
 541:	01 d8                	add    %ebx,%eax
 543:	66 89 06             	mov    %ax,(%esi)
 546:	e9 93 00 00 00       	jmp    5de <LzmaDecode+0x5de>
 54b:	29 ca                	sub    %ecx,%edx
 54d:	29 cf                	sub    %ecx,%edi
 54f:	89 c1                	mov    %eax,%ecx
 551:	66 c1 e9 05          	shr    $0x5,%cx
 555:	29 cb                	sub    %ecx,%ebx
 557:	66 89 1e             	mov    %bx,(%esi)
 55a:	8b 44 24 0c          	mov    0xc(%esp),%eax
 55e:	8b 74 24 18          	mov    0x18(%esp),%esi
 562:	8d 5c 30 48          	lea    0x48(%eax,%esi,1),%ebx
 566:	81 fa ff ff ff 00    	cmp    $0xffffff,%edx
 56c:	77 1b                	ja     589 <LzmaDecode+0x589>
 56e:	3b 6c 24 04          	cmp    0x4(%esp),%ebp
 572:	0f 84 14 fb ff ff    	je     8c <LzmaDecode+0x8c>
 578:	c1 e2 08             	shl    $0x8,%edx
 57b:	89 f8                	mov    %edi,%eax
 57d:	c1 e0 08             	shl    $0x8,%eax
 580:	0f b6 4d 00          	movzbl 0x0(%ebp),%ecx
 584:	89 cf                	mov    %ecx,%edi
 586:	09 c7                	or     %eax,%edi
 588:	45                   	inc    %ebp
 589:	0f b7 33             	movzwl (%ebx),%esi
 58c:	89 f0                	mov    %esi,%eax
 58e:	89 d1                	mov    %edx,%ecx
 590:	c1 e9 0b             	shr    $0xb,%ecx
 593:	0f af ce             	imul   %esi,%ecx
 596:	39 cf                	cmp    %ecx,%edi
 598:	73 1d                	jae    5b7 <LzmaDecode+0x5b7>
 59a:	ba 00 08 00 00       	mov    $0x800,%edx
 59f:	29 f2                	sub    %esi,%edx
 5a1:	c1 fa 05             	sar    $0x5,%edx
 5a4:	01 f2                	add    %esi,%edx
 5a6:	66 89 13             	mov    %dx,(%ebx)
 5a9:	8b 44 24 14          	mov    0x14(%esp),%eax
 5ad:	8b 74 24 1c          	mov    0x1c(%esp),%esi
 5b1:	89 74 24 14          	mov    %esi,0x14(%esp)
 5b5:	eb 23                	jmp    5da <LzmaDecode+0x5da>
 5b7:	29 cf                	sub    %ecx,%edi
 5b9:	66 c1 ee 05          	shr    $0x5,%si
 5bd:	29 f0                	sub    %esi,%eax
 5bf:	66 89 03             	mov    %ax,(%ebx)
 5c2:	29 ca                	sub    %ecx,%edx
 5c4:	89 d1                	mov    %edx,%ecx
 5c6:	8b 44 24 14          	mov    0x14(%esp),%eax
 5ca:	8b 5c 24 24          	mov    0x24(%esp),%ebx
 5ce:	89 5c 24 14          	mov    %ebx,0x14(%esp)
 5d2:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 5d6:	89 54 24 24          	mov    %edx,0x24(%esp)
 5da:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 5de:	83 3c 24 06          	cmpl   $0x6,(%esp)
 5e2:	7e 09                	jle    5ed <LzmaDecode+0x5ed>
 5e4:	c7 04 24 0b 00 00 00 	movl   $0xb,(%esp)
 5eb:	eb 07                	jmp    5f4 <LzmaDecode+0x5f4>
 5ed:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 5f4:	8b 44 24 0c          	mov    0xc(%esp),%eax
 5f8:	8d 90 68 0a 00 00    	lea    0xa68(%eax),%edx
 5fe:	8b 44 24 10          	mov    0x10(%esp),%eax
 602:	8b 74 24 14          	mov    0x14(%esp),%esi
 606:	89 74 24 10          	mov    %esi,0x10(%esp)
 60a:	89 44 24 14          	mov    %eax,0x14(%esp)
 60e:	81 f9 ff ff ff 00    	cmp    $0xffffff,%ecx
 614:	77 1b                	ja     631 <LzmaDecode+0x631>
 616:	3b 6c 24 04          	cmp    0x4(%esp),%ebp
 61a:	0f 84 6c fa ff ff    	je     8c <LzmaDecode+0x8c>
 620:	c1 e1 08             	shl    $0x8,%ecx
 623:	89 f8                	mov    %edi,%eax
 625:	c1 e0 08             	shl    $0x8,%eax
 628:	0f b6 5d 00          	movzbl 0x0(%ebp),%ebx
 62c:	89 df                	mov    %ebx,%edi
 62e:	09 c7                	or     %eax,%edi
 630:	45                   	inc    %ebp
 631:	8b 74 24 08          	mov    0x8(%esp),%esi
 635:	23 74 24 34          	and    0x34(%esp),%esi
 639:	89 74 24 18          	mov    %esi,0x18(%esp)
 63d:	0f b7 32             	movzwl (%edx),%esi
 640:	89 f3                	mov    %esi,%ebx
 642:	89 c8                	mov    %ecx,%eax
 644:	c1 e8 0b             	shr    $0xb,%eax
 647:	0f af c6             	imul   %esi,%eax
 64a:	39 c7                	cmp    %eax,%edi
 64c:	73 2d                	jae    67b <LzmaDecode+0x67b>
 64e:	b9 00 08 00 00       	mov    $0x800,%ecx
 653:	29 f1                	sub    %esi,%ecx
 655:	c1 f9 05             	sar    $0x5,%ecx
 658:	01 f1                	add    %esi,%ecx
 65a:	66 89 0a             	mov    %cx,(%edx)
 65d:	8b 74 24 18          	mov    0x18(%esp),%esi
 661:	8d 0c f5 02 00 00 00 	lea    0x2(,%esi,8),%ecx
 668:	01 c9                	add    %ecx,%ecx
 66a:	8d 1c 0a             	lea    (%edx,%ecx,1),%ebx
 66d:	89 5c 24 2c          	mov    %ebx,0x2c(%esp)
 671:	c7 44 24 28 00 00 00 	movl   $0x0,0x28(%esp)
 678:	00 
 679:	eb 6f                	jmp    6ea <LzmaDecode+0x6ea>
 67b:	29 c1                	sub    %eax,%ecx
 67d:	29 c7                	sub    %eax,%edi
 67f:	89 f0                	mov    %esi,%eax
 681:	66 c1 e8 05          	shr    $0x5,%ax
 685:	29 c3                	sub    %eax,%ebx
 687:	66 89 1a             	mov    %bx,(%edx)
 68a:	81 f9 ff ff ff 00    	cmp    $0xffffff,%ecx
 690:	77 1b                	ja     6ad <LzmaDecode+0x6ad>
 692:	3b 6c 24 04          	cmp    0x4(%esp),%ebp
 696:	0f 84 f0 f9 ff ff    	je     8c <LzmaDecode+0x8c>
 69c:	c1 e1 08             	shl    $0x8,%ecx
 69f:	89 f8                	mov    %edi,%eax
 6a1:	c1 e0 08             	shl    $0x8,%eax
 6a4:	0f b6 5d 00          	movzbl 0x0(%ebp),%ebx
 6a8:	89 df                	mov    %ebx,%edi
 6aa:	09 c7                	or     %eax,%edi
 6ac:	45                   	inc    %ebp
 6ad:	0f b7 72 02          	movzwl 0x2(%edx),%esi
 6b1:	89 f3                	mov    %esi,%ebx
 6b3:	89 c8                	mov    %ecx,%eax
 6b5:	c1 e8 0b             	shr    $0xb,%eax
 6b8:	0f af c6             	imul   %esi,%eax
 6bb:	39 c7                	cmp    %eax,%edi
 6bd:	73 32                	jae    6f1 <LzmaDecode+0x6f1>
 6bf:	b9 00 08 00 00       	mov    $0x800,%ecx
 6c4:	29 f1                	sub    %esi,%ecx
 6c6:	c1 f9 05             	sar    $0x5,%ecx
 6c9:	01 f1                	add    %esi,%ecx
 6cb:	66 89 4a 02          	mov    %cx,0x2(%edx)
 6cf:	8b 74 24 18          	mov    0x18(%esp),%esi
 6d3:	8d 0c f5 82 00 00 00 	lea    0x82(,%esi,8),%ecx
 6da:	01 c9                	add    %ecx,%ecx
 6dc:	01 ca                	add    %ecx,%edx
 6de:	89 54 24 2c          	mov    %edx,0x2c(%esp)
 6e2:	c7 44 24 28 08 00 00 	movl   $0x8,0x28(%esp)
 6e9:	00 
 6ea:	b9 03 00 00 00       	mov    $0x3,%ecx
 6ef:	eb 27                	jmp    718 <LzmaDecode+0x718>
 6f1:	29 c7                	sub    %eax,%edi
 6f3:	66 c1 ee 05          	shr    $0x5,%si
 6f7:	29 f3                	sub    %esi,%ebx
 6f9:	66 89 5a 02          	mov    %bx,0x2(%edx)
 6fd:	8d 9a 04 02 00 00    	lea    0x204(%edx),%ebx
 703:	89 5c 24 2c          	mov    %ebx,0x2c(%esp)
 707:	29 c1                	sub    %eax,%ecx
 709:	89 c8                	mov    %ecx,%eax
 70b:	c7 44 24 28 10 00 00 	movl   $0x10,0x28(%esp)
 712:	00 
 713:	b9 08 00 00 00       	mov    $0x8,%ecx
 718:	89 4c 24 3c          	mov    %ecx,0x3c(%esp)
 71c:	ba 01 00 00 00       	mov    $0x1,%edx
 721:	8d 1c 12             	lea    (%edx,%edx,1),%ebx
 724:	03 5c 24 2c          	add    0x2c(%esp),%ebx
 728:	89 5c 24 38          	mov    %ebx,0x38(%esp)
 72c:	3d ff ff ff 00       	cmp    $0xffffff,%eax
 731:	77 19                	ja     74c <LzmaDecode+0x74c>
 733:	3b 6c 24 04          	cmp    0x4(%esp),%ebp
 737:	0f 84 4f f9 ff ff    	je     8c <LzmaDecode+0x8c>
 73d:	c1 e0 08             	shl    $0x8,%eax
 740:	c1 e7 08             	shl    $0x8,%edi
 743:	0f b6 75 00          	movzbl 0x0(%ebp),%esi
 747:	09 fe                	or     %edi,%esi
 749:	89 f7                	mov    %esi,%edi
 74b:	45                   	inc    %ebp
 74c:	8b 5c 24 38          	mov    0x38(%esp),%ebx
 750:	66 8b 33             	mov    (%ebx),%si
 753:	66 89 74 24 18       	mov    %si,0x18(%esp)
 758:	89 c6                	mov    %eax,%esi
 75a:	c1 ee 0b             	shr    $0xb,%esi
 75d:	0f b7 5c 24 18       	movzwl 0x18(%esp),%ebx
 762:	0f af f3             	imul   %ebx,%esi
 765:	39 f7                	cmp    %esi,%edi
 767:	73 16                	jae    77f <LzmaDecode+0x77f>
 769:	b8 00 08 00 00       	mov    $0x800,%eax
 76e:	29 d8                	sub    %ebx,%eax
 770:	c1 f8 05             	sar    $0x5,%eax
 773:	8b 5c 24 18          	mov    0x18(%esp),%ebx
 777:	01 c3                	add    %eax,%ebx
 779:	01 d2                	add    %edx,%edx
 77b:	89 f0                	mov    %esi,%eax
 77d:	eb 15                	jmp    794 <LzmaDecode+0x794>
 77f:	29 f0                	sub    %esi,%eax
 781:	29 f7                	sub    %esi,%edi
 783:	8b 74 24 18          	mov    0x18(%esp),%esi
 787:	66 c1 ee 05          	shr    $0x5,%si
 78b:	8b 5c 24 18          	mov    0x18(%esp),%ebx
 78f:	29 f3                	sub    %esi,%ebx
 791:	01 d2                	add    %edx,%edx
 793:	42                   	inc    %edx
 794:	8b 74 24 38          	mov    0x38(%esp),%esi
 798:	66 89 1e             	mov    %bx,(%esi)
 79b:	ff 4c 24 3c          	decl   0x3c(%esp)
 79f:	75 80                	jne    721 <LzmaDecode+0x721>
 7a1:	bb 01 00 00 00       	mov    $0x1,%ebx
 7a6:	d3 e3                	shl    %cl,%ebx
 7a8:	29 da                	sub    %ebx,%edx
 7aa:	03 54 24 28          	add    0x28(%esp),%edx
 7ae:	89 54 24 2c          	mov    %edx,0x2c(%esp)
 7b2:	83 3c 24 03          	cmpl   $0x3,(%esp)
 7b6:	0f 8f da 01 00 00    	jg     996 <LzmaDecode+0x996>
 7bc:	83 fa 03             	cmp    $0x3,%edx
 7bf:	7e 05                	jle    7c6 <LzmaDecode+0x7c6>
 7c1:	ba 03 00 00 00       	mov    $0x3,%edx
 7c6:	c1 e2 06             	shl    $0x6,%edx
 7c9:	81 c2 b0 01 00 00    	add    $0x1b0,%edx
 7cf:	89 54 24 18          	mov    %edx,0x18(%esp)
 7d3:	89 c2                	mov    %eax,%edx
 7d5:	c7 44 24 28 06 00 00 	movl   $0x6,0x28(%esp)
 7dc:	00 
 7dd:	b8 01 00 00 00       	mov    $0x1,%eax
 7e2:	8b 74 24 18          	mov    0x18(%esp),%esi
 7e6:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
 7e9:	01 c9                	add    %ecx,%ecx
 7eb:	03 4c 24 0c          	add    0xc(%esp),%ecx
 7ef:	89 4c 24 10          	mov    %ecx,0x10(%esp)
 7f3:	81 fa ff ff ff 00    	cmp    $0xffffff,%edx
 7f9:	77 19                	ja     814 <LzmaDecode+0x814>
 7fb:	3b 6c 24 04          	cmp    0x4(%esp),%ebp
 7ff:	0f 84 87 f8 ff ff    	je     8c <LzmaDecode+0x8c>
 805:	c1 e2 08             	shl    $0x8,%edx
 808:	c1 e7 08             	shl    $0x8,%edi
 80b:	0f b6 75 00          	movzbl 0x0(%ebp),%esi
 80f:	09 fe                	or     %edi,%esi
 811:	89 f7                	mov    %esi,%edi
 813:	45                   	inc    %ebp
 814:	8b 74 24 10          	mov    0x10(%esp),%esi
 818:	0f b7 1e             	movzwl (%esi),%ebx
 81b:	89 d9                	mov    %ebx,%ecx
 81d:	89 d6                	mov    %edx,%esi
 81f:	c1 ee 0b             	shr    $0xb,%esi
 822:	0f af f3             	imul   %ebx,%esi
 825:	39 f7                	cmp    %esi,%edi
 827:	73 14                	jae    83d <LzmaDecode+0x83d>
 829:	ba 00 08 00 00       	mov    $0x800,%edx
 82e:	29 da                	sub    %ebx,%edx
 830:	89 d3                	mov    %edx,%ebx
 832:	c1 fb 05             	sar    $0x5,%ebx
 835:	01 cb                	add    %ecx,%ebx
 837:	01 c0                	add    %eax,%eax
 839:	89 f2                	mov    %esi,%edx
 83b:	eb 0f                	jmp    84c <LzmaDecode+0x84c>
 83d:	29 f2                	sub    %esi,%edx
 83f:	29 f7                	sub    %esi,%edi
 841:	89 de                	mov    %ebx,%esi
 843:	66 c1 ee 05          	shr    $0x5,%si
 847:	29 f3                	sub    %esi,%ebx
 849:	01 c0                	add    %eax,%eax
 84b:	40                   	inc    %eax
 84c:	8b 74 24 10          	mov    0x10(%esp),%esi
 850:	66 89 1e             	mov    %bx,(%esi)
 853:	ff 4c 24 28          	decl   0x28(%esp)
 857:	75 89                	jne    7e2 <LzmaDecode+0x7e2>
 859:	83 e8 40             	sub    $0x40,%eax
 85c:	89 44 24 18          	mov    %eax,0x18(%esp)
 860:	83 f8 03             	cmp    $0x3,%eax
 863:	0f 8e 1c 01 00 00    	jle    985 <LzmaDecode+0x985>
 869:	89 c1                	mov    %eax,%ecx
 86b:	d1 f9                	sar    %ecx
 86d:	89 c3                	mov    %eax,%ebx
 86f:	83 e3 01             	and    $0x1,%ebx
 872:	83 cb 02             	or     $0x2,%ebx
 875:	83 f8 0d             	cmp    $0xd,%eax
 878:	7f 22                	jg     89c <LzmaDecode+0x89c>
 87a:	8d 71 ff             	lea    -0x1(%ecx),%esi
 87d:	89 74 24 28          	mov    %esi,0x28(%esp)
 881:	8a 4c 24 28          	mov    0x28(%esp),%cl
 885:	d3 e3                	shl    %cl,%ebx
 887:	89 d9                	mov    %ebx,%ecx
 889:	29 c1                	sub    %eax,%ecx
 88b:	8b 44 24 0c          	mov    0xc(%esp),%eax
 88f:	8d 84 48 5e 05 00 00 	lea    0x55e(%eax,%ecx,2),%eax
 896:	89 44 24 38          	mov    %eax,0x38(%esp)
 89a:	eb 4e                	jmp    8ea <LzmaDecode+0x8ea>
 89c:	8d 41 fb             	lea    -0x5(%ecx),%eax
 89f:	81 fa ff ff ff 00    	cmp    $0xffffff,%edx
 8a5:	77 1b                	ja     8c2 <LzmaDecode+0x8c2>
 8a7:	3b 6c 24 04          	cmp    0x4(%esp),%ebp
 8ab:	0f 84 db f7 ff ff    	je     8c <LzmaDecode+0x8c>
 8b1:	c1 e2 08             	shl    $0x8,%edx
 8b4:	c1 e7 08             	shl    $0x8,%edi
 8b7:	89 f9                	mov    %edi,%ecx
 8b9:	0f b6 75 00          	movzbl 0x0(%ebp),%esi
 8bd:	89 f7                	mov    %esi,%edi
 8bf:	09 cf                	or     %ecx,%edi
 8c1:	45                   	inc    %ebp
 8c2:	d1 ea                	shr    %edx
 8c4:	01 db                	add    %ebx,%ebx
 8c6:	39 d7                	cmp    %edx,%edi
 8c8:	72 05                	jb     8cf <LzmaDecode+0x8cf>
 8ca:	29 d7                	sub    %edx,%edi
 8cc:	83 cb 01             	or     $0x1,%ebx
 8cf:	48                   	dec    %eax
 8d0:	75 cd                	jne    89f <LzmaDecode+0x89f>
 8d2:	8b 44 24 0c          	mov    0xc(%esp),%eax
 8d6:	05 44 06 00 00       	add    $0x644,%eax
 8db:	89 44 24 38          	mov    %eax,0x38(%esp)
 8df:	c1 e3 04             	shl    $0x4,%ebx
 8e2:	c7 44 24 28 04 00 00 	movl   $0x4,0x28(%esp)
 8e9:	00 
 8ea:	89 5c 24 18          	mov    %ebx,0x18(%esp)
 8ee:	b8 01 00 00 00       	mov    $0x1,%eax
 8f3:	be 01 00 00 00       	mov    $0x1,%esi
 8f8:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
 8fb:	03 4c 24 38          	add    0x38(%esp),%ecx
 8ff:	89 4c 24 3c          	mov    %ecx,0x3c(%esp)
 903:	81 fa ff ff ff 00    	cmp    $0xffffff,%edx
 909:	77 1b                	ja     926 <LzmaDecode+0x926>
 90b:	3b 6c 24 04          	cmp    0x4(%esp),%ebp
 90f:	0f 84 77 f7 ff ff    	je     8c <LzmaDecode+0x8c>
 915:	c1 e2 08             	shl    $0x8,%edx
 918:	c1 e7 08             	shl    $0x8,%edi
 91b:	89 f9                	mov    %edi,%ecx
 91d:	0f b6 5d 00          	movzbl 0x0(%ebp),%ebx
 921:	89 df                	mov    %ebx,%edi
 923:	09 cf                	or     %ecx,%edi
 925:	45                   	inc    %ebp
 926:	8b 5c 24 3c          	mov    0x3c(%esp),%ebx
 92a:	66 8b 1b             	mov    (%ebx),%bx
 92d:	66 89 5c 24 10       	mov    %bx,0x10(%esp)
 932:	89 d3                	mov    %edx,%ebx
 934:	c1 eb 0b             	shr    $0xb,%ebx
 937:	0f b7 4c 24 10       	movzwl 0x10(%esp),%ecx
 93c:	0f af d9             	imul   %ecx,%ebx
 93f:	39 df                	cmp    %ebx,%edi
 941:	73 16                	jae    959 <LzmaDecode+0x959>
 943:	ba 00 08 00 00       	mov    $0x800,%edx
 948:	29 ca                	sub    %ecx,%edx
 94a:	c1 fa 05             	sar    $0x5,%edx
 94d:	8b 4c 24 10          	mov    0x10(%esp),%ecx
 951:	01 d1                	add    %edx,%ecx
 953:	01 c0                	add    %eax,%eax
 955:	89 da                	mov    %ebx,%edx
 957:	eb 19                	jmp    972 <LzmaDecode+0x972>
 959:	29 da                	sub    %ebx,%edx
 95b:	29 df                	sub    %ebx,%edi
 95d:	8b 5c 24 10          	mov    0x10(%esp),%ebx
 961:	66 c1 eb 05          	shr    $0x5,%bx
 965:	8b 4c 24 10          	mov    0x10(%esp),%ecx
 969:	29 d9                	sub    %ebx,%ecx
 96b:	01 c0                	add    %eax,%eax
 96d:	40                   	inc    %eax
 96e:	09 74 24 18          	or     %esi,0x18(%esp)
 972:	8b 5c 24 3c          	mov    0x3c(%esp),%ebx
 976:	66 89 0b             	mov    %cx,(%ebx)
 979:	01 f6                	add    %esi,%esi
 97b:	ff 4c 24 28          	decl   0x28(%esp)
 97f:	0f 85 73 ff ff ff    	jne    8f8 <LzmaDecode+0x8f8>
 985:	8b 44 24 18          	mov    0x18(%esp),%eax
 989:	40                   	inc    %eax
 98a:	89 44 24 10          	mov    %eax,0x10(%esp)
 98e:	74 5e                	je     9ee <LzmaDecode+0x9ee>
 990:	83 04 24 07          	addl   $0x7,(%esp)
 994:	89 d0                	mov    %edx,%eax
 996:	8b 54 24 2c          	mov    0x2c(%esp),%edx
 99a:	83 c2 02             	add    $0x2,%edx
 99d:	89 54 24 28          	mov    %edx,0x28(%esp)
 9a1:	8b 5c 24 10          	mov    0x10(%esp),%ebx
 9a5:	39 5c 24 08          	cmp    %ebx,0x8(%esp)
 9a9:	0f 82 dd f6 ff ff    	jb     8c <LzmaDecode+0x8c>
 9af:	8b 4c 24 08          	mov    0x8(%esp),%ecx
 9b3:	8b 74 24 5c          	mov    0x5c(%esp),%esi
 9b7:	29 de                	sub    %ebx,%esi
 9b9:	8a 14 0e             	mov    (%esi,%ecx,1),%dl
 9bc:	88 54 24 18          	mov    %dl,0x18(%esp)
 9c0:	ff 4c 24 28          	decl   0x28(%esp)
 9c4:	41                   	inc    %ecx
 9c5:	8b 5c 24 5c          	mov    0x5c(%esp),%ebx
 9c9:	88 54 0b ff          	mov    %dl,-0x1(%ebx,%ecx,1)
 9cd:	39 4c 24 60          	cmp    %ecx,0x60(%esp)
 9d1:	76 10                	jbe    9e3 <LzmaDecode+0x9e3>
 9d3:	83 7c 24 28 00       	cmpl   $0x0,0x28(%esp)
 9d8:	75 df                	jne    9b9 <LzmaDecode+0x9b9>
 9da:	eb 07                	jmp    9e3 <LzmaDecode+0x9e3>
 9dc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 9e3:	89 c2                	mov    %eax,%edx
 9e5:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 9e9:	e9 f1 f6 ff ff       	jmp    df <LzmaDecode+0xdf>
 9ee:	81 fa ff ff ff 00    	cmp    $0xffffff,%edx
 9f4:	77 0b                	ja     a01 <LzmaDecode+0xa01>
 9f6:	3b 6c 24 04          	cmp    0x4(%esp),%ebp
 9fa:	0f 84 8c f6 ff ff    	je     8c <LzmaDecode+0x8c>
 a00:	45                   	inc    %ebp
 a01:	89 e8                	mov    %ebp,%eax
 a03:	2b 44 24 20          	sub    0x20(%esp),%eax
 a07:	8b 7c 24 58          	mov    0x58(%esp),%edi
 a0b:	89 07                	mov    %eax,(%edi)
 a0d:	8b 44 24 64          	mov    0x64(%esp),%eax
 a11:	8b 7c 24 08          	mov    0x8(%esp),%edi
 a15:	89 38                	mov    %edi,(%eax)
 a17:	31 c0                	xor    %eax,%eax
 a19:	83 c4 44             	add    $0x44,%esp
 a1c:	5b                   	pop    %ebx
 a1d:	5e                   	pop    %esi
 a1e:	5f                   	pop    %edi
 a1f:	5d                   	pop    %ebp
 a20:	c3                   	ret    
