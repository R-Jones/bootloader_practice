
./jpeg.o:     file format elf32-i386


Disassembly of section .text.getword:

00000000 <getword>:
   0:	53                   	push   %ebx
   1:	89 c2                	mov    %eax,%edx
   3:	8b 88 40 0f 00 00    	mov    0xf40(%eax),%ecx
   9:	8d 41 01             	lea    0x1(%ecx),%eax
   c:	89 82 40 0f 00 00    	mov    %eax,0xf40(%edx)
  12:	0f b6 01             	movzbl (%ecx),%eax
  15:	8d 59 02             	lea    0x2(%ecx),%ebx
  18:	89 9a 40 0f 00 00    	mov    %ebx,0xf40(%edx)
  1e:	c1 e0 08             	shl    $0x8,%eax
  21:	0f b6 51 01          	movzbl 0x1(%ecx),%edx
  25:	09 d0                	or     %edx,%eax
  27:	5b                   	pop    %ebx
  28:	c3                   	ret    

Disassembly of section .text.idctqtab:

00000000 <idctqtab>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 08             	sub    $0x8,%esp
   7:	89 c1                	mov    %eax,%ecx
   9:	89 54 24 04          	mov    %edx,0x4(%esp)
   d:	31 d2                	xor    %edx,%edx
   f:	8d 3c d5 00 00 00 00 	lea    0x0(,%edx,8),%edi
  16:	8b 04 95 00 00 00 00 	mov    0x0(,%edx,4),%eax
  1d:	89 04 24             	mov    %eax,(%esp)
  20:	31 c0                	xor    %eax,%eax
  22:	0f b6 b4 07 00 00 00 	movzbl 0x0(%edi,%eax,1),%esi
  29:	00 
  2a:	8b 2c 24             	mov    (%esp),%ebp
  2d:	0f af 2c 85 00 00 00 	imul   0x0(,%eax,4),%ebp
  34:	00 
  35:	c1 fd 0b             	sar    $0xb,%ebp
  38:	0f b6 1c 31          	movzbl (%ecx,%esi,1),%ebx
  3c:	0f af eb             	imul   %ebx,%ebp
  3f:	8b 5c 24 04          	mov    0x4(%esp),%ebx
  43:	89 2c b3             	mov    %ebp,(%ebx,%esi,4)
  46:	40                   	inc    %eax
  47:	83 f8 08             	cmp    $0x8,%eax
  4a:	75 d6                	jne    22 <idctqtab+0x22>
  4c:	42                   	inc    %edx
  4d:	83 fa 08             	cmp    $0x8,%edx
  50:	75 bd                	jne    f <idctqtab+0xf>
  52:	83 c4 08             	add    $0x8,%esp
  55:	5b                   	pop    %ebx
  56:	5e                   	pop    %esi
  57:	5f                   	pop    %edi
  58:	5d                   	pop    %ebp
  59:	c3                   	ret    

Disassembly of section .text.fillbits:

00000000 <fillbits>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	89 c7                	mov    %eax,%edi
   5:	89 d3                	mov    %edx,%ebx
   7:	89 ce                	mov    %ecx,%esi
   9:	83 78 0c 00          	cmpl   $0x0,0xc(%eax)
   d:	74 43                	je     52 <fillbits+0x52>
   f:	83 fa 10             	cmp    $0x10,%edx
  12:	7f 62                	jg     76 <fillbits+0x76>
  14:	c1 e6 10             	shl    $0x10,%esi
  17:	89 70 04             	mov    %esi,0x4(%eax)
  1a:	83 c3 10             	add    $0x10,%ebx
  1d:	eb 57                	jmp    76 <fillbits+0x76>
  1f:	8b 07                	mov    (%edi),%eax
  21:	8d 50 01             	lea    0x1(%eax),%edx
  24:	89 17                	mov    %edx,(%edi)
  26:	0f b6 10             	movzbl (%eax),%edx
  29:	80 fa ff             	cmp    $0xff,%dl
  2c:	75 3b                	jne    69 <fillbits+0x69>
  2e:	8d 48 02             	lea    0x2(%eax),%ecx
  31:	89 0f                	mov    %ecx,(%edi)
  33:	0f b6 40 01          	movzbl 0x1(%eax),%eax
  37:	85 c0                	test   %eax,%eax
  39:	74 2e                	je     69 <fillbits+0x69>
  3b:	3d 80 00 00 00       	cmp    $0x80,%eax
  40:	75 17                	jne    59 <fillbits+0x59>
  42:	8b 57 10             	mov    0x10(%edi),%edx
  45:	85 d2                	test   %edx,%edx
  47:	74 10                	je     59 <fillbits+0x59>
  49:	8b 47 14             	mov    0x14(%edi),%eax
  4c:	ff d2                	call   *%edx
  4e:	85 c0                	test   %eax,%eax
  50:	75 07                	jne    59 <fillbits+0x59>
  52:	83 fb 18             	cmp    $0x18,%ebx
  55:	7e c8                	jle    1f <fillbits+0x1f>
  57:	eb 1a                	jmp    73 <fillbits+0x73>
  59:	89 47 0c             	mov    %eax,0xc(%edi)
  5c:	83 fb 10             	cmp    $0x10,%ebx
  5f:	7f 12                	jg     73 <fillbits+0x73>
  61:	c1 e6 10             	shl    $0x10,%esi
  64:	83 c3 10             	add    $0x10,%ebx
  67:	eb 0a                	jmp    73 <fillbits+0x73>
  69:	c1 e6 08             	shl    $0x8,%esi
  6c:	09 d6                	or     %edx,%esi
  6e:	83 c3 08             	add    $0x8,%ebx
  71:	eb df                	jmp    52 <fillbits+0x52>
  73:	89 77 04             	mov    %esi,0x4(%edi)
  76:	89 d8                	mov    %ebx,%eax
  78:	5b                   	pop    %ebx
  79:	5e                   	pop    %esi
  7a:	5f                   	pop    %edi
  7b:	c3                   	ret    

Disassembly of section .text.dec_rec2:

00000000 <dec_rec2>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 0c             	sub    $0xc,%esp
   7:	89 c6                	mov    %eax,%esi
   9:	89 14 24             	mov    %edx,(%esp)
   c:	89 4c 24 08          	mov    %ecx,0x8(%esp)
  10:	8b 6c 24 20          	mov    0x20(%esp),%ebp
  14:	8b 5c 24 24          	mov    0x24(%esp),%ebx
  18:	8b 50 08             	mov    0x8(%eax),%edx
  1b:	8b 40 04             	mov    0x4(%eax),%eax
  1e:	85 db                	test   %ebx,%ebx
  20:	74 14                	je     36 <dec_rec2+0x36>
  22:	89 d9                	mov    %ebx,%ecx
  24:	83 e1 7f             	and    $0x7f,%ecx
  27:	01 ca                	add    %ecx,%edx
  29:	89 d9                	mov    %ebx,%ecx
  2b:	c1 f9 08             	sar    $0x8,%ecx
  2e:	83 e1 0f             	and    $0xf,%ecx
  31:	c1 fb 10             	sar    $0x10,%ebx
  34:	eb 7c                	jmp    b2 <dec_rec2+0xb2>
  36:	bf 0a 00 00 00       	mov    $0xa,%edi
  3b:	85 d2                	test   %edx,%edx
  3d:	7f 0e                	jg     4d <dec_rec2+0x4d>
  3f:	89 c1                	mov    %eax,%ecx
  41:	89 f0                	mov    %esi,%eax
  43:	e8 fc ff ff ff       	call   44 <dec_rec2+0x44>
  48:	89 c2                	mov    %eax,%edx
  4a:	8b 46 04             	mov    0x4(%esi),%eax
  4d:	4a                   	dec    %edx
  4e:	8d 4c 2d 00          	lea    0x0(%ebp,%ebp,1),%ecx
  52:	89 4c 24 04          	mov    %ecx,0x4(%esp)
  56:	89 c5                	mov    %eax,%ebp
  58:	88 d1                	mov    %dl,%cl
  5a:	d3 fd                	sar    %cl,%ebp
  5c:	89 e9                	mov    %ebp,%ecx
  5e:	83 e1 01             	and    $0x1,%ecx
  61:	8b 6c 24 04          	mov    0x4(%esp),%ebp
  65:	09 cd                	or     %ecx,%ebp
  67:	8b 0c 24             	mov    (%esp),%ecx
  6a:	39 2c b9             	cmp    %ebp,(%ecx,%edi,4)
  6d:	7f 03                	jg     72 <dec_rec2+0x72>
  6f:	47                   	inc    %edi
  70:	eb c9                	jmp    3b <dec_rec2+0x3b>
  72:	83 ff 0f             	cmp    $0xf,%edi
  75:	7e 0c                	jle    83 <dec_rec2+0x83>
  77:	c7 46 0c ff ff ff ff 	movl   $0xffffffff,0xc(%esi)
  7e:	e9 8d 00 00 00       	jmp    110 <dec_rec2+0x110>
  83:	8b 1c 24             	mov    (%esp),%ebx
  86:	8b 5c bb fc          	mov    -0x4(%ebx,%edi,4),%ebx
  8a:	89 5c 24 04          	mov    %ebx,0x4(%esp)
  8e:	8b 0c 24             	mov    (%esp),%ecx
  91:	8b 5c b9 44          	mov    0x44(%ecx,%edi,4),%ebx
  95:	01 eb                	add    %ebp,%ebx
  97:	8b 4c 24 04          	mov    0x4(%esp),%ecx
  9b:	01 c9                	add    %ecx,%ecx
  9d:	29 cb                	sub    %ecx,%ebx
  9f:	8b 3c 24             	mov    (%esp),%edi
  a2:	0f b6 8c 1f 84 00 00 	movzbl 0x84(%edi,%ebx,1),%ecx
  a9:	00 
  aa:	89 cb                	mov    %ecx,%ebx
  ac:	c1 f9 04             	sar    $0x4,%ecx
  af:	83 e3 0f             	and    $0xf,%ebx
  b2:	8b 7c 24 08          	mov    0x8(%esp),%edi
  b6:	89 0f                	mov    %ecx,(%edi)
  b8:	85 db                	test   %ebx,%ebx
  ba:	75 08                	jne    c4 <dec_rec2+0xc4>
  bc:	89 56 08             	mov    %edx,0x8(%esi)
  bf:	89 46 04             	mov    %eax,0x4(%esi)
  c2:	eb 4c                	jmp    110 <dec_rec2+0x110>
  c4:	39 d3                	cmp    %edx,%ebx
  c6:	7e 0e                	jle    d6 <dec_rec2+0xd6>
  c8:	89 c1                	mov    %eax,%ecx
  ca:	89 f0                	mov    %esi,%eax
  cc:	e8 fc ff ff ff       	call   cd <dec_rec2+0xcd>
  d1:	89 c2                	mov    %eax,%edx
  d3:	8b 46 04             	mov    0x4(%esi),%eax
  d6:	29 da                	sub    %ebx,%edx
  d8:	bd 01 00 00 00       	mov    $0x1,%ebp
  dd:	89 ef                	mov    %ebp,%edi
  df:	88 d9                	mov    %bl,%cl
  e1:	d3 e7                	shl    %cl,%edi
  e3:	4f                   	dec    %edi
  e4:	89 3c 24             	mov    %edi,(%esp)
  e7:	89 c7                	mov    %eax,%edi
  e9:	88 d1                	mov    %dl,%cl
  eb:	d3 ff                	sar    %cl,%edi
  ed:	89 f9                	mov    %edi,%ecx
  ef:	8b 3c 24             	mov    (%esp),%edi
  f2:	21 cf                	and    %ecx,%edi
  f4:	8d 4b ff             	lea    -0x1(%ebx),%ecx
  f7:	d3 e5                	shl    %cl,%ebp
  f9:	39 fd                	cmp    %edi,%ebp
  fb:	7e 0b                	jle    108 <dec_rec2+0x108>
  fd:	83 cd ff             	or     $0xffffffff,%ebp
 100:	88 d9                	mov    %bl,%cl
 102:	d3 e5                	shl    %cl,%ebp
 104:	8d 7c 2f 01          	lea    0x1(%edi,%ebp,1),%edi
 108:	89 56 08             	mov    %edx,0x8(%esi)
 10b:	89 46 04             	mov    %eax,0x4(%esi)
 10e:	89 fb                	mov    %edi,%ebx
 110:	89 d8                	mov    %ebx,%eax
 112:	83 c4 0c             	add    $0xc,%esp
 115:	5b                   	pop    %ebx
 116:	5e                   	pop    %esi
 117:	5f                   	pop    %edi
 118:	5d                   	pop    %ebp
 119:	c3                   	ret    

Disassembly of section .text.idct:

00000000 <idct>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	81 ec 28 01 00 00    	sub    $0x128,%esp
   a:	89 c3                	mov    %eax,%ebx
   c:	89 54 24 24          	mov    %edx,0x24(%esp)
  10:	89 4c 24 04          	mov    %ecx,0x4(%esp)
  14:	8b bc 24 3c 01 00 00 	mov    0x13c(%esp),%edi
  1b:	83 bc 24 40 01 00 00 	cmpl   $0x1,0x140(%esp)
  22:	01 
  23:	75 1e                	jne    43 <idct+0x43>
  25:	8b 00                	mov    (%eax),%eax
  27:	0f af 01             	imul   (%ecx),%eax
  2a:	01 f8                	add    %edi,%eax
  2c:	c1 f8 0b             	sar    $0xb,%eax
  2f:	31 d2                	xor    %edx,%edx
  31:	8b 74 24 24          	mov    0x24(%esp),%esi
  35:	89 04 96             	mov    %eax,(%esi,%edx,4)
  38:	42                   	inc    %edx
  39:	83 fa 40             	cmp    $0x40,%edx
  3c:	75 f3                	jne    31 <idct+0x31>
  3e:	e9 c1 02 00 00       	jmp    304 <idct+0x304>
  43:	31 c0                	xor    %eax,%eax
  45:	8d 74 24 28          	lea    0x28(%esp),%esi
  49:	89 34 24             	mov    %esi,(%esp)
  4c:	0f b6 14 c5 00 00 00 	movzbl 0x0(,%eax,8),%edx
  53:	00 
  54:	8b 0c 93             	mov    (%ebx,%edx,4),%ecx
  57:	8b 74 24 04          	mov    0x4(%esp),%esi
  5b:	0f af 0c 96          	imul   (%esi,%edx,4),%ecx
  5f:	01 cf                	add    %ecx,%edi
  61:	0f b6 14 c5 01 00 00 	movzbl 0x1(,%eax,8),%edx
  68:	00 
  69:	8b 0c 93             	mov    (%ebx,%edx,4),%ecx
  6c:	0f af 0c 96          	imul   (%esi,%edx,4),%ecx
  70:	89 4c 24 08          	mov    %ecx,0x8(%esp)
  74:	0f b6 14 c5 02 00 00 	movzbl 0x2(,%eax,8),%edx
  7b:	00 
  7c:	8b 0c 93             	mov    (%ebx,%edx,4),%ecx
  7f:	0f af 0c 96          	imul   (%esi,%edx,4),%ecx
  83:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
  87:	0f b6 14 c5 03 00 00 	movzbl 0x3(,%eax,8),%edx
  8e:	00 
  8f:	8b 0c 93             	mov    (%ebx,%edx,4),%ecx
  92:	0f af 0c 96          	imul   (%esi,%edx,4),%ecx
  96:	89 4c 24 10          	mov    %ecx,0x10(%esp)
  9a:	0f b6 14 c5 04 00 00 	movzbl 0x4(,%eax,8),%edx
  a1:	00 
  a2:	8b 0c 93             	mov    (%ebx,%edx,4),%ecx
  a5:	0f af 0c 96          	imul   (%esi,%edx,4),%ecx
  a9:	89 4c 24 14          	mov    %ecx,0x14(%esp)
  ad:	0f b6 0c c5 05 00 00 	movzbl 0x5(,%eax,8),%ecx
  b4:	00 
  b5:	8b 34 8b             	mov    (%ebx,%ecx,4),%esi
  b8:	8b 6c 24 04          	mov    0x4(%esp),%ebp
  bc:	0f af 74 8d 00       	imul   0x0(%ebp,%ecx,4),%esi
  c1:	89 74 24 18          	mov    %esi,0x18(%esp)
  c5:	0f b6 0c c5 06 00 00 	movzbl 0x6(,%eax,8),%ecx
  cc:	00 
  cd:	8b 34 8b             	mov    (%ebx,%ecx,4),%esi
  d0:	0f af 74 8d 00       	imul   0x0(%ebp,%ecx,4),%esi
  d5:	0f b6 0c c5 07 00 00 	movzbl 0x7(,%eax,8),%ecx
  dc:	00 
  dd:	8b 2c 8b             	mov    (%ebx,%ecx,4),%ebp
  e0:	8b 54 24 04          	mov    0x4(%esp),%edx
  e4:	0f af 2c 8a          	imul   (%edx,%ecx,4),%ebp
  e8:	89 e9                	mov    %ebp,%ecx
  ea:	8b 54 24 14          	mov    0x14(%esp),%edx
  ee:	8d 2c 17             	lea    (%edi,%edx,1),%ebp
  f1:	29 d7                	sub    %edx,%edi
  f3:	89 7c 24 14          	mov    %edi,0x14(%esp)
  f7:	8b 7c 24 0c          	mov    0xc(%esp),%edi
  fb:	01 f7                	add    %esi,%edi
  fd:	8b 54 24 0c          	mov    0xc(%esp),%edx
 101:	29 f2                	sub    %esi,%edx
 103:	69 d2 50 0b 00 00    	imul   $0xb50,%edx,%edx
 109:	c1 fa 0b             	sar    $0xb,%edx
 10c:	29 fa                	sub    %edi,%edx
 10e:	8d 74 3d 00          	lea    0x0(%ebp,%edi,1),%esi
 112:	89 74 24 0c          	mov    %esi,0xc(%esp)
 116:	29 fd                	sub    %edi,%ebp
 118:	89 6c 24 1c          	mov    %ebp,0x1c(%esp)
 11c:	8b 7c 24 14          	mov    0x14(%esp),%edi
 120:	01 d7                	add    %edx,%edi
 122:	89 7c 24 20          	mov    %edi,0x20(%esp)
 126:	8b 74 24 14          	mov    0x14(%esp),%esi
 12a:	29 d6                	sub    %edx,%esi
 12c:	89 74 24 14          	mov    %esi,0x14(%esp)
 130:	8b 6c 24 18          	mov    0x18(%esp),%ebp
 134:	2b 6c 24 10          	sub    0x10(%esp),%ebp
 138:	8b 74 24 10          	mov    0x10(%esp),%esi
 13c:	03 74 24 18          	add    0x18(%esp),%esi
 140:	8b 7c 24 08          	mov    0x8(%esp),%edi
 144:	8d 14 0f             	lea    (%edi,%ecx,1),%edx
 147:	29 cf                	sub    %ecx,%edi
 149:	8d 0c 16             	lea    (%esi,%edx,1),%ecx
 14c:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 150:	29 f2                	sub    %esi,%edx
 152:	69 d2 50 0b 00 00    	imul   $0xb50,%edx,%edx
 158:	89 d1                	mov    %edx,%ecx
 15a:	c1 f9 0b             	sar    $0xb,%ecx
 15d:	8d 54 3d 00          	lea    0x0(%ebp,%edi,1),%edx
 161:	69 d2 1f 06 00 00    	imul   $0x61f,%edx,%edx
 167:	c1 fa 0b             	sar    $0xb,%edx
 16a:	69 ed a9 08 00 00    	imul   $0x8a9,%ebp,%ebp
 170:	c1 fd 0b             	sar    $0xb,%ebp
 173:	01 d5                	add    %edx,%ebp
 175:	69 ff e7 14 00 00    	imul   $0x14e7,%edi,%edi
 17b:	c1 ff 0b             	sar    $0xb,%edi
 17e:	29 d7                	sub    %edx,%edi
 180:	89 fe                	mov    %edi,%esi
 182:	2b 74 24 08          	sub    0x8(%esp),%esi
 186:	29 f1                	sub    %esi,%ecx
 188:	29 cd                	sub    %ecx,%ebp
 18a:	8b 54 24 0c          	mov    0xc(%esp),%edx
 18e:	03 54 24 08          	add    0x8(%esp),%edx
 192:	8b 3c 24             	mov    (%esp),%edi
 195:	89 17                	mov    %edx,(%edi)
 197:	8b 7c 24 20          	mov    0x20(%esp),%edi
 19b:	8d 14 37             	lea    (%edi,%esi,1),%edx
 19e:	8b 3c 24             	mov    (%esp),%edi
 1a1:	89 57 20             	mov    %edx,0x20(%edi)
 1a4:	8b 7c 24 14          	mov    0x14(%esp),%edi
 1a8:	8d 14 0f             	lea    (%edi,%ecx,1),%edx
 1ab:	8b 3c 24             	mov    (%esp),%edi
 1ae:	89 57 40             	mov    %edx,0x40(%edi)
 1b1:	8b 7c 24 1c          	mov    0x1c(%esp),%edi
 1b5:	8d 14 2f             	lea    (%edi,%ebp,1),%edx
 1b8:	8b 3c 24             	mov    (%esp),%edi
 1bb:	89 57 60             	mov    %edx,0x60(%edi)
 1be:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 1c2:	29 ea                	sub    %ebp,%edx
 1c4:	89 97 80 00 00 00    	mov    %edx,0x80(%edi)
 1ca:	8b 54 24 14          	mov    0x14(%esp),%edx
 1ce:	29 ca                	sub    %ecx,%edx
 1d0:	89 97 a0 00 00 00    	mov    %edx,0xa0(%edi)
 1d6:	8b 54 24 20          	mov    0x20(%esp),%edx
 1da:	29 f2                	sub    %esi,%edx
 1dc:	89 97 c0 00 00 00    	mov    %edx,0xc0(%edi)
 1e2:	8b 54 24 0c          	mov    0xc(%esp),%edx
 1e6:	2b 54 24 08          	sub    0x8(%esp),%edx
 1ea:	89 97 e0 00 00 00    	mov    %edx,0xe0(%edi)
 1f0:	83 04 24 04          	addl   $0x4,(%esp)
 1f4:	40                   	inc    %eax
 1f5:	31 ff                	xor    %edi,%edi
 1f7:	83 f8 08             	cmp    $0x8,%eax
 1fa:	0f 85 4c fe ff ff    	jne    4c <idct+0x4c>
 200:	8d 4c 24 28          	lea    0x28(%esp),%ecx
 204:	8b 74 24 24          	mov    0x24(%esp),%esi
 208:	8b 11                	mov    (%ecx),%edx
 20a:	8b 59 04             	mov    0x4(%ecx),%ebx
 20d:	8b 41 08             	mov    0x8(%ecx),%eax
 210:	8b 69 0c             	mov    0xc(%ecx),%ebp
 213:	8d 3c 1a             	lea    (%edx,%ebx,1),%edi
 216:	29 da                	sub    %ebx,%edx
 218:	8d 1c 28             	lea    (%eax,%ebp,1),%ebx
 21b:	29 e8                	sub    %ebp,%eax
 21d:	69 c0 50 0b 00 00    	imul   $0xb50,%eax,%eax
 223:	c1 f8 0b             	sar    $0xb,%eax
 226:	29 d8                	sub    %ebx,%eax
 228:	8d 2c 1f             	lea    (%edi,%ebx,1),%ebp
 22b:	89 2c 24             	mov    %ebp,(%esp)
 22e:	29 df                	sub    %ebx,%edi
 230:	89 7c 24 04          	mov    %edi,0x4(%esp)
 234:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
 237:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 23b:	29 c2                	sub    %eax,%edx
 23d:	89 54 24 0c          	mov    %edx,0xc(%esp)
 241:	8b 59 10             	mov    0x10(%ecx),%ebx
 244:	2b 59 1c             	sub    0x1c(%ecx),%ebx
 247:	8b 69 10             	mov    0x10(%ecx),%ebp
 24a:	03 69 1c             	add    0x1c(%ecx),%ebp
 24d:	8b 51 14             	mov    0x14(%ecx),%edx
 250:	03 51 18             	add    0x18(%ecx),%edx
 253:	8b 41 14             	mov    0x14(%ecx),%eax
 256:	2b 41 18             	sub    0x18(%ecx),%eax
 259:	8d 7c 15 00          	lea    0x0(%ebp,%edx,1),%edi
 25d:	29 ea                	sub    %ebp,%edx
 25f:	69 d2 50 0b 00 00    	imul   $0xb50,%edx,%edx
 265:	c1 fa 0b             	sar    $0xb,%edx
 268:	8d 2c 03             	lea    (%ebx,%eax,1),%ebp
 26b:	69 ed 1f 06 00 00    	imul   $0x61f,%ebp,%ebp
 271:	c1 fd 0b             	sar    $0xb,%ebp
 274:	69 db a9 08 00 00    	imul   $0x8a9,%ebx,%ebx
 27a:	c1 fb 0b             	sar    $0xb,%ebx
 27d:	01 eb                	add    %ebp,%ebx
 27f:	69 c0 e7 14 00 00    	imul   $0x14e7,%eax,%eax
 285:	c1 f8 0b             	sar    $0xb,%eax
 288:	29 e8                	sub    %ebp,%eax
 28a:	29 f8                	sub    %edi,%eax
 28c:	29 c2                	sub    %eax,%edx
 28e:	29 d3                	sub    %edx,%ebx
 290:	8b 2c 24             	mov    (%esp),%ebp
 293:	01 fd                	add    %edi,%ebp
 295:	c1 fd 0b             	sar    $0xb,%ebp
 298:	89 2e                	mov    %ebp,(%esi)
 29a:	8b 6c 24 08          	mov    0x8(%esp),%ebp
 29e:	01 c5                	add    %eax,%ebp
 2a0:	c1 fd 0b             	sar    $0xb,%ebp
 2a3:	89 6e 04             	mov    %ebp,0x4(%esi)
 2a6:	8b 6c 24 0c          	mov    0xc(%esp),%ebp
 2aa:	01 d5                	add    %edx,%ebp
 2ac:	c1 fd 0b             	sar    $0xb,%ebp
 2af:	89 6e 08             	mov    %ebp,0x8(%esi)
 2b2:	8b 6c 24 04          	mov    0x4(%esp),%ebp
 2b6:	01 dd                	add    %ebx,%ebp
 2b8:	c1 fd 0b             	sar    $0xb,%ebp
 2bb:	89 6e 0c             	mov    %ebp,0xc(%esi)
 2be:	8b 6c 24 04          	mov    0x4(%esp),%ebp
 2c2:	29 dd                	sub    %ebx,%ebp
 2c4:	c1 fd 0b             	sar    $0xb,%ebp
 2c7:	89 6e 10             	mov    %ebp,0x10(%esi)
 2ca:	8b 5c 24 0c          	mov    0xc(%esp),%ebx
 2ce:	29 d3                	sub    %edx,%ebx
 2d0:	c1 fb 0b             	sar    $0xb,%ebx
 2d3:	89 5e 14             	mov    %ebx,0x14(%esi)
 2d6:	8b 54 24 08          	mov    0x8(%esp),%edx
 2da:	29 c2                	sub    %eax,%edx
 2dc:	89 d0                	mov    %edx,%eax
 2de:	c1 f8 0b             	sar    $0xb,%eax
 2e1:	89 46 18             	mov    %eax,0x18(%esi)
 2e4:	8b 04 24             	mov    (%esp),%eax
 2e7:	29 f8                	sub    %edi,%eax
 2e9:	c1 f8 0b             	sar    $0xb,%eax
 2ec:	89 46 1c             	mov    %eax,0x1c(%esi)
 2ef:	83 c1 20             	add    $0x20,%ecx
 2f2:	83 c6 20             	add    $0x20,%esi
 2f5:	8d 84 24 28 01 00 00 	lea    0x128(%esp),%eax
 2fc:	39 c8                	cmp    %ecx,%eax
 2fe:	0f 85 04 ff ff ff    	jne    208 <idct+0x208>
 304:	81 c4 28 01 00 00    	add    $0x128,%esp
 30a:	5b                   	pop    %ebx
 30b:	5e                   	pop    %esi
 30c:	5f                   	pop    %edi
 30d:	5d                   	pop    %ebp
 30e:	c3                   	ret    

Disassembly of section .text.readtables:

00000000 <readtables>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	81 ec 84 01 00 00    	sub    $0x184,%esp
   a:	89 c3                	mov    %eax,%ebx
   c:	89 54 24 38          	mov    %edx,0x38(%esp)
  10:	8b 83 40 0f 00 00    	mov    0xf40(%ebx),%eax
  16:	8d 50 01             	lea    0x1(%eax),%edx
  19:	89 93 40 0f 00 00    	mov    %edx,0xf40(%ebx)
  1f:	80 38 ff             	cmpb   $0xff,(%eax)
  22:	0f 85 39 03 00 00    	jne    361 <readtables+0x361>
  28:	8d 50 02             	lea    0x2(%eax),%edx
  2b:	89 93 40 0f 00 00    	mov    %edx,0xf40(%ebx)
  31:	0f b6 50 01          	movzbl 0x1(%eax),%edx
  35:	39 54 24 38          	cmp    %edx,0x38(%esp)
  39:	0f 84 27 03 00 00    	je     366 <readtables+0x366>
  3f:	80 fa db             	cmp    $0xdb,%dl
  42:	74 43                	je     87 <readtables+0x87>
  44:	77 22                	ja     68 <readtables+0x68>
  46:	80 fa c2             	cmp    $0xc2,%dl
  49:	0f 84 17 03 00 00    	je     366 <readtables+0x366>
  4f:	80 fa c4             	cmp    $0xc4,%dl
  52:	0f 85 e7 02 00 00    	jne    33f <readtables+0x33f>
  58:	89 d8                	mov    %ebx,%eax
  5a:	e8 fc ff ff ff       	call   5b <readtables+0x5b>
  5f:	89 44 24 04          	mov    %eax,0x4(%esp)
  63:	e9 4a 01 00 00       	jmp    1b2 <readtables+0x1b2>
  68:	80 fa dd             	cmp    $0xdd,%dl
  6b:	0f 85 ce 02 00 00    	jne    33f <readtables+0x33f>
  71:	89 d8                	mov    %ebx,%eax
  73:	e8 fc ff ff ff       	call   74 <readtables+0x74>
  78:	89 d8                	mov    %ebx,%eax
  7a:	e8 fc ff ff ff       	call   7b <readtables+0x7b>
  7f:	89 83 4c 0f 00 00    	mov    %eax,0xf4c(%ebx)
  85:	eb 89                	jmp    10 <readtables+0x10>
  87:	89 d8                	mov    %ebx,%eax
  89:	e8 fc ff ff ff       	call   8a <readtables+0x8a>
  8e:	89 c6                	mov    %eax,%esi
  90:	8b 83 40 0f 00 00    	mov    0xf40(%ebx),%eax
  96:	8d 50 01             	lea    0x1(%eax),%edx
  99:	83 fe 02             	cmp    $0x2,%esi
  9c:	0f 8e 6e ff ff ff    	jle    10 <readtables+0x10>
  a2:	89 93 40 0f 00 00    	mov    %edx,0xf40(%ebx)
  a8:	0f b6 00             	movzbl (%eax),%eax
  ab:	89 c1                	mov    %eax,%ecx
  ad:	88 c2                	mov    %al,%dl
  af:	83 e2 0f             	and    $0xf,%edx
  b2:	80 e1 0c             	and    $0xc,%cl
  b5:	0f 85 a6 02 00 00    	jne    361 <readtables+0x361>
  bb:	c1 f8 04             	sar    $0x4,%eax
  be:	0f 85 9d 02 00 00    	jne    361 <readtables+0x361>
  c4:	0f b6 d2             	movzbl %dl,%edx
  c7:	c1 e2 06             	shl    $0x6,%edx
  ca:	01 da                	add    %ebx,%edx
  cc:	8b 8b 40 0f 00 00    	mov    0xf40(%ebx),%ecx
  d2:	8d 79 01             	lea    0x1(%ecx),%edi
  d5:	89 bb 40 0f 00 00    	mov    %edi,0xf40(%ebx)
  db:	8a 09                	mov    (%ecx),%cl
  dd:	88 8c 02 f8 0f 00 00 	mov    %cl,0xff8(%edx,%eax,1)
  e4:	40                   	inc    %eax
  e5:	83 f8 40             	cmp    $0x40,%eax
  e8:	75 e2                	jne    cc <readtables+0xcc>
  ea:	83 ee 41             	sub    $0x41,%esi
  ed:	eb a1                	jmp    90 <readtables+0x90>
  ef:	89 d0                	mov    %edx,%eax
  f1:	85 d2                	test   %edx,%edx
  f3:	79 02                	jns    f7 <readtables+0xf7>
  f5:	31 c0                	xor    %eax,%eax
  f7:	01 c7                	add    %eax,%edi
  f9:	29 54 24 04          	sub    %edx,0x4(%esp)
  fd:	41                   	inc    %ecx
  fe:	83 f9 10             	cmp    $0x10,%ecx
 101:	0f 85 12 01 00 00    	jne    219 <readtables+0x219>
 107:	69 44 24 08 84 11 00 	imul   $0x1184,0x8(%esp),%eax
 10e:	00 
 10f:	8d ac 03 f8 10 00 00 	lea    0x10f8(%ebx,%eax,1),%ebp
 116:	31 c0                	xor    %eax,%eax
 118:	c7 84 85 84 01 00 00 	movl   $0x0,0x184(%ebp,%eax,4)
 11f:	00 00 00 00 
 123:	40                   	inc    %eax
 124:	3d 00 04 00 00       	cmp    $0x400,%eax
 129:	75 ed                	jne    118 <readtables+0x118>
 12b:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 132:	00 
 133:	8d 84 24 84 00 00 00 	lea    0x84(%esp),%eax
 13a:	89 44 24 20          	mov    %eax,0x20(%esp)
 13e:	31 c0                	xor    %eax,%eax
 140:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
 147:	00 
 148:	8b 7c 24 10          	mov    0x10(%esp),%edi
 14c:	89 7c 85 44          	mov    %edi,0x44(%ebp,%eax,4)
 150:	8b 7c 84 44          	mov    0x44(%esp,%eax,4),%edi
 154:	89 7c 24 1c          	mov    %edi,0x1c(%esp)
 158:	bf 09 00 00 00       	mov    $0x9,%edi
 15d:	29 c7                	sub    %eax,%edi
 15f:	89 7c 24 0c          	mov    %edi,0xc(%esp)
 163:	ba 01 00 00 00       	mov    $0x1,%edx
 168:	8a 4c 24 0c          	mov    0xc(%esp),%cl
 16c:	d3 e2                	shl    %cl,%edx
 16e:	89 54 24 28          	mov    %edx,0x28(%esp)
 172:	31 f6                	xor    %esi,%esi
 174:	8b 7c 24 08          	mov    0x8(%esp),%edi
 178:	01 f7                	add    %esi,%edi
 17a:	3b 74 24 1c          	cmp    0x1c(%esp),%esi
 17e:	0f 8c d6 00 00 00    	jl     25a <readtables+0x25a>
 184:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 188:	85 d2                	test   %edx,%edx
 18a:	79 02                	jns    18e <readtables+0x18e>
 18c:	31 d2                	xor    %edx,%edx
 18e:	01 54 24 20          	add    %edx,0x20(%esp)
 192:	01 54 24 10          	add    %edx,0x10(%esp)
 196:	03 54 24 08          	add    0x8(%esp),%edx
 19a:	89 54 85 00          	mov    %edx,0x0(%ebp,%eax,4)
 19e:	40                   	inc    %eax
 19f:	8d 34 12             	lea    (%edx,%edx,1),%esi
 1a2:	89 74 24 08          	mov    %esi,0x8(%esp)
 1a6:	83 f8 10             	cmp    $0x10,%eax
 1a9:	75 9d                	jne    148 <readtables+0x148>
 1ab:	c7 45 40 00 00 02 00 	movl   $0x20000,0x40(%ebp)
 1b2:	8b 83 40 0f 00 00    	mov    0xf40(%ebx),%eax
 1b8:	8d 50 01             	lea    0x1(%eax),%edx
 1bb:	83 7c 24 04 02       	cmpl   $0x2,0x4(%esp)
 1c0:	0f 8e 4a fe ff ff    	jle    10 <readtables+0x10>
 1c6:	89 93 40 0f 00 00    	mov    %edx,0xf40(%ebx)
 1cc:	0f b6 00             	movzbl (%eax),%eax
 1cf:	89 c2                	mov    %eax,%edx
 1d1:	c1 f8 04             	sar    $0x4,%eax
 1d4:	8d 34 00             	lea    (%eax,%eax,1),%esi
 1d7:	89 d1                	mov    %edx,%ecx
 1d9:	83 e1 0f             	and    $0xf,%ecx
 1dc:	01 ce                	add    %ecx,%esi
 1de:	89 74 24 08          	mov    %esi,0x8(%esp)
 1e2:	80 e2 0e             	and    $0xe,%dl
 1e5:	0f 85 76 01 00 00    	jne    361 <readtables+0x361>
 1eb:	48                   	dec    %eax
 1ec:	0f 8f 6f 01 00 00    	jg     361 <readtables+0x361>
 1f2:	31 c0                	xor    %eax,%eax
 1f4:	8b 93 40 0f 00 00    	mov    0xf40(%ebx),%edx
 1fa:	8d 4a 01             	lea    0x1(%edx),%ecx
 1fd:	89 8b 40 0f 00 00    	mov    %ecx,0xf40(%ebx)
 203:	0f b6 12             	movzbl (%edx),%edx
 206:	89 54 84 44          	mov    %edx,0x44(%esp,%eax,4)
 20a:	40                   	inc    %eax
 20b:	83 f8 10             	cmp    $0x10,%eax
 20e:	75 e4                	jne    1f4 <readtables+0x1f4>
 210:	83 6c 24 04 11       	subl   $0x11,0x4(%esp)
 215:	31 ff                	xor    %edi,%edi
 217:	31 c9                	xor    %ecx,%ecx
 219:	8b 54 8c 44          	mov    0x44(%esp,%ecx,4),%edx
 21d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 224:	8d 84 24 84 00 00 00 	lea    0x84(%esp),%eax
 22b:	01 f8                	add    %edi,%eax
 22d:	89 44 24 0c          	mov    %eax,0xc(%esp)
 231:	3b 14 24             	cmp    (%esp),%edx
 234:	0f 8e b5 fe ff ff    	jle    ef <readtables+0xef>
 23a:	8b b3 40 0f 00 00    	mov    0xf40(%ebx),%esi
 240:	8d 6e 01             	lea    0x1(%esi),%ebp
 243:	89 ab 40 0f 00 00    	mov    %ebp,0xf40(%ebx)
 249:	8a 06                	mov    (%esi),%al
 24b:	8b 74 24 0c          	mov    0xc(%esp),%esi
 24f:	8b 2c 24             	mov    (%esp),%ebp
 252:	88 04 2e             	mov    %al,(%esi,%ebp,1)
 255:	ff 04 24             	incl   (%esp)
 258:	eb d7                	jmp    231 <readtables+0x231>
 25a:	8b 4c 24 20          	mov    0x20(%esp),%ecx
 25e:	8a 14 31             	mov    (%ecx,%esi,1),%dl
 261:	8b 4c 24 10          	mov    0x10(%esp),%ecx
 265:	01 e9                	add    %ebp,%ecx
 267:	88 94 31 84 00 00 00 	mov    %dl,0x84(%ecx,%esi,1)
 26e:	83 f8 09             	cmp    $0x9,%eax
 271:	7e 06                	jle    279 <readtables+0x279>
 273:	46                   	inc    %esi
 274:	e9 fb fe ff ff       	jmp    174 <readtables+0x174>
 279:	8a 4c 24 0c          	mov    0xc(%esp),%cl
 27d:	d3 e7                	shl    %cl,%edi
 27f:	89 7c 24 24          	mov    %edi,0x24(%esp)
 283:	88 d1                	mov    %dl,%cl
 285:	83 e1 0f             	and    $0xf,%ecx
 288:	88 4c 24 17          	mov    %cl,0x17(%esp)
 28c:	89 d7                	mov    %edx,%edi
 28e:	83 e7 0f             	and    $0xf,%edi
 291:	c1 e2 04             	shl    $0x4,%edx
 294:	81 e2 00 0f 00 00    	and    $0xf00,%edx
 29a:	89 54 24 18          	mov    %edx,0x18(%esp)
 29e:	89 fa                	mov    %edi,%edx
 2a0:	c1 e2 10             	shl    $0x10,%edx
 2a3:	0b 54 24 18          	or     0x18(%esp),%edx
 2a7:	0b 54 24 0c          	or     0xc(%esp),%edx
 2ab:	89 54 24 34          	mov    %edx,0x34(%esp)
 2af:	8d 4f ff             	lea    -0x1(%edi),%ecx
 2b2:	ba 01 00 00 00       	mov    $0x1,%edx
 2b7:	d3 e2                	shl    %cl,%edx
 2b9:	89 54 24 2c          	mov    %edx,0x2c(%esp)
 2bd:	83 ca ff             	or     $0xffffffff,%edx
 2c0:	8a 4c 24 17          	mov    0x17(%esp),%cl
 2c4:	d3 e2                	shl    %cl,%edx
 2c6:	8d 4a 01             	lea    0x1(%edx),%ecx
 2c9:	89 4c 24 30          	mov    %ecx,0x30(%esp)
 2cd:	8b 4c 24 28          	mov    0x28(%esp),%ecx
 2d1:	89 0c 24             	mov    %ecx,(%esp)
 2d4:	b9 09 00 00 00       	mov    $0x9,%ecx
 2d9:	29 f9                	sub    %edi,%ecx
 2db:	89 4c 24 40          	mov    %ecx,0x40(%esp)
 2df:	ff 0c 24             	decl   (%esp)
 2e2:	83 3c 24 ff          	cmpl   $0xffffffff,(%esp)
 2e6:	74 8b                	je     273 <readtables+0x273>
 2e8:	8d 0c 07             	lea    (%edi,%eax,1),%ecx
 2eb:	8b 54 24 34          	mov    0x34(%esp),%edx
 2ef:	83 f9 09             	cmp    $0x9,%ecx
 2f2:	7f 3b                	jg     32f <readtables+0x32f>
 2f4:	8b 4c 24 40          	mov    0x40(%esp),%ecx
 2f8:	29 c1                	sub    %eax,%ecx
 2fa:	8b 14 24             	mov    (%esp),%edx
 2fd:	d3 fa                	sar    %cl,%edx
 2ff:	89 d1                	mov    %edx,%ecx
 301:	80 7c 24 17 00       	cmpb   $0x0,0x17(%esp)
 306:	74 0a                	je     312 <readtables+0x312>
 308:	3b 54 24 2c          	cmp    0x2c(%esp),%edx
 30c:	7d 04                	jge    312 <readtables+0x312>
 30e:	03 4c 24 30          	add    0x30(%esp),%ecx
 312:	8d 54 07 01          	lea    0x1(%edi,%eax,1),%edx
 316:	89 54 24 3c          	mov    %edx,0x3c(%esp)
 31a:	ba 0a 00 00 00       	mov    $0xa,%edx
 31f:	2b 54 24 3c          	sub    0x3c(%esp),%edx
 323:	c1 e1 10             	shl    $0x10,%ecx
 326:	0b 4c 24 18          	or     0x18(%esp),%ecx
 32a:	09 ca                	or     %ecx,%edx
 32c:	80 ca 80             	or     $0x80,%dl
 32f:	8b 4c 24 24          	mov    0x24(%esp),%ecx
 333:	0b 0c 24             	or     (%esp),%ecx
 336:	89 94 8d 84 01 00 00 	mov    %edx,0x184(%ebp,%ecx,4)
 33d:	eb a0                	jmp    2df <readtables+0x2df>
 33f:	89 d8                	mov    %ebx,%eax
 341:	e8 fc ff ff ff       	call   342 <readtables+0x342>
 346:	8b bb 40 0f 00 00    	mov    0xf40(%ebx),%edi
 34c:	8d 57 01             	lea    0x1(%edi),%edx
 34f:	83 f8 02             	cmp    $0x2,%eax
 352:	0f 8e b8 fc ff ff    	jle    10 <readtables+0x10>
 358:	89 93 40 0f 00 00    	mov    %edx,0xf40(%ebx)
 35e:	48                   	dec    %eax
 35f:	eb e5                	jmp    346 <readtables+0x346>
 361:	83 c8 ff             	or     $0xffffffff,%eax
 364:	eb 02                	jmp    368 <readtables+0x368>
 366:	31 c0                	xor    %eax,%eax
 368:	81 c4 84 01 00 00    	add    $0x184,%esp
 36e:	5b                   	pop    %ebx
 36f:	5e                   	pop    %esi
 370:	5f                   	pop    %edi
 371:	5d                   	pop    %ebp
 372:	c3                   	ret    

Disassembly of section .text.jpeg_alloc:

00000000 <jpeg_alloc>:
   0:	b9 10 00 00 00       	mov    $0x10,%ecx
   5:	ba 28 57 00 00       	mov    $0x5728,%edx
   a:	b8 00 00 00 00       	mov    $0x0,%eax
   f:	e9 fc ff ff ff       	jmp    10 <jpeg_alloc+0x10>

Disassembly of section .text.jpeg_decode:

00000000 <jpeg_decode>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 10             	sub    $0x10,%esp
   7:	85 c0                	test   %eax,%eax
   9:	0f 84 b6 03 00 00    	je     3c5 <jpeg_decode+0x3c5>
   f:	85 d2                	test   %edx,%edx
  11:	0f 84 ae 03 00 00    	je     3c5 <jpeg_decode+0x3c5>
  17:	89 c3                	mov    %eax,%ebx
  19:	8d 42 01             	lea    0x1(%edx),%eax
  1c:	89 83 40 0f 00 00    	mov    %eax,0xf40(%ebx)
  22:	80 3a ff             	cmpb   $0xff,(%edx)
  25:	74 0a                	je     31 <jpeg_decode+0x31>
  27:	be 01 00 00 00       	mov    $0x1,%esi
  2c:	e9 a5 03 00 00       	jmp    3d6 <jpeg_decode+0x3d6>
  31:	8d 42 02             	lea    0x2(%edx),%eax
  34:	89 83 40 0f 00 00    	mov    %eax,0xf40(%ebx)
  3a:	80 7a 01 d8          	cmpb   $0xd8,0x1(%edx)
  3e:	75 e7                	jne    27 <jpeg_decode+0x27>
  40:	ba c0 00 00 00       	mov    $0xc0,%edx
  45:	89 d8                	mov    %ebx,%eax
  47:	e8 fc ff ff ff       	call   48 <jpeg_decode+0x48>
  4c:	85 c0                	test   %eax,%eax
  4e:	74 0a                	je     5a <jpeg_decode+0x5a>
  50:	be 0e 00 00 00       	mov    $0xe,%esi
  55:	e9 7c 03 00 00       	jmp    3d6 <jpeg_decode+0x3d6>
  5a:	89 d8                	mov    %ebx,%eax
  5c:	e8 fc ff ff ff       	call   5d <jpeg_decode+0x5d>
  61:	8b 83 40 0f 00 00    	mov    0xf40(%ebx),%eax
  67:	8d 50 01             	lea    0x1(%eax),%edx
  6a:	89 93 40 0f 00 00    	mov    %edx,0xf40(%ebx)
  70:	be 02 00 00 00       	mov    $0x2,%esi
  75:	80 38 08             	cmpb   $0x8,(%eax)
  78:	0f 85 58 03 00 00    	jne    3d6 <jpeg_decode+0x3d6>
  7e:	89 d8                	mov    %ebx,%eax
  80:	e8 fc ff ff ff       	call   81 <jpeg_decode+0x81>
  85:	89 c6                	mov    %eax,%esi
  87:	89 83 20 57 00 00    	mov    %eax,0x5720(%ebx)
  8d:	89 d8                	mov    %ebx,%eax
  8f:	e8 fc ff ff ff       	call   90 <jpeg_decode+0x90>
  94:	89 83 24 57 00 00    	mov    %eax,0x5724(%ebx)
  9a:	09 f0                	or     %esi,%eax
  9c:	be 05 00 00 00       	mov    $0x5,%esi
  a1:	83 e0 0f             	and    $0xf,%eax
  a4:	0f 85 2c 03 00 00    	jne    3d6 <jpeg_decode+0x3d6>
  aa:	8b 93 40 0f 00 00    	mov    0xf40(%ebx),%edx
  b0:	8d 4a 01             	lea    0x1(%edx),%ecx
  b3:	89 8b 40 0f 00 00    	mov    %ecx,0xf40(%ebx)
  b9:	0f b6 12             	movzbl (%edx),%edx
  bc:	89 93 44 0f 00 00    	mov    %edx,0xf44(%ebx)
  c2:	be 06 00 00 00       	mov    $0x6,%esi
  c7:	83 fa 04             	cmp    $0x4,%edx
  ca:	0f 8f 06 03 00 00    	jg     3d6 <jpeg_decode+0x3d6>
  d0:	6b fa 0c             	imul   $0xc,%edx,%edi
  d3:	89 3c 24             	mov    %edi,(%esp)
  d6:	3b 04 24             	cmp    (%esp),%eax
  d9:	74 67                	je     142 <jpeg_decode+0x142>
  db:	8b 93 40 0f 00 00    	mov    0xf40(%ebx),%edx
  e1:	8d 72 01             	lea    0x1(%edx),%esi
  e4:	89 b3 40 0f 00 00    	mov    %esi,0xf40(%ebx)
  ea:	0f b6 32             	movzbl (%edx),%esi
  ed:	89 b4 03 58 0f 00 00 	mov    %esi,0xf58(%ebx,%eax,1)
  f4:	8d 72 02             	lea    0x2(%edx),%esi
  f7:	89 b3 40 0f 00 00    	mov    %esi,0xf40(%ebx)
  fd:	0f b6 7a 01          	movzbl 0x1(%edx),%edi
 101:	89 f9                	mov    %edi,%ecx
 103:	89 bc 03 5c 0f 00 00 	mov    %edi,0xf5c(%ebx,%eax,1)
 10a:	8d 6a 03             	lea    0x3(%edx),%ebp
 10d:	89 ab 40 0f 00 00    	mov    %ebp,0xf40(%ebx)
 113:	0f b6 52 02          	movzbl 0x2(%edx),%edx
 117:	89 94 03 60 0f 00 00 	mov    %edx,0xf60(%ebx,%eax,1)
 11e:	83 ff 3f             	cmp    $0x3f,%edi
 121:	0f 87 a3 02 00 00    	ja     3ca <jpeg_decode+0x3ca>
 127:	80 e1 0c             	and    $0xc,%cl
 12a:	0f 85 9a 02 00 00    	jne    3ca <jpeg_decode+0x3ca>
 130:	83 c0 0c             	add    $0xc,%eax
 133:	83 fa 03             	cmp    $0x3,%edx
 136:	7e 9e                	jle    d6 <jpeg_decode+0xd6>
 138:	be 08 00 00 00       	mov    $0x8,%esi
 13d:	e9 94 02 00 00       	jmp    3d6 <jpeg_decode+0x3d6>
 142:	ba da 00 00 00       	mov    $0xda,%edx
 147:	89 d8                	mov    %ebx,%eax
 149:	e8 fc ff ff ff       	call   14a <jpeg_decode+0x14a>
 14e:	89 c6                	mov    %eax,%esi
 150:	85 c0                	test   %eax,%eax
 152:	0f 85 f8 fe ff ff    	jne    50 <jpeg_decode+0x50>
 158:	89 d8                	mov    %ebx,%eax
 15a:	e8 fc ff ff ff       	call   15b <jpeg_decode+0x15b>
 15f:	8b 83 40 0f 00 00    	mov    0xf40(%ebx),%eax
 165:	8d 50 01             	lea    0x1(%eax),%edx
 168:	89 93 40 0f 00 00    	mov    %edx,0xf40(%ebx)
 16e:	0f b6 00             	movzbl (%eax),%eax
 171:	89 83 48 0f 00 00    	mov    %eax,0xf48(%ebx)
 177:	83 f8 03             	cmp    $0x3,%eax
 17a:	74 0a                	je     186 <jpeg_decode+0x186>
 17c:	be 09 00 00 00       	mov    $0x9,%esi
 181:	e9 50 02 00 00       	jmp    3d6 <jpeg_decode+0x3d6>
 186:	8d 83 8c 0f 00 00    	lea    0xf8c(%ebx),%eax
 18c:	89 04 24             	mov    %eax,(%esp)
 18f:	8d 83 e0 0f 00 00    	lea    0xfe0(%ebx),%eax
 195:	89 44 24 0c          	mov    %eax,0xc(%esp)
 199:	8b 83 40 0f 00 00    	mov    0xf40(%ebx),%eax
 19f:	8d 50 01             	lea    0x1(%eax),%edx
 1a2:	89 93 40 0f 00 00    	mov    %edx,0xf40(%ebx)
 1a8:	0f b6 38             	movzbl (%eax),%edi
 1ab:	8b 0c 24             	mov    (%esp),%ecx
 1ae:	89 79 0c             	mov    %edi,0xc(%ecx)
 1b1:	8d 50 02             	lea    0x2(%eax),%edx
 1b4:	89 93 40 0f 00 00    	mov    %edx,0xf40(%ebx)
 1ba:	0f b6 68 01          	movzbl 0x1(%eax),%ebp
 1be:	89 ea                	mov    %ebp,%edx
 1c0:	89 e9                	mov    %ebp,%ecx
 1c2:	83 e1 0f             	and    $0xf,%ecx
 1c5:	88 4c 24 0b          	mov    %cl,0xb(%esp)
 1c9:	c1 fd 04             	sar    $0x4,%ebp
 1cc:	80 e2 0e             	and    $0xe,%dl
 1cf:	0f 85 63 ff ff ff    	jne    138 <jpeg_decode+0x138>
 1d5:	83 fd 01             	cmp    $0x1,%ebp
 1d8:	0f 8f 5a ff ff ff    	jg     138 <jpeg_decode+0x138>
 1de:	8b 8b 44 0f 00 00    	mov    0xf44(%ebx),%ecx
 1e4:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 1e8:	31 d2                	xor    %edx,%edx
 1ea:	39 54 24 04          	cmp    %edx,0x4(%esp)
 1ee:	7e 65                	jle    255 <jpeg_decode+0x255>
 1f0:	6b ca 0c             	imul   $0xc,%edx,%ecx
 1f3:	39 bc 0b 58 0f 00 00 	cmp    %edi,0xf58(%ebx,%ecx,1)
 1fa:	75 56                	jne    252 <jpeg_decode+0x252>
 1fc:	6b d2 0c             	imul   $0xc,%edx,%edx
 1ff:	01 da                	add    %ebx,%edx
 201:	8b ba 5c 0f 00 00    	mov    0xf5c(%edx),%edi
 207:	8b 0c 24             	mov    (%esp),%ecx
 20a:	89 79 10             	mov    %edi,0x10(%ecx)
 20d:	8b 92 60 0f 00 00    	mov    0xf60(%edx),%edx
 213:	89 51 14             	mov    %edx,0x14(%ecx)
 216:	69 d5 84 11 00 00    	imul   $0x1184,%ebp,%edx
 21c:	8d 94 13 f8 10 00 00 	lea    0x10f8(%ebx,%edx,1),%edx
 223:	89 11                	mov    %edx,(%ecx)
 225:	8a 54 24 0b          	mov    0xb(%esp),%dl
 229:	83 c2 02             	add    $0x2,%edx
 22c:	0f b6 d2             	movzbl %dl,%edx
 22f:	69 d2 84 11 00 00    	imul   $0x1184,%edx,%edx
 235:	8d 94 13 f8 10 00 00 	lea    0x10f8(%ebx,%edx,1),%edx
 23c:	89 51 04             	mov    %edx,0x4(%ecx)
 23f:	83 04 24 1c          	addl   $0x1c,(%esp)
 243:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
 247:	39 0c 24             	cmp    %ecx,(%esp)
 24a:	0f 85 49 ff ff ff    	jne    199 <jpeg_decode+0x199>
 250:	eb 0f                	jmp    261 <jpeg_decode+0x261>
 252:	42                   	inc    %edx
 253:	eb 95                	jmp    1ea <jpeg_decode+0x1ea>
 255:	75 a5                	jne    1fc <jpeg_decode+0x1fc>
 257:	be 0a 00 00 00       	mov    $0xa,%esi
 25c:	e9 75 01 00 00       	jmp    3d6 <jpeg_decode+0x3d6>
 261:	8d 50 03             	lea    0x3(%eax),%edx
 264:	89 93 40 0f 00 00    	mov    %edx,0xf40(%ebx)
 26a:	8a 48 02             	mov    0x2(%eax),%cl
 26d:	8d 50 04             	lea    0x4(%eax),%edx
 270:	89 93 40 0f 00 00    	mov    %edx,0xf40(%ebx)
 276:	8a 50 03             	mov    0x3(%eax),%dl
 279:	8d 78 05             	lea    0x5(%eax),%edi
 27c:	89 bb 40 0f 00 00    	mov    %edi,0xf40(%ebx)
 282:	0a 48 04             	or     0x4(%eax),%cl
 285:	0f 85 46 01 00 00    	jne    3d1 <jpeg_decode+0x3d1>
 28b:	80 fa 3f             	cmp    $0x3f,%dl
 28e:	0f 85 3d 01 00 00    	jne    3d1 <jpeg_decode+0x3d1>
 294:	83 bb 98 0f 00 00 01 	cmpl   $0x1,0xf98(%ebx)
 29b:	0f 85 db fe ff ff    	jne    17c <jpeg_decode+0x17c>
 2a1:	83 bb b4 0f 00 00 02 	cmpl   $0x2,0xfb4(%ebx)
 2a8:	0f 85 ce fe ff ff    	jne    17c <jpeg_decode+0x17c>
 2ae:	83 bb d0 0f 00 00 03 	cmpl   $0x3,0xfd0(%ebx)
 2b5:	0f 85 c1 fe ff ff    	jne    17c <jpeg_decode+0x17c>
 2bb:	83 bb 9c 0f 00 00 22 	cmpl   $0x22,0xf9c(%ebx)
 2c2:	0f 85 b4 fe ff ff    	jne    17c <jpeg_decode+0x17c>
 2c8:	83 bb b8 0f 00 00 11 	cmpl   $0x11,0xfb8(%ebx)
 2cf:	0f 85 a7 fe ff ff    	jne    17c <jpeg_decode+0x17c>
 2d5:	83 bb d4 0f 00 00 11 	cmpl   $0x11,0xfd4(%ebx)
 2dc:	0f 85 9a fe ff ff    	jne    17c <jpeg_decode+0x17c>
 2e2:	8d 93 40 0c 00 00    	lea    0xc40(%ebx),%edx
 2e8:	8b 83 a0 0f 00 00    	mov    0xfa0(%ebx),%eax
 2ee:	c1 e0 06             	shl    $0x6,%eax
 2f1:	8d 84 03 f8 0f 00 00 	lea    0xff8(%ebx,%eax,1),%eax
 2f8:	e8 fc ff ff ff       	call   2f9 <jpeg_decode+0x2f9>
 2fd:	8d 93 40 0d 00 00    	lea    0xd40(%ebx),%edx
 303:	8b 83 bc 0f 00 00    	mov    0xfbc(%ebx),%eax
 309:	c1 e0 06             	shl    $0x6,%eax
 30c:	8d 84 03 f8 0f 00 00 	lea    0xff8(%ebx,%eax,1),%eax
 313:	e8 fc ff ff ff       	call   314 <jpeg_decode+0x314>
 318:	8d 93 40 0e 00 00    	lea    0xe40(%ebx),%edx
 31e:	8b 83 d8 0f 00 00    	mov    0xfd8(%ebx),%eax
 324:	c1 e0 06             	shl    $0x6,%eax
 327:	8d 84 03 f8 0f 00 00 	lea    0xff8(%ebx,%eax,1),%eax
 32e:	e8 fc ff ff ff       	call   32f <jpeg_decode+0x32f>
 333:	31 c0                	xor    %eax,%eax
 335:	69 94 83 40 0d 00 00 	imul   $0xe2d,0xd40(%ebx,%eax,4),%edx
 33c:	2d 0e 00 00 
 340:	c1 fa 0b             	sar    $0xb,%edx
 343:	89 94 83 40 0d 00 00 	mov    %edx,0xd40(%ebx,%eax,4)
 34a:	40                   	inc    %eax
 34b:	83 f8 40             	cmp    $0x40,%eax
 34e:	75 e5                	jne    335 <jpeg_decode+0x335>
 350:	31 c0                	xor    %eax,%eax
 352:	69 94 83 40 0e 00 00 	imul   $0xb37,0xe40(%ebx,%eax,4),%edx
 359:	37 0b 00 00 
 35d:	c1 fa 0b             	sar    $0xb,%edx
 360:	89 94 83 40 0e 00 00 	mov    %edx,0xe40(%ebx,%eax,4)
 367:	40                   	inc    %eax
 368:	83 f8 40             	cmp    $0x40,%eax
 36b:	75 e5                	jne    352 <jpeg_decode+0x352>
 36d:	89 bb 08 57 00 00    	mov    %edi,0x5708(%ebx)
 373:	c7 83 10 57 00 00 00 	movl   $0x0,0x5710(%ebx)
 37a:	00 00 00 
 37d:	c7 83 0c 57 00 00 00 	movl   $0x0,0x570c(%ebx)
 384:	00 00 00 
 387:	c7 83 14 57 00 00 00 	movl   $0x0,0x5714(%ebx)
 38e:	00 00 00 
 391:	8b 83 4c 0f 00 00    	mov    0xf4c(%ebx),%eax
 397:	40                   	inc    %eax
 398:	89 83 50 0f 00 00    	mov    %eax,0xf50(%ebx)
 39e:	c7 83 54 0f 00 00 d0 	movl   $0xd0,0xf54(%ebx)
 3a5:	00 00 00 
 3a8:	8b 93 48 0f 00 00    	mov    0xf48(%ebx),%edx
 3ae:	31 c0                	xor    %eax,%eax
 3b0:	39 d0                	cmp    %edx,%eax
 3b2:	7d 22                	jge    3d6 <jpeg_decode+0x3d6>
 3b4:	6b c8 1c             	imul   $0x1c,%eax,%ecx
 3b7:	c7 84 0b 88 0f 00 00 	movl   $0x0,0xf88(%ebx,%ecx,1)
 3be:	00 00 00 00 
 3c2:	40                   	inc    %eax
 3c3:	eb eb                	jmp    3b0 <jpeg_decode+0x3b0>
 3c5:	83 ce ff             	or     $0xffffffff,%esi
 3c8:	eb 0c                	jmp    3d6 <jpeg_decode+0x3d6>
 3ca:	be 07 00 00 00       	mov    $0x7,%esi
 3cf:	eb 05                	jmp    3d6 <jpeg_decode+0x3d6>
 3d1:	be 0b 00 00 00       	mov    $0xb,%esi
 3d6:	89 f0                	mov    %esi,%eax
 3d8:	83 c4 10             	add    $0x10,%esp
 3db:	5b                   	pop    %ebx
 3dc:	5e                   	pop    %esi
 3dd:	5f                   	pop    %edi
 3de:	5d                   	pop    %ebp
 3df:	c3                   	ret    

Disassembly of section .text.jpeg_get_size:

00000000 <jpeg_get_size>:
   0:	53                   	push   %ebx
   1:	8b 98 24 57 00 00    	mov    0x5724(%eax),%ebx
   7:	89 1a                	mov    %ebx,(%edx)
   9:	8b 80 20 57 00 00    	mov    0x5720(%eax),%eax
   f:	89 01                	mov    %eax,(%ecx)
  11:	5b                   	pop    %ebx
  12:	c3                   	ret    

Disassembly of section .text.jpeg_show:

00000000 <jpeg_show>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	81 ec 88 00 00 00    	sub    $0x88,%esp
   a:	89 c3                	mov    %eax,%ebx
   c:	89 d6                	mov    %edx,%esi
   e:	8b bc 24 a4 00 00 00 	mov    0xa4(%esp),%edi
  15:	8b 90 20 57 00 00    	mov    0x5720(%eax),%edx
  1b:	3b 94 24 9c 00 00 00 	cmp    0x9c(%esp),%edx
  22:	0f 85 ad 0c 00 00    	jne    cd5 <jpeg_show+0xcd5>
  28:	89 c8                	mov    %ecx,%eax
  2a:	b9 04 00 00 00       	mov    $0x4,%ecx
  2f:	39 83 24 57 00 00    	cmp    %eax,0x5724(%ebx)
  35:	0f 85 a6 0c 00 00    	jne    ce1 <jpeg_show+0xce1>
  3b:	89 c1                	mov    %eax,%ecx
  3d:	c1 f9 04             	sar    $0x4,%ecx
  40:	89 4c 24 58          	mov    %ecx,0x58(%esp)
  44:	c1 fa 04             	sar    $0x4,%edx
  47:	89 54 24 5c          	mov    %edx,0x5c(%esp)
  4b:	c7 83 94 0f 00 00 02 	movl   $0x2,0xf94(%ebx)
  52:	00 00 00 
  55:	c7 83 b0 0f 00 00 01 	movl   $0x1,0xfb0(%ebx)
  5c:	00 00 00 
  5f:	c7 83 cc 0f 00 00 00 	movl   $0x0,0xfcc(%ebx)
  66:	00 00 00 
  69:	0f af 84 24 a0 00 00 	imul   0xa0(%esp),%eax
  70:	00 
  71:	b9 08 00 00 00       	mov    $0x8,%ecx
  76:	99                   	cltd   
  77:	f7 f9                	idiv   %ecx
  79:	89 44 24 08          	mov    %eax,0x8(%esp)
  7d:	39 f8                	cmp    %edi,%eax
  7f:	7d 04                	jge    85 <jpeg_show+0x85>
  81:	89 7c 24 08          	mov    %edi,0x8(%esp)
  85:	8b 44 24 08          	mov    0x8(%esp),%eax
  89:	01 c0                	add    %eax,%eax
  8b:	89 44 24 1c          	mov    %eax,0x1c(%esp)
  8f:	8b 44 24 08          	mov    0x8(%esp),%eax
  93:	c1 e0 04             	shl    $0x4,%eax
  96:	89 44 24 60          	mov    %eax,0x60(%esp)
  9a:	89 74 24 2c          	mov    %esi,0x2c(%esp)
  9e:	8b 44 24 08          	mov    0x8(%esp),%eax
  a2:	c1 e0 03             	shl    $0x3,%eax
  a5:	89 44 24 18          	mov    %eax,0x18(%esp)
  a9:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%esp)
  b0:	00 
  b1:	8b 74 24 5c          	mov    0x5c(%esp),%esi
  b5:	39 74 24 44          	cmp    %esi,0x44(%esp)
  b9:	0f 8d c9 0b 00 00    	jge    c88 <jpeg_show+0xc88>
  bf:	8b 44 24 2c          	mov    0x2c(%esp),%eax
  c3:	89 44 24 34          	mov    %eax,0x34(%esp)
  c7:	89 44 24 38          	mov    %eax,0x38(%esp)
  cb:	89 44 24 3c          	mov    %eax,0x3c(%esp)
  cf:	c7 44 24 40 00 00 00 	movl   $0x0,0x40(%esp)
  d6:	00 
  d7:	8d 83 08 57 00 00    	lea    0x5708(%ebx),%eax
  dd:	89 44 24 04          	mov    %eax,0x4(%esp)
  e1:	8b 74 24 58          	mov    0x58(%esp),%esi
  e5:	39 74 24 40          	cmp    %esi,0x40(%esp)
  e9:	0f 8d 88 0b 00 00    	jge    c77 <jpeg_show+0xc77>
  ef:	83 bb 4c 0f 00 00 00 	cmpl   $0x0,0xf4c(%ebx)
  f6:	75 32                	jne    12a <jpeg_show+0x12a>
  f8:	8d 83 88 0f 00 00    	lea    0xf88(%ebx),%eax
  fe:	89 04 24             	mov    %eax,(%esp)
 101:	b9 00 06 00 00       	mov    $0x600,%ecx
 106:	31 d2                	xor    %edx,%edx
 108:	89 d8                	mov    %ebx,%eax
 10a:	e8 fc ff ff ff       	call   10b <jpeg_show+0x10b>
 10f:	8b 93 10 57 00 00    	mov    0x5710(%ebx),%edx
 115:	8b b3 0c 57 00 00    	mov    0x570c(%ebx),%esi
 11b:	89 df                	mov    %ebx,%edi
 11d:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
 124:	00 
 125:	e9 93 01 00 00       	jmp    2bd <jpeg_show+0x2bd>
 12a:	8b 83 50 0f 00 00    	mov    0xf50(%ebx),%eax
 130:	8d 70 ff             	lea    -0x1(%eax),%esi
 133:	89 b3 50 0f 00 00    	mov    %esi,0xf50(%ebx)
 139:	85 f6                	test   %esi,%esi
 13b:	75 bb                	jne    f8 <jpeg_show+0xf8>
 13d:	8b 8b 0c 57 00 00    	mov    0x570c(%ebx),%ecx
 143:	8b 93 10 57 00 00    	mov    0x5710(%ebx),%edx
 149:	8b 44 24 04          	mov    0x4(%esp),%eax
 14d:	e8 fc ff ff ff       	call   14e <jpeg_show+0x14e>
 152:	89 83 10 57 00 00    	mov    %eax,0x5710(%ebx)
 158:	8b 83 14 57 00 00    	mov    0x5714(%ebx),%eax
 15e:	85 c0                	test   %eax,%eax
 160:	74 14                	je     176 <jpeg_show+0x176>
 162:	c7 83 10 57 00 00 00 	movl   $0x0,0x5710(%ebx)
 169:	00 00 00 
 16c:	c7 83 14 57 00 00 00 	movl   $0x0,0x5714(%ebx)
 173:	00 00 00 
 176:	39 83 54 0f 00 00    	cmp    %eax,0xf54(%ebx)
 17c:	0f 85 5a 0b 00 00    	jne    cdc <jpeg_show+0xcdc>
 182:	8b 93 4c 0f 00 00    	mov    0xf4c(%ebx),%edx
 188:	89 93 50 0f 00 00    	mov    %edx,0xf50(%ebx)
 18e:	40                   	inc    %eax
 18f:	83 e0 f7             	and    $0xfffffff7,%eax
 192:	89 83 54 0f 00 00    	mov    %eax,0xf54(%ebx)
 198:	8b 83 48 0f 00 00    	mov    0xf48(%ebx),%eax
 19e:	39 c6                	cmp    %eax,%esi
 1a0:	0f 8d 52 ff ff ff    	jge    f8 <jpeg_show+0xf8>
 1a6:	6b d6 1c             	imul   $0x1c,%esi,%edx
 1a9:	c7 84 13 88 0f 00 00 	movl   $0x0,0xf88(%ebx,%edx,1)
 1b0:	00 00 00 00 
 1b4:	46                   	inc    %esi
 1b5:	eb e7                	jmp    19e <jpeg_show+0x19e>
 1b7:	8b 04 24             	mov    (%esp),%eax
 1ba:	8b 40 04             	mov    0x4(%eax),%eax
 1bd:	89 44 24 0c          	mov    %eax,0xc(%esp)
 1c1:	83 fa 09             	cmp    $0x9,%edx
 1c4:	7f 13                	jg     1d9 <jpeg_show+0x1d9>
 1c6:	89 f1                	mov    %esi,%ecx
 1c8:	8b 44 24 04          	mov    0x4(%esp),%eax
 1cc:	e8 fc ff ff ff       	call   1cd <jpeg_show+0x1cd>
 1d1:	89 c2                	mov    %eax,%edx
 1d3:	8b b3 0c 57 00 00    	mov    0x570c(%ebx),%esi
 1d9:	8d 4a f6             	lea    -0xa(%edx),%ecx
 1dc:	89 f5                	mov    %esi,%ebp
 1de:	d3 fd                	sar    %cl,%ebp
 1e0:	81 e5 ff 03 00 00    	and    $0x3ff,%ebp
 1e6:	89 6c 24 6c          	mov    %ebp,0x6c(%esp)
 1ea:	8b 44 24 0c          	mov    0xc(%esp),%eax
 1ee:	8b 84 a8 84 01 00 00 	mov    0x184(%eax,%ebp,4),%eax
 1f5:	a8 80                	test   $0x80,%al
 1f7:	0f 84 d0 00 00 00    	je     2cd <jpeg_show+0x2cd>
 1fd:	89 c2                	mov    %eax,%edx
 1ff:	83 e2 7f             	and    $0x7f,%edx
 202:	01 ca                	add    %ecx,%edx
 204:	89 c1                	mov    %eax,%ecx
 206:	c1 f9 08             	sar    $0x8,%ecx
 209:	83 e1 0f             	and    $0xf,%ecx
 20c:	89 4c 24 6c          	mov    %ecx,0x6c(%esp)
 210:	c1 f8 10             	sar    $0x10,%eax
 213:	8b 0c 24             	mov    (%esp),%ecx
 216:	03 01                	add    (%ecx),%eax
 218:	89 01                	mov    %eax,(%ecx)
 21a:	89 07                	mov    %eax,(%edi)
 21c:	8b 41 08             	mov    0x8(%ecx),%eax
 21f:	89 44 24 14          	mov    %eax,0x14(%esp)
 223:	83 c7 04             	add    $0x4,%edi
 226:	c7 44 24 0c 3f 00 00 	movl   $0x3f,0xc(%esp)
 22d:	00 
 22e:	83 fa 09             	cmp    $0x9,%edx
 231:	7f 13                	jg     246 <jpeg_show+0x246>
 233:	89 f1                	mov    %esi,%ecx
 235:	8b 44 24 04          	mov    0x4(%esp),%eax
 239:	e8 fc ff ff ff       	call   23a <jpeg_show+0x23a>
 23e:	89 c2                	mov    %eax,%edx
 240:	8b b3 0c 57 00 00    	mov    0x570c(%ebx),%esi
 246:	8d 4a f6             	lea    -0xa(%edx),%ecx
 249:	89 f5                	mov    %esi,%ebp
 24b:	d3 fd                	sar    %cl,%ebp
 24d:	81 e5 ff 03 00 00    	and    $0x3ff,%ebp
 253:	89 6c 24 6c          	mov    %ebp,0x6c(%esp)
 257:	8b 44 24 14          	mov    0x14(%esp),%eax
 25b:	8b 84 a8 84 01 00 00 	mov    0x184(%eax,%ebp,4),%eax
 262:	a8 80                	test   $0x80,%al
 264:	0f 84 95 00 00 00    	je     2ff <jpeg_show+0x2ff>
 26a:	89 c2                	mov    %eax,%edx
 26c:	83 e2 7f             	and    $0x7f,%edx
 26f:	01 ca                	add    %ecx,%edx
 271:	89 c1                	mov    %eax,%ecx
 273:	c1 f9 08             	sar    $0x8,%ecx
 276:	83 e1 0f             	and    $0xf,%ecx
 279:	89 4c 24 6c          	mov    %ecx,0x6c(%esp)
 27d:	c1 f8 10             	sar    $0x10,%eax
 280:	8b 4c 24 6c          	mov    0x6c(%esp),%ecx
 284:	89 c5                	mov    %eax,%ebp
 286:	09 cd                	or     %ecx,%ebp
 288:	0f 85 a3 00 00 00    	jne    331 <jpeg_show+0x331>
 28e:	8b 44 24 0c          	mov    0xc(%esp),%eax
 292:	8d 3c 87             	lea    (%edi,%eax,4),%edi
 295:	b8 40 00 00 00       	mov    $0x40,%eax
 29a:	2b 44 24 0c          	sub    0xc(%esp),%eax
 29e:	8b 4c 24 10          	mov    0x10(%esp),%ecx
 2a2:	89 44 8c 70          	mov    %eax,0x70(%esp,%ecx,4)
 2a6:	b8 05 00 00 00       	mov    $0x5,%eax
 2ab:	29 c8                	sub    %ecx,%eax
 2ad:	8b 0c 24             	mov    (%esp),%ecx
 2b0:	39 41 0c             	cmp    %eax,0xc(%ecx)
 2b3:	75 04                	jne    2b9 <jpeg_show+0x2b9>
 2b5:	83 04 24 1c          	addl   $0x1c,(%esp)
 2b9:	ff 44 24 10          	incl   0x10(%esp)
 2bd:	83 7c 24 10 06       	cmpl   $0x6,0x10(%esp)
 2c2:	0f 85 ef fe ff ff    	jne    1b7 <jpeg_show+0x1b7>
 2c8:	e9 82 00 00 00       	jmp    34f <jpeg_show+0x34f>
 2cd:	89 8b 10 57 00 00    	mov    %ecx,0x5710(%ebx)
 2d3:	89 b3 0c 57 00 00    	mov    %esi,0x570c(%ebx)
 2d9:	50                   	push   %eax
 2da:	55                   	push   %ebp
 2db:	8d 4c 24 74          	lea    0x74(%esp),%ecx
 2df:	8b 54 24 14          	mov    0x14(%esp),%edx
 2e3:	8b 44 24 0c          	mov    0xc(%esp),%eax
 2e7:	e8 fc ff ff ff       	call   2e8 <jpeg_show+0x2e8>
 2ec:	8b 93 10 57 00 00    	mov    0x5710(%ebx),%edx
 2f2:	8b b3 0c 57 00 00    	mov    0x570c(%ebx),%esi
 2f8:	59                   	pop    %ecx
 2f9:	5d                   	pop    %ebp
 2fa:	e9 14 ff ff ff       	jmp    213 <jpeg_show+0x213>
 2ff:	89 8b 10 57 00 00    	mov    %ecx,0x5710(%ebx)
 305:	89 b3 0c 57 00 00    	mov    %esi,0x570c(%ebx)
 30b:	50                   	push   %eax
 30c:	55                   	push   %ebp
 30d:	8d 4c 24 74          	lea    0x74(%esp),%ecx
 311:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 315:	8b 44 24 0c          	mov    0xc(%esp),%eax
 319:	e8 fc ff ff ff       	call   31a <jpeg_show+0x31a>
 31e:	8b 93 10 57 00 00    	mov    0x5710(%ebx),%edx
 324:	8b b3 0c 57 00 00    	mov    0x570c(%ebx),%esi
 32a:	59                   	pop    %ecx
 32b:	5d                   	pop    %ebp
 32c:	e9 4f ff ff ff       	jmp    280 <jpeg_show+0x280>
 331:	8d 2c 8f             	lea    (%edi,%ecx,4),%ebp
 334:	8d 7d 04             	lea    0x4(%ebp),%edi
 337:	89 45 00             	mov    %eax,0x0(%ebp)
 33a:	41                   	inc    %ecx
 33b:	29 4c 24 0c          	sub    %ecx,0xc(%esp)
 33f:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%esp)
 344:	0f 8f e4 fe ff ff    	jg     22e <jpeg_show+0x22e>
 34a:	e9 46 ff ff ff       	jmp    295 <jpeg_show+0x295>
 34f:	89 93 10 57 00 00    	mov    %edx,0x5710(%ebx)
 355:	89 b3 0c 57 00 00    	mov    %esi,0x570c(%ebx)
 35b:	8d b3 40 0c 00 00    	lea    0xc40(%ebx),%esi
 361:	8d 83 40 06 00 00    	lea    0x640(%ebx),%eax
 367:	89 04 24             	mov    %eax,(%esp)
 36a:	ff 74 24 70          	push   0x70(%esp)
 36e:	68 00 04 04 00       	push   $0x40400
 373:	89 f1                	mov    %esi,%ecx
 375:	89 c2                	mov    %eax,%edx
 377:	89 d8                	mov    %ebx,%eax
 379:	e8 fc ff ff ff       	call   37a <jpeg_show+0x37a>
 37e:	8d 93 40 07 00 00    	lea    0x740(%ebx),%edx
 384:	8d 83 00 01 00 00    	lea    0x100(%ebx),%eax
 38a:	ff 74 24 7c          	push   0x7c(%esp)
 38e:	68 00 04 04 00       	push   $0x40400
 393:	89 f1                	mov    %esi,%ecx
 395:	e8 fc ff ff ff       	call   396 <jpeg_show+0x396>
 39a:	8d 93 40 08 00 00    	lea    0x840(%ebx),%edx
 3a0:	8d 83 00 02 00 00    	lea    0x200(%ebx),%eax
 3a6:	ff b4 24 88 00 00 00 	push   0x88(%esp)
 3ad:	68 00 04 04 00       	push   $0x40400
 3b2:	89 f1                	mov    %esi,%ecx
 3b4:	e8 fc ff ff ff       	call   3b5 <jpeg_show+0x3b5>
 3b9:	8d 93 40 09 00 00    	lea    0x940(%ebx),%edx
 3bf:	8d 83 00 03 00 00    	lea    0x300(%ebx),%eax
 3c5:	ff b4 24 94 00 00 00 	push   0x94(%esp)
 3cc:	68 00 04 04 00       	push   $0x40400
 3d1:	89 f1                	mov    %esi,%ecx
 3d3:	e8 fc ff ff ff       	call   3d4 <jpeg_show+0x3d4>
 3d8:	8d 83 40 0a 00 00    	lea    0xa40(%ebx),%eax
 3de:	89 44 24 24          	mov    %eax,0x24(%esp)
 3e2:	83 c4 20             	add    $0x20,%esp
 3e5:	8d 8b 40 0d 00 00    	lea    0xd40(%ebx),%ecx
 3eb:	8d 83 00 04 00 00    	lea    0x400(%ebx),%eax
 3f1:	ff b4 24 80 00 00 00 	push   0x80(%esp)
 3f8:	68 00 04 00 00       	push   $0x400
 3fd:	8b 54 24 0c          	mov    0xc(%esp),%edx
 401:	e8 fc ff ff ff       	call   402 <jpeg_show+0x402>
 406:	8d 8b 40 0e 00 00    	lea    0xe40(%ebx),%ecx
 40c:	8d 93 40 0b 00 00    	lea    0xb40(%ebx),%edx
 412:	8d 83 00 05 00 00    	lea    0x500(%ebx),%eax
 418:	ff b4 24 8c 00 00 00 	push   0x8c(%esp)
 41f:	68 00 04 00 00       	push   $0x400
 424:	e8 fc ff ff ff       	call   425 <jpeg_show+0x425>
 429:	83 c4 10             	add    $0x10,%esp
 42c:	83 bc 24 a0 00 00 00 	cmpl   $0x18,0xa0(%esp)
 433:	18 
 434:	0f 84 b3 02 00 00    	je     6ed <jpeg_show+0x6ed>
 43a:	83 bc 24 a0 00 00 00 	cmpl   $0x20,0xa0(%esp)
 441:	20 
 442:	74 18                	je     45c <jpeg_show+0x45c>
 444:	83 bc 24 a0 00 00 00 	cmpl   $0x10,0xa0(%esp)
 44b:	10 
 44c:	0f 84 1c 05 00 00    	je     96e <jpeg_show+0x96e>
 452:	b9 0f 00 00 00       	mov    $0xf,%ecx
 457:	e9 85 08 00 00       	jmp    ce1 <jpeg_show+0xce1>
 45c:	8b 44 24 34          	mov    0x34(%esp),%eax
 460:	89 44 24 50          	mov    %eax,0x50(%esp)
 464:	8b 44 24 08          	mov    0x8(%esp),%eax
 468:	03 44 24 34          	add    0x34(%esp),%eax
 46c:	89 44 24 54          	mov    %eax,0x54(%esp)
 470:	8b 44 24 04          	mov    0x4(%esp),%eax
 474:	89 44 24 64          	mov    %eax,0x64(%esp)
 478:	8b 44 24 54          	mov    0x54(%esp),%eax
 47c:	89 44 24 4c          	mov    %eax,0x4c(%esp)
 480:	8b 44 24 50          	mov    0x50(%esp),%eax
 484:	89 44 24 48          	mov    %eax,0x48(%esp)
 488:	8b 04 24             	mov    (%esp),%eax
 48b:	89 44 24 14          	mov    %eax,0x14(%esp)
 48f:	8b 44 24 04          	mov    0x4(%esp),%eax
 493:	89 44 24 20          	mov    %eax,0x20(%esp)
 497:	8b 04 24             	mov    (%esp),%eax
 49a:	05 00 01 00 00       	add    $0x100,%eax
 49f:	89 44 24 68          	mov    %eax,0x68(%esp)
 4a3:	8b 54 24 4c          	mov    0x4c(%esp),%edx
 4a7:	8b 44 24 48          	mov    0x48(%esp),%eax
 4ab:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
 4b2:	00 
 4b3:	8b 74 24 20          	mov    0x20(%esp),%esi
 4b7:	8b 7c 24 10          	mov    0x10(%esp),%edi
 4bb:	8b 2c be             	mov    (%esi,%edi,4),%ebp
 4be:	8b b4 be 00 01 00 00 	mov    0x100(%esi,%edi,4),%esi
 4c5:	6b fd 32             	imul   $0x32,%ebp,%edi
 4c8:	69 ce 82 00 00 00    	imul   $0x82,%esi,%ecx
 4ce:	8d 8c 0f 80 00 00 00 	lea    0x80(%edi,%ecx,1),%ecx
 4d5:	c1 f9 08             	sar    $0x8,%ecx
 4d8:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
 4dc:	8b 7c 24 10          	mov    0x10(%esp),%edi
 4e0:	c1 ff 02             	sar    $0x2,%edi
 4e3:	89 7c 24 24          	mov    %edi,0x24(%esp)
 4e7:	8b 7c 24 10          	mov    0x10(%esp),%edi
 4eb:	83 e7 03             	and    $0x3,%edi
 4ee:	89 7c 24 28          	mov    %edi,0x28(%esp)
 4f2:	8b 4c 24 24          	mov    0x24(%esp),%ecx
 4f6:	c1 e1 05             	shl    $0x5,%ecx
 4f9:	01 f9                	add    %edi,%ecx
 4fb:	89 4c 24 30          	mov    %ecx,0x30(%esp)
 4ff:	8b 7c 24 14          	mov    0x14(%esp),%edi
 503:	8b 3c cf             	mov    (%edi,%ecx,8),%edi
 506:	8d 0c 3e             	lea    (%esi,%edi,1),%ecx
 509:	81 f9 ff 00 00 00    	cmp    $0xff,%ecx
 50f:	77 05                	ja     516 <jpeg_show+0x516>
 511:	8d 0c 3e             	lea    (%esi,%edi,1),%ecx
 514:	eb 05                	jmp    51b <jpeg_show+0x51b>
 516:	f7 d1                	not    %ecx
 518:	c1 f9 1f             	sar    $0x1f,%ecx
 51b:	88 08                	mov    %cl,(%eax)
 51d:	89 f9                	mov    %edi,%ecx
 51f:	2b 4c 24 0c          	sub    0xc(%esp),%ecx
 523:	81 f9 ff 00 00 00    	cmp    $0xff,%ecx
 529:	77 08                	ja     533 <jpeg_show+0x533>
 52b:	89 f9                	mov    %edi,%ecx
 52d:	2b 4c 24 0c          	sub    0xc(%esp),%ecx
 531:	eb 05                	jmp    538 <jpeg_show+0x538>
 533:	f7 d1                	not    %ecx
 535:	c1 f9 1f             	sar    $0x1f,%ecx
 538:	88 48 01             	mov    %cl,0x1(%eax)
 53b:	8d 4c 3d 00          	lea    0x0(%ebp,%edi,1),%ecx
 53f:	81 f9 ff 00 00 00    	cmp    $0xff,%ecx
 545:	77 06                	ja     54d <jpeg_show+0x54d>
 547:	8d 4c 3d 00          	lea    0x0(%ebp,%edi,1),%ecx
 54b:	eb 05                	jmp    552 <jpeg_show+0x552>
 54d:	f7 d1                	not    %ecx
 54f:	c1 f9 1f             	sar    $0x1f,%ecx
 552:	88 48 02             	mov    %cl,0x2(%eax)
 555:	c6 40 03 00          	movb   $0x0,0x3(%eax)
 559:	8b 7c 24 14          	mov    0x14(%esp),%edi
 55d:	8b 4c 24 30          	mov    0x30(%esp),%ecx
 561:	8b 7c cf 04          	mov    0x4(%edi,%ecx,8),%edi
 565:	8d 0c 3e             	lea    (%esi,%edi,1),%ecx
 568:	81 f9 ff 00 00 00    	cmp    $0xff,%ecx
 56e:	77 05                	ja     575 <jpeg_show+0x575>
 570:	8d 0c 37             	lea    (%edi,%esi,1),%ecx
 573:	eb 05                	jmp    57a <jpeg_show+0x57a>
 575:	f7 d1                	not    %ecx
 577:	c1 f9 1f             	sar    $0x1f,%ecx
 57a:	88 48 04             	mov    %cl,0x4(%eax)
 57d:	89 f9                	mov    %edi,%ecx
 57f:	2b 4c 24 0c          	sub    0xc(%esp),%ecx
 583:	81 f9 ff 00 00 00    	cmp    $0xff,%ecx
 589:	77 08                	ja     593 <jpeg_show+0x593>
 58b:	89 f9                	mov    %edi,%ecx
 58d:	2b 4c 24 0c          	sub    0xc(%esp),%ecx
 591:	eb 05                	jmp    598 <jpeg_show+0x598>
 593:	f7 d1                	not    %ecx
 595:	c1 f9 1f             	sar    $0x1f,%ecx
 598:	88 48 05             	mov    %cl,0x5(%eax)
 59b:	8d 4c 3d 00          	lea    0x0(%ebp,%edi,1),%ecx
 59f:	81 f9 ff 00 00 00    	cmp    $0xff,%ecx
 5a5:	77 05                	ja     5ac <jpeg_show+0x5ac>
 5a7:	8d 0c 2f             	lea    (%edi,%ebp,1),%ecx
 5aa:	eb 05                	jmp    5b1 <jpeg_show+0x5b1>
 5ac:	f7 d1                	not    %ecx
 5ae:	c1 f9 1f             	sar    $0x1f,%ecx
 5b1:	88 48 06             	mov    %cl,0x6(%eax)
 5b4:	c6 40 07 00          	movb   $0x0,0x7(%eax)
 5b8:	8b 7c 24 24          	mov    0x24(%esp),%edi
 5bc:	8d 0c fd 01 00 00 00 	lea    0x1(,%edi,8),%ecx
 5c3:	8b 7c 24 28          	mov    0x28(%esp),%edi
 5c7:	8d 3c 8f             	lea    (%edi,%ecx,4),%edi
 5ca:	89 7c 24 24          	mov    %edi,0x24(%esp)
 5ce:	8b 7c 24 14          	mov    0x14(%esp),%edi
 5d2:	8b 4c 24 24          	mov    0x24(%esp),%ecx
 5d6:	8b 3c cf             	mov    (%edi,%ecx,8),%edi
 5d9:	8d 0c 3e             	lea    (%esi,%edi,1),%ecx
 5dc:	81 f9 ff 00 00 00    	cmp    $0xff,%ecx
 5e2:	77 05                	ja     5e9 <jpeg_show+0x5e9>
 5e4:	8d 0c 37             	lea    (%edi,%esi,1),%ecx
 5e7:	eb 05                	jmp    5ee <jpeg_show+0x5ee>
 5e9:	f7 d1                	not    %ecx
 5eb:	c1 f9 1f             	sar    $0x1f,%ecx
 5ee:	88 0a                	mov    %cl,(%edx)
 5f0:	89 f9                	mov    %edi,%ecx
 5f2:	2b 4c 24 0c          	sub    0xc(%esp),%ecx
 5f6:	81 f9 ff 00 00 00    	cmp    $0xff,%ecx
 5fc:	77 08                	ja     606 <jpeg_show+0x606>
 5fe:	89 f9                	mov    %edi,%ecx
 600:	2b 4c 24 0c          	sub    0xc(%esp),%ecx
 604:	eb 05                	jmp    60b <jpeg_show+0x60b>
 606:	f7 d1                	not    %ecx
 608:	c1 f9 1f             	sar    $0x1f,%ecx
 60b:	88 4a 01             	mov    %cl,0x1(%edx)
 60e:	8d 4c 3d 00          	lea    0x0(%ebp,%edi,1),%ecx
 612:	81 f9 ff 00 00 00    	cmp    $0xff,%ecx
 618:	77 05                	ja     61f <jpeg_show+0x61f>
 61a:	8d 0c 2f             	lea    (%edi,%ebp,1),%ecx
 61d:	eb 05                	jmp    624 <jpeg_show+0x624>
 61f:	f7 d1                	not    %ecx
 621:	c1 f9 1f             	sar    $0x1f,%ecx
 624:	88 4a 02             	mov    %cl,0x2(%edx)
 627:	c6 42 03 00          	movb   $0x0,0x3(%edx)
 62b:	8b 7c 24 14          	mov    0x14(%esp),%edi
 62f:	8b 4c 24 24          	mov    0x24(%esp),%ecx
 633:	8b 7c cf 04          	mov    0x4(%edi,%ecx,8),%edi
 637:	8d 0c 3e             	lea    (%esi,%edi,1),%ecx
 63a:	81 f9 ff 00 00 00    	cmp    $0xff,%ecx
 640:	77 05                	ja     647 <jpeg_show+0x647>
 642:	8d 0c 37             	lea    (%edi,%esi,1),%ecx
 645:	eb 05                	jmp    64c <jpeg_show+0x64c>
 647:	f7 d1                	not    %ecx
 649:	c1 f9 1f             	sar    $0x1f,%ecx
 64c:	88 4a 04             	mov    %cl,0x4(%edx)
 64f:	89 f9                	mov    %edi,%ecx
 651:	2b 4c 24 0c          	sub    0xc(%esp),%ecx
 655:	81 f9 ff 00 00 00    	cmp    $0xff,%ecx
 65b:	77 08                	ja     665 <jpeg_show+0x665>
 65d:	89 f9                	mov    %edi,%ecx
 65f:	2b 4c 24 0c          	sub    0xc(%esp),%ecx
 663:	eb 05                	jmp    66a <jpeg_show+0x66a>
 665:	f7 d1                	not    %ecx
 667:	c1 f9 1f             	sar    $0x1f,%ecx
 66a:	88 4a 05             	mov    %cl,0x5(%edx)
 66d:	8d 4c 3d 00          	lea    0x0(%ebp,%edi,1),%ecx
 671:	81 f9 ff 00 00 00    	cmp    $0xff,%ecx
 677:	77 05                	ja     67e <jpeg_show+0x67e>
 679:	8d 0c 2f             	lea    (%edi,%ebp,1),%ecx
 67c:	eb 05                	jmp    683 <jpeg_show+0x683>
 67e:	f7 d1                	not    %ecx
 680:	c1 f9 1f             	sar    $0x1f,%ecx
 683:	88 4a 06             	mov    %cl,0x6(%edx)
 686:	c6 42 07 00          	movb   $0x0,0x7(%edx)
 68a:	ff 44 24 10          	incl   0x10(%esp)
 68e:	83 c2 08             	add    $0x8,%edx
 691:	83 c0 08             	add    $0x8,%eax
 694:	83 7c 24 10 08       	cmpl   $0x8,0x10(%esp)
 699:	0f 85 14 fe ff ff    	jne    4b3 <jpeg_show+0x4b3>
 69f:	83 44 24 20 20       	addl   $0x20,0x20(%esp)
 6a4:	83 44 24 14 40       	addl   $0x40,0x14(%esp)
 6a9:	8b 74 24 1c          	mov    0x1c(%esp),%esi
 6ad:	01 74 24 48          	add    %esi,0x48(%esp)
 6b1:	01 74 24 4c          	add    %esi,0x4c(%esp)
 6b5:	8b 44 24 14          	mov    0x14(%esp),%eax
 6b9:	3b 44 24 68          	cmp    0x68(%esp),%eax
 6bd:	0f 85 e0 fd ff ff    	jne    4a3 <jpeg_show+0x4a3>
 6c3:	83 6c 24 04 80       	subl   $0xffffff80,0x4(%esp)
 6c8:	8b 74 24 18          	mov    0x18(%esp),%esi
 6cc:	01 74 24 50          	add    %esi,0x50(%esp)
 6d0:	01 74 24 54          	add    %esi,0x54(%esp)
 6d4:	81 04 24 00 02 00 00 	addl   $0x200,(%esp)
 6db:	8b 04 24             	mov    (%esp),%eax
 6de:	3b 44 24 64          	cmp    0x64(%esp),%eax
 6e2:	0f 85 90 fd ff ff    	jne    478 <jpeg_show+0x478>
 6e8:	e9 72 05 00 00       	jmp    c5f <jpeg_show+0xc5f>
 6ed:	8b 44 24 38          	mov    0x38(%esp),%eax
 6f1:	89 44 24 50          	mov    %eax,0x50(%esp)
 6f5:	8b 44 24 08          	mov    0x8(%esp),%eax
 6f9:	03 44 24 38          	add    0x38(%esp),%eax
 6fd:	89 44 24 54          	mov    %eax,0x54(%esp)
 701:	8b 44 24 04          	mov    0x4(%esp),%eax
 705:	89 44 24 64          	mov    %eax,0x64(%esp)
 709:	8b 44 24 54          	mov    0x54(%esp),%eax
 70d:	89 44 24 4c          	mov    %eax,0x4c(%esp)
 711:	8b 44 24 50          	mov    0x50(%esp),%eax
 715:	89 44 24 48          	mov    %eax,0x48(%esp)
 719:	8b 04 24             	mov    (%esp),%eax
 71c:	89 44 24 14          	mov    %eax,0x14(%esp)
 720:	8b 44 24 04          	mov    0x4(%esp),%eax
 724:	89 44 24 20          	mov    %eax,0x20(%esp)
 728:	8b 04 24             	mov    (%esp),%eax
 72b:	05 00 01 00 00       	add    $0x100,%eax
 730:	89 44 24 68          	mov    %eax,0x68(%esp)
 734:	8b 54 24 4c          	mov    0x4c(%esp),%edx
 738:	8b 44 24 48          	mov    0x48(%esp),%eax
 73c:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
 743:	00 
 744:	8b 74 24 20          	mov    0x20(%esp),%esi
 748:	8b 7c 24 10          	mov    0x10(%esp),%edi
 74c:	8b 2c be             	mov    (%esi,%edi,4),%ebp
 74f:	8b b4 be 00 01 00 00 	mov    0x100(%esi,%edi,4),%esi
 756:	6b fd 32             	imul   $0x32,%ebp,%edi
 759:	69 ce 82 00 00 00    	imul   $0x82,%esi,%ecx
 75f:	8d 8c 0f 80 00 00 00 	lea    0x80(%edi,%ecx,1),%ecx
 766:	c1 f9 08             	sar    $0x8,%ecx
 769:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
 76d:	8b 7c 24 10          	mov    0x10(%esp),%edi
 771:	c1 ff 02             	sar    $0x2,%edi
 774:	89 7c 24 24          	mov    %edi,0x24(%esp)
 778:	8b 7c 24 10          	mov    0x10(%esp),%edi
 77c:	83 e7 03             	and    $0x3,%edi
 77f:	89 7c 24 28          	mov    %edi,0x28(%esp)
 783:	8b 4c 24 24          	mov    0x24(%esp),%ecx
 787:	c1 e1 05             	shl    $0x5,%ecx
 78a:	01 f9                	add    %edi,%ecx
 78c:	89 4c 24 30          	mov    %ecx,0x30(%esp)
 790:	8b 7c 24 14          	mov    0x14(%esp),%edi
 794:	8b 3c cf             	mov    (%edi,%ecx,8),%edi
 797:	8d 0c 3e             	lea    (%esi,%edi,1),%ecx
 79a:	81 f9 ff 00 00 00    	cmp    $0xff,%ecx
 7a0:	77 05                	ja     7a7 <jpeg_show+0x7a7>
 7a2:	8d 0c 3e             	lea    (%esi,%edi,1),%ecx
 7a5:	eb 05                	jmp    7ac <jpeg_show+0x7ac>
 7a7:	f7 d1                	not    %ecx
 7a9:	c1 f9 1f             	sar    $0x1f,%ecx
 7ac:	88 48 02             	mov    %cl,0x2(%eax)
 7af:	89 f9                	mov    %edi,%ecx
 7b1:	2b 4c 24 0c          	sub    0xc(%esp),%ecx
 7b5:	81 f9 ff 00 00 00    	cmp    $0xff,%ecx
 7bb:	77 08                	ja     7c5 <jpeg_show+0x7c5>
 7bd:	89 f9                	mov    %edi,%ecx
 7bf:	2b 4c 24 0c          	sub    0xc(%esp),%ecx
 7c3:	eb 05                	jmp    7ca <jpeg_show+0x7ca>
 7c5:	f7 d1                	not    %ecx
 7c7:	c1 f9 1f             	sar    $0x1f,%ecx
 7ca:	88 48 01             	mov    %cl,0x1(%eax)
 7cd:	8d 4c 3d 00          	lea    0x0(%ebp,%edi,1),%ecx
 7d1:	81 f9 ff 00 00 00    	cmp    $0xff,%ecx
 7d7:	77 06                	ja     7df <jpeg_show+0x7df>
 7d9:	8d 4c 3d 00          	lea    0x0(%ebp,%edi,1),%ecx
 7dd:	eb 05                	jmp    7e4 <jpeg_show+0x7e4>
 7df:	f7 d1                	not    %ecx
 7e1:	c1 f9 1f             	sar    $0x1f,%ecx
 7e4:	88 08                	mov    %cl,(%eax)
 7e6:	8b 7c 24 14          	mov    0x14(%esp),%edi
 7ea:	8b 4c 24 30          	mov    0x30(%esp),%ecx
 7ee:	8b 7c cf 04          	mov    0x4(%edi,%ecx,8),%edi
 7f2:	8d 0c 3e             	lea    (%esi,%edi,1),%ecx
 7f5:	81 f9 ff 00 00 00    	cmp    $0xff,%ecx
 7fb:	77 05                	ja     802 <jpeg_show+0x802>
 7fd:	8d 0c 37             	lea    (%edi,%esi,1),%ecx
 800:	eb 05                	jmp    807 <jpeg_show+0x807>
 802:	f7 d1                	not    %ecx
 804:	c1 f9 1f             	sar    $0x1f,%ecx
 807:	88 48 05             	mov    %cl,0x5(%eax)
 80a:	89 f9                	mov    %edi,%ecx
 80c:	2b 4c 24 0c          	sub    0xc(%esp),%ecx
 810:	81 f9 ff 00 00 00    	cmp    $0xff,%ecx
 816:	77 08                	ja     820 <jpeg_show+0x820>
 818:	89 f9                	mov    %edi,%ecx
 81a:	2b 4c 24 0c          	sub    0xc(%esp),%ecx
 81e:	eb 05                	jmp    825 <jpeg_show+0x825>
 820:	f7 d1                	not    %ecx
 822:	c1 f9 1f             	sar    $0x1f,%ecx
 825:	88 48 04             	mov    %cl,0x4(%eax)
 828:	8d 4c 3d 00          	lea    0x0(%ebp,%edi,1),%ecx
 82c:	81 f9 ff 00 00 00    	cmp    $0xff,%ecx
 832:	77 05                	ja     839 <jpeg_show+0x839>
 834:	8d 0c 2f             	lea    (%edi,%ebp,1),%ecx
 837:	eb 05                	jmp    83e <jpeg_show+0x83e>
 839:	f7 d1                	not    %ecx
 83b:	c1 f9 1f             	sar    $0x1f,%ecx
 83e:	88 48 03             	mov    %cl,0x3(%eax)
 841:	8b 7c 24 24          	mov    0x24(%esp),%edi
 845:	8d 0c fd 01 00 00 00 	lea    0x1(,%edi,8),%ecx
 84c:	8b 7c 24 28          	mov    0x28(%esp),%edi
 850:	8d 3c 8f             	lea    (%edi,%ecx,4),%edi
 853:	89 7c 24 24          	mov    %edi,0x24(%esp)
 857:	8b 7c 24 14          	mov    0x14(%esp),%edi
 85b:	8b 4c 24 24          	mov    0x24(%esp),%ecx
 85f:	8b 3c cf             	mov    (%edi,%ecx,8),%edi
 862:	8d 0c 3e             	lea    (%esi,%edi,1),%ecx
 865:	81 f9 ff 00 00 00    	cmp    $0xff,%ecx
 86b:	77 05                	ja     872 <jpeg_show+0x872>
 86d:	8d 0c 37             	lea    (%edi,%esi,1),%ecx
 870:	eb 05                	jmp    877 <jpeg_show+0x877>
 872:	f7 d1                	not    %ecx
 874:	c1 f9 1f             	sar    $0x1f,%ecx
 877:	88 4a 02             	mov    %cl,0x2(%edx)
 87a:	89 f9                	mov    %edi,%ecx
 87c:	2b 4c 24 0c          	sub    0xc(%esp),%ecx
 880:	81 f9 ff 00 00 00    	cmp    $0xff,%ecx
 886:	77 08                	ja     890 <jpeg_show+0x890>
 888:	89 f9                	mov    %edi,%ecx
 88a:	2b 4c 24 0c          	sub    0xc(%esp),%ecx
 88e:	eb 05                	jmp    895 <jpeg_show+0x895>
 890:	f7 d1                	not    %ecx
 892:	c1 f9 1f             	sar    $0x1f,%ecx
 895:	88 4a 01             	mov    %cl,0x1(%edx)
 898:	8d 4c 3d 00          	lea    0x0(%ebp,%edi,1),%ecx
 89c:	81 f9 ff 00 00 00    	cmp    $0xff,%ecx
 8a2:	77 05                	ja     8a9 <jpeg_show+0x8a9>
 8a4:	8d 0c 2f             	lea    (%edi,%ebp,1),%ecx
 8a7:	eb 05                	jmp    8ae <jpeg_show+0x8ae>
 8a9:	f7 d1                	not    %ecx
 8ab:	c1 f9 1f             	sar    $0x1f,%ecx
 8ae:	88 0a                	mov    %cl,(%edx)
 8b0:	8b 7c 24 14          	mov    0x14(%esp),%edi
 8b4:	8b 4c 24 24          	mov    0x24(%esp),%ecx
 8b8:	8b 7c cf 04          	mov    0x4(%edi,%ecx,8),%edi
 8bc:	8d 0c 3e             	lea    (%esi,%edi,1),%ecx
 8bf:	81 f9 ff 00 00 00    	cmp    $0xff,%ecx
 8c5:	77 05                	ja     8cc <jpeg_show+0x8cc>
 8c7:	8d 0c 37             	lea    (%edi,%esi,1),%ecx
 8ca:	eb 05                	jmp    8d1 <jpeg_show+0x8d1>
 8cc:	f7 d1                	not    %ecx
 8ce:	c1 f9 1f             	sar    $0x1f,%ecx
 8d1:	88 4a 05             	mov    %cl,0x5(%edx)
 8d4:	89 f9                	mov    %edi,%ecx
 8d6:	2b 4c 24 0c          	sub    0xc(%esp),%ecx
 8da:	81 f9 ff 00 00 00    	cmp    $0xff,%ecx
 8e0:	77 08                	ja     8ea <jpeg_show+0x8ea>
 8e2:	89 f9                	mov    %edi,%ecx
 8e4:	2b 4c 24 0c          	sub    0xc(%esp),%ecx
 8e8:	eb 05                	jmp    8ef <jpeg_show+0x8ef>
 8ea:	f7 d1                	not    %ecx
 8ec:	c1 f9 1f             	sar    $0x1f,%ecx
 8ef:	88 4a 04             	mov    %cl,0x4(%edx)
 8f2:	8d 4c 3d 00          	lea    0x0(%ebp,%edi,1),%ecx
 8f6:	81 f9 ff 00 00 00    	cmp    $0xff,%ecx
 8fc:	77 05                	ja     903 <jpeg_show+0x903>
 8fe:	8d 0c 2f             	lea    (%edi,%ebp,1),%ecx
 901:	eb 05                	jmp    908 <jpeg_show+0x908>
 903:	f7 d1                	not    %ecx
 905:	c1 f9 1f             	sar    $0x1f,%ecx
 908:	88 4a 03             	mov    %cl,0x3(%edx)
 90b:	ff 44 24 10          	incl   0x10(%esp)
 90f:	83 c2 06             	add    $0x6,%edx
 912:	83 c0 06             	add    $0x6,%eax
 915:	83 7c 24 10 08       	cmpl   $0x8,0x10(%esp)
 91a:	0f 85 24 fe ff ff    	jne    744 <jpeg_show+0x744>
 920:	83 44 24 20 20       	addl   $0x20,0x20(%esp)
 925:	83 44 24 14 40       	addl   $0x40,0x14(%esp)
 92a:	8b 74 24 1c          	mov    0x1c(%esp),%esi
 92e:	01 74 24 48          	add    %esi,0x48(%esp)
 932:	01 74 24 4c          	add    %esi,0x4c(%esp)
 936:	8b 44 24 14          	mov    0x14(%esp),%eax
 93a:	3b 44 24 68          	cmp    0x68(%esp),%eax
 93e:	0f 85 f0 fd ff ff    	jne    734 <jpeg_show+0x734>
 944:	83 6c 24 04 80       	subl   $0xffffff80,0x4(%esp)
 949:	8b 74 24 18          	mov    0x18(%esp),%esi
 94d:	01 74 24 50          	add    %esi,0x50(%esp)
 951:	01 74 24 54          	add    %esi,0x54(%esp)
 955:	81 04 24 00 02 00 00 	addl   $0x200,(%esp)
 95c:	8b 04 24             	mov    (%esp),%eax
 95f:	3b 44 24 64          	cmp    0x64(%esp),%eax
 963:	0f 85 a0 fd ff ff    	jne    709 <jpeg_show+0x709>
 969:	e9 f1 02 00 00       	jmp    c5f <jpeg_show+0xc5f>
 96e:	8b 44 24 3c          	mov    0x3c(%esp),%eax
 972:	89 44 24 50          	mov    %eax,0x50(%esp)
 976:	8b 44 24 08          	mov    0x8(%esp),%eax
 97a:	03 44 24 3c          	add    0x3c(%esp),%eax
 97e:	89 44 24 54          	mov    %eax,0x54(%esp)
 982:	8b 44 24 04          	mov    0x4(%esp),%eax
 986:	89 44 24 64          	mov    %eax,0x64(%esp)
 98a:	8b 44 24 54          	mov    0x54(%esp),%eax
 98e:	89 44 24 24          	mov    %eax,0x24(%esp)
 992:	8b 44 24 50          	mov    0x50(%esp),%eax
 996:	89 44 24 20          	mov    %eax,0x20(%esp)
 99a:	8b 04 24             	mov    (%esp),%eax
 99d:	89 44 24 0c          	mov    %eax,0xc(%esp)
 9a1:	8b 44 24 04          	mov    0x4(%esp),%eax
 9a5:	89 44 24 30          	mov    %eax,0x30(%esp)
 9a9:	8b 04 24             	mov    (%esp),%eax
 9ac:	05 00 01 00 00       	add    $0x100,%eax
 9b1:	89 44 24 68          	mov    %eax,0x68(%esp)
 9b5:	31 c9                	xor    %ecx,%ecx
 9b7:	8b 44 24 30          	mov    0x30(%esp),%eax
 9bb:	8b 04 88             	mov    (%eax,%ecx,4),%eax
 9be:	89 44 24 10          	mov    %eax,0x10(%esp)
 9c2:	8b 44 24 30          	mov    0x30(%esp),%eax
 9c6:	8b 84 88 00 01 00 00 	mov    0x100(%eax,%ecx,4),%eax
 9cd:	89 44 24 14          	mov    %eax,0x14(%esp)
 9d1:	6b 54 24 10 32       	imul   $0x32,0x10(%esp),%edx
 9d6:	69 c0 82 00 00 00    	imul   $0x82,%eax,%eax
 9dc:	8d 84 02 80 00 00 00 	lea    0x80(%edx,%eax,1),%eax
 9e3:	c1 f8 08             	sar    $0x8,%eax
 9e6:	89 44 24 28          	mov    %eax,0x28(%esp)
 9ea:	89 c8                	mov    %ecx,%eax
 9ec:	c1 f8 02             	sar    $0x2,%eax
 9ef:	89 44 24 48          	mov    %eax,0x48(%esp)
 9f3:	89 c8                	mov    %ecx,%eax
 9f5:	83 e0 03             	and    $0x3,%eax
 9f8:	89 44 24 4c          	mov    %eax,0x4c(%esp)
 9fc:	8b 74 24 48          	mov    0x48(%esp),%esi
 a00:	c1 e6 05             	shl    $0x5,%esi
 a03:	01 c6                	add    %eax,%esi
 a05:	8b 44 24 0c          	mov    0xc(%esp),%eax
 a09:	8b 3c f0             	mov    (%eax,%esi,8),%edi
 a0c:	8b 44 24 14          	mov    0x14(%esp),%eax
 a10:	01 f8                	add    %edi,%eax
 a12:	8d 50 07             	lea    0x7(%eax),%edx
 a15:	81 fa ff 00 00 00    	cmp    $0xff,%edx
 a1b:	76 0b                	jbe    a28 <jpeg_show+0xa28>
 a1d:	31 d2                	xor    %edx,%edx
 a1f:	83 f8 f9             	cmp    $0xfffffff9,%eax
 a22:	0f 9c c2             	setl   %dl
 a25:	4a                   	dec    %edx
 a26:	eb 03                	jmp    a2b <jpeg_show+0xa2b>
 a28:	c1 e2 08             	shl    $0x8,%edx
 a2b:	81 e2 00 f8 00 00    	and    $0xf800,%edx
 a31:	89 fd                	mov    %edi,%ebp
 a33:	2b 6c 24 28          	sub    0x28(%esp),%ebp
 a37:	8d 45 03             	lea    0x3(%ebp),%eax
 a3a:	3d ff 00 00 00       	cmp    $0xff,%eax
 a3f:	76 0b                	jbe    a4c <jpeg_show+0xa4c>
 a41:	31 c0                	xor    %eax,%eax
 a43:	83 fd fd             	cmp    $0xfffffffd,%ebp
 a46:	0f 9c c0             	setl   %al
 a49:	48                   	dec    %eax
 a4a:	eb 03                	jmp    a4f <jpeg_show+0xa4f>
 a4c:	c1 e0 03             	shl    $0x3,%eax
 a4f:	25 e0 07 00 00       	and    $0x7e0,%eax
 a54:	09 c2                	or     %eax,%edx
 a56:	03 7c 24 10          	add    0x10(%esp),%edi
 a5a:	8d 6f 07             	lea    0x7(%edi),%ebp
 a5d:	89 e8                	mov    %ebp,%eax
 a5f:	c1 f8 03             	sar    $0x3,%eax
 a62:	81 fd ff 00 00 00    	cmp    $0xff,%ebp
 a68:	76 0c                	jbe    a76 <jpeg_show+0xa76>
 a6a:	31 c0                	xor    %eax,%eax
 a6c:	83 ff f9             	cmp    $0xfffffff9,%edi
 a6f:	0f 9c c0             	setl   %al
 a72:	48                   	dec    %eax
 a73:	83 e0 1f             	and    $0x1f,%eax
 a76:	09 c2                	or     %eax,%edx
 a78:	8b 44 24 20          	mov    0x20(%esp),%eax
 a7c:	88 14 88             	mov    %dl,(%eax,%ecx,4)
 a7f:	88 74 88 01          	mov    %dh,0x1(%eax,%ecx,4)
 a83:	8b 44 24 0c          	mov    0xc(%esp),%eax
 a87:	8b 74 f0 04          	mov    0x4(%eax,%esi,8),%esi
 a8b:	8b 44 24 14          	mov    0x14(%esp),%eax
 a8f:	8d 14 30             	lea    (%eax,%esi,1),%edx
 a92:	8d 42 01             	lea    0x1(%edx),%eax
 a95:	3d ff 00 00 00       	cmp    $0xff,%eax
 a9a:	76 09                	jbe    aa5 <jpeg_show+0xaa5>
 a9c:	31 c0                	xor    %eax,%eax
 a9e:	42                   	inc    %edx
 a9f:	0f 9c c0             	setl   %al
 aa2:	48                   	dec    %eax
 aa3:	eb 03                	jmp    aa8 <jpeg_show+0xaa8>
 aa5:	c1 e0 08             	shl    $0x8,%eax
 aa8:	25 00 f8 00 00       	and    $0xf800,%eax
 aad:	89 f2                	mov    %esi,%edx
 aaf:	2b 54 24 28          	sub    0x28(%esp),%edx
 ab3:	81 fa ff 00 00 00    	cmp    $0xff,%edx
 ab9:	76 07                	jbe    ac2 <jpeg_show+0xac2>
 abb:	c1 fa 1f             	sar    $0x1f,%edx
 abe:	f7 d2                	not    %edx
 ac0:	eb 03                	jmp    ac5 <jpeg_show+0xac5>
 ac2:	c1 e2 03             	shl    $0x3,%edx
 ac5:	81 e2 e0 07 00 00    	and    $0x7e0,%edx
 acb:	09 d0                	or     %edx,%eax
 acd:	03 74 24 10          	add    0x10(%esp),%esi
 ad1:	8d 7e 01             	lea    0x1(%esi),%edi
 ad4:	89 fa                	mov    %edi,%edx
 ad6:	c1 fa 03             	sar    $0x3,%edx
 ad9:	81 ff ff 00 00 00    	cmp    $0xff,%edi
 adf:	76 0a                	jbe    aeb <jpeg_show+0xaeb>
 ae1:	31 d2                	xor    %edx,%edx
 ae3:	46                   	inc    %esi
 ae4:	0f 9c c2             	setl   %dl
 ae7:	4a                   	dec    %edx
 ae8:	83 e2 1f             	and    $0x1f,%edx
 aeb:	09 d0                	or     %edx,%eax
 aed:	8b 74 24 20          	mov    0x20(%esp),%esi
 af1:	88 44 8e 02          	mov    %al,0x2(%esi,%ecx,4)
 af5:	88 64 8e 03          	mov    %ah,0x3(%esi,%ecx,4)
 af9:	8b 44 24 48          	mov    0x48(%esp),%eax
 afd:	8d 04 c5 01 00 00 00 	lea    0x1(,%eax,8),%eax
 b04:	8b 74 24 4c          	mov    0x4c(%esp),%esi
 b08:	8d 34 86             	lea    (%esi,%eax,4),%esi
 b0b:	8b 44 24 0c          	mov    0xc(%esp),%eax
 b0f:	8b 3c f0             	mov    (%eax,%esi,8),%edi
 b12:	8b 44 24 14          	mov    0x14(%esp),%eax
 b16:	01 f8                	add    %edi,%eax
 b18:	8d 50 03             	lea    0x3(%eax),%edx
 b1b:	81 fa ff 00 00 00    	cmp    $0xff,%edx
 b21:	76 0b                	jbe    b2e <jpeg_show+0xb2e>
 b23:	31 d2                	xor    %edx,%edx
 b25:	83 f8 fd             	cmp    $0xfffffffd,%eax
 b28:	0f 9c c2             	setl   %dl
 b2b:	4a                   	dec    %edx
 b2c:	eb 03                	jmp    b31 <jpeg_show+0xb31>
 b2e:	c1 e2 08             	shl    $0x8,%edx
 b31:	81 e2 00 f8 00 00    	and    $0xf800,%edx
 b37:	89 fd                	mov    %edi,%ebp
 b39:	2b 6c 24 28          	sub    0x28(%esp),%ebp
 b3d:	8d 45 01             	lea    0x1(%ebp),%eax
 b40:	3d ff 00 00 00       	cmp    $0xff,%eax
 b45:	76 09                	jbe    b50 <jpeg_show+0xb50>
 b47:	31 c0                	xor    %eax,%eax
 b49:	45                   	inc    %ebp
 b4a:	0f 9c c0             	setl   %al
 b4d:	48                   	dec    %eax
 b4e:	eb 03                	jmp    b53 <jpeg_show+0xb53>
 b50:	c1 e0 03             	shl    $0x3,%eax
 b53:	25 e0 07 00 00       	and    $0x7e0,%eax
 b58:	09 c2                	or     %eax,%edx
 b5a:	03 7c 24 10          	add    0x10(%esp),%edi
 b5e:	8d 6f 03             	lea    0x3(%edi),%ebp
 b61:	89 e8                	mov    %ebp,%eax
 b63:	c1 f8 03             	sar    $0x3,%eax
 b66:	81 fd ff 00 00 00    	cmp    $0xff,%ebp
 b6c:	76 0c                	jbe    b7a <jpeg_show+0xb7a>
 b6e:	31 c0                	xor    %eax,%eax
 b70:	83 ff fd             	cmp    $0xfffffffd,%edi
 b73:	0f 9c c0             	setl   %al
 b76:	48                   	dec    %eax
 b77:	83 e0 1f             	and    $0x1f,%eax
 b7a:	09 c2                	or     %eax,%edx
 b7c:	8b 44 24 24          	mov    0x24(%esp),%eax
 b80:	88 14 88             	mov    %dl,(%eax,%ecx,4)
 b83:	88 74 88 01          	mov    %dh,0x1(%eax,%ecx,4)
 b87:	8b 44 24 0c          	mov    0xc(%esp),%eax
 b8b:	8b 74 f0 04          	mov    0x4(%eax,%esi,8),%esi
 b8f:	8b 44 24 14          	mov    0x14(%esp),%eax
 b93:	01 f0                	add    %esi,%eax
 b95:	8d 50 05             	lea    0x5(%eax),%edx
 b98:	81 fa ff 00 00 00    	cmp    $0xff,%edx
 b9e:	76 0b                	jbe    bab <jpeg_show+0xbab>
 ba0:	31 d2                	xor    %edx,%edx
 ba2:	83 f8 fb             	cmp    $0xfffffffb,%eax
 ba5:	0f 9c c2             	setl   %dl
 ba8:	4a                   	dec    %edx
 ba9:	eb 03                	jmp    bae <jpeg_show+0xbae>
 bab:	c1 e2 08             	shl    $0x8,%edx
 bae:	81 e2 00 f8 00 00    	and    $0xf800,%edx
 bb4:	89 f7                	mov    %esi,%edi
 bb6:	2b 7c 24 28          	sub    0x28(%esp),%edi
 bba:	8d 47 02             	lea    0x2(%edi),%eax
 bbd:	3d ff 00 00 00       	cmp    $0xff,%eax
 bc2:	76 0b                	jbe    bcf <jpeg_show+0xbcf>
 bc4:	31 c0                	xor    %eax,%eax
 bc6:	83 ff fe             	cmp    $0xfffffffe,%edi
 bc9:	0f 9c c0             	setl   %al
 bcc:	48                   	dec    %eax
 bcd:	eb 03                	jmp    bd2 <jpeg_show+0xbd2>
 bcf:	c1 e0 03             	shl    $0x3,%eax
 bd2:	25 e0 07 00 00       	and    $0x7e0,%eax
 bd7:	09 c2                	or     %eax,%edx
 bd9:	8b 44 24 10          	mov    0x10(%esp),%eax
 bdd:	01 f0                	add    %esi,%eax
 bdf:	8d 78 05             	lea    0x5(%eax),%edi
 be2:	89 fe                	mov    %edi,%esi
 be4:	c1 fe 03             	sar    $0x3,%esi
 be7:	81 ff ff 00 00 00    	cmp    $0xff,%edi
 bed:	76 0f                	jbe    bfe <jpeg_show+0xbfe>
 bef:	83 f8 fb             	cmp    $0xfffffffb,%eax
 bf2:	0f 9c c0             	setl   %al
 bf5:	0f b6 c0             	movzbl %al,%eax
 bf8:	89 c6                	mov    %eax,%esi
 bfa:	4e                   	dec    %esi
 bfb:	83 e6 1f             	and    $0x1f,%esi
 bfe:	09 f2                	or     %esi,%edx
 c00:	8b 44 24 24          	mov    0x24(%esp),%eax
 c04:	88 54 88 02          	mov    %dl,0x2(%eax,%ecx,4)
 c08:	88 74 88 03          	mov    %dh,0x3(%eax,%ecx,4)
 c0c:	41                   	inc    %ecx
 c0d:	83 f9 08             	cmp    $0x8,%ecx
 c10:	0f 85 a1 fd ff ff    	jne    9b7 <jpeg_show+0x9b7>
 c16:	83 44 24 30 20       	addl   $0x20,0x30(%esp)
 c1b:	83 44 24 0c 40       	addl   $0x40,0xc(%esp)
 c20:	8b 74 24 1c          	mov    0x1c(%esp),%esi
 c24:	01 74 24 20          	add    %esi,0x20(%esp)
 c28:	01 74 24 24          	add    %esi,0x24(%esp)
 c2c:	8b 44 24 0c          	mov    0xc(%esp),%eax
 c30:	3b 44 24 68          	cmp    0x68(%esp),%eax
 c34:	0f 85 7b fd ff ff    	jne    9b5 <jpeg_show+0x9b5>
 c3a:	83 6c 24 04 80       	subl   $0xffffff80,0x4(%esp)
 c3f:	8b 74 24 18          	mov    0x18(%esp),%esi
 c43:	01 74 24 50          	add    %esi,0x50(%esp)
 c47:	01 74 24 54          	add    %esi,0x54(%esp)
 c4b:	81 04 24 00 02 00 00 	addl   $0x200,(%esp)
 c52:	8b 04 24             	mov    (%esp),%eax
 c55:	3b 44 24 64          	cmp    0x64(%esp),%eax
 c59:	0f 85 2b fd ff ff    	jne    98a <jpeg_show+0x98a>
 c5f:	ff 44 24 40          	incl   0x40(%esp)
 c63:	83 44 24 3c 20       	addl   $0x20,0x3c(%esp)
 c68:	83 44 24 38 30       	addl   $0x30,0x38(%esp)
 c6d:	83 44 24 34 40       	addl   $0x40,0x34(%esp)
 c72:	e9 60 f4 ff ff       	jmp    d7 <jpeg_show+0xd7>
 c77:	ff 44 24 44          	incl   0x44(%esp)
 c7b:	8b 74 24 60          	mov    0x60(%esp),%esi
 c7f:	01 74 24 2c          	add    %esi,0x2c(%esp)
 c83:	e9 29 f4 ff ff       	jmp    b1 <jpeg_show+0xb1>
 c88:	8b 8b 0c 57 00 00    	mov    0x570c(%ebx),%ecx
 c8e:	8b 93 10 57 00 00    	mov    0x5710(%ebx),%edx
 c94:	8d 83 08 57 00 00    	lea    0x5708(%ebx),%eax
 c9a:	e8 fc ff ff ff       	call   c9b <jpeg_show+0xc9b>
 c9f:	89 83 10 57 00 00    	mov    %eax,0x5710(%ebx)
 ca5:	8b 83 14 57 00 00    	mov    0x5714(%ebx),%eax
 cab:	85 c0                	test   %eax,%eax
 cad:	75 07                	jne    cb6 <jpeg_show+0xcb6>
 caf:	b9 0d 00 00 00       	mov    $0xd,%ecx
 cb4:	eb 2b                	jmp    ce1 <jpeg_show+0xce1>
 cb6:	c7 83 10 57 00 00 00 	movl   $0x0,0x5710(%ebx)
 cbd:	00 00 00 
 cc0:	c7 83 14 57 00 00 00 	movl   $0x0,0x5714(%ebx)
 cc7:	00 00 00 
 cca:	31 c9                	xor    %ecx,%ecx
 ccc:	3d d9 00 00 00       	cmp    $0xd9,%eax
 cd1:	74 0e                	je     ce1 <jpeg_show+0xce1>
 cd3:	eb da                	jmp    caf <jpeg_show+0xcaf>
 cd5:	b9 03 00 00 00       	mov    $0x3,%ecx
 cda:	eb 05                	jmp    ce1 <jpeg_show+0xce1>
 cdc:	b9 0c 00 00 00       	mov    $0xc,%ecx
 ce1:	89 c8                	mov    %ecx,%eax
 ce3:	81 c4 88 00 00 00    	add    $0x88,%esp
 ce9:	5b                   	pop    %ebx
 cea:	5e                   	pop    %esi
 ceb:	5f                   	pop    %edi
 cec:	5d                   	pop    %ebp
 ced:	c3                   	ret    
