
./dsdt_parser.o:     file format elf32-i386


Disassembly of section .text.parse_resource_int:

00000000 <parse_resource_int>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	57                   	push   %edi
   4:	56                   	push   %esi
   5:	53                   	push   %ebx
   6:	83 ec 08             	sub    $0x8,%esp
   9:	89 44 24 04          	mov    %eax,0x4(%esp)
   d:	89 14 24             	mov    %edx,(%esp)
  10:	31 c0                	xor    %eax,%eax
  12:	31 db                	xor    %ebx,%ebx
  14:	31 d2                	xor    %edx,%edx
  16:	8b 4c 24 04          	mov    0x4(%esp),%ecx
  1a:	0f b6 34 01          	movzbl (%ecx,%eax,1),%esi
  1e:	31 ff                	xor    %edi,%edi
  20:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  27:	0f a5 f7             	shld   %cl,%esi,%edi
  2a:	d3 e6                	shl    %cl,%esi
  2c:	f6 c1 20             	test   $0x20,%cl
  2f:	74 04                	je     35 <parse_resource_int+0x35>
  31:	89 f7                	mov    %esi,%edi
  33:	31 f6                	xor    %esi,%esi
  35:	09 f3                	or     %esi,%ebx
  37:	09 fa                	or     %edi,%edx
  39:	40                   	inc    %eax
  3a:	39 04 24             	cmp    %eax,(%esp)
  3d:	75 d7                	jne    16 <parse_resource_int+0x16>
  3f:	89 d8                	mov    %ebx,%eax
  41:	59                   	pop    %ecx
  42:	5b                   	pop    %ebx
  43:	5b                   	pop    %ebx
  44:	5e                   	pop    %esi
  45:	5f                   	pop    %edi
  46:	5d                   	pop    %ebp
  47:	c3                   	ret    

Disassembly of section .text.parse_pkglength:

00000000 <parse_pkglength>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 c1                	mov    %eax,%ecx
   4:	89 d0                	mov    %edx,%eax
   6:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
   c:	0f b6 11             	movzbl (%ecx),%edx
   f:	88 d3                	mov    %dl,%bl
  11:	c0 eb 06             	shr    $0x6,%bl
  14:	80 fb 02             	cmp    $0x2,%bl
  17:	74 25                	je     3e <parse_pkglength+0x3e>
  19:	80 fb 03             	cmp    $0x3,%bl
  1c:	74 10                	je     2e <parse_pkglength+0x2e>
  1e:	fe cb                	dec    %bl
  20:	bb 01 00 00 00       	mov    $0x1,%ebx
  25:	75 38                	jne    5f <parse_pkglength+0x5f>
  27:	bb 02 00 00 00       	mov    $0x2,%ebx
  2c:	eb 1f                	jmp    4d <parse_pkglength+0x4d>
  2e:	0f b6 51 03          	movzbl 0x3(%ecx),%edx
  32:	c1 e2 14             	shl    $0x14,%edx
  35:	89 10                	mov    %edx,(%eax)
  37:	bb 03 00 00 00       	mov    $0x3,%ebx
  3c:	eb 05                	jmp    43 <parse_pkglength+0x43>
  3e:	bb 02 00 00 00       	mov    $0x2,%ebx
  43:	0f b6 51 02          	movzbl 0x2(%ecx),%edx
  47:	c1 e2 0c             	shl    $0xc,%edx
  4a:	09 10                	or     %edx,(%eax)
  4c:	43                   	inc    %ebx
  4d:	0f b6 71 01          	movzbl 0x1(%ecx),%esi
  51:	c1 e6 04             	shl    $0x4,%esi
  54:	0b 30                	or     (%eax),%esi
  56:	89 30                	mov    %esi,(%eax)
  58:	8a 11                	mov    (%ecx),%dl
  5a:	83 e2 0f             	and    $0xf,%edx
  5d:	09 f2                	or     %esi,%edx
  5f:	89 10                	mov    %edx,(%eax)
  61:	89 d8                	mov    %ebx,%eax
  63:	5b                   	pop    %ebx
  64:	5e                   	pop    %esi
  65:	c3                   	ret    

Disassembly of section .text.parse_nameseg:

00000000 <parse_nameseg>:
   0:	89 c1                	mov    %eax,%ecx
   2:	89 d0                	mov    %edx,%eax
   4:	8b 12                	mov    (%edx),%edx
   6:	85 d2                	test   %edx,%edx
   8:	74 4b                	je     55 <parse_nameseg+0x55>
   a:	56                   	push   %esi
   b:	53                   	push   %ebx
   c:	8a 19                	mov    (%ecx),%bl
   e:	8d 72 01             	lea    0x1(%edx),%esi
  11:	89 30                	mov    %esi,(%eax)
  13:	88 1a                	mov    %bl,(%edx)
  15:	8a 59 01             	mov    0x1(%ecx),%bl
  18:	80 fb 5f             	cmp    $0x5f,%bl
  1b:	74 09                	je     26 <parse_nameseg+0x26>
  1d:	8b 10                	mov    (%eax),%edx
  1f:	8d 72 01             	lea    0x1(%edx),%esi
  22:	89 30                	mov    %esi,(%eax)
  24:	88 1a                	mov    %bl,(%edx)
  26:	8a 59 02             	mov    0x2(%ecx),%bl
  29:	80 fb 5f             	cmp    $0x5f,%bl
  2c:	74 09                	je     37 <parse_nameseg+0x37>
  2e:	8b 10                	mov    (%eax),%edx
  30:	8d 72 01             	lea    0x1(%edx),%esi
  33:	89 30                	mov    %esi,(%eax)
  35:	88 1a                	mov    %bl,(%edx)
  37:	8a 49 03             	mov    0x3(%ecx),%cl
  3a:	80 f9 5f             	cmp    $0x5f,%cl
  3d:	74 09                	je     48 <parse_nameseg+0x48>
  3f:	8b 10                	mov    (%eax),%edx
  41:	8d 5a 01             	lea    0x1(%edx),%ebx
  44:	89 18                	mov    %ebx,(%eax)
  46:	88 0a                	mov    %cl,(%edx)
  48:	8b 00                	mov    (%eax),%eax
  4a:	c6 00 00             	movb   $0x0,(%eax)
  4d:	b8 04 00 00 00       	mov    $0x4,%eax
  52:	5b                   	pop    %ebx
  53:	5e                   	pop    %esi
  54:	c3                   	ret    
  55:	b8 04 00 00 00       	mov    $0x4,%eax
  5a:	c3                   	ret    

Disassembly of section .text.find_resource:

00000000 <find_resource>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 14             	sub    $0x14,%esp
   7:	89 44 24 08          	mov    %eax,0x8(%esp)
   b:	89 54 24 0c          	mov    %edx,0xc(%esp)
   f:	89 4c 24 10          	mov    %ecx,0x10(%esp)
  13:	8b 6c 24 2c          	mov    0x2c(%esp),%ebp
  17:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  1e:	00 
  1f:	8b 5c 24 08          	mov    0x8(%esp),%ebx
  23:	03 5c 24 04          	add    0x4(%esp),%ebx
  27:	8b 44 24 28          	mov    0x28(%esp),%eax
  2b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  31:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
  38:	c7 45 00 00 00 00 00 	movl   $0x0,0x0(%ebp)
  3f:	c7 45 04 00 00 00 00 	movl   $0x0,0x4(%ebp)
  46:	8a 13                	mov    (%ebx),%dl
  48:	84 d2                	test   %dl,%dl
  4a:	0f 88 0e 01 00 00    	js     15e <find_resource+0x15e>
  50:	88 d0                	mov    %dl,%al
  52:	c0 e8 03             	shr    $0x3,%al
  55:	83 e2 07             	and    $0x7,%edx
  58:	8d 7a 01             	lea    0x1(%edx),%edi
  5b:	89 3c 24             	mov    %edi,(%esp)
  5e:	3c 09                	cmp    $0x9,%al
  60:	0f 84 ac 00 00 00    	je     112 <find_resource+0x112>
  66:	77 0d                	ja     75 <find_resource+0x75>
  68:	3c 04                	cmp    $0x4,%al
  6a:	74 16                	je     82 <find_resource+0x82>
  6c:	3c 08                	cmp    $0x8,%al
  6e:	74 48                	je     b8 <find_resource+0xb8>
  70:	e9 d3 00 00 00       	jmp    148 <find_resource+0x148>
  75:	3c 0f                	cmp    $0xf,%al
  77:	0f 84 f6 01 00 00    	je     273 <find_resource+0x273>
  7d:	e9 c6 00 00 00       	jmp    148 <find_resource+0x148>
  82:	8b 04 24             	mov    (%esp),%eax
  85:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  8c:	31 c0                	xor    %eax,%eax
  8e:	89 c1                	mov    %eax,%ecx
  90:	c1 f9 03             	sar    $0x3,%ecx
  93:	0f b6 74 0b 01       	movzbl 0x1(%ebx,%ecx,1),%esi
  98:	89 c1                	mov    %eax,%ecx
  9a:	83 e1 07             	and    $0x7,%ecx
  9d:	0f a3 ce             	bt     %ecx,%esi
  a0:	72 07                	jb     a9 <find_resource+0xa9>
  a2:	40                   	inc    %eax
  a3:	39 d0                	cmp    %edx,%eax
  a5:	75 e7                	jne    8e <find_resource+0x8e>
  a7:	31 c0                	xor    %eax,%eax
  a9:	99                   	cltd   
  aa:	8b 7c 24 28          	mov    0x28(%esp),%edi
  ae:	89 07                	mov    %eax,(%edi)
  b0:	89 57 04             	mov    %edx,0x4(%edi)
  b3:	e9 6b 01 00 00       	jmp    223 <find_resource+0x223>
  b8:	8d 43 02             	lea    0x2(%ebx),%eax
  bb:	ba 02 00 00 00       	mov    $0x2,%edx
  c0:	e8 fc ff ff ff       	call   c1 <find_resource+0xc1>
  c5:	8b 7c 24 28          	mov    0x28(%esp),%edi
  c9:	89 07                	mov    %eax,(%edi)
  cb:	89 57 04             	mov    %edx,0x4(%edi)
  ce:	8d 43 04             	lea    0x4(%ebx),%eax
  d1:	ba 02 00 00 00       	mov    $0x2,%edx
  d6:	e8 fc ff ff ff       	call   d7 <find_resource+0xd7>
  db:	89 c1                	mov    %eax,%ecx
  dd:	89 d6                	mov    %edx,%esi
  df:	89 45 00             	mov    %eax,0x0(%ebp)
  e2:	89 55 04             	mov    %edx,0x4(%ebp)
  e5:	8b 57 04             	mov    0x4(%edi),%edx
  e8:	8b 07                	mov    (%edi),%eax
  ea:	39 d6                	cmp    %edx,%esi
  ec:	0f 85 88 01 00 00    	jne    27a <find_resource+0x27a>
  f2:	39 c1                	cmp    %eax,%ecx
  f4:	0f 85 80 01 00 00    	jne    27a <find_resource+0x27a>
  fa:	83 c0 ff             	add    $0xffffffff,%eax
  fd:	83 d2 ff             	adc    $0xffffffff,%edx
 100:	0f b6 4b 07          	movzbl 0x7(%ebx),%ecx
 104:	31 db                	xor    %ebx,%ebx
 106:	01 c8                	add    %ecx,%eax
 108:	11 da                	adc    %ebx,%edx
 10a:	89 45 00             	mov    %eax,0x0(%ebp)
 10d:	89 55 04             	mov    %edx,0x4(%ebp)
 110:	eb 2c                	jmp    13e <find_resource+0x13e>
 112:	8d 43 02             	lea    0x2(%ebx),%eax
 115:	ba 02 00 00 00       	mov    $0x2,%edx
 11a:	e8 fc ff ff ff       	call   11b <find_resource+0x11b>
 11f:	8b 7c 24 28          	mov    0x28(%esp),%edi
 123:	89 07                	mov    %eax,(%edi)
 125:	89 57 04             	mov    %edx,0x4(%edi)
 128:	0f b6 4b 04          	movzbl 0x4(%ebx),%ecx
 12c:	31 db                	xor    %ebx,%ebx
 12e:	83 c1 ff             	add    $0xffffffff,%ecx
 131:	83 d3 ff             	adc    $0xffffffff,%ebx
 134:	01 c1                	add    %eax,%ecx
 136:	11 d3                	adc    %edx,%ebx
 138:	89 4d 00             	mov    %ecx,0x0(%ebp)
 13b:	89 5d 04             	mov    %ebx,0x4(%ebp)
 13e:	b8 01 00 00 00       	mov    $0x1,%eax
 143:	e9 23 01 00 00       	jmp    26b <find_resource+0x26b>
 148:	ff 34 24             	push   (%esp)
 14b:	0f b6 c0             	movzbl %al,%eax
 14e:	50                   	push   %eax
 14f:	68 00 00 00 00       	push   $0x0
 154:	68 00 00 00 00       	push   $0x0
 159:	e9 03 01 00 00       	jmp    261 <find_resource+0x261>
 15e:	83 e2 7f             	and    $0x7f,%edx
 161:	0f b7 43 01          	movzwl 0x1(%ebx),%eax
 165:	83 c0 03             	add    $0x3,%eax
 168:	89 04 24             	mov    %eax,(%esp)
 16b:	8d 42 fa             	lea    -0x6(%edx),%eax
 16e:	3c 04                	cmp    $0x4,%al
 170:	0f 87 da 00 00 00    	ja     250 <find_resource+0x250>
 176:	0f b6 c0             	movzbl %al,%eax
 179:	ff 24 85 00 00 00 00 	jmp    *0x0(,%eax,4)
 180:	8d 43 04             	lea    0x4(%ebx),%eax
 183:	ba 04 00 00 00       	mov    $0x4,%edx
 188:	e8 fc ff ff ff       	call   189 <find_resource+0x189>
 18d:	89 c6                	mov    %eax,%esi
 18f:	89 d7                	mov    %edx,%edi
 191:	8b 44 24 28          	mov    0x28(%esp),%eax
 195:	89 30                	mov    %esi,(%eax)
 197:	89 50 04             	mov    %edx,0x4(%eax)
 19a:	8d 43 08             	lea    0x8(%ebx),%eax
 19d:	ba 04 00 00 00       	mov    $0x4,%edx
 1a2:	e8 fc ff ff ff       	call   1a3 <find_resource+0x1a3>
 1a7:	01 c6                	add    %eax,%esi
 1a9:	11 d7                	adc    %edx,%edi
 1ab:	83 c6 ff             	add    $0xffffffff,%esi
 1ae:	83 d7 ff             	adc    $0xffffffff,%edi
 1b1:	89 75 00             	mov    %esi,0x0(%ebp)
 1b4:	89 7d 04             	mov    %edi,0x4(%ebp)
 1b7:	31 c0                	xor    %eax,%eax
 1b9:	e9 ad 00 00 00       	jmp    26b <find_resource+0x26b>
 1be:	8d 43 0a             	lea    0xa(%ebx),%eax
 1c1:	ba 04 00 00 00       	mov    $0x4,%edx
 1c6:	e8 fc ff ff ff       	call   1c7 <find_resource+0x1c7>
 1cb:	8b 7c 24 28          	mov    0x28(%esp),%edi
 1cf:	89 07                	mov    %eax,(%edi)
 1d1:	89 57 04             	mov    %edx,0x4(%edi)
 1d4:	8d 43 0e             	lea    0xe(%ebx),%eax
 1d7:	ba 04 00 00 00       	mov    $0x4,%edx
 1dc:	eb 1e                	jmp    1fc <find_resource+0x1fc>
 1de:	8d 43 08             	lea    0x8(%ebx),%eax
 1e1:	ba 02 00 00 00       	mov    $0x2,%edx
 1e6:	e8 fc ff ff ff       	call   1e7 <find_resource+0x1e7>
 1eb:	8b 7c 24 28          	mov    0x28(%esp),%edi
 1ef:	89 07                	mov    %eax,(%edi)
 1f1:	89 57 04             	mov    %edx,0x4(%edi)
 1f4:	8d 43 0a             	lea    0xa(%ebx),%eax
 1f7:	ba 02 00 00 00       	mov    $0x2,%edx
 1fc:	e8 fc ff ff ff       	call   1fd <find_resource+0x1fd>
 201:	89 45 00             	mov    %eax,0x0(%ebp)
 204:	89 55 04             	mov    %edx,0x4(%ebp)
 207:	0f b6 43 03          	movzbl 0x3(%ebx),%eax
 20b:	eb 5e                	jmp    26b <find_resource+0x26b>
 20d:	8d 43 05             	lea    0x5(%ebx),%eax
 210:	ba 04 00 00 00       	mov    $0x4,%edx
 215:	e8 fc ff ff ff       	call   216 <find_resource+0x216>
 21a:	8b 74 24 28          	mov    0x28(%esp),%esi
 21e:	89 06                	mov    %eax,(%esi)
 220:	89 56 04             	mov    %edx,0x4(%esi)
 223:	89 45 00             	mov    %eax,0x0(%ebp)
 226:	89 55 04             	mov    %edx,0x4(%ebp)
 229:	b8 03 00 00 00       	mov    $0x3,%eax
 22e:	eb 3b                	jmp    26b <find_resource+0x26b>
 230:	8d 43 0e             	lea    0xe(%ebx),%eax
 233:	ba 08 00 00 00       	mov    $0x8,%edx
 238:	e8 fc ff ff ff       	call   239 <find_resource+0x239>
 23d:	8b 7c 24 28          	mov    0x28(%esp),%edi
 241:	89 07                	mov    %eax,(%edi)
 243:	89 57 04             	mov    %edx,0x4(%edi)
 246:	8d 43 16             	lea    0x16(%ebx),%eax
 249:	ba 08 00 00 00       	mov    $0x8,%edx
 24e:	eb ac                	jmp    1fc <find_resource+0x1fc>
 250:	ff 34 24             	push   (%esp)
 253:	0f b6 d2             	movzbl %dl,%edx
 256:	52                   	push   %edx
 257:	68 00 00 00 00       	push   $0x0
 25c:	68 1a 00 00 00       	push   $0x1a
 261:	e8 fc ff ff ff       	call   262 <find_resource+0x262>
 266:	83 c4 10             	add    $0x10,%esp
 269:	eb 0f                	jmp    27a <find_resource+0x27a>
 26b:	39 44 24 10          	cmp    %eax,0x10(%esp)
 26f:	75 09                	jne    27a <find_resource+0x27a>
 271:	eb 25                	jmp    298 <find_resource+0x298>
 273:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 27a:	8b 3c 24             	mov    (%esp),%edi
 27d:	01 7c 24 04          	add    %edi,0x4(%esp)
 281:	85 ff                	test   %edi,%edi
 283:	74 0e                	je     293 <find_resource+0x293>
 285:	8b 74 24 04          	mov    0x4(%esp),%esi
 289:	39 74 24 0c          	cmp    %esi,0xc(%esp)
 28d:	0f 8f 8c fd ff ff    	jg     1f <find_resource+0x1f>
 293:	83 c8 ff             	or     $0xffffffff,%eax
 296:	eb 02                	jmp    29a <find_resource+0x29a>
 298:	31 c0                	xor    %eax,%eax
 29a:	83 c4 14             	add    $0x14,%esp
 29d:	5b                   	pop    %ebx
 29e:	5e                   	pop    %esi
 29f:	5f                   	pop    %edi
 2a0:	5d                   	pop    %ebp
 2a1:	c3                   	ret    

Disassembly of section .text.hex.constprop.0:

00000000 <hex.constprop.0>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 c3                	mov    %eax,%ebx
   4:	6a 00                	push   $0x0
   6:	52                   	push   %edx
   7:	68 34 00 00 00       	push   $0x34
   c:	e8 fc ff ff ff       	call   d <hex.constprop.0+0xd>
  11:	83 c4 0c             	add    $0xc,%esp
  14:	31 f6                	xor    %esi,%esi
  16:	0f b6 44 33 03       	movzbl 0x3(%ebx,%esi,1),%eax
  1b:	50                   	push   %eax
  1c:	0f b6 44 33 02       	movzbl 0x2(%ebx,%esi,1),%eax
  21:	50                   	push   %eax
  22:	0f b6 44 33 01       	movzbl 0x1(%ebx,%esi,1),%eax
  27:	50                   	push   %eax
  28:	0f b6 04 33          	movzbl (%ebx,%esi,1),%eax
  2c:	50                   	push   %eax
  2d:	68 40 00 00 00       	push   $0x40
  32:	e8 fc ff ff ff       	call   33 <hex.constprop.0+0x33>
  37:	83 c6 04             	add    $0x4,%esi
  3a:	83 c4 14             	add    $0x14,%esp
  3d:	83 fe 10             	cmp    $0x10,%esi
  40:	75 d4                	jne    16 <hex.constprop.0+0x16>
  42:	31 f6                	xor    %esi,%esi
  44:	0f b6 04 33          	movzbl (%ebx,%esi,1),%eax
  48:	8d 50 df             	lea    -0x21(%eax),%edx
  4b:	80 fa 5e             	cmp    $0x5e,%dl
  4e:	76 05                	jbe    55 <hex.constprop.0+0x55>
  50:	b8 2e 00 00 00       	mov    $0x2e,%eax
  55:	50                   	push   %eax
  56:	68 56 00 00 00       	push   $0x56
  5b:	e8 fc ff ff ff       	call   5c <hex.constprop.0+0x5c>
  60:	46                   	inc    %esi
  61:	5a                   	pop    %edx
  62:	59                   	pop    %ecx
  63:	83 fe 10             	cmp    $0x10,%esi
  66:	75 dc                	jne    44 <hex.constprop.0+0x44>
  68:	68 59 00 00 00       	push   $0x59
  6d:	e8 fc ff ff ff       	call   6e <hex.constprop.0+0x6e>
  72:	58                   	pop    %eax
  73:	5b                   	pop    %ebx
  74:	5e                   	pop    %esi
  75:	c3                   	ret    

Disassembly of section .text.parse_namestring:

00000000 <parse_namestring>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 0c             	sub    $0xc,%esp
   7:	89 c7                	mov    %eax,%edi
   9:	89 14 24             	mov    %edx,(%esp)
   c:	89 4c 24 04          	mov    %ecx,0x4(%esp)
  10:	89 44 24 08          	mov    %eax,0x8(%esp)
  14:	8d 68 01             	lea    0x1(%eax),%ebp
  17:	be 01 00 00 00       	mov    $0x1,%esi
  1c:	31 d2                	xor    %edx,%edx
  1e:	8d 4d ff             	lea    -0x1(%ebp),%ecx
  21:	8d 5e ff             	lea    -0x1(%esi),%ebx
  24:	8b 04 24             	mov    (%esp),%eax
  27:	8a 44 30 ff          	mov    -0x1(%eax,%esi,1),%al
  2b:	3c 5a                	cmp    $0x5a,%al
  2d:	77 19                	ja     48 <parse_namestring+0x48>
  2f:	3c 40                	cmp    $0x40,%al
  31:	0f 87 c0 00 00 00    	ja     f7 <parse_namestring+0xf7>
  37:	3c 2e                	cmp    $0x2e,%al
  39:	74 46                	je     81 <parse_namestring+0x81>
  3b:	3c 2f                	cmp    $0x2f,%al
  3d:	74 74                	je     b3 <parse_namestring+0xb3>
  3f:	84 c0                	test   %al,%al
  41:	74 28                	je     6b <parse_namestring+0x6b>
  43:	e9 c7 00 00 00       	jmp    10f <parse_namestring+0x10f>
  48:	3c 5e                	cmp    $0x5e,%al
  4a:	0f 84 a0 00 00 00    	je     f0 <parse_namestring+0xf0>
  50:	3c 5f                	cmp    $0x5f,%al
  52:	0f 84 9f 00 00 00    	je     f7 <parse_namestring+0xf7>
  58:	3c 5c                	cmp    $0x5c,%al
  5a:	0f 85 af 00 00 00    	jne    10f <parse_namestring+0x10f>
  60:	b0 5c                	mov    $0x5c,%al
  62:	88 45 ff             	mov    %al,-0x1(%ebp)
  65:	46                   	inc    %esi
  66:	45                   	inc    %ebp
  67:	b2 01                	mov    $0x1,%dl
  69:	eb b3                	jmp    1e <parse_namestring+0x1e>
  6b:	84 d2                	test   %dl,%dl
  6d:	74 04                	je     73 <parse_namestring+0x73>
  6f:	89 4c 24 08          	mov    %ecx,0x8(%esp)
  73:	89 f3                	mov    %esi,%ebx
  75:	8b 44 24 08          	mov    0x8(%esp),%eax
  79:	c6 00 00             	movb   $0x0,(%eax)
  7c:	e9 a2 00 00 00       	jmp    123 <parse_namestring+0x123>
  81:	84 d2                	test   %dl,%dl
  83:	74 04                	je     89 <parse_namestring+0x89>
  85:	89 4c 24 08          	mov    %ecx,0x8(%esp)
  89:	8b 04 24             	mov    (%esp),%eax
  8c:	01 f0                	add    %esi,%eax
  8e:	8d 54 24 08          	lea    0x8(%esp),%edx
  92:	e8 fc ff ff ff       	call   93 <parse_namestring+0x93>
  97:	8d 1c 06             	lea    (%esi,%eax,1),%ebx
  9a:	8b 44 24 08          	mov    0x8(%esp),%eax
  9e:	8d 50 01             	lea    0x1(%eax),%edx
  a1:	89 54 24 08          	mov    %edx,0x8(%esp)
  a5:	c6 00 2e             	movb   $0x2e,(%eax)
  a8:	8b 04 24             	mov    (%esp),%eax
  ab:	01 d8                	add    %ebx,%eax
  ad:	8d 54 24 08          	lea    0x8(%esp),%edx
  b1:	eb 53                	jmp    106 <parse_namestring+0x106>
  b3:	84 d2                	test   %dl,%dl
  b5:	74 04                	je     bb <parse_namestring+0xbb>
  b7:	89 4c 24 08          	mov    %ecx,0x8(%esp)
  bb:	8b 04 24             	mov    (%esp),%eax
  be:	0f b6 2c 30          	movzbl (%eax,%esi,1),%ebp
  c2:	8d 5e 01             	lea    0x1(%esi),%ebx
  c5:	31 f6                	xor    %esi,%esi
  c7:	39 ee                	cmp    %ebp,%esi
  c9:	7d 58                	jge    123 <parse_namestring+0x123>
  cb:	85 f6                	test   %esi,%esi
  cd:	74 0e                	je     dd <parse_namestring+0xdd>
  cf:	8b 44 24 08          	mov    0x8(%esp),%eax
  d3:	8d 50 01             	lea    0x1(%eax),%edx
  d6:	89 54 24 08          	mov    %edx,0x8(%esp)
  da:	c6 00 2e             	movb   $0x2e,(%eax)
  dd:	8b 04 24             	mov    (%esp),%eax
  e0:	01 d8                	add    %ebx,%eax
  e2:	8d 54 24 08          	lea    0x8(%esp),%edx
  e6:	e8 fc ff ff ff       	call   e7 <parse_namestring+0xe7>
  eb:	01 c3                	add    %eax,%ebx
  ed:	46                   	inc    %esi
  ee:	eb d7                	jmp    c7 <parse_namestring+0xc7>
  f0:	b0 5e                	mov    $0x5e,%al
  f2:	e9 6b ff ff ff       	jmp    62 <parse_namestring+0x62>
  f7:	84 d2                	test   %dl,%dl
  f9:	74 04                	je     ff <parse_namestring+0xff>
  fb:	89 4c 24 08          	mov    %ecx,0x8(%esp)
  ff:	8d 54 24 08          	lea    0x8(%esp),%edx
 103:	8b 04 24             	mov    (%esp),%eax
 106:	e8 fc ff ff ff       	call   107 <parse_namestring+0x107>
 10b:	01 c3                	add    %eax,%ebx
 10d:	eb 14                	jmp    123 <parse_namestring+0x123>
 10f:	ba 00 00 00 00       	mov    $0x0,%edx
 114:	8b 04 24             	mov    (%esp),%eax
 117:	e8 fc ff ff ff       	call   118 <parse_namestring+0x118>
 11c:	c7 47 24 01 00 00 00 	movl   $0x1,0x24(%edi)
 123:	57                   	push   %edi
 124:	ff 74 24 08          	push   0x8(%esp)
 128:	ff 77 28             	push   0x28(%edi)
 12b:	68 00 00 00 00       	push   $0x0
 130:	68 5b 00 00 00       	push   $0x5b
 135:	e8 fc ff ff ff       	call   136 <parse_namestring+0x136>
 13a:	89 d8                	mov    %ebx,%eax
 13c:	83 c4 20             	add    $0x20,%esp
 13f:	5b                   	pop    %ebx
 140:	5e                   	pop    %esi
 141:	5f                   	pop    %edi
 142:	5d                   	pop    %ebp
 143:	c3                   	ret    

Disassembly of section .text.parse_pkg_skip:

00000000 <parse_pkg_skip>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	83 ec 0c             	sub    $0xc,%esp
   5:	89 c6                	mov    %eax,%esi
   7:	89 d3                	mov    %edx,%ebx
   9:	51                   	push   %ecx
   a:	68 6b 00 00 00       	push   $0x6b
   f:	6a 08                	push   $0x8
  11:	8d 4c 24 10          	lea    0x10(%esp),%ecx
  15:	51                   	push   %ecx
  16:	e8 fc ff ff ff       	call   17 <parse_pkg_skip+0x17>
  1b:	8d 54 24 10          	lea    0x10(%esp),%edx
  1f:	89 d8                	mov    %ebx,%eax
  21:	e8 fc ff ff ff       	call   22 <parse_pkg_skip+0x22>
  26:	83 c4 10             	add    $0x10,%esp
  29:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
  2e:	8d 4c 24 04          	lea    0x4(%esp),%ecx
  32:	74 0c                	je     40 <parse_pkg_skip+0x40>
  34:	8d 14 03             	lea    (%ebx,%eax,1),%edx
  37:	89 f0                	mov    %esi,%eax
  39:	e8 fc ff ff ff       	call   3a <parse_pkg_skip+0x3a>
  3e:	eb 16                	jmp    56 <parse_pkg_skip+0x56>
  40:	ff 34 24             	push   (%esp)
  43:	51                   	push   %ecx
  44:	68 00 00 00 00       	push   $0x0
  49:	68 71 00 00 00       	push   $0x71
  4e:	e8 fc ff ff ff       	call   4f <parse_pkg_skip+0x4f>
  53:	83 c4 10             	add    $0x10,%esp
  56:	8b 04 24             	mov    (%esp),%eax
  59:	83 c4 0c             	add    $0xc,%esp
  5c:	5b                   	pop    %ebx
  5d:	5e                   	pop    %esi
  5e:	c3                   	ret    

Disassembly of section .text.parse_termarg_int:

00000000 <parse_termarg_int>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 d6                	mov    %edx,%esi
   4:	89 cb                	mov    %ecx,%ebx
   6:	80 38 0c             	cmpb   $0xc,(%eax)
   9:	77 3c                	ja     47 <parse_termarg_int+0x47>
   b:	0f b6 10             	movzbl (%eax),%edx
   e:	ff 24 95 00 00 00 00 	jmp    *0x0(,%edx,4)
  15:	be 01 00 00 00       	mov    $0x1,%esi
  1a:	b8 01 00 00 00       	mov    $0x1,%eax
  1f:	eb 41                	jmp    62 <parse_termarg_int+0x62>
  21:	0f b6 40 01          	movzbl 0x1(%eax),%eax
  25:	31 d2                	xor    %edx,%edx
  27:	be 02 00 00 00       	mov    $0x2,%esi
  2c:	eb 36                	jmp    64 <parse_termarg_int+0x64>
  2e:	0f b7 40 01          	movzwl 0x1(%eax),%eax
  32:	31 d2                	xor    %edx,%edx
  34:	be 03 00 00 00       	mov    $0x3,%esi
  39:	eb 29                	jmp    64 <parse_termarg_int+0x64>
  3b:	8b 40 01             	mov    0x1(%eax),%eax
  3e:	31 d2                	xor    %edx,%edx
  40:	be 05 00 00 00       	mov    $0x5,%esi
  45:	eb 1d                	jmp    64 <parse_termarg_int+0x64>
  47:	ba 00 00 00 00       	mov    $0x0,%edx
  4c:	e8 fc ff ff ff       	call   4d <parse_termarg_int+0x4d>
  51:	85 f6                	test   %esi,%esi
  53:	74 06                	je     5b <parse_termarg_int+0x5b>
  55:	c7 06 01 00 00 00    	movl   $0x1,(%esi)
  5b:	be 01 00 00 00       	mov    $0x1,%esi
  60:	31 c0                	xor    %eax,%eax
  62:	31 d2                	xor    %edx,%edx
  64:	85 db                	test   %ebx,%ebx
  66:	74 05                	je     6d <parse_termarg_int+0x6d>
  68:	89 03                	mov    %eax,(%ebx)
  6a:	89 53 04             	mov    %edx,0x4(%ebx)
  6d:	52                   	push   %edx
  6e:	50                   	push   %eax
  6f:	68 00 00 00 00       	push   $0x0
  74:	68 7e 00 00 00       	push   $0x7e
  79:	e8 fc ff ff ff       	call   7a <parse_termarg_int+0x7a>
  7e:	83 c4 10             	add    $0x10,%esp
  81:	89 f0                	mov    %esi,%eax
  83:	5b                   	pop    %ebx
  84:	5e                   	pop    %esi
  85:	c3                   	ret    

Disassembly of section .text.parse_termobj:

00000000 <parse_termobj>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 10             	sub    $0x10,%esp
   7:	89 c7                	mov    %eax,%edi
   9:	8b 40 28             	mov    0x28(%eax),%eax
   c:	83 f8 10             	cmp    $0x10,%eax
   f:	75 22                	jne    33 <parse_termobj+0x33>
  11:	68 00 00 00 00       	push   $0x0
  16:	68 8a 00 00 00       	push   $0x8a
  1b:	e8 fc ff ff ff       	call   1c <parse_termobj+0x1c>
  20:	c7 47 24 01 00 00 00 	movl   $0x1,0x24(%edi)
  27:	5b                   	pop    %ebx
  28:	5e                   	pop    %esi
  29:	be 01 00 00 00       	mov    $0x1,%esi
  2e:	e9 f8 02 00 00       	jmp    32b <parse_termobj+0x32b>
  33:	89 d3                	mov    %edx,%ebx
  35:	40                   	inc    %eax
  36:	89 47 28             	mov    %eax,0x28(%edi)
  39:	0f b6 0a             	movzbl (%edx),%ecx
  3c:	80 f9 14             	cmp    $0x14,%cl
  3f:	77 07                	ja     48 <parse_termobj+0x48>
  41:	ff 24 8d 00 00 00 00 	jmp    *0x0(,%ecx,4)
  48:	80 f9 5b             	cmp    $0x5b,%cl
  4b:	0f 84 4b 01 00 00    	je     19c <parse_termobj+0x19c>
  51:	e9 ba 02 00 00       	jmp    310 <parse_termobj+0x310>
  56:	8d 52 01             	lea    0x1(%edx),%edx
  59:	b9 9e 00 00 00       	mov    $0x9e,%ecx
  5e:	89 f8                	mov    %edi,%eax
  60:	e8 fc ff ff ff       	call   61 <parse_termobj+0x61>
  65:	8d 70 01             	lea    0x1(%eax),%esi
  68:	8d 14 33             	lea    (%ebx,%esi,1),%edx
  6b:	89 f8                	mov    %edi,%eax
  6d:	e8 8e ff ff ff       	call   0 <parse_termobj>
  72:	01 c6                	add    %eax,%esi
  74:	83 7f 20 00          	cmpl   $0x0,0x20(%edi)
  78:	0f 84 aa 02 00 00    	je     328 <parse_termobj+0x328>
  7e:	ba a3 00 00 00       	mov    $0xa3,%edx
  83:	89 f8                	mov    %edi,%eax
  85:	e8 fc ff ff ff       	call   86 <parse_termobj+0x86>
  8a:	85 c0                	test   %eax,%eax
  8c:	0f 85 e1 00 00 00    	jne    173 <parse_termobj+0x173>
  92:	8b 47 20             	mov    0x20(%edi),%eax
  95:	89 58 18             	mov    %ebx,0x18(%eax)
  98:	e9 d6 00 00 00       	jmp    173 <parse_termobj+0x173>
  9d:	be 03 00 00 00       	mov    $0x3,%esi
  a2:	e9 81 02 00 00       	jmp    328 <parse_termobj+0x328>
  a7:	be 05 00 00 00       	mov    $0x5,%esi
  ac:	e9 77 02 00 00       	jmp    328 <parse_termobj+0x328>
  b1:	be 01 00 00 00       	mov    $0x1,%esi
  b6:	8a 04 33             	mov    (%ebx,%esi,1),%al
  b9:	46                   	inc    %esi
  ba:	84 c0                	test   %al,%al
  bc:	75 f8                	jne    b6 <parse_termobj+0xb6>
  be:	e9 65 02 00 00       	jmp    328 <parse_termobj+0x328>
  c3:	43                   	inc    %ebx
  c4:	8d 54 24 08          	lea    0x8(%esp),%edx
  c8:	89 d8                	mov    %ebx,%eax
  ca:	e8 fc ff ff ff       	call   cb <parse_termobj+0xcb>
  cf:	89 c6                	mov    %eax,%esi
  d1:	8d 14 03             	lea    (%ebx,%eax,1),%edx
  d4:	b9 ad 00 00 00       	mov    $0xad,%ecx
  d9:	89 f8                	mov    %edi,%eax
  db:	e8 fc ff ff ff       	call   dc <parse_termobj+0xdc>
  e0:	8d 0c 06             	lea    (%esi,%eax,1),%ecx
  e3:	ff 74 24 08          	push   0x8(%esp)
  e7:	89 da                	mov    %ebx,%edx
  e9:	89 f8                	mov    %edi,%eax
  eb:	e8 fc ff ff ff       	call   ec <parse_termobj+0xec>
  f0:	8b 44 24 0c          	mov    0xc(%esp),%eax
  f4:	eb 5f                	jmp    155 <parse_termobj+0x155>
  f6:	43                   	inc    %ebx
  f7:	8d 54 24 04          	lea    0x4(%esp),%edx
  fb:	89 d8                	mov    %ebx,%eax
  fd:	e8 fc ff ff ff       	call   fe <parse_termobj+0xfe>
 102:	89 c6                	mov    %eax,%esi
 104:	8d 57 24             	lea    0x24(%edi),%edx
 107:	8d 04 03             	lea    (%ebx,%eax,1),%eax
 10a:	8d 4c 24 08          	lea    0x8(%esp),%ecx
 10e:	e8 fc ff ff ff       	call   10f <parse_termobj+0x10f>
 113:	89 c5                	mov    %eax,%ebp
 115:	83 7f 20 00          	cmpl   $0x0,0x20(%edi)
 119:	74 22                	je     13d <parse_termobj+0x13d>
 11b:	ba b3 00 00 00       	mov    $0xb3,%edx
 120:	89 f8                	mov    %edi,%eax
 122:	e8 fc ff ff ff       	call   123 <parse_termobj+0x123>
 127:	85 c0                	test   %eax,%eax
 129:	75 12                	jne    13d <parse_termobj+0x13d>
 12b:	8b 57 20             	mov    0x20(%edi),%edx
 12e:	8d 04 2e             	lea    (%esi,%ebp,1),%eax
 131:	01 c3                	add    %eax,%ebx
 133:	89 5a 20             	mov    %ebx,0x20(%edx)
 136:	8b 44 24 08          	mov    0x8(%esp),%eax
 13a:	89 42 24             	mov    %eax,0x24(%edx)
 13d:	8b 44 24 04          	mov    0x4(%esp),%eax
 141:	8d 70 01             	lea    0x1(%eax),%esi
 144:	e9 df 01 00 00       	jmp    328 <parse_termobj+0x328>
 149:	8d 52 01             	lea    0x1(%edx),%edx
 14c:	6a 00                	push   $0x0
 14e:	89 f8                	mov    %edi,%eax
 150:	e8 fc ff ff ff       	call   151 <parse_termobj+0x151>
 155:	8d 70 01             	lea    0x1(%eax),%esi
 158:	59                   	pop    %ecx
 159:	e9 ca 01 00 00       	jmp    328 <parse_termobj+0x328>
 15e:	8d 52 01             	lea    0x1(%edx),%edx
 161:	6a 01                	push   $0x1
 163:	b9 14 00 00 00       	mov    $0x14,%ecx
 168:	89 f8                	mov    %edi,%eax
 16a:	e8 fc ff ff ff       	call   16b <parse_termobj+0x16b>
 16f:	8d 70 01             	lea    0x1(%eax),%esi
 172:	5a                   	pop    %edx
 173:	83 7f 20 00          	cmpl   $0x0,0x20(%edi)
 177:	0f 84 ab 01 00 00    	je     328 <parse_termobj+0x328>
 17d:	ba a8 00 00 00       	mov    $0xa8,%edx
 182:	89 f8                	mov    %edi,%eax
 184:	e8 fc ff ff ff       	call   185 <parse_termobj+0x185>
 189:	85 c0                	test   %eax,%eax
 18b:	0f 85 97 01 00 00    	jne    328 <parse_termobj+0x328>
 191:	8b 47 20             	mov    0x20(%edi),%eax
 194:	89 58 1c             	mov    %ebx,0x1c(%eax)
 197:	e9 8c 01 00 00       	jmp    328 <parse_termobj+0x328>
 19c:	0f b6 4a 01          	movzbl 0x1(%edx),%ecx
 1a0:	80 f9 81             	cmp    $0x81,%cl
 1a3:	74 71                	je     216 <parse_termobj+0x216>
 1a5:	77 46                	ja     1ed <parse_termobj+0x1ed>
 1a7:	80 f9 01             	cmp    $0x1,%cl
 1aa:	74 53                	je     1ff <parse_termobj+0x1ff>
 1ac:	80 f9 80             	cmp    $0x80,%cl
 1af:	0f 85 41 01 00 00    	jne    2f6 <parse_termobj+0x2f6>
 1b5:	8d 52 02             	lea    0x2(%edx),%edx
 1b8:	b9 be 00 00 00       	mov    $0xbe,%ecx
 1bd:	89 f8                	mov    %edi,%eax
 1bf:	e8 fc ff ff ff       	call   1c0 <parse_termobj+0x1c0>
 1c4:	8d 70 03             	lea    0x3(%eax),%esi
 1c7:	8d 57 24             	lea    0x24(%edi),%edx
 1ca:	8d 04 33             	lea    (%ebx,%esi,1),%eax
 1cd:	31 c9                	xor    %ecx,%ecx
 1cf:	89 14 24             	mov    %edx,(%esp)
 1d2:	e8 fc ff ff ff       	call   1d3 <parse_termobj+0x1d3>
 1d7:	01 c6                	add    %eax,%esi
 1d9:	8d 04 33             	lea    (%ebx,%esi,1),%eax
 1dc:	31 c9                	xor    %ecx,%ecx
 1de:	8b 14 24             	mov    (%esp),%edx
 1e1:	e8 fc ff ff ff       	call   1e2 <parse_termobj+0x1e2>
 1e6:	01 c6                	add    %eax,%esi
 1e8:	e9 3b 01 00 00       	jmp    328 <parse_termobj+0x328>
 1ed:	80 f9 82             	cmp    $0x82,%cl
 1f0:	74 3b                	je     22d <parse_termobj+0x22d>
 1f2:	8d 41 7d             	lea    0x7d(%ecx),%eax
 1f5:	3c 02                	cmp    $0x2,%al
 1f7:	0f 87 f9 00 00 00    	ja     2f6 <parse_termobj+0x2f6>
 1fd:	eb 17                	jmp    216 <parse_termobj+0x216>
 1ff:	8d 52 02             	lea    0x2(%edx),%edx
 202:	b9 b8 00 00 00       	mov    $0xb8,%ecx
 207:	89 f8                	mov    %edi,%eax
 209:	e8 fc ff ff ff       	call   20a <parse_termobj+0x20a>
 20e:	8d 70 03             	lea    0x3(%eax),%esi
 211:	e9 12 01 00 00       	jmp    328 <parse_termobj+0x328>
 216:	80 cd 5b             	or     $0x5b,%ch
 219:	8d 53 02             	lea    0x2(%ebx),%edx
 21c:	6a 01                	push   $0x1
 21e:	89 f8                	mov    %edi,%eax
 220:	e8 fc ff ff ff       	call   221 <parse_termobj+0x221>
 225:	8d 70 02             	lea    0x2(%eax),%esi
 228:	e9 2b ff ff ff       	jmp    158 <parse_termobj+0x158>
 22d:	83 c3 02             	add    $0x2,%ebx
 230:	8d 54 24 08          	lea    0x8(%esp),%edx
 234:	89 d8                	mov    %ebx,%eax
 236:	e8 fc ff ff ff       	call   237 <parse_termobj+0x237>
 23b:	89 c6                	mov    %eax,%esi
 23d:	8d 14 03             	lea    (%ebx,%eax,1),%edx
 240:	b9 c8 00 00 00       	mov    $0xc8,%ecx
 245:	89 f8                	mov    %edi,%eax
 247:	e8 fc ff ff ff       	call   248 <parse_termobj+0x248>
 24c:	01 c6                	add    %eax,%esi
 24e:	b9 10 00 00 00       	mov    $0x10,%ecx
 253:	ba 28 00 00 00       	mov    $0x28,%edx
 258:	b8 00 00 00 00       	mov    $0x0,%eax
 25d:	e8 fc ff ff ff       	call   25e <parse_termobj+0x25e>
 262:	85 c0                	test   %eax,%eax
 264:	75 14                	jne    27a <parse_termobj+0x27a>
 266:	b9 10 00 00 00       	mov    $0x10,%ecx
 26b:	ba 28 00 00 00       	mov    $0x28,%edx
 270:	b8 00 00 00 00       	mov    $0x0,%eax
 275:	e8 fc ff ff ff       	call   276 <parse_termobj+0x276>
 27a:	89 47 20             	mov    %eax,0x20(%edi)
 27d:	85 c0                	test   %eax,%eax
 27f:	75 1c                	jne    29d <parse_termobj+0x29d>
 281:	ba 00 00 00 00       	mov    $0x0,%edx
 286:	b8 66 01 00 00       	mov    $0x166,%eax
 28b:	e8 fc ff ff ff       	call   28c <parse_termobj+0x28c>
 290:	c7 47 24 01 00 00 00 	movl   $0x1,0x24(%edi)
 297:	8b 74 24 08          	mov    0x8(%esp),%esi
 29b:	eb 54                	jmp    2f1 <parse_termobj+0x2f1>
 29d:	b9 28 00 00 00       	mov    $0x28,%ecx
 2a2:	31 d2                	xor    %edx,%edx
 2a4:	e8 fc ff ff ff       	call   2a5 <parse_termobj+0x2a5>
 2a9:	8b 47 20             	mov    0x20(%edi),%eax
 2ac:	8b 15 00 00 00 00    	mov    0x0,%edx
 2b2:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 2b9:	89 10                	mov    %edx,(%eax)
 2bb:	85 d2                	test   %edx,%edx
 2bd:	74 03                	je     2c2 <parse_termobj+0x2c2>
 2bf:	89 42 04             	mov    %eax,0x4(%edx)
 2c2:	a3 00 00 00 00       	mov    %eax,0x0
 2c7:	83 c0 08             	add    $0x8,%eax
 2ca:	b9 20 00 00 00       	mov    $0x20,%ecx
 2cf:	89 fa                	mov    %edi,%edx
 2d1:	e8 fc ff ff ff       	call   2d2 <parse_termobj+0x2d2>
 2d6:	ff 74 24 08          	push   0x8(%esp)
 2da:	89 f1                	mov    %esi,%ecx
 2dc:	89 da                	mov    %ebx,%edx
 2de:	89 f8                	mov    %edi,%eax
 2e0:	e8 fc ff ff ff       	call   2e1 <parse_termobj+0x2e1>
 2e5:	c7 47 20 00 00 00 00 	movl   $0x0,0x20(%edi)
 2ec:	8b 74 24 0c          	mov    0xc(%esp),%esi
 2f0:	58                   	pop    %eax
 2f1:	83 c6 02             	add    $0x2,%esi
 2f4:	eb 32                	jmp    328 <parse_termobj+0x328>
 2f6:	ba 00 00 00 00       	mov    $0x0,%edx
 2fb:	89 d8                	mov    %ebx,%eax
 2fd:	e8 fc ff ff ff       	call   2fe <parse_termobj+0x2fe>
 302:	c7 47 24 01 00 00 00 	movl   $0x1,0x24(%edi)
 309:	be 02 00 00 00       	mov    $0x2,%esi
 30e:	eb 18                	jmp    328 <parse_termobj+0x328>
 310:	ba 00 00 00 00       	mov    $0x0,%edx
 315:	89 d8                	mov    %ebx,%eax
 317:	e8 fc ff ff ff       	call   318 <parse_termobj+0x318>
 31c:	c7 47 24 01 00 00 00 	movl   $0x1,0x24(%edi)
 323:	be 01 00 00 00       	mov    $0x1,%esi
 328:	ff 4f 28             	decl   0x28(%edi)
 32b:	89 f0                	mov    %esi,%eax
 32d:	83 c4 10             	add    $0x10,%esp
 330:	5b                   	pop    %ebx
 331:	5e                   	pop    %esi
 332:	5f                   	pop    %edi
 333:	5d                   	pop    %ebp
 334:	c3                   	ret    

Disassembly of section .text.parse_termlist:

00000000 <parse_termlist>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 c6                	mov    %eax,%esi
   6:	89 d5                	mov    %edx,%ebp
   8:	89 cb                	mov    %ecx,%ebx
   a:	8b 7c 24 14          	mov    0x14(%esp),%edi
   e:	8d 54 1d 00          	lea    0x0(%ebp,%ebx,1),%edx
  12:	89 f0                	mov    %esi,%eax
  14:	e8 fc ff ff ff       	call   15 <parse_termlist+0x15>
  19:	01 c3                	add    %eax,%ebx
  1b:	39 fb                	cmp    %edi,%ebx
  1d:	74 3d                	je     5c <parse_termlist+0x5c>
  1f:	7e 1a                	jle    3b <parse_termlist+0x3b>
  21:	57                   	push   %edi
  22:	53                   	push   %ebx
  23:	68 00 00 00 00       	push   $0x0
  28:	68 cf 00 00 00       	push   $0xcf
  2d:	e8 fc ff ff ff       	call   2e <parse_termlist+0x2e>
  32:	c7 46 24 01 00 00 00 	movl   $0x1,0x24(%esi)
  39:	eb 1e                	jmp    59 <parse_termlist+0x59>
  3b:	83 7e 24 00          	cmpl   $0x0,0x24(%esi)
  3f:	74 cd                	je     e <parse_termlist+0xe>
  41:	57                   	push   %edi
  42:	53                   	push   %ebx
  43:	68 00 00 00 00       	push   $0x0
  48:	68 e3 00 00 00       	push   $0xe3
  4d:	e8 fc ff ff ff       	call   4e <parse_termlist+0x4e>
  52:	c7 46 24 00 00 00 00 	movl   $0x0,0x24(%esi)
  59:	83 c4 10             	add    $0x10,%esp
  5c:	5b                   	pop    %ebx
  5d:	5e                   	pop    %esi
  5e:	5f                   	pop    %edi
  5f:	5d                   	pop    %ebp
  60:	c3                   	ret    

Disassembly of section .text.acpi_dsdt_find_string:

00000000 <acpi_dsdt_find_string>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	83 ec 0c             	sub    $0xc,%esp
   6:	89 c3                	mov    %eax,%ebx
   8:	52                   	push   %edx
   9:	68 05 01 00 00       	push   $0x105
   e:	6a 0a                	push   $0xa
  10:	8d 74 24 0e          	lea    0xe(%esp),%esi
  14:	56                   	push   %esi
  15:	e8 fc ff ff ff       	call   16 <acpi_dsdt_find_string+0x16>
  1a:	89 c7                	mov    %eax,%edi
  1c:	83 c4 10             	add    $0x10,%esp
  1f:	85 db                	test   %ebx,%ebx
  21:	75 11                	jne    34 <acpi_dsdt_find_string+0x34>
  23:	8b 1d 00 00 00 00    	mov    0x0,%ebx
  29:	85 db                	test   %ebx,%ebx
  2b:	74 1b                	je     48 <acpi_dsdt_find_string+0x48>
  2d:	8b 43 18             	mov    0x18(%ebx),%eax
  30:	85 c0                	test   %eax,%eax
  32:	75 04                	jne    38 <acpi_dsdt_find_string+0x38>
  34:	8b 1b                	mov    (%ebx),%ebx
  36:	eb f1                	jmp    29 <acpi_dsdt_find_string+0x29>
  38:	83 c0 05             	add    $0x5,%eax
  3b:	89 f9                	mov    %edi,%ecx
  3d:	89 f2                	mov    %esi,%edx
  3f:	e8 fc ff ff ff       	call   40 <acpi_dsdt_find_string+0x40>
  44:	85 c0                	test   %eax,%eax
  46:	75 ec                	jne    34 <acpi_dsdt_find_string+0x34>
  48:	89 d8                	mov    %ebx,%eax
  4a:	83 c4 0c             	add    $0xc,%esp
  4d:	5b                   	pop    %ebx
  4e:	5e                   	pop    %esi
  4f:	5f                   	pop    %edi
  50:	c3                   	ret    

Disassembly of section .text.acpi_dsdt_find_eisaid:

00000000 <acpi_dsdt_find_eisaid>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	83 ec 10             	sub    $0x10,%esp
   6:	89 c3                	mov    %eax,%ebx
   8:	66 c7 44 24 01 0c 41 	movw   $0x410c,0x1(%esp)
   f:	c6 44 24 03 d0       	movb   $0xd0,0x3(%esp)
  14:	89 d0                	mov    %edx,%eax
  16:	86 e0                	xchg   %ah,%al
  18:	66 89 44 24 04       	mov    %ax,0x4(%esp)
  1d:	0f b7 d2             	movzwl %dx,%edx
  20:	52                   	push   %edx
  21:	68 09 01 00 00       	push   $0x109
  26:	6a 0a                	push   $0xa
  28:	8d 7c 24 12          	lea    0x12(%esp),%edi
  2c:	57                   	push   %edi
  2d:	e8 fc ff ff ff       	call   2e <acpi_dsdt_find_eisaid+0x2e>
  32:	89 c6                	mov    %eax,%esi
  34:	83 c4 10             	add    $0x10,%esp
  37:	85 db                	test   %ebx,%ebx
  39:	75 11                	jne    4c <acpi_dsdt_find_eisaid+0x4c>
  3b:	8b 1d 00 00 00 00    	mov    0x0,%ebx
  41:	85 db                	test   %ebx,%ebx
  43:	74 33                	je     78 <acpi_dsdt_find_eisaid+0x78>
  45:	8b 43 18             	mov    0x18(%ebx),%eax
  48:	85 c0                	test   %eax,%eax
  4a:	75 04                	jne    50 <acpi_dsdt_find_eisaid+0x50>
  4c:	8b 1b                	mov    (%ebx),%ebx
  4e:	eb f1                	jmp    41 <acpi_dsdt_find_eisaid+0x41>
  50:	83 c0 05             	add    $0x5,%eax
  53:	b9 05 00 00 00       	mov    $0x5,%ecx
  58:	8d 54 24 01          	lea    0x1(%esp),%edx
  5c:	e8 fc ff ff ff       	call   5d <acpi_dsdt_find_eisaid+0x5d>
  61:	85 c0                	test   %eax,%eax
  63:	74 13                	je     78 <acpi_dsdt_find_eisaid+0x78>
  65:	8b 43 18             	mov    0x18(%ebx),%eax
  68:	83 c0 05             	add    $0x5,%eax
  6b:	89 f1                	mov    %esi,%ecx
  6d:	89 fa                	mov    %edi,%edx
  6f:	e8 fc ff ff ff       	call   70 <acpi_dsdt_find_eisaid+0x70>
  74:	85 c0                	test   %eax,%eax
  76:	75 d4                	jne    4c <acpi_dsdt_find_eisaid+0x4c>
  78:	89 d8                	mov    %ebx,%eax
  7a:	83 c4 10             	add    $0x10,%esp
  7d:	5b                   	pop    %ebx
  7e:	5e                   	pop    %esi
  7f:	5f                   	pop    %edi
  80:	c3                   	ret    

Disassembly of section .text.acpi_dsdt_name:

00000000 <acpi_dsdt_name>:
   0:	85 c0                	test   %eax,%eax
   2:	74 03                	je     7 <acpi_dsdt_name+0x7>
   4:	83 c0 08             	add    $0x8,%eax
   7:	c3                   	ret    

Disassembly of section .text.acpi_dsdt_find_io:

00000000 <acpi_dsdt_find_io>:
   0:	85 c0                	test   %eax,%eax
   2:	74 25                	je     29 <acpi_dsdt_find_io+0x29>
   4:	56                   	push   %esi
   5:	53                   	push   %ebx
   6:	89 c3                	mov    %eax,%ebx
   8:	8b 70 20             	mov    0x20(%eax),%esi
   b:	83 c8 ff             	or     $0xffffffff,%eax
   e:	85 f6                	test   %esi,%esi
  10:	74 1b                	je     2d <acpi_dsdt_find_io+0x2d>
  12:	8b 43 24             	mov    0x24(%ebx),%eax
  15:	51                   	push   %ecx
  16:	52                   	push   %edx
  17:	b9 01 00 00 00       	mov    $0x1,%ecx
  1c:	89 c2                	mov    %eax,%edx
  1e:	89 f0                	mov    %esi,%eax
  20:	e8 fc ff ff ff       	call   21 <acpi_dsdt_find_io+0x21>
  25:	5a                   	pop    %edx
  26:	59                   	pop    %ecx
  27:	eb 04                	jmp    2d <acpi_dsdt_find_io+0x2d>
  29:	83 c8 ff             	or     $0xffffffff,%eax
  2c:	c3                   	ret    
  2d:	5b                   	pop    %ebx
  2e:	5e                   	pop    %esi
  2f:	c3                   	ret    

Disassembly of section .text.acpi_dsdt_find_mem:

00000000 <acpi_dsdt_find_mem>:
   0:	85 c0                	test   %eax,%eax
   2:	74 22                	je     26 <acpi_dsdt_find_mem+0x26>
   4:	56                   	push   %esi
   5:	53                   	push   %ebx
   6:	89 c3                	mov    %eax,%ebx
   8:	8b 70 20             	mov    0x20(%eax),%esi
   b:	83 c8 ff             	or     $0xffffffff,%eax
   e:	85 f6                	test   %esi,%esi
  10:	74 18                	je     2a <acpi_dsdt_find_mem+0x2a>
  12:	8b 43 24             	mov    0x24(%ebx),%eax
  15:	51                   	push   %ecx
  16:	52                   	push   %edx
  17:	31 c9                	xor    %ecx,%ecx
  19:	89 c2                	mov    %eax,%edx
  1b:	89 f0                	mov    %esi,%eax
  1d:	e8 fc ff ff ff       	call   1e <acpi_dsdt_find_mem+0x1e>
  22:	5a                   	pop    %edx
  23:	59                   	pop    %ecx
  24:	eb 04                	jmp    2a <acpi_dsdt_find_mem+0x2a>
  26:	83 c8 ff             	or     $0xffffffff,%eax
  29:	c3                   	ret    
  2a:	5b                   	pop    %ebx
  2b:	5e                   	pop    %esi
  2c:	c3                   	ret    

Disassembly of section .text.acpi_dsdt_find_irq:

00000000 <acpi_dsdt_find_irq>:
   0:	85 c0                	test   %eax,%eax
   2:	74 27                	je     2b <acpi_dsdt_find_irq+0x2b>
   4:	53                   	push   %ebx
   5:	83 ec 08             	sub    $0x8,%esp
   8:	89 c1                	mov    %eax,%ecx
   a:	8b 58 20             	mov    0x20(%eax),%ebx
   d:	83 c8 ff             	or     $0xffffffff,%eax
  10:	85 db                	test   %ebx,%ebx
  12:	74 1b                	je     2f <acpi_dsdt_find_irq+0x2f>
  14:	8b 41 24             	mov    0x24(%ecx),%eax
  17:	54                   	push   %esp
  18:	52                   	push   %edx
  19:	b9 03 00 00 00       	mov    $0x3,%ecx
  1e:	89 c2                	mov    %eax,%edx
  20:	89 d8                	mov    %ebx,%eax
  22:	e8 fc ff ff ff       	call   23 <acpi_dsdt_find_irq+0x23>
  27:	5b                   	pop    %ebx
  28:	5a                   	pop    %edx
  29:	eb 04                	jmp    2f <acpi_dsdt_find_irq+0x2f>
  2b:	83 c8 ff             	or     $0xffffffff,%eax
  2e:	c3                   	ret    
  2f:	83 c4 08             	add    $0x8,%esp
  32:	5b                   	pop    %ebx
  33:	c3                   	ret    

Disassembly of section .text.acpi_dsdt_present_eisaid:

00000000 <acpi_dsdt_present_eisaid>:
   0:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
   7:	74 54                	je     5d <acpi_dsdt_present_eisaid+0x5d>
   9:	83 ec 08             	sub    $0x8,%esp
   c:	0f b7 d0             	movzwl %ax,%edx
   f:	31 c0                	xor    %eax,%eax
  11:	e8 fc ff ff ff       	call   12 <acpi_dsdt_present_eisaid+0x12>
  16:	31 d2                	xor    %edx,%edx
  18:	85 c0                	test   %eax,%eax
  1a:	74 3b                	je     57 <acpi_dsdt_present_eisaid+0x57>
  1c:	8b 40 1c             	mov    0x1c(%eax),%eax
  1f:	ba 01 00 00 00       	mov    $0x1,%edx
  24:	85 c0                	test   %eax,%eax
  26:	74 2f                	je     57 <acpi_dsdt_present_eisaid+0x57>
  28:	83 ca ff             	or     $0xffffffff,%edx
  2b:	80 38 08             	cmpb   $0x8,(%eax)
  2e:	75 27                	jne    57 <acpi_dsdt_present_eisaid+0x57>
  30:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  37:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  3e:	00 
  3f:	83 c0 05             	add    $0x5,%eax
  42:	89 e1                	mov    %esp,%ecx
  44:	31 d2                	xor    %edx,%edx
  46:	e8 fc ff ff ff       	call   47 <acpi_dsdt_present_eisaid+0x47>
  4b:	8b 04 24             	mov    (%esp),%eax
  4e:	31 d2                	xor    %edx,%edx
  50:	0b 44 24 04          	or     0x4(%esp),%eax
  54:	0f 95 c2             	setne  %dl
  57:	89 d0                	mov    %edx,%eax
  59:	83 c4 08             	add    $0x8,%esp
  5c:	c3                   	ret    
  5d:	83 c8 ff             	or     $0xffffffff,%eax
  60:	c3                   	ret    

Disassembly of section .text.acpi_dsdt_parse:

00000000 <acpi_dsdt_parse>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	83 ec 2c             	sub    $0x2c,%esp
   5:	b8 46 41 43 50       	mov    $0x50434146,%eax
   a:	e8 fc ff ff ff       	call   b <acpi_dsdt_parse+0xb>
   f:	85 c0                	test   %eax,%eax
  11:	74 3a                	je     4d <acpi_dsdt_parse+0x4d>
  13:	8b 58 28             	mov    0x28(%eax),%ebx
  16:	85 db                	test   %ebx,%ebx
  18:	74 33                	je     4d <acpi_dsdt_parse+0x4d>
  1a:	8b 73 04             	mov    0x4(%ebx),%esi
  1d:	56                   	push   %esi
  1e:	53                   	push   %ebx
  1f:	68 12 01 00 00       	push   $0x112
  24:	e8 fc ff ff ff       	call   25 <acpi_dsdt_parse+0x25>
  29:	b9 2c 00 00 00       	mov    $0x2c,%ecx
  2e:	31 d2                	xor    %edx,%edx
  30:	8d 44 24 0c          	lea    0xc(%esp),%eax
  34:	e8 fc ff ff ff       	call   35 <acpi_dsdt_parse+0x35>
  39:	56                   	push   %esi
  3a:	b9 24 00 00 00       	mov    $0x24,%ecx
  3f:	89 da                	mov    %ebx,%edx
  41:	8d 44 24 10          	lea    0x10(%esp),%eax
  45:	e8 fc ff ff ff       	call   46 <acpi_dsdt_parse+0x46>
  4a:	83 c4 10             	add    $0x10,%esp
  4d:	83 c4 2c             	add    $0x2c,%esp
  50:	5b                   	pop    %ebx
  51:	5e                   	pop    %esi
  52:	c3                   	ret    
