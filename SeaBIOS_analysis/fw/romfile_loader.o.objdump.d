
./romfile_loader.o:     file format elf32-i386


Disassembly of section .text.romfile_loader_find:

00000000 <romfile_loader_find>:
   0:	80 78 37 00          	cmpb   $0x0,0x37(%eax)
   4:	75 30                	jne    36 <romfile_loader_find+0x36>
   6:	57                   	push   %edi
   7:	56                   	push   %esi
   8:	53                   	push   %ebx
   9:	89 c7                	mov    %eax,%edi
   b:	89 d3                	mov    %edx,%ebx
   d:	31 f6                	xor    %esi,%esi
   f:	3b 33                	cmp    (%ebx),%esi
  11:	7c 04                	jl     17 <romfile_loader_find+0x17>
  13:	31 c0                	xor    %eax,%eax
  15:	eb 1b                	jmp    32 <romfile_loader_find+0x32>
  17:	8b 44 f3 04          	mov    0x4(%ebx,%esi,8),%eax
  1b:	83 c0 04             	add    $0x4,%eax
  1e:	89 fa                	mov    %edi,%edx
  20:	e8 fc ff ff ff       	call   21 <romfile_loader_find+0x21>
  25:	85 c0                	test   %eax,%eax
  27:	75 06                	jne    2f <romfile_loader_find+0x2f>
  29:	8d 44 f3 04          	lea    0x4(%ebx,%esi,8),%eax
  2d:	eb 03                	jmp    32 <romfile_loader_find+0x32>
  2f:	46                   	inc    %esi
  30:	eb dd                	jmp    f <romfile_loader_find+0xf>
  32:	5b                   	pop    %ebx
  33:	5e                   	pop    %esi
  34:	5f                   	pop    %edi
  35:	c3                   	ret    
  36:	31 c0                	xor    %eax,%eax
  38:	c3                   	ret    

Disassembly of section .text.romfile_fw_cfg_resume:

00000000 <romfile_fw_cfg_resume>:
   0:	53                   	push   %ebx
   1:	a1 00 00 00 00       	mov    0x0,%eax
   6:	8d 58 f0             	lea    -0x10(%eax),%ebx
   9:	83 fb f0             	cmp    $0xfffffff0,%ebx
   c:	74 1c                	je     2a <romfile_fw_cfg_resume+0x2a>
   e:	8b 4b 08             	mov    0x8(%ebx),%ecx
  11:	0f b7 53 0c          	movzwl 0xc(%ebx),%edx
  15:	0f b6 43 0e          	movzbl 0xe(%ebx),%eax
  19:	50                   	push   %eax
  1a:	89 d8                	mov    %ebx,%eax
  1c:	e8 fc ff ff ff       	call   1d <romfile_fw_cfg_resume+0x1d>
  21:	8b 5b 10             	mov    0x10(%ebx),%ebx
  24:	83 eb 10             	sub    $0x10,%ebx
  27:	58                   	pop    %eax
  28:	eb df                	jmp    9 <romfile_fw_cfg_resume+0x9>
  2a:	5b                   	pop    %ebx
  2b:	c3                   	ret    

Disassembly of section .text.romfile_loader_execute:

00000000 <romfile_loader_execute>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 20             	sub    $0x20,%esp
   7:	8d 54 24 14          	lea    0x14(%esp),%edx
   b:	e8 fc ff ff ff       	call   c <romfile_loader_execute+0xc>
  10:	89 44 24 04          	mov    %eax,0x4(%esp)
  14:	85 c0                	test   %eax,%eax
  16:	0f 84 04 04 00 00    	je     420 <romfile_loader_execute+0x420>
  1c:	8b 44 24 14          	mov    0x14(%esp),%eax
  20:	a8 7f                	test   $0x7f,%al
  22:	74 14                	je     38 <romfile_loader_execute+0x38>
  24:	ba 00 00 00 00       	mov    $0x0,%edx
  29:	b8 da 00 00 00       	mov    $0xda,%eax
  2e:	e8 fc ff ff ff       	call   2f <romfile_loader_execute+0x2f>
  33:	e9 df 03 00 00       	jmp    417 <romfile_loader_execute+0x417>
  38:	c1 e8 07             	shr    $0x7,%eax
  3b:	8d 14 c5 04 00 00 00 	lea    0x4(,%eax,8),%edx
  42:	b9 10 00 00 00       	mov    $0x10,%ecx
  47:	89 54 24 08          	mov    %edx,0x8(%esp)
  4b:	b8 00 00 00 00       	mov    $0x0,%eax
  50:	e8 fc ff ff ff       	call   51 <romfile_loader_execute+0x51>
  55:	89 04 24             	mov    %eax,(%esp)
  58:	85 c0                	test   %eax,%eax
  5a:	8b 54 24 08          	mov    0x8(%esp),%edx
  5e:	75 2a                	jne    8a <romfile_loader_execute+0x8a>
  60:	b9 10 00 00 00       	mov    $0x10,%ecx
  65:	b8 00 00 00 00       	mov    $0x0,%eax
  6a:	e8 fc ff ff ff       	call   6b <romfile_loader_execute+0x6b>
  6f:	89 04 24             	mov    %eax,(%esp)
  72:	85 c0                	test   %eax,%eax
  74:	75 14                	jne    8a <romfile_loader_execute+0x8a>
  76:	ba 00 00 00 00       	mov    $0x0,%edx
  7b:	b8 e2 00 00 00       	mov    $0xe2,%eax
  80:	e8 fc ff ff ff       	call   81 <romfile_loader_execute+0x81>
  85:	e9 8d 03 00 00       	jmp    417 <romfile_loader_execute+0x417>
  8a:	8b 04 24             	mov    (%esp),%eax
  8d:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  93:	8b 44 24 04          	mov    0x4(%esp),%eax
  97:	8d 68 04             	lea    0x4(%eax),%ebp
  9a:	b8 fc ff ff ff       	mov    $0xfffffffc,%eax
  9f:	2b 44 24 04          	sub    0x4(%esp),%eax
  a3:	89 44 24 10          	mov    %eax,0x10(%esp)
  a7:	8b 44 24 10          	mov    0x10(%esp),%eax
  ab:	01 e8                	add    %ebp,%eax
  ad:	39 44 24 14          	cmp    %eax,0x14(%esp)
  b1:	0f 8e 4b 03 00 00    	jle    402 <romfile_loader_execute+0x402>
  b7:	8b 45 fc             	mov    -0x4(%ebp),%eax
  ba:	83 f8 03             	cmp    $0x3,%eax
  bd:	0f 84 8a 01 00 00    	je     24d <romfile_loader_execute+0x24d>
  c3:	77 13                	ja     d8 <romfile_loader_execute+0xd8>
  c5:	83 f8 01             	cmp    $0x1,%eax
  c8:	74 1c                	je     e6 <romfile_loader_execute+0xe6>
  ca:	83 f8 02             	cmp    $0x2,%eax
  cd:	0f 84 d9 00 00 00    	je     1ac <romfile_loader_execute+0x1ac>
  d3:	e9 22 03 00 00       	jmp    3fa <romfile_loader_execute+0x3fa>
  d8:	83 f8 04             	cmp    $0x4,%eax
  db:	0f 84 c2 01 00 00    	je     2a3 <romfile_loader_execute+0x2a3>
  e1:	e9 14 03 00 00       	jmp    3fa <romfile_loader_execute+0x3fa>
  e6:	8b 04 24             	mov    (%esp),%eax
  e9:	8b 18                	mov    (%eax),%ebx
  eb:	8b 7d 38             	mov    0x38(%ebp),%edi
  ee:	8d 47 ff             	lea    -0x1(%edi),%eax
  f1:	85 f8                	test   %edi,%eax
  f3:	0f 85 a4 00 00 00    	jne    19d <romfile_loader_execute+0x19d>
  f9:	8a 45 3c             	mov    0x3c(%ebp),%al
  fc:	3c 01                	cmp    $0x1,%al
  fe:	74 0e                	je     10e <romfile_loader_execute+0x10e>
 100:	be 00 00 00 00       	mov    $0x0,%esi
 105:	3c 02                	cmp    $0x2,%al
 107:	74 0a                	je     113 <romfile_loader_execute+0x113>
 109:	e9 8f 00 00 00       	jmp    19d <romfile_loader_execute+0x19d>
 10e:	be 00 00 00 00       	mov    $0x0,%esi
 113:	80 7d 37 00          	cmpb   $0x0,0x37(%ebp)
 117:	0f 85 80 00 00 00    	jne    19d <romfile_loader_execute+0x19d>
 11d:	89 e8                	mov    %ebp,%eax
 11f:	e8 fc ff ff ff       	call   120 <romfile_loader_execute+0x120>
 124:	8b 0c 24             	mov    (%esp),%ecx
 127:	8d 1c d9             	lea    (%ecx,%ebx,8),%ebx
 12a:	89 43 04             	mov    %eax,0x4(%ebx)
 12d:	85 c0                	test   %eax,%eax
 12f:	0f 84 c5 02 00 00    	je     3fa <romfile_loader_execute+0x3fa>
 135:	8b 90 84 00 00 00    	mov    0x84(%eax),%edx
 13b:	85 d2                	test   %edx,%edx
 13d:	0f 84 b7 02 00 00    	je     3fa <romfile_loader_execute+0x3fa>
 143:	89 f9                	mov    %edi,%ecx
 145:	83 ff 10             	cmp    $0x10,%edi
 148:	73 05                	jae    14f <romfile_loader_execute+0x14f>
 14a:	b9 10 00 00 00       	mov    $0x10,%ecx
 14f:	89 f0                	mov    %esi,%eax
 151:	e8 fc ff ff ff       	call   152 <romfile_loader_execute+0x152>
 156:	89 c6                	mov    %eax,%esi
 158:	85 c0                	test   %eax,%eax
 15a:	75 0f                	jne    16b <romfile_loader_execute+0x16b>
 15c:	ba 00 00 00 00       	mov    $0x0,%edx
 161:	b8 57 00 00 00       	mov    $0x57,%eax
 166:	e9 37 02 00 00       	jmp    3a2 <romfile_loader_execute+0x3a2>
 16b:	8b 43 04             	mov    0x4(%ebx),%eax
 16e:	8b 88 84 00 00 00    	mov    0x84(%eax),%ecx
 174:	89 f2                	mov    %esi,%edx
 176:	ff 90 88 00 00 00    	call   *0x88(%eax)
 17c:	8b 53 04             	mov    0x4(%ebx),%edx
 17f:	39 82 84 00 00 00    	cmp    %eax,0x84(%edx)
 185:	74 09                	je     190 <romfile_loader_execute+0x190>
 187:	89 f0                	mov    %esi,%eax
 189:	e8 fc ff ff ff       	call   18a <romfile_loader_execute+0x18a>
 18e:	eb 0d                	jmp    19d <romfile_loader_execute+0x19d>
 190:	89 73 08             	mov    %esi,0x8(%ebx)
 193:	8b 04 24             	mov    (%esp),%eax
 196:	ff 00                	incl   (%eax)
 198:	e9 5d 02 00 00       	jmp    3fa <romfile_loader_execute+0x3fa>
 19d:	ba 00 00 00 00       	mov    $0x0,%edx
 1a2:	b8 64 00 00 00       	mov    $0x64,%eax
 1a7:	e9 49 02 00 00       	jmp    3f5 <romfile_loader_execute+0x3f5>
 1ac:	8b 7d 70             	mov    0x70(%ebp),%edi
 1af:	c7 44 24 18 00 00 00 	movl   $0x0,0x18(%esp)
 1b6:	00 
 1b7:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%esp)
 1be:	00 
 1bf:	8b 14 24             	mov    (%esp),%edx
 1c2:	89 e8                	mov    %ebp,%eax
 1c4:	e8 fc ff ff ff       	call   1c5 <romfile_loader_execute+0x1c5>
 1c9:	89 c6                	mov    %eax,%esi
 1cb:	8d 45 38             	lea    0x38(%ebp),%eax
 1ce:	8b 14 24             	mov    (%esp),%edx
 1d1:	e8 fc ff ff ff       	call   1d2 <romfile_loader_execute+0x1d2>
 1d6:	85 c0                	test   %eax,%eax
 1d8:	74 38                	je     212 <romfile_loader_execute+0x212>
 1da:	85 f6                	test   %esi,%esi
 1dc:	74 34                	je     212 <romfile_loader_execute+0x212>
 1de:	8b 4e 04             	mov    0x4(%esi),%ecx
 1e1:	85 c9                	test   %ecx,%ecx
 1e3:	74 2d                	je     212 <romfile_loader_execute+0x212>
 1e5:	8b 58 04             	mov    0x4(%eax),%ebx
 1e8:	85 db                	test   %ebx,%ebx
 1ea:	74 26                	je     212 <romfile_loader_execute+0x212>
 1ec:	0f b6 45 74          	movzbl 0x74(%ebp),%eax
 1f0:	89 c2                	mov    %eax,%edx
 1f2:	89 44 24 08          	mov    %eax,0x8(%esp)
 1f6:	01 f8                	add    %edi,%eax
 1f8:	72 18                	jb     212 <romfile_loader_execute+0x212>
 1fa:	8b 36                	mov    (%esi),%esi
 1fc:	3b 86 84 00 00 00    	cmp    0x84(%esi),%eax
 202:	77 0e                	ja     212 <romfile_loader_execute+0x212>
 204:	8d 42 ff             	lea    -0x1(%edx),%eax
 207:	3c 07                	cmp    $0x7,%al
 209:	77 07                	ja     212 <romfile_loader_execute+0x212>
 20b:	8d 42 ff             	lea    -0x1(%edx),%eax
 20e:	85 d0                	test   %edx,%eax
 210:	74 0f                	je     221 <romfile_loader_execute+0x221>
 212:	ba 00 00 00 00       	mov    $0x0,%edx
 217:	b8 81 00 00 00       	mov    $0x81,%eax
 21c:	e9 d4 01 00 00       	jmp    3f5 <romfile_loader_execute+0x3f5>
 221:	8d 04 39             	lea    (%ecx,%edi,1),%eax
 224:	8d 54 24 18          	lea    0x18(%esp),%edx
 228:	89 d7                	mov    %edx,%edi
 22a:	89 c6                	mov    %eax,%esi
 22c:	8b 4c 24 08          	mov    0x8(%esp),%ecx
 230:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 232:	89 d9                	mov    %ebx,%ecx
 234:	31 db                	xor    %ebx,%ebx
 236:	01 4c 24 18          	add    %ecx,0x18(%esp)
 23a:	11 5c 24 1c          	adc    %ebx,0x1c(%esp)
 23e:	89 c7                	mov    %eax,%edi
 240:	89 d6                	mov    %edx,%esi
 242:	8b 4c 24 08          	mov    0x8(%esp),%ecx
 246:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 248:	e9 ad 01 00 00       	jmp    3fa <romfile_loader_execute+0x3fa>
 24d:	8b 5d 38             	mov    0x38(%ebp),%ebx
 250:	8b 75 3c             	mov    0x3c(%ebp),%esi
 253:	8b 7d 40             	mov    0x40(%ebp),%edi
 256:	8b 14 24             	mov    (%esp),%edx
 259:	89 e8                	mov    %ebp,%eax
 25b:	e8 fc ff ff ff       	call   25c <romfile_loader_execute+0x25c>
 260:	85 c0                	test   %eax,%eax
 262:	74 1d                	je     281 <romfile_loader_execute+0x281>
 264:	8b 50 04             	mov    0x4(%eax),%edx
 267:	85 d2                	test   %edx,%edx
 269:	74 16                	je     281 <romfile_loader_execute+0x281>
 26b:	8b 00                	mov    (%eax),%eax
 26d:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
 273:	39 c3                	cmp    %eax,%ebx
 275:	73 0a                	jae    281 <romfile_loader_execute+0x281>
 277:	89 f1                	mov    %esi,%ecx
 279:	01 f9                	add    %edi,%ecx
 27b:	72 04                	jb     281 <romfile_loader_execute+0x281>
 27d:	39 c8                	cmp    %ecx,%eax
 27f:	73 0f                	jae    290 <romfile_loader_execute+0x290>
 281:	ba 00 00 00 00       	mov    $0x0,%edx
 286:	b8 98 00 00 00       	mov    $0x98,%eax
 28b:	e9 65 01 00 00       	jmp    3f5 <romfile_loader_execute+0x3f5>
 290:	01 d3                	add    %edx,%ebx
 292:	8d 04 32             	lea    (%edx,%esi,1),%eax
 295:	89 fa                	mov    %edi,%edx
 297:	e8 fc ff ff ff       	call   298 <romfile_loader_execute+0x298>
 29c:	28 03                	sub    %al,(%ebx)
 29e:	e9 57 01 00 00       	jmp    3fa <romfile_loader_execute+0x3fa>
 2a3:	8b 75 70             	mov    0x70(%ebp),%esi
 2a6:	8b 45 74             	mov    0x74(%ebp),%eax
 2a9:	89 44 24 08          	mov    %eax,0x8(%esp)
 2ad:	c7 44 24 18 00 00 00 	movl   $0x0,0x18(%esp)
 2b4:	00 
 2b5:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%esp)
 2bc:	00 
 2bd:	89 e8                	mov    %ebp,%eax
 2bf:	e8 fc ff ff ff       	call   2c0 <romfile_loader_execute+0x2c0>
 2c4:	89 c7                	mov    %eax,%edi
 2c6:	8d 45 38             	lea    0x38(%ebp),%eax
 2c9:	8b 14 24             	mov    (%esp),%edx
 2cc:	e8 fc ff ff ff       	call   2cd <romfile_loader_execute+0x2cd>
 2d1:	89 c2                	mov    %eax,%edx
 2d3:	85 ff                	test   %edi,%edi
 2d5:	0f 84 10 01 00 00    	je     3eb <romfile_loader_execute+0x3eb>
 2db:	85 c0                	test   %eax,%eax
 2dd:	0f 84 08 01 00 00    	je     3eb <romfile_loader_execute+0x3eb>
 2e3:	8b 40 04             	mov    0x4(%eax),%eax
 2e6:	85 c0                	test   %eax,%eax
 2e8:	0f 84 fd 00 00 00    	je     3eb <romfile_loader_execute+0x3eb>
 2ee:	0f b6 4d 78          	movzbl 0x78(%ebp),%ecx
 2f2:	89 cb                	mov    %ecx,%ebx
 2f4:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
 2f8:	01 f1                	add    %esi,%ecx
 2fa:	0f 82 eb 00 00 00    	jb     3eb <romfile_loader_execute+0x3eb>
 300:	3b 8f 84 00 00 00    	cmp    0x84(%edi),%ecx
 306:	0f 87 df 00 00 00    	ja     3eb <romfile_loader_execute+0x3eb>
 30c:	8b 12                	mov    (%edx),%edx
 30e:	8b 4c 24 08          	mov    0x8(%esp),%ecx
 312:	3b 8a 84 00 00 00    	cmp    0x84(%edx),%ecx
 318:	0f 83 cd 00 00 00    	jae    3eb <romfile_loader_execute+0x3eb>
 31e:	8d 53 ff             	lea    -0x1(%ebx),%edx
 321:	80 fa 07             	cmp    $0x7,%dl
 324:	0f 87 c1 00 00 00    	ja     3eb <romfile_loader_execute+0x3eb>
 32a:	0f b6 cb             	movzbl %bl,%ecx
 32d:	8d 51 ff             	lea    -0x1(%ecx),%edx
 330:	85 ca                	test   %ecx,%edx
 332:	0f 85 b3 00 00 00    	jne    3eb <romfile_loader_execute+0x3eb>
 338:	03 44 24 08          	add    0x8(%esp),%eax
 33c:	31 d2                	xor    %edx,%edx
 33e:	89 44 24 18          	mov    %eax,0x18(%esp)
 342:	89 54 24 1c          	mov    %edx,0x1c(%esp)
 346:	80 fb 08             	cmp    $0x8,%bl
 349:	74 19                	je     364 <romfile_loader_execute+0x364>
 34b:	c1 e1 03             	shl    $0x3,%ecx
 34e:	0f ad d0             	shrd   %cl,%edx,%eax
 351:	d3 ea                	shr    %cl,%edx
 353:	f6 c1 20             	test   $0x20,%cl
 356:	74 04                	je     35c <romfile_loader_execute+0x35c>
 358:	89 d0                	mov    %edx,%eax
 35a:	31 d2                	xor    %edx,%edx
 35c:	09 d0                	or     %edx,%eax
 35e:	0f 85 87 00 00 00    	jne    3eb <romfile_loader_execute+0x3eb>
 364:	ff 74 24 0c          	push   0xc(%esp)
 368:	89 f1                	mov    %esi,%ecx
 36a:	89 fa                	mov    %edi,%edx
 36c:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 370:	e8 fc ff ff ff       	call   371 <romfile_loader_execute+0x371>
 375:	0f b6 55 78          	movzbl 0x78(%ebp),%edx
 379:	59                   	pop    %ecx
 37a:	39 d0                	cmp    %edx,%eax
 37c:	75 6d                	jne    3eb <romfile_loader_execute+0x3eb>
 37e:	b9 10 00 00 00       	mov    $0x10,%ecx
 383:	ba 18 00 00 00       	mov    $0x18,%edx
 388:	b8 00 00 00 00       	mov    $0x0,%eax
 38d:	e8 fc ff ff ff       	call   38e <romfile_loader_execute+0x38e>
 392:	89 c3                	mov    %eax,%ebx
 394:	85 c0                	test   %eax,%eax
 396:	75 11                	jne    3a9 <romfile_loader_execute+0x3a9>
 398:	ba 00 00 00 00       	mov    $0x0,%edx
 39d:	b8 c2 00 00 00       	mov    $0xc2,%eax
 3a2:	e8 fc ff ff ff       	call   3a3 <romfile_loader_execute+0x3a3>
 3a7:	eb 51                	jmp    3fa <romfile_loader_execute+0x3fa>
 3a9:	8b 44 24 18          	mov    0x18(%esp),%eax
 3ad:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 3b1:	89 03                	mov    %eax,(%ebx)
 3b3:	89 53 04             	mov    %edx,0x4(%ebx)
 3b6:	89 f8                	mov    %edi,%eax
 3b8:	e8 fc ff ff ff       	call   3b9 <romfile_loader_execute+0x3b9>
 3bd:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 3c1:	89 73 08             	mov    %esi,0x8(%ebx)
 3c4:	8a 45 78             	mov    0x78(%ebp),%al
 3c7:	88 43 0e             	mov    %al,0xe(%ebx)
 3ca:	8d 53 10             	lea    0x10(%ebx),%edx
 3cd:	a1 00 00 00 00       	mov    0x0,%eax
 3d2:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
 3d9:	89 43 10             	mov    %eax,0x10(%ebx)
 3dc:	85 c0                	test   %eax,%eax
 3de:	74 03                	je     3e3 <romfile_loader_execute+0x3e3>
 3e0:	89 50 04             	mov    %edx,0x4(%eax)
 3e3:	89 15 00 00 00 00    	mov    %edx,0x0
 3e9:	eb 0f                	jmp    3fa <romfile_loader_execute+0x3fa>
 3eb:	ba 00 00 00 00       	mov    $0x0,%edx
 3f0:	b8 cd 00 00 00       	mov    $0xcd,%eax
 3f5:	e8 fc ff ff ff       	call   3f6 <romfile_loader_execute+0x3f6>
 3fa:	83 ed 80             	sub    $0xffffff80,%ebp
 3fd:	e9 a5 fc ff ff       	jmp    a7 <romfile_loader_execute+0xa7>
 402:	8b 04 24             	mov    (%esp),%eax
 405:	e8 fc ff ff ff       	call   406 <romfile_loader_execute+0x406>
 40a:	8b 44 24 04          	mov    0x4(%esp),%eax
 40e:	e8 fc ff ff ff       	call   40f <romfile_loader_execute+0x40f>
 413:	31 c0                	xor    %eax,%eax
 415:	eb 0c                	jmp    423 <romfile_loader_execute+0x423>
 417:	8b 44 24 04          	mov    0x4(%esp),%eax
 41b:	e8 fc ff ff ff       	call   41c <romfile_loader_execute+0x41c>
 420:	83 c8 ff             	or     $0xffffffff,%eax
 423:	83 c4 20             	add    $0x20,%esp
 426:	5b                   	pop    %ebx
 427:	5e                   	pop    %esi
 428:	5f                   	pop    %edi
 429:	5d                   	pop    %ebp
 42a:	c3                   	ret    
