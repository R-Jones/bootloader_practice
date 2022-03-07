
./sha1.o:     file format elf32-i386


Disassembly of section .text.sha1_block:

00000000 <sha1_block>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 28             	sub    $0x28,%esp
   7:	89 c5                	mov    %eax,%ebp
   9:	89 d3                	mov    %edx,%ebx
   b:	31 c0                	xor    %eax,%eax
   d:	8b 54 85 00          	mov    0x0(%ebp,%eax,4),%edx
  11:	0f ca                	bswap  %edx
  13:	89 54 85 00          	mov    %edx,0x0(%ebp,%eax,4)
  17:	40                   	inc    %eax
  18:	83 f8 10             	cmp    $0x10,%eax
  1b:	75 f0                	jne    d <sha1_block+0xd>
  1d:	89 ea                	mov    %ebp,%edx
  1f:	8d b5 00 01 00 00    	lea    0x100(%ebp),%esi
  25:	b9 01 00 00 00       	mov    $0x1,%ecx
  2a:	8b 42 34             	mov    0x34(%edx),%eax
  2d:	33 42 20             	xor    0x20(%edx),%eax
  30:	33 42 08             	xor    0x8(%edx),%eax
  33:	33 02                	xor    (%edx),%eax
  35:	d3 c0                	rol    %cl,%eax
  37:	89 42 40             	mov    %eax,0x40(%edx)
  3a:	83 c2 04             	add    $0x4,%edx
  3d:	39 d6                	cmp    %edx,%esi
  3f:	75 e9                	jne    2a <sha1_block+0x2a>
  41:	8b 03                	mov    (%ebx),%eax
  43:	89 44 24 14          	mov    %eax,0x14(%esp)
  47:	8b 43 04             	mov    0x4(%ebx),%eax
  4a:	89 44 24 18          	mov    %eax,0x18(%esp)
  4e:	8b 43 08             	mov    0x8(%ebx),%eax
  51:	89 44 24 1c          	mov    %eax,0x1c(%esp)
  55:	8b 43 0c             	mov    0xc(%ebx),%eax
  58:	89 44 24 20          	mov    %eax,0x20(%esp)
  5c:	8b 43 10             	mov    0x10(%ebx),%eax
  5f:	89 44 24 24          	mov    %eax,0x24(%esp)
  63:	89 44 24 10          	mov    %eax,0x10(%esp)
  67:	8b 74 24 20          	mov    0x20(%esp),%esi
  6b:	8b 7c 24 1c          	mov    0x1c(%esp),%edi
  6f:	8b 44 24 18          	mov    0x18(%esp),%eax
  73:	89 04 24             	mov    %eax,(%esp)
  76:	8b 44 24 14          	mov    0x14(%esp),%eax
  7a:	89 44 24 0c          	mov    %eax,0xc(%esp)
  7e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  85:	00 
  86:	83 7c 24 04 13       	cmpl   $0x13,0x4(%esp)
  8b:	77 13                	ja     a0 <sha1_block+0xa0>
  8d:	89 fa                	mov    %edi,%edx
  8f:	31 f2                	xor    %esi,%edx
  91:	23 14 24             	and    (%esp),%edx
  94:	31 f2                	xor    %esi,%edx
  96:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  9d:	00 
  9e:	eb 45                	jmp    e5 <sha1_block+0xe5>
  a0:	83 7c 24 04 27       	cmpl   $0x27,0x4(%esp)
  a5:	77 11                	ja     b8 <sha1_block+0xb8>
  a7:	8b 14 24             	mov    (%esp),%edx
  aa:	31 fa                	xor    %edi,%edx
  ac:	31 f2                	xor    %esi,%edx
  ae:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
  b5:	00 
  b6:	eb 2d                	jmp    e5 <sha1_block+0xe5>
  b8:	83 7c 24 04 3b       	cmpl   $0x3b,0x4(%esp)
  bd:	77 17                	ja     d6 <sha1_block+0xd6>
  bf:	89 fa                	mov    %edi,%edx
  c1:	09 f2                	or     %esi,%edx
  c3:	23 14 24             	and    (%esp),%edx
  c6:	89 f8                	mov    %edi,%eax
  c8:	21 f0                	and    %esi,%eax
  ca:	09 c2                	or     %eax,%edx
  cc:	c7 44 24 08 02 00 00 	movl   $0x2,0x8(%esp)
  d3:	00 
  d4:	eb 0f                	jmp    e5 <sha1_block+0xe5>
  d6:	8b 14 24             	mov    (%esp),%edx
  d9:	31 fa                	xor    %edi,%edx
  db:	31 f2                	xor    %esi,%edx
  dd:	c7 44 24 08 03 00 00 	movl   $0x3,0x8(%esp)
  e4:	00 
  e5:	b9 05 00 00 00       	mov    $0x5,%ecx
  ea:	8b 44 24 0c          	mov    0xc(%esp),%eax
  ee:	d3 c0                	rol    %cl,%eax
  f0:	01 c2                	add    %eax,%edx
  f2:	8b 44 24 04          	mov    0x4(%esp),%eax
  f6:	03 54 85 00          	add    0x0(%ebp,%eax,4),%edx
  fa:	8b 44 24 08          	mov    0x8(%esp),%eax
  fe:	03 14 85 00 00 00 00 	add    0x0(,%eax,4),%edx
 105:	03 54 24 10          	add    0x10(%esp),%edx
 109:	b9 1e 00 00 00       	mov    $0x1e,%ecx
 10e:	8b 04 24             	mov    (%esp),%eax
 111:	d3 c0                	rol    %cl,%eax
 113:	ff 44 24 04          	incl   0x4(%esp)
 117:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
 11b:	89 0c 24             	mov    %ecx,(%esp)
 11e:	89 74 24 10          	mov    %esi,0x10(%esp)
 122:	83 7c 24 04 50       	cmpl   $0x50,0x4(%esp)
 127:	74 0d                	je     136 <sha1_block+0x136>
 129:	89 fe                	mov    %edi,%esi
 12b:	89 c7                	mov    %eax,%edi
 12d:	89 54 24 0c          	mov    %edx,0xc(%esp)
 131:	e9 50 ff ff ff       	jmp    86 <sha1_block+0x86>
 136:	03 54 24 14          	add    0x14(%esp),%edx
 13a:	89 13                	mov    %edx,(%ebx)
 13c:	8b 54 24 18          	mov    0x18(%esp),%edx
 140:	01 ca                	add    %ecx,%edx
 142:	89 53 04             	mov    %edx,0x4(%ebx)
 145:	03 44 24 1c          	add    0x1c(%esp),%eax
 149:	89 43 08             	mov    %eax,0x8(%ebx)
 14c:	8b 44 24 20          	mov    0x20(%esp),%eax
 150:	01 f8                	add    %edi,%eax
 152:	89 43 0c             	mov    %eax,0xc(%ebx)
 155:	8b 44 24 24          	mov    0x24(%esp),%eax
 159:	01 f0                	add    %esi,%eax
 15b:	89 43 10             	mov    %eax,0x10(%ebx)
 15e:	83 c4 28             	add    $0x28,%esp
 161:	5b                   	pop    %ebx
 162:	5e                   	pop    %esi
 163:	5f                   	pop    %edi
 164:	5d                   	pop    %ebp
 165:	c3                   	ret    

Disassembly of section .text.sha1_do:

00000000 <sha1_do>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	81 ec 48 01 00 00    	sub    $0x148,%esp
   a:	89 c5                	mov    %eax,%ebp
   c:	89 54 24 04          	mov    %edx,0x4(%esp)
  10:	89 cb                	mov    %ecx,%ebx
  12:	89 0c 24             	mov    %ecx,(%esp)
  15:	8b 44 24 04          	mov    0x4(%esp),%eax
  19:	8d 34 18             	lea    (%eax,%ebx,1),%esi
  1c:	2b 34 24             	sub    (%esp),%esi
  1f:	83 3c 24 3f          	cmpl   $0x3f,(%esp)
  23:	76 1a                	jbe    3f <sha1_do+0x3f>
  25:	8d 44 24 08          	lea    0x8(%esp),%eax
  29:	b9 10 00 00 00       	mov    $0x10,%ecx
  2e:	89 c7                	mov    %eax,%edi
  30:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  32:	89 ea                	mov    %ebp,%edx
  34:	e8 fc ff ff ff       	call   35 <sha1_do+0x35>
  39:	83 2c 24 40          	subl   $0x40,(%esp)
  3d:	eb d6                	jmp    15 <sha1_do+0x15>
  3f:	89 da                	mov    %ebx,%edx
  41:	c1 ea 06             	shr    $0x6,%edx
  44:	6b c2 c0             	imul   $0xffffffc0,%edx,%eax
  47:	01 d8                	add    %ebx,%eax
  49:	89 de                	mov    %ebx,%esi
  4b:	83 e6 c0             	and    $0xffffffc0,%esi
  4e:	89 d1                	mov    %edx,%ecx
  50:	c1 e1 09             	shl    $0x9,%ecx
  53:	89 df                	mov    %ebx,%edi
  55:	83 e7 3f             	and    $0x3f,%edi
  58:	66 89 3c 24          	mov    %di,(%esp)
  5c:	83 e3 3f             	and    $0x3f,%ebx
  5f:	89 da                	mov    %ebx,%edx
  61:	8d 1c d9             	lea    (%ecx,%ebx,8),%ebx
  64:	03 74 24 04          	add    0x4(%esp),%esi
  68:	8d 7c 24 08          	lea    0x8(%esp),%edi
  6c:	89 c1                	mov    %eax,%ecx
  6e:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  70:	c6 44 04 08 80       	movb   $0x80,0x8(%esp,%eax,1)
  75:	b9 3f 00 00 00       	mov    $0x3f,%ecx
  7a:	29 d1                	sub    %edx,%ecx
  7c:	85 c9                	test   %ecx,%ecx
  7e:	7e 0b                	jle    8b <sha1_do+0x8b>
  80:	8d 44 04 09          	lea    0x9(%esp,%eax,1),%eax
  84:	31 d2                	xor    %edx,%edx
  86:	e8 fc ff ff ff       	call   87 <sha1_do+0x87>
  8b:	66 83 3c 24 37       	cmpw   $0x37,(%esp)
  90:	76 1b                	jbe    ad <sha1_do+0xad>
  92:	89 ea                	mov    %ebp,%edx
  94:	8d 44 24 08          	lea    0x8(%esp),%eax
  98:	e8 fc ff ff ff       	call   99 <sha1_do+0x99>
  9d:	b9 3c 00 00 00       	mov    $0x3c,%ecx
  a2:	31 d2                	xor    %edx,%edx
  a4:	8d 44 24 08          	lea    0x8(%esp),%eax
  a8:	e8 fc ff ff ff       	call   a9 <sha1_do+0xa9>
  ad:	31 c0                	xor    %eax,%eax
  af:	0f c8                	bswap  %eax
  b1:	0f cb                	bswap  %ebx
  b3:	89 44 24 40          	mov    %eax,0x40(%esp)
  b7:	89 5c 24 44          	mov    %ebx,0x44(%esp)
  bb:	89 ea                	mov    %ebp,%edx
  bd:	8d 44 24 08          	lea    0x8(%esp),%eax
  c1:	e8 fc ff ff ff       	call   c2 <sha1_do+0xc2>
  c6:	31 c0                	xor    %eax,%eax
  c8:	8b 54 85 00          	mov    0x0(%ebp,%eax,4),%edx
  cc:	0f ca                	bswap  %edx
  ce:	89 54 85 00          	mov    %edx,0x0(%ebp,%eax,4)
  d2:	40                   	inc    %eax
  d3:	83 f8 05             	cmp    $0x5,%eax
  d6:	75 f0                	jne    c8 <sha1_do+0xc8>
  d8:	81 c4 48 01 00 00    	add    $0x148,%esp
  de:	5b                   	pop    %ebx
  df:	5e                   	pop    %esi
  e0:	5f                   	pop    %edi
  e1:	5d                   	pop    %ebp
  e2:	c3                   	ret    

Disassembly of section .text.sha1:

00000000 <sha1>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	83 ec 14             	sub    $0x14,%esp
   6:	89 cb                	mov    %ecx,%ebx
   8:	89 e7                	mov    %esp,%edi
   a:	be 00 00 00 00       	mov    $0x0,%esi
   f:	b9 05 00 00 00       	mov    $0x5,%ecx
  14:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  16:	89 e6                	mov    %esp,%esi
  18:	89 d1                	mov    %edx,%ecx
  1a:	89 c2                	mov    %eax,%edx
  1c:	89 f0                	mov    %esi,%eax
  1e:	e8 fc ff ff ff       	call   1f <sha1+0x1f>
  23:	b9 05 00 00 00       	mov    $0x5,%ecx
  28:	89 df                	mov    %ebx,%edi
  2a:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  2c:	83 c4 14             	add    $0x14,%esp
  2f:	5b                   	pop    %ebx
  30:	5e                   	pop    %esi
  31:	5f                   	pop    %edi
  32:	c3                   	ret    
