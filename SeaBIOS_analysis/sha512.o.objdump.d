
./sha512.o:     file format elf32-i386


Disassembly of section .text.__swab32_constant:

00000000 <__swab32_constant>:
   0:	86 e0                	xchg   %ah,%al
   2:	c1 c0 10             	rol    $0x10,%eax
   5:	86 e0                	xchg   %ah,%al
   7:	c3                   	ret    

Disassembly of section .text.sha512_block:

00000000 <sha512_block>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	81 ec ac 00 00 00    	sub    $0xac,%esp
   a:	89 44 24 20          	mov    %eax,0x20(%esp)
   e:	31 c0                	xor    %eax,%eax
  10:	8b 5c 24 20          	mov    0x20(%esp),%ebx
  14:	8b 5c c3 04          	mov    0x4(%ebx,%eax,8),%ebx
  18:	0f cb                	bswap  %ebx
  1a:	8b 7c 24 20          	mov    0x20(%esp),%edi
  1e:	8b 0c c7             	mov    (%edi,%eax,8),%ecx
  21:	0f c9                	bswap  %ecx
  23:	89 1c c7             	mov    %ebx,(%edi,%eax,8)
  26:	89 4c c7 04          	mov    %ecx,0x4(%edi,%eax,8)
  2a:	40                   	inc    %eax
  2b:	83 f8 10             	cmp    $0x10,%eax
  2e:	75 e0                	jne    10 <sha512_block+0x10>
  30:	89 f8                	mov    %edi,%eax
  32:	8d bf 00 02 00 00    	lea    0x200(%edi),%edi
  38:	89 7c 24 18          	mov    %edi,0x18(%esp)
  3c:	8b 48 70             	mov    0x70(%eax),%ecx
  3f:	8b 58 74             	mov    0x74(%eax),%ebx
  42:	8b 30                	mov    (%eax),%esi
  44:	8b 78 04             	mov    0x4(%eax),%edi
  47:	03 70 48             	add    0x48(%eax),%esi
  4a:	13 78 4c             	adc    0x4c(%eax),%edi
  4d:	89 74 24 24          	mov    %esi,0x24(%esp)
  51:	89 7c 24 28          	mov    %edi,0x28(%esp)
  55:	89 ce                	mov    %ecx,%esi
  57:	89 df                	mov    %ebx,%edi
  59:	0f ac de 13          	shrd   $0x13,%ebx,%esi
  5d:	0f ac cf 13          	shrd   $0x13,%ecx,%edi
  61:	89 34 24             	mov    %esi,(%esp)
  64:	89 7c 24 04          	mov    %edi,0x4(%esp)
  68:	89 ce                	mov    %ecx,%esi
  6a:	89 df                	mov    %ebx,%edi
  6c:	0f a4 de 03          	shld   $0x3,%ebx,%esi
  70:	0f a4 cf 03          	shld   $0x3,%ecx,%edi
  74:	89 fd                	mov    %edi,%ebp
  76:	89 f7                	mov    %esi,%edi
  78:	8b 34 24             	mov    (%esp),%esi
  7b:	31 fe                	xor    %edi,%esi
  7d:	89 74 24 2c          	mov    %esi,0x2c(%esp)
  81:	8b 74 24 04          	mov    0x4(%esp),%esi
  85:	31 ee                	xor    %ebp,%esi
  87:	89 f7                	mov    %esi,%edi
  89:	0f ac d9 06          	shrd   $0x6,%ebx,%ecx
  8d:	c1 eb 06             	shr    $0x6,%ebx
  90:	8b 74 24 2c          	mov    0x2c(%esp),%esi
  94:	31 ce                	xor    %ecx,%esi
  96:	89 74 24 08          	mov    %esi,0x8(%esp)
  9a:	31 df                	xor    %ebx,%edi
  9c:	89 7c 24 0c          	mov    %edi,0xc(%esp)
  a0:	8b 5c 24 24          	mov    0x24(%esp),%ebx
  a4:	8b 74 24 28          	mov    0x28(%esp),%esi
  a8:	03 5c 24 08          	add    0x8(%esp),%ebx
  ac:	13 74 24 0c          	adc    0xc(%esp),%esi
  b0:	89 5c 24 24          	mov    %ebx,0x24(%esp)
  b4:	89 74 24 28          	mov    %esi,0x28(%esp)
  b8:	8b 70 08             	mov    0x8(%eax),%esi
  bb:	8b 78 0c             	mov    0xc(%eax),%edi
  be:	89 f1                	mov    %esi,%ecx
  c0:	0f ac fe 08          	shrd   $0x8,%edi,%esi
  c4:	0f ac cf 08          	shrd   $0x8,%ecx,%edi
  c8:	89 34 24             	mov    %esi,(%esp)
  cb:	89 7c 24 04          	mov    %edi,0x4(%esp)
  cf:	8b 48 08             	mov    0x8(%eax),%ecx
  d2:	8b 58 0c             	mov    0xc(%eax),%ebx
  d5:	89 cf                	mov    %ecx,%edi
  d7:	0f ac d9 01          	shrd   $0x1,%ebx,%ecx
  db:	0f ac fb 01          	shrd   $0x1,%edi,%ebx
  df:	8b 34 24             	mov    (%esp),%esi
  e2:	31 ce                	xor    %ecx,%esi
  e4:	8b 7c 24 04          	mov    0x4(%esp),%edi
  e8:	31 df                	xor    %ebx,%edi
  ea:	8b 48 08             	mov    0x8(%eax),%ecx
  ed:	8b 58 0c             	mov    0xc(%eax),%ebx
  f0:	0f ac d9 07          	shrd   $0x7,%ebx,%ecx
  f4:	c1 eb 07             	shr    $0x7,%ebx
  f7:	31 ce                	xor    %ecx,%esi
  f9:	89 74 24 10          	mov    %esi,0x10(%esp)
  fd:	31 df                	xor    %ebx,%edi
  ff:	89 7c 24 14          	mov    %edi,0x14(%esp)
 103:	8b 4c 24 24          	mov    0x24(%esp),%ecx
 107:	8b 5c 24 28          	mov    0x28(%esp),%ebx
 10b:	03 4c 24 10          	add    0x10(%esp),%ecx
 10f:	13 5c 24 14          	adc    0x14(%esp),%ebx
 113:	89 88 80 00 00 00    	mov    %ecx,0x80(%eax)
 119:	89 98 84 00 00 00    	mov    %ebx,0x84(%eax)
 11f:	83 c0 08             	add    $0x8,%eax
 122:	39 44 24 18          	cmp    %eax,0x18(%esp)
 126:	0f 85 10 ff ff ff    	jne    3c <sha512_block+0x3c>
 12c:	8b 32                	mov    (%edx),%esi
 12e:	8b 7a 04             	mov    0x4(%edx),%edi
 131:	89 74 24 34          	mov    %esi,0x34(%esp)
 135:	89 7c 24 38          	mov    %edi,0x38(%esp)
 139:	8b 72 08             	mov    0x8(%edx),%esi
 13c:	8b 7a 0c             	mov    0xc(%edx),%edi
 13f:	89 74 24 3c          	mov    %esi,0x3c(%esp)
 143:	89 7c 24 40          	mov    %edi,0x40(%esp)
 147:	8b 72 10             	mov    0x10(%edx),%esi
 14a:	8b 7a 14             	mov    0x14(%edx),%edi
 14d:	89 74 24 44          	mov    %esi,0x44(%esp)
 151:	89 7c 24 48          	mov    %edi,0x48(%esp)
 155:	8b 72 18             	mov    0x18(%edx),%esi
 158:	8b 7a 1c             	mov    0x1c(%edx),%edi
 15b:	89 74 24 4c          	mov    %esi,0x4c(%esp)
 15f:	89 7c 24 50          	mov    %edi,0x50(%esp)
 163:	8b 72 20             	mov    0x20(%edx),%esi
 166:	8b 7a 24             	mov    0x24(%edx),%edi
 169:	89 74 24 54          	mov    %esi,0x54(%esp)
 16d:	89 7c 24 58          	mov    %edi,0x58(%esp)
 171:	8b 72 28             	mov    0x28(%edx),%esi
 174:	8b 7a 2c             	mov    0x2c(%edx),%edi
 177:	89 74 24 5c          	mov    %esi,0x5c(%esp)
 17b:	89 7c 24 60          	mov    %edi,0x60(%esp)
 17f:	8b 72 30             	mov    0x30(%edx),%esi
 182:	8b 7a 34             	mov    0x34(%edx),%edi
 185:	89 74 24 64          	mov    %esi,0x64(%esp)
 189:	89 7c 24 68          	mov    %edi,0x68(%esp)
 18d:	8b 5a 38             	mov    0x38(%edx),%ebx
 190:	8b 72 3c             	mov    0x3c(%edx),%esi
 193:	89 5c 24 6c          	mov    %ebx,0x6c(%esp)
 197:	89 74 24 70          	mov    %esi,0x70(%esp)
 19b:	89 5c 24 74          	mov    %ebx,0x74(%esp)
 19f:	89 74 24 78          	mov    %esi,0x78(%esp)
 1a3:	8b 5c 24 64          	mov    0x64(%esp),%ebx
 1a7:	8b 74 24 68          	mov    0x68(%esp),%esi
 1ab:	89 5c 24 2c          	mov    %ebx,0x2c(%esp)
 1af:	89 74 24 30          	mov    %esi,0x30(%esp)
 1b3:	8b 5c 24 5c          	mov    0x5c(%esp),%ebx
 1b7:	8b 74 24 60          	mov    0x60(%esp),%esi
 1bb:	89 5c 24 24          	mov    %ebx,0x24(%esp)
 1bf:	89 74 24 28          	mov    %esi,0x28(%esp)
 1c3:	8b 5c 24 54          	mov    0x54(%esp),%ebx
 1c7:	8b 74 24 58          	mov    0x58(%esp),%esi
 1cb:	89 1c 24             	mov    %ebx,(%esp)
 1ce:	89 74 24 04          	mov    %esi,0x4(%esp)
 1d2:	8b 5c 24 4c          	mov    0x4c(%esp),%ebx
 1d6:	8b 74 24 50          	mov    0x50(%esp),%esi
 1da:	89 9c 24 84 00 00 00 	mov    %ebx,0x84(%esp)
 1e1:	89 b4 24 88 00 00 00 	mov    %esi,0x88(%esp)
 1e8:	8b 5c 24 44          	mov    0x44(%esp),%ebx
 1ec:	8b 74 24 48          	mov    0x48(%esp),%esi
 1f0:	89 5c 24 18          	mov    %ebx,0x18(%esp)
 1f4:	89 74 24 1c          	mov    %esi,0x1c(%esp)
 1f8:	8b 5c 24 3c          	mov    0x3c(%esp),%ebx
 1fc:	8b 74 24 40          	mov    0x40(%esp),%esi
 200:	89 5c 24 10          	mov    %ebx,0x10(%esp)
 204:	89 74 24 14          	mov    %esi,0x14(%esp)
 208:	8b 5c 24 34          	mov    0x34(%esp),%ebx
 20c:	8b 74 24 38          	mov    0x38(%esp),%esi
 210:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 214:	89 74 24 0c          	mov    %esi,0xc(%esp)
 218:	31 c0                	xor    %eax,%eax
 21a:	8b 34 24             	mov    (%esp),%esi
 21d:	8b 7c 24 04          	mov    0x4(%esp),%edi
 221:	89 f1                	mov    %esi,%ecx
 223:	0f ac fe 0e          	shrd   $0xe,%edi,%esi
 227:	0f ac cf 0e          	shrd   $0xe,%ecx,%edi
 22b:	89 74 24 7c          	mov    %esi,0x7c(%esp)
 22f:	89 bc 24 80 00 00 00 	mov    %edi,0x80(%esp)
 236:	8b 0c 24             	mov    (%esp),%ecx
 239:	8b 5c 24 04          	mov    0x4(%esp),%ebx
 23d:	89 cf                	mov    %ecx,%edi
 23f:	0f ac d9 12          	shrd   $0x12,%ebx,%ecx
 243:	0f ac fb 12          	shrd   $0x12,%edi,%ebx
 247:	8b 74 24 7c          	mov    0x7c(%esp),%esi
 24b:	31 ce                	xor    %ecx,%esi
 24d:	8b bc 24 80 00 00 00 	mov    0x80(%esp),%edi
 254:	31 df                	xor    %ebx,%edi
 256:	8b 0c 24             	mov    (%esp),%ecx
 259:	8b 5c 24 04          	mov    0x4(%esp),%ebx
 25d:	89 cd                	mov    %ecx,%ebp
 25f:	0f a4 d9 17          	shld   $0x17,%ebx,%ecx
 263:	0f a4 eb 17          	shld   $0x17,%ebp,%ebx
 267:	31 ce                	xor    %ecx,%esi
 269:	89 b4 24 8c 00 00 00 	mov    %esi,0x8c(%esp)
 270:	31 df                	xor    %ebx,%edi
 272:	89 bc 24 90 00 00 00 	mov    %edi,0x90(%esp)
 279:	8b 5c 24 20          	mov    0x20(%esp),%ebx
 27d:	8b 0c c3             	mov    (%ebx,%eax,8),%ecx
 280:	8b 5c c3 04          	mov    0x4(%ebx,%eax,8),%ebx
 284:	03 0c c5 00 00 00 00 	add    0x0(,%eax,8),%ecx
 28b:	13 1c c5 04 00 00 00 	adc    0x4(,%eax,8),%ebx
 292:	89 ce                	mov    %ecx,%esi
 294:	89 df                	mov    %ebx,%edi
 296:	03 b4 24 8c 00 00 00 	add    0x8c(%esp),%esi
 29d:	13 bc 24 90 00 00 00 	adc    0x90(%esp),%edi
 2a4:	8b 1c 24             	mov    (%esp),%ebx
 2a7:	f7 d3                	not    %ebx
 2a9:	23 5c 24 2c          	and    0x2c(%esp),%ebx
 2ad:	8b 4c 24 04          	mov    0x4(%esp),%ecx
 2b1:	f7 d1                	not    %ecx
 2b3:	23 4c 24 30          	and    0x30(%esp),%ecx
 2b7:	8b 2c 24             	mov    (%esp),%ebp
 2ba:	23 6c 24 24          	and    0x24(%esp),%ebp
 2be:	89 6c 24 7c          	mov    %ebp,0x7c(%esp)
 2c2:	8b 6c 24 04          	mov    0x4(%esp),%ebp
 2c6:	23 6c 24 28          	and    0x28(%esp),%ebp
 2ca:	33 5c 24 7c          	xor    0x7c(%esp),%ebx
 2ce:	89 9c 24 94 00 00 00 	mov    %ebx,0x94(%esp)
 2d5:	31 e9                	xor    %ebp,%ecx
 2d7:	89 8c 24 98 00 00 00 	mov    %ecx,0x98(%esp)
 2de:	03 b4 24 94 00 00 00 	add    0x94(%esp),%esi
 2e5:	13 bc 24 98 00 00 00 	adc    0x98(%esp),%edi
 2ec:	89 f1                	mov    %esi,%ecx
 2ee:	89 fb                	mov    %edi,%ebx
 2f0:	03 4c 24 74          	add    0x74(%esp),%ecx
 2f4:	13 5c 24 78          	adc    0x78(%esp),%ebx
 2f8:	89 4c 24 74          	mov    %ecx,0x74(%esp)
 2fc:	89 5c 24 78          	mov    %ebx,0x78(%esp)
 300:	8b 74 24 08          	mov    0x8(%esp),%esi
 304:	8b 7c 24 0c          	mov    0xc(%esp),%edi
 308:	89 f1                	mov    %esi,%ecx
 30a:	0f ac fe 1c          	shrd   $0x1c,%edi,%esi
 30e:	0f ac cf 1c          	shrd   $0x1c,%ecx,%edi
 312:	89 74 24 7c          	mov    %esi,0x7c(%esp)
 316:	89 bc 24 80 00 00 00 	mov    %edi,0x80(%esp)
 31d:	8b 4c 24 08          	mov    0x8(%esp),%ecx
 321:	8b 5c 24 0c          	mov    0xc(%esp),%ebx
 325:	89 cf                	mov    %ecx,%edi
 327:	0f a4 d9 1e          	shld   $0x1e,%ebx,%ecx
 32b:	0f a4 fb 1e          	shld   $0x1e,%edi,%ebx
 32f:	8b 74 24 7c          	mov    0x7c(%esp),%esi
 333:	31 ce                	xor    %ecx,%esi
 335:	8b bc 24 80 00 00 00 	mov    0x80(%esp),%edi
 33c:	31 df                	xor    %ebx,%edi
 33e:	8b 4c 24 08          	mov    0x8(%esp),%ecx
 342:	8b 5c 24 0c          	mov    0xc(%esp),%ebx
 346:	89 cd                	mov    %ecx,%ebp
 348:	0f a4 d9 19          	shld   $0x19,%ebx,%ecx
 34c:	0f a4 eb 19          	shld   $0x19,%ebp,%ebx
 350:	31 ce                	xor    %ecx,%esi
 352:	89 b4 24 9c 00 00 00 	mov    %esi,0x9c(%esp)
 359:	31 df                	xor    %ebx,%edi
 35b:	89 bc 24 a0 00 00 00 	mov    %edi,0xa0(%esp)
 362:	8b 5c 24 10          	mov    0x10(%esp),%ebx
 366:	33 5c 24 18          	xor    0x18(%esp),%ebx
 36a:	8b 4c 24 14          	mov    0x14(%esp),%ecx
 36e:	33 4c 24 1c          	xor    0x1c(%esp),%ecx
 372:	23 5c 24 08          	and    0x8(%esp),%ebx
 376:	23 4c 24 0c          	and    0xc(%esp),%ecx
 37a:	8b 7c 24 10          	mov    0x10(%esp),%edi
 37e:	23 7c 24 18          	and    0x18(%esp),%edi
 382:	8b 74 24 14          	mov    0x14(%esp),%esi
 386:	23 74 24 1c          	and    0x1c(%esp),%esi
 38a:	31 fb                	xor    %edi,%ebx
 38c:	89 9c 24 a4 00 00 00 	mov    %ebx,0xa4(%esp)
 393:	31 f1                	xor    %esi,%ecx
 395:	89 8c 24 a8 00 00 00 	mov    %ecx,0xa8(%esp)
 39c:	8b 8c 24 9c 00 00 00 	mov    0x9c(%esp),%ecx
 3a3:	8b 9c 24 a0 00 00 00 	mov    0xa0(%esp),%ebx
 3aa:	03 8c 24 a4 00 00 00 	add    0xa4(%esp),%ecx
 3b1:	13 9c 24 a8 00 00 00 	adc    0xa8(%esp),%ebx
 3b8:	8b b4 24 84 00 00 00 	mov    0x84(%esp),%esi
 3bf:	8b bc 24 88 00 00 00 	mov    0x88(%esp),%edi
 3c6:	03 74 24 74          	add    0x74(%esp),%esi
 3ca:	13 7c 24 78          	adc    0x78(%esp),%edi
 3ce:	89 74 24 7c          	mov    %esi,0x7c(%esp)
 3d2:	89 bc 24 80 00 00 00 	mov    %edi,0x80(%esp)
 3d9:	03 4c 24 74          	add    0x74(%esp),%ecx
 3dd:	13 5c 24 78          	adc    0x78(%esp),%ebx
 3e1:	40                   	inc    %eax
 3e2:	8b 7c 24 18          	mov    0x18(%esp),%edi
 3e6:	8b 6c 24 1c          	mov    0x1c(%esp),%ebp
 3ea:	89 bc 24 84 00 00 00 	mov    %edi,0x84(%esp)
 3f1:	89 ac 24 88 00 00 00 	mov    %ebp,0x88(%esp)
 3f8:	8b 7c 24 2c          	mov    0x2c(%esp),%edi
 3fc:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 400:	89 7c 24 74          	mov    %edi,0x74(%esp)
 404:	89 6c 24 78          	mov    %ebp,0x78(%esp)
 408:	83 f8 50             	cmp    $0x50,%eax
 40b:	74 5e                	je     46b <sha512_block+0x46b>
 40d:	8b 7c 24 24          	mov    0x24(%esp),%edi
 411:	8b 6c 24 28          	mov    0x28(%esp),%ebp
 415:	89 7c 24 2c          	mov    %edi,0x2c(%esp)
 419:	89 6c 24 30          	mov    %ebp,0x30(%esp)
 41d:	8b 3c 24             	mov    (%esp),%edi
 420:	8b 6c 24 04          	mov    0x4(%esp),%ebp
 424:	89 7c 24 24          	mov    %edi,0x24(%esp)
 428:	89 6c 24 28          	mov    %ebp,0x28(%esp)
 42c:	8b 7c 24 7c          	mov    0x7c(%esp),%edi
 430:	8b ac 24 80 00 00 00 	mov    0x80(%esp),%ebp
 437:	89 3c 24             	mov    %edi,(%esp)
 43a:	89 6c 24 04          	mov    %ebp,0x4(%esp)
 43e:	8b 7c 24 10          	mov    0x10(%esp),%edi
 442:	8b 6c 24 14          	mov    0x14(%esp),%ebp
 446:	89 7c 24 18          	mov    %edi,0x18(%esp)
 44a:	89 6c 24 1c          	mov    %ebp,0x1c(%esp)
 44e:	8b 7c 24 08          	mov    0x8(%esp),%edi
 452:	8b 6c 24 0c          	mov    0xc(%esp),%ebp
 456:	89 7c 24 10          	mov    %edi,0x10(%esp)
 45a:	89 6c 24 14          	mov    %ebp,0x14(%esp)
 45e:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 462:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
 466:	e9 af fd ff ff       	jmp    21a <sha512_block+0x21a>
 46b:	03 4c 24 34          	add    0x34(%esp),%ecx
 46f:	13 5c 24 38          	adc    0x38(%esp),%ebx
 473:	89 0a                	mov    %ecx,(%edx)
 475:	89 5a 04             	mov    %ebx,0x4(%edx)
 478:	8b 4c 24 3c          	mov    0x3c(%esp),%ecx
 47c:	8b 5c 24 40          	mov    0x40(%esp),%ebx
 480:	03 4c 24 08          	add    0x8(%esp),%ecx
 484:	13 5c 24 0c          	adc    0xc(%esp),%ebx
 488:	89 4a 08             	mov    %ecx,0x8(%edx)
 48b:	89 5a 0c             	mov    %ebx,0xc(%edx)
 48e:	8b 4c 24 44          	mov    0x44(%esp),%ecx
 492:	8b 5c 24 48          	mov    0x48(%esp),%ebx
 496:	03 4c 24 10          	add    0x10(%esp),%ecx
 49a:	13 5c 24 14          	adc    0x14(%esp),%ebx
 49e:	89 4a 10             	mov    %ecx,0x10(%edx)
 4a1:	89 5a 14             	mov    %ebx,0x14(%edx)
 4a4:	8b 4c 24 4c          	mov    0x4c(%esp),%ecx
 4a8:	8b 5c 24 50          	mov    0x50(%esp),%ebx
 4ac:	03 4c 24 18          	add    0x18(%esp),%ecx
 4b0:	13 5c 24 1c          	adc    0x1c(%esp),%ebx
 4b4:	89 4a 18             	mov    %ecx,0x18(%edx)
 4b7:	89 5a 1c             	mov    %ebx,0x1c(%edx)
 4ba:	8b 74 24 7c          	mov    0x7c(%esp),%esi
 4be:	8b bc 24 80 00 00 00 	mov    0x80(%esp),%edi
 4c5:	03 74 24 54          	add    0x54(%esp),%esi
 4c9:	13 7c 24 58          	adc    0x58(%esp),%edi
 4cd:	89 72 20             	mov    %esi,0x20(%edx)
 4d0:	89 7a 24             	mov    %edi,0x24(%edx)
 4d3:	8b 4c 24 5c          	mov    0x5c(%esp),%ecx
 4d7:	8b 5c 24 60          	mov    0x60(%esp),%ebx
 4db:	03 0c 24             	add    (%esp),%ecx
 4de:	13 5c 24 04          	adc    0x4(%esp),%ebx
 4e2:	89 4a 28             	mov    %ecx,0x28(%edx)
 4e5:	89 5a 2c             	mov    %ebx,0x2c(%edx)
 4e8:	8b 4c 24 64          	mov    0x64(%esp),%ecx
 4ec:	8b 5c 24 68          	mov    0x68(%esp),%ebx
 4f0:	03 4c 24 24          	add    0x24(%esp),%ecx
 4f4:	13 5c 24 28          	adc    0x28(%esp),%ebx
 4f8:	89 4a 30             	mov    %ecx,0x30(%edx)
 4fb:	89 5a 34             	mov    %ebx,0x34(%edx)
 4fe:	8b 4c 24 6c          	mov    0x6c(%esp),%ecx
 502:	8b 5c 24 70          	mov    0x70(%esp),%ebx
 506:	03 4c 24 2c          	add    0x2c(%esp),%ecx
 50a:	13 5c 24 30          	adc    0x30(%esp),%ebx
 50e:	89 4a 38             	mov    %ecx,0x38(%edx)
 511:	89 5a 3c             	mov    %ebx,0x3c(%edx)
 514:	81 c4 ac 00 00 00    	add    $0xac,%esp
 51a:	5b                   	pop    %ebx
 51b:	5e                   	pop    %esi
 51c:	5f                   	pop    %edi
 51d:	5d                   	pop    %ebp
 51e:	c3                   	ret    

Disassembly of section .text.sha512_do:

00000000 <sha512_do>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	57                   	push   %edi
   4:	56                   	push   %esi
   5:	53                   	push   %ebx
   6:	83 e4 f8             	and    $0xfffffff8,%esp
   9:	81 ec 98 02 00 00    	sub    $0x298,%esp
   f:	89 44 24 14          	mov    %eax,0x14(%esp)
  13:	89 54 24 10          	mov    %edx,0x10(%esp)
  17:	89 4c 24 08          	mov    %ecx,0x8(%esp)
  1b:	89 cb                	mov    %ecx,%ebx
  1d:	8b 74 24 10          	mov    0x10(%esp),%esi
  21:	03 74 24 08          	add    0x8(%esp),%esi
  25:	29 de                	sub    %ebx,%esi
  27:	83 fb 7f             	cmp    $0x7f,%ebx
  2a:	76 1b                	jbe    47 <sha512_do+0x47>
  2c:	8d 44 24 18          	lea    0x18(%esp),%eax
  30:	b9 20 00 00 00       	mov    $0x20,%ecx
  35:	89 c7                	mov    %eax,%edi
  37:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  39:	8b 54 24 14          	mov    0x14(%esp),%edx
  3d:	e8 fc ff ff ff       	call   3e <sha512_do+0x3e>
  42:	83 c3 80             	add    $0xffffff80,%ebx
  45:	eb d6                	jmp    1d <sha512_do+0x1d>
  47:	8b 4c 24 08          	mov    0x8(%esp),%ecx
  4b:	c1 e9 07             	shr    $0x7,%ecx
  4e:	6b c1 80             	imul   $0xffffff80,%ecx,%eax
  51:	03 44 24 08          	add    0x8(%esp),%eax
  55:	8b 7c 24 08          	mov    0x8(%esp),%edi
  59:	83 e7 80             	and    $0xffffff80,%edi
  5c:	89 3c 24             	mov    %edi,(%esp)
  5f:	31 db                	xor    %ebx,%ebx
  61:	89 ce                	mov    %ecx,%esi
  63:	89 df                	mov    %ebx,%edi
  65:	0f a4 f7 0a          	shld   $0xa,%esi,%edi
  69:	c1 e6 0a             	shl    $0xa,%esi
  6c:	8b 5c 24 08          	mov    0x8(%esp),%ebx
  70:	83 e3 7f             	and    $0x7f,%ebx
  73:	66 89 5c 24 06       	mov    %bx,0x6(%esp)
  78:	8b 54 24 08          	mov    0x8(%esp),%edx
  7c:	83 e2 7f             	and    $0x7f,%edx
  7f:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  86:	89 cb                	mov    %ecx,%ebx
  88:	c1 fb 1f             	sar    $0x1f,%ebx
  8b:	01 f1                	add    %esi,%ecx
  8d:	11 fb                	adc    %edi,%ebx
  8f:	89 4c 24 08          	mov    %ecx,0x8(%esp)
  93:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
  97:	8d 5c 24 18          	lea    0x18(%esp),%ebx
  9b:	8b 74 24 10          	mov    0x10(%esp),%esi
  9f:	03 34 24             	add    (%esp),%esi
  a2:	89 df                	mov    %ebx,%edi
  a4:	89 c1                	mov    %eax,%ecx
  a6:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  a8:	c6 44 04 18 80       	movb   $0x80,0x18(%esp,%eax,1)
  ad:	b9 7f 00 00 00       	mov    $0x7f,%ecx
  b2:	29 d1                	sub    %edx,%ecx
  b4:	85 c9                	test   %ecx,%ecx
  b6:	7e 0b                	jle    c3 <sha512_do+0xc3>
  b8:	8d 44 03 01          	lea    0x1(%ebx,%eax,1),%eax
  bc:	31 d2                	xor    %edx,%edx
  be:	e8 fc ff ff ff       	call   bf <sha512_do+0xbf>
  c3:	66 83 7c 24 06 6f    	cmpw   $0x6f,0x6(%esp)
  c9:	76 19                	jbe    e4 <sha512_do+0xe4>
  cb:	8b 54 24 14          	mov    0x14(%esp),%edx
  cf:	89 d8                	mov    %ebx,%eax
  d1:	e8 fc ff ff ff       	call   d2 <sha512_do+0xd2>
  d6:	b9 80 00 00 00       	mov    $0x80,%ecx
  db:	31 d2                	xor    %edx,%edx
  dd:	89 d8                	mov    %ebx,%eax
  df:	e8 fc ff ff ff       	call   e0 <sha512_do+0xe0>
  e4:	8b 54 24 0c          	mov    0xc(%esp),%edx
  e8:	0f ca                	bswap  %edx
  ea:	8b 44 24 08          	mov    0x8(%esp),%eax
  ee:	0f c8                	bswap  %eax
  f0:	89 94 24 90 00 00 00 	mov    %edx,0x90(%esp)
  f7:	89 84 24 94 00 00 00 	mov    %eax,0x94(%esp)
  fe:	8b 54 24 14          	mov    0x14(%esp),%edx
 102:	89 d8                	mov    %ebx,%eax
 104:	e8 fc ff ff ff       	call   105 <sha512_do+0x105>
 109:	31 c0                	xor    %eax,%eax
 10b:	8b 7c 24 14          	mov    0x14(%esp),%edi
 10f:	8b 3c c7             	mov    (%edi,%eax,8),%edi
 112:	89 7c 24 08          	mov    %edi,0x8(%esp)
 116:	8b 7c 24 14          	mov    0x14(%esp),%edi
 11a:	8b 5c c7 04          	mov    0x4(%edi,%eax,8),%ebx
 11e:	89 5c 24 10          	mov    %ebx,0x10(%esp)
 122:	89 d9                	mov    %ebx,%ecx
 124:	0f c9                	bswap  %ecx
 126:	8b 54 24 08          	mov    0x8(%esp),%edx
 12a:	0f ca                	bswap  %edx
 12c:	89 0c c7             	mov    %ecx,(%edi,%eax,8)
 12f:	89 54 c7 04          	mov    %edx,0x4(%edi,%eax,8)
 133:	40                   	inc    %eax
 134:	83 f8 08             	cmp    $0x8,%eax
 137:	75 d2                	jne    10b <sha512_do+0x10b>
 139:	8d 65 f4             	lea    -0xc(%ebp),%esp
 13c:	5b                   	pop    %ebx
 13d:	5e                   	pop    %esi
 13e:	5f                   	pop    %edi
 13f:	5d                   	pop    %ebp
 140:	c3                   	ret    

Disassembly of section .text.sha384:

00000000 <sha384>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	83 ec 40             	sub    $0x40,%esp
   6:	89 cb                	mov    %ecx,%ebx
   8:	89 e7                	mov    %esp,%edi
   a:	be 00 00 00 00       	mov    $0x0,%esi
   f:	b9 10 00 00 00       	mov    $0x10,%ecx
  14:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  16:	89 e6                	mov    %esp,%esi
  18:	89 d1                	mov    %edx,%ecx
  1a:	89 c2                	mov    %eax,%edx
  1c:	89 f0                	mov    %esi,%eax
  1e:	e8 fc ff ff ff       	call   1f <sha384+0x1f>
  23:	b9 0c 00 00 00       	mov    $0xc,%ecx
  28:	89 df                	mov    %ebx,%edi
  2a:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  2c:	83 c4 40             	add    $0x40,%esp
  2f:	5b                   	pop    %ebx
  30:	5e                   	pop    %esi
  31:	5f                   	pop    %edi
  32:	c3                   	ret    

Disassembly of section .text.sha512:

00000000 <sha512>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	83 ec 40             	sub    $0x40,%esp
   6:	89 cb                	mov    %ecx,%ebx
   8:	89 e7                	mov    %esp,%edi
   a:	be 40 00 00 00       	mov    $0x40,%esi
   f:	b9 10 00 00 00       	mov    $0x10,%ecx
  14:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  16:	89 e6                	mov    %esp,%esi
  18:	89 d1                	mov    %edx,%ecx
  1a:	89 c2                	mov    %eax,%edx
  1c:	89 f0                	mov    %esi,%eax
  1e:	e8 fc ff ff ff       	call   1f <sha512+0x1f>
  23:	b9 10 00 00 00       	mov    $0x10,%ecx
  28:	89 df                	mov    %ebx,%edi
  2a:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  2c:	83 c4 40             	add    $0x40,%esp
  2f:	5b                   	pop    %ebx
  30:	5e                   	pop    %esi
  31:	5f                   	pop    %edi
  32:	c3                   	ret    
