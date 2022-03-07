
./mptable.o:     file format elf32-i386


Disassembly of section .text.mptable_setup:

00000000 <mptable_setup>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 3c             	sub    $0x3c,%esp
   7:	68 00 00 00 00       	push   $0x0
   c:	e8 fc ff ff ff       	call   d <mptable_setup+0xd>
  11:	b9 10 00 00 00       	mov    $0x10,%ecx
  16:	ba 00 80 00 00       	mov    $0x8000,%edx
  1b:	b8 00 00 00 00       	mov    $0x0,%eax
  20:	e8 fc ff ff ff       	call   21 <mptable_setup+0x21>
  25:	59                   	pop    %ecx
  26:	89 c5                	mov    %eax,%ebp
  28:	85 c0                	test   %eax,%eax
  2a:	75 30                	jne    5c <mptable_setup+0x5c>
  2c:	b9 10 00 00 00       	mov    $0x10,%ecx
  31:	ba 00 80 00 00       	mov    $0x8000,%edx
  36:	b8 00 00 00 00       	mov    $0x0,%eax
  3b:	e8 fc ff ff ff       	call   3c <mptable_setup+0x3c>
  40:	89 c5                	mov    %eax,%ebp
  42:	85 c0                	test   %eax,%eax
  44:	75 16                	jne    5c <mptable_setup+0x5c>
  46:	ba 00 00 00 00       	mov    $0x0,%edx
  4b:	b8 20 00 00 00       	mov    $0x20,%eax
  50:	83 c4 3c             	add    $0x3c,%esp
  53:	5b                   	pop    %ebx
  54:	5e                   	pop    %esi
  55:	5f                   	pop    %edi
  56:	5d                   	pop    %ebp
  57:	e9 fc ff ff ff       	jmp    58 <mptable_setup+0x58>
  5c:	b9 2c 00 00 00       	mov    $0x2c,%ecx
  61:	31 d2                	xor    %edx,%edx
  63:	89 e8                	mov    %ebp,%eax
  65:	e8 fc ff ff ff       	call   66 <mptable_setup+0x66>
  6a:	c7 45 00 50 43 4d 50 	movl   $0x504d4350,0x0(%ebp)
  71:	c6 45 06 04          	movb   $0x4,0x6(%ebp)
  75:	c7 45 08 42 4f 43 48 	movl   $0x48434f42,0x8(%ebp)
  7c:	c7 45 0c 53 43 50 55 	movl   $0x55504353,0xc(%ebp)
  83:	8d 45 10             	lea    0x10(%ebp),%eax
  86:	be 0e 00 00 00       	mov    $0xe,%esi
  8b:	b9 03 00 00 00       	mov    $0x3,%ecx
  90:	89 c7                	mov    %eax,%edi
  92:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  94:	c7 45 24 00 00 e0 fe 	movl   $0xfee00000,0x24(%ebp)
  9b:	8d 44 24 28          	lea    0x28(%esp),%eax
  9f:	50                   	push   %eax
  a0:	8d 44 24 28          	lea    0x28(%esp),%eax
  a4:	50                   	push   %eax
  a5:	8d 4c 24 28          	lea    0x28(%esp),%ecx
  a9:	8d 54 24 24          	lea    0x24(%esp),%edx
  ad:	b8 01 00 00 00       	mov    $0x1,%eax
  b2:	e8 fc ff ff ff       	call   b3 <mptable_setup+0xb3>
  b7:	58                   	pop    %eax
  b8:	5a                   	pop    %edx
  b9:	83 7c 24 1c 00       	cmpl   $0x0,0x1c(%esp)
  be:	75 17                	jne    d7 <mptable_setup+0xd7>
  c0:	c7 44 24 1c 00 06 00 	movl   $0x600,0x1c(%esp)
  c7:	00 
  c8:	c7 44 24 28 01 02 00 	movl   $0x201,0x28(%esp)
  cf:	00 
  d0:	bf 01 00 00 00       	mov    $0x1,%edi
  d5:	eb 18                	jmp    ef <mptable_setup+0xef>
  d7:	bf 01 00 00 00       	mov    $0x1,%edi
  dc:	f6 44 24 2b 10       	testb  $0x10,0x2b(%esp)
  e1:	74 0c                	je     ef <mptable_setup+0xef>
  e3:	0f b6 4c 24 22       	movzbl 0x22(%esp),%ecx
  e8:	49                   	dec    %ecx
  e9:	0f bd c9             	bsr    %ecx,%ecx
  ec:	41                   	inc    %ecx
  ed:	d3 e7                	shl    %cl,%edi
  ef:	a1 30 00 e0 fe       	mov    0xfee00030,%eax
  f4:	88 04 24             	mov    %al,(%esp)
  f7:	8d 45 2c             	lea    0x2c(%ebp),%eax
  fa:	89 44 24 04          	mov    %eax,0x4(%esp)
  fe:	89 c3                	mov    %eax,%ebx
 100:	31 f6                	xor    %esi,%esi
 102:	39 35 00 00 00 00    	cmp    %esi,0x0
 108:	76 4e                	jbe    158 <mptable_setup+0x158>
 10a:	b9 14 00 00 00       	mov    $0x14,%ecx
 10f:	31 d2                	xor    %edx,%edx
 111:	89 d8                	mov    %ebx,%eax
 113:	e8 fc ff ff ff       	call   114 <mptable_setup+0x114>
 118:	c6 03 00             	movb   $0x0,(%ebx)
 11b:	89 f0                	mov    %esi,%eax
 11d:	88 43 01             	mov    %al,0x1(%ebx)
 120:	8a 04 24             	mov    (%esp),%al
 123:	88 43 02             	mov    %al,0x2(%ebx)
 126:	89 f0                	mov    %esi,%eax
 128:	0f b6 c0             	movzbl %al,%eax
 12b:	e8 fc ff ff ff       	call   12c <mptable_setup+0x12c>
 130:	89 c2                	mov    %eax,%edx
 132:	85 f6                	test   %esi,%esi
 134:	0f 94 c0             	sete   %al
 137:	d1 e0                	shl    %eax
 139:	85 d2                	test   %edx,%edx
 13b:	0f 95 c2             	setne  %dl
 13e:	09 d0                	or     %edx,%eax
 140:	88 43 03             	mov    %al,0x3(%ebx)
 143:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 147:	89 43 04             	mov    %eax,0x4(%ebx)
 14a:	8b 44 24 28          	mov    0x28(%esp),%eax
 14e:	89 43 08             	mov    %eax,0x8(%ebx)
 151:	83 c3 14             	add    $0x14,%ebx
 154:	01 fe                	add    %edi,%esi
 156:	eb aa                	jmp    102 <mptable_setup+0x102>
 158:	89 df                	mov    %ebx,%edi
 15a:	2b 7c 24 04          	sub    0x4(%esp),%edi
 15e:	c1 ff 02             	sar    $0x2,%edi
 161:	69 ff cd cc cc cc    	imul   $0xcccccccd,%edi,%edi
 167:	89 de                	mov    %ebx,%esi
 169:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
 170:	74 24                	je     196 <mptable_setup+0x196>
 172:	8d 73 08             	lea    0x8(%ebx),%esi
 175:	b9 08 00 00 00       	mov    $0x8,%ecx
 17a:	31 d2                	xor    %edx,%edx
 17c:	89 d8                	mov    %ebx,%eax
 17e:	e8 fc ff ff ff       	call   17f <mptable_setup+0x17f>
 183:	66 c7 03 01 00       	movw   $0x1,(%ebx)
 188:	c7 43 02 50 43 49 20 	movl   $0x20494350,0x2(%ebx)
 18f:	66 c7 43 06 20 20    	movw   $0x2020,0x6(%ebx)
 195:	47                   	inc    %edi
 196:	b9 08 00 00 00       	mov    $0x8,%ecx
 19b:	31 d2                	xor    %edx,%edx
 19d:	89 f0                	mov    %esi,%eax
 19f:	e8 fc ff ff ff       	call   1a0 <mptable_setup+0x1a0>
 1a4:	c6 06 01             	movb   $0x1,(%esi)
 1a7:	89 f0                	mov    %esi,%eax
 1a9:	29 d8                	sub    %ebx,%eax
 1ab:	c1 f8 03             	sar    $0x3,%eax
 1ae:	89 44 24 04          	mov    %eax,0x4(%esp)
 1b2:	8a 44 24 04          	mov    0x4(%esp),%al
 1b6:	88 44 24 12          	mov    %al,0x12(%esp)
 1ba:	88 46 01             	mov    %al,0x1(%esi)
 1bd:	c7 46 02 49 53 41 20 	movl   $0x20415349,0x2(%esi)
 1c4:	66 c7 46 06 20 20    	movw   $0x2020,0x6(%esi)
 1ca:	8d 46 08             	lea    0x8(%esi),%eax
 1cd:	b9 08 00 00 00       	mov    $0x8,%ecx
 1d2:	31 d2                	xor    %edx,%edx
 1d4:	e8 fc ff ff ff       	call   1d5 <mptable_setup+0x1d5>
 1d9:	c7 46 08 02 00 11 01 	movl   $0x1110002,0x8(%esi)
 1e0:	c7 46 0c 00 00 c0 fe 	movl   $0xfec00000,0xc(%esi)
 1e7:	8d 47 02             	lea    0x2(%edi),%eax
 1ea:	89 44 24 14          	mov    %eax,0x14(%esp)
 1ee:	8d 46 10             	lea    0x10(%esi),%eax
 1f1:	89 44 24 0c          	mov    %eax,0xc(%esp)
 1f5:	a1 00 00 00 00       	mov    0x0,%eax
 1fa:	8d 78 fc             	lea    -0x4(%eax),%edi
 1fd:	8b 5c 24 0c          	mov    0xc(%esp),%ebx
 201:	66 c7 44 24 10 00 00 	movw   $0x0,0x10(%esp)
 208:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
 20f:	ff 
 210:	83 ff fc             	cmp    $0xfffffffc,%edi
 213:	0f 84 be 00 00 00    	je     2d7 <mptable_setup+0x2d7>
 219:	0f b7 07             	movzwl (%edi),%eax
 21c:	89 c6                	mov    %eax,%esi
 21e:	89 04 24             	mov    %eax,(%esp)
 221:	66 c1 e8 08          	shr    $0x8,%ax
 225:	0f 85 ac 00 00 00    	jne    2d7 <mptable_setup+0x2d7>
 22b:	ba 3d 00 00 00       	mov    $0x3d,%edx
 230:	0f b7 c6             	movzwl %si,%eax
 233:	e8 fc ff ff ff       	call   234 <mptable_setup+0x234>
 238:	88 04 24             	mov    %al,(%esp)
 23b:	0f b6 c8             	movzbl %al,%ecx
 23e:	89 4c 24 18          	mov    %ecx,0x18(%esp)
 242:	ba 3c 00 00 00       	mov    $0x3c,%edx
 247:	0f b7 c6             	movzwl %si,%eax
 24a:	e8 fc ff ff ff       	call   24b <mptable_setup+0x24b>
 24f:	88 44 24 13          	mov    %al,0x13(%esp)
 253:	8b 4c 24 18          	mov    0x18(%esp),%ecx
 257:	85 c9                	test   %ecx,%ecx
 259:	74 71                	je     2cc <mptable_setup+0x2cc>
 25b:	89 f0                	mov    %esi,%eax
 25d:	25 f8 ff 00 00       	and    $0xfff8,%eax
 262:	3b 44 24 08          	cmp    0x8(%esp),%eax
 266:	75 10                	jne    278 <mptable_setup+0x278>
 268:	0f b7 44 24 10       	movzwl 0x10(%esp),%eax
 26d:	8a 0c 24             	mov    (%esp),%cl
 270:	d3 f8                	sar    %cl,%eax
 272:	a8 01                	test   $0x1,%al
 274:	75 56                	jne    2cc <mptable_setup+0x2cc>
 276:	eb 0b                	jmp    283 <mptable_setup+0x283>
 278:	66 c7 44 24 10 00 00 	movw   $0x0,0x10(%esp)
 27f:	89 44 24 08          	mov    %eax,0x8(%esp)
 283:	b8 01 00 00 00       	mov    $0x1,%eax
 288:	8a 0c 24             	mov    (%esp),%cl
 28b:	d3 e0                	shl    %cl,%eax
 28d:	66 09 44 24 10       	or     %ax,0x10(%esp)
 292:	b9 08 00 00 00       	mov    $0x8,%ecx
 297:	31 d2                	xor    %edx,%edx
 299:	89 d8                	mov    %ebx,%eax
 29b:	e8 fc ff ff ff       	call   29c <mptable_setup+0x29c>
 2a0:	c7 03 03 00 01 00    	movl   $0x10003,(%ebx)
 2a6:	c6 43 04 00          	movb   $0x0,0x4(%ebx)
 2aa:	66 c1 ee 03          	shr    $0x3,%si
 2ae:	8d 04 b5 00 00 00 00 	lea    0x0(,%esi,4),%eax
 2b5:	8a 14 24             	mov    (%esp),%dl
 2b8:	4a                   	dec    %edx
 2b9:	09 d0                	or     %edx,%eax
 2bb:	88 43 05             	mov    %al,0x5(%ebx)
 2be:	c6 43 06 00          	movb   $0x0,0x6(%ebx)
 2c2:	8a 44 24 13          	mov    0x13(%esp),%al
 2c6:	88 43 07             	mov    %al,0x7(%ebx)
 2c9:	83 c3 08             	add    $0x8,%ebx
 2cc:	8b 47 04             	mov    0x4(%edi),%eax
 2cf:	8d 78 fc             	lea    -0x4(%eax),%edi
 2d2:	e9 39 ff ff ff       	jmp    210 <mptable_setup+0x210>
 2d7:	31 d2                	xor    %edx,%edx
 2d9:	31 c9                	xor    %ecx,%ecx
 2db:	b8 1b 00 00 00       	mov    $0x1b,%eax
 2e0:	e8 fc ff ff ff       	call   2e1 <mptable_setup+0x2e1>
 2e5:	89 c7                	mov    %eax,%edi
 2e7:	31 f6                	xor    %esi,%esi
 2e9:	b9 08 00 00 00       	mov    $0x8,%ecx
 2ee:	31 d2                	xor    %edx,%edx
 2f0:	89 d8                	mov    %ebx,%eax
 2f2:	e8 fc ff ff ff       	call   2f3 <mptable_setup+0x2f3>
 2f7:	b8 20 0e 00 00       	mov    $0xe20,%eax
 2fc:	89 f1                	mov    %esi,%ecx
 2fe:	d3 f8                	sar    %cl,%eax
 300:	a8 01                	test   $0x1,%al
 302:	75 30                	jne    334 <mptable_setup+0x334>
 304:	c7 03 03 00 00 00    	movl   $0x3,(%ebx)
 30a:	8a 44 24 12          	mov    0x12(%esp),%al
 30e:	88 43 04             	mov    %al,0x4(%ebx)
 311:	88 4b 05             	mov    %cl,0x5(%ebx)
 314:	c6 43 06 00          	movb   $0x0,0x6(%ebx)
 318:	88 4b 07             	mov    %cl,0x7(%ebx)
 31b:	85 ff                	test   %edi,%edi
 31d:	74 12                	je     331 <mptable_setup+0x331>
 31f:	85 f6                	test   %esi,%esi
 321:	75 06                	jne    329 <mptable_setup+0x329>
 323:	c6 43 07 02          	movb   $0x2,0x7(%ebx)
 327:	eb 08                	jmp    331 <mptable_setup+0x331>
 329:	83 fe 02             	cmp    $0x2,%esi
 32c:	75 03                	jne    331 <mptable_setup+0x331>
 32e:	83 eb 08             	sub    $0x8,%ebx
 331:	83 c3 08             	add    $0x8,%ebx
 334:	46                   	inc    %esi
 335:	83 fe 10             	cmp    $0x10,%esi
 338:	75 af                	jne    2e9 <mptable_setup+0x2e9>
 33a:	c7 03 04 03 00 00    	movl   $0x304,(%ebx)
 340:	8a 44 24 04          	mov    0x4(%esp),%al
 344:	88 43 04             	mov    %al,0x4(%ebx)
 347:	c7 43 05 00 00 00 04 	movl   $0x4000000,0x5(%ebx)
 34e:	66 c7 43 09 01 00    	movw   $0x1,0x9(%ebx)
 354:	c6 43 0b 00          	movb   $0x0,0xb(%ebx)
 358:	88 43 0c             	mov    %al,0xc(%ebx)
 35b:	66 c7 43 0d 00 ff    	movw   $0xff00,0xd(%ebx)
 361:	c6 43 0f 01          	movb   $0x1,0xf(%ebx)
 365:	83 c3 10             	add    $0x10,%ebx
 368:	89 da                	mov    %ebx,%edx
 36a:	29 ea                	sub    %ebp,%edx
 36c:	2b 5c 24 0c          	sub    0xc(%esp),%ebx
 370:	c1 fb 03             	sar    $0x3,%ebx
 373:	03 5c 24 14          	add    0x14(%esp),%ebx
 377:	66 89 5d 22          	mov    %bx,0x22(%ebp)
 37b:	66 89 55 04          	mov    %dx,0x4(%ebp)
 37f:	89 e8                	mov    %ebp,%eax
 381:	e8 fc ff ff ff       	call   382 <mptable_setup+0x382>
 386:	28 45 07             	sub    %al,0x7(%ebp)
 389:	b9 10 00 00 00       	mov    $0x10,%ecx
 38e:	31 d2                	xor    %edx,%edx
 390:	8d 44 24 2c          	lea    0x2c(%esp),%eax
 394:	e8 fc ff ff ff       	call   395 <mptable_setup+0x395>
 399:	c7 44 24 2c 5f 4d 50 	movl   $0x5f504d5f,0x2c(%esp)
 3a0:	5f 
 3a1:	89 6c 24 30          	mov    %ebp,0x30(%esp)
 3a5:	66 c7 44 24 34 01 04 	movw   $0x401,0x34(%esp)
 3ac:	ba 10 00 00 00       	mov    $0x10,%edx
 3b1:	8d 44 24 2c          	lea    0x2c(%esp),%eax
 3b5:	e8 fc ff ff ff       	call   3b6 <mptable_setup+0x3b6>
 3ba:	28 44 24 36          	sub    %al,0x36(%esp)
 3be:	8d 44 24 2c          	lea    0x2c(%esp),%eax
 3c2:	e8 fc ff ff ff       	call   3c3 <mptable_setup+0x3c3>
 3c7:	89 e8                	mov    %ebp,%eax
 3c9:	e8 fc ff ff ff       	call   3ca <mptable_setup+0x3ca>
 3ce:	83 c4 3c             	add    $0x3c,%esp
 3d1:	5b                   	pop    %ebx
 3d2:	5e                   	pop    %esi
 3d3:	5f                   	pop    %edi
 3d4:	5d                   	pop    %ebp
 3d5:	c3                   	ret    
