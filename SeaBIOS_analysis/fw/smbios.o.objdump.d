
./smbios.o:     file format elf32-i386


Disassembly of section .text.get_field:

00000000 <get_field>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	83 c4 80             	add    $0xffffff80,%esp
   5:	89 ce                	mov    %ecx,%esi
   7:	52                   	push   %edx
   8:	50                   	push   %eax
   9:	68 00 00 00 00       	push   $0x0
   e:	68 80 00 00 00       	push   $0x80
  13:	8d 5c 24 10          	lea    0x10(%esp),%ebx
  17:	53                   	push   %ebx
  18:	e8 fc ff ff ff       	call   19 <get_field+0x19>
  1d:	89 d8                	mov    %ebx,%eax
  1f:	e8 fc ff ff ff       	call   20 <get_field+0x20>
  24:	83 c4 14             	add    $0x14,%esp
  27:	85 c0                	test   %eax,%eax
  29:	74 18                	je     43 <get_field+0x43>
  2b:	89 c3                	mov    %eax,%ebx
  2d:	8b 88 84 00 00 00    	mov    0x84(%eax),%ecx
  33:	89 f2                	mov    %esi,%edx
  35:	ff 93 88 00 00 00    	call   *0x88(%ebx)
  3b:	8b 83 84 00 00 00    	mov    0x84(%ebx),%eax
  41:	eb 02                	jmp    45 <get_field+0x45>
  43:	31 c0                	xor    %eax,%eax
  45:	83 ec 80             	sub    $0xffffff80,%esp
  48:	5b                   	pop    %ebx
  49:	5e                   	pop    %esi
  4a:	c3                   	ret    

Disassembly of section .text.smbios_init_type_17:

00000000 <smbios_init_type_17>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	81 ec 04 04 00 00    	sub    $0x404,%esp
   a:	89 c3                	mov    %eax,%ebx
   c:	89 d5                	mov    %edx,%ebp
   e:	89 ce                	mov    %ecx,%esi
  10:	83 c0 15             	add    $0x15,%eax
  13:	89 04 24             	mov    %eax,(%esp)
  16:	66 c7 03 11 15       	movw   $0x1511,(%ebx)
  1b:	8d 81 00 11 00 00    	lea    0x1100(%ecx),%eax
  21:	66 89 43 02          	mov    %ax,0x2(%ebx)
  25:	66 c7 43 04 00 10    	movw   $0x1000,0x4(%ebx)
  2b:	8d 4b 08             	lea    0x8(%ebx),%ecx
  2e:	ba 08 00 00 00       	mov    $0x8,%edx
  33:	b8 11 00 00 00       	mov    $0x11,%eax
  38:	e8 fc ff ff ff       	call   39 <smbios_init_type_17+0x39>
  3d:	85 c0                	test   %eax,%eax
  3f:	75 06                	jne    47 <smbios_init_type_17+0x47>
  41:	66 c7 43 08 40 00    	movw   $0x40,0x8(%ebx)
  47:	8d 4b 0a             	lea    0xa(%ebx),%ecx
  4a:	ba 0a 00 00 00       	mov    $0xa,%edx
  4f:	b8 11 00 00 00       	mov    $0x11,%eax
  54:	e8 fc ff ff ff       	call   55 <smbios_init_type_17+0x55>
  59:	85 c0                	test   %eax,%eax
  5b:	75 06                	jne    63 <smbios_init_type_17+0x63>
  5d:	66 c7 43 0a 40 00    	movw   $0x40,0xa(%ebx)
  63:	66 89 6b 0c          	mov    %bp,0xc(%ebx)
  67:	8d 4b 0e             	lea    0xe(%ebx),%ecx
  6a:	ba 0e 00 00 00       	mov    $0xe,%edx
  6f:	b8 11 00 00 00       	mov    $0x11,%eax
  74:	e8 fc ff ff ff       	call   75 <smbios_init_type_17+0x75>
  79:	85 c0                	test   %eax,%eax
  7b:	75 04                	jne    81 <smbios_init_type_17+0x81>
  7d:	c6 43 0e 09          	movb   $0x9,0xe(%ebx)
  81:	c6 43 0f 00          	movb   $0x0,0xf(%ebx)
  85:	8d 6c 24 04          	lea    0x4(%esp),%ebp
  89:	89 e9                	mov    %ebp,%ecx
  8b:	ba 10 00 00 00       	mov    $0x10,%edx
  90:	b8 11 00 00 00       	mov    $0x11,%eax
  95:	e8 fc ff ff ff       	call   96 <smbios_init_type_17+0x96>
  9a:	85 c0                	test   %eax,%eax
  9c:	74 15                	je     b3 <smbios_init_type_17+0xb3>
  9e:	56                   	push   %esi
  9f:	68 12 00 00 00       	push   $0x12
  a4:	ba 00 04 00 00       	mov    $0x400,%edx
  a9:	29 c2                	sub    %eax,%edx
  ab:	52                   	push   %edx
  ac:	8d 44 05 ff          	lea    -0x1(%ebp,%eax,1),%eax
  b0:	50                   	push   %eax
  b1:	eb 0c                	jmp    bf <smbios_init_type_17+0xbf>
  b3:	56                   	push   %esi
  b4:	68 15 00 00 00       	push   $0x15
  b9:	68 00 04 00 00       	push   $0x400
  be:	55                   	push   %ebp
  bf:	e8 fc ff ff ff       	call   c0 <smbios_init_type_17+0xc0>
  c4:	83 c4 10             	add    $0x10,%esp
  c7:	89 e8                	mov    %ebp,%eax
  c9:	e8 fc ff ff ff       	call   ca <smbios_init_type_17+0xca>
  ce:	8d 48 01             	lea    0x1(%eax),%ecx
  d1:	8b 3c 24             	mov    (%esp),%edi
  d4:	89 ee                	mov    %ebp,%esi
  d6:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  d8:	89 e8                	mov    %ebp,%eax
  da:	e8 fc ff ff ff       	call   db <smbios_init_type_17+0xdb>
  df:	8b 3c 24             	mov    (%esp),%edi
  e2:	8d 6c 07 01          	lea    0x1(%edi,%eax,1),%ebp
  e6:	c6 43 10 01          	movb   $0x1,0x10(%ebx)
  ea:	89 e9                	mov    %ebp,%ecx
  ec:	ba 11 00 00 00       	mov    $0x11,%edx
  f1:	b8 11 00 00 00       	mov    $0x11,%eax
  f6:	e8 fc ff ff ff       	call   f7 <smbios_init_type_17+0xf7>
  fb:	31 d2                	xor    %edx,%edx
  fd:	83 f8 01             	cmp    $0x1,%eax
 100:	76 04                	jbe    106 <smbios_init_type_17+0x106>
 102:	01 c5                	add    %eax,%ebp
 104:	b2 02                	mov    $0x2,%dl
 106:	88 53 11             	mov    %dl,0x11(%ebx)
 109:	8d 4b 12             	lea    0x12(%ebx),%ecx
 10c:	ba 12 00 00 00       	mov    $0x12,%edx
 111:	b8 11 00 00 00       	mov    $0x11,%eax
 116:	e8 fc ff ff ff       	call   117 <smbios_init_type_17+0x117>
 11b:	85 c0                	test   %eax,%eax
 11d:	75 04                	jne    123 <smbios_init_type_17+0x123>
 11f:	c6 43 12 07          	movb   $0x7,0x12(%ebx)
 123:	8d 4b 13             	lea    0x13(%ebx),%ecx
 126:	ba 13 00 00 00       	mov    $0x13,%edx
 12b:	b8 11 00 00 00       	mov    $0x11,%eax
 130:	e8 fc ff ff ff       	call   131 <smbios_init_type_17+0x131>
 135:	85 c0                	test   %eax,%eax
 137:	75 06                	jne    13f <smbios_init_type_17+0x13f>
 139:	66 c7 43 13 00 00    	movw   $0x0,0x13(%ebx)
 13f:	c6 45 00 00          	movb   $0x0,0x0(%ebp)
 143:	8d 45 01             	lea    0x1(%ebp),%eax
 146:	81 c4 04 04 00 00    	add    $0x404,%esp
 14c:	5b                   	pop    %ebx
 14d:	5e                   	pop    %esi
 14e:	5f                   	pop    %edi
 14f:	5d                   	pop    %ebp
 150:	c3                   	ret    

Disassembly of section .text.smbios_init_type_4:

00000000 <smbios_init_type_4>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	81 ec 14 04 00 00    	sub    $0x414,%esp
   a:	89 c3                	mov    %eax,%ebx
   c:	89 d6                	mov    %edx,%esi
   e:	83 c0 20             	add    $0x20,%eax
  11:	89 04 24             	mov    %eax,(%esp)
  14:	66 c7 03 04 20       	movw   $0x2004,(%ebx)
  19:	8d 82 00 04 00 00    	lea    0x400(%edx),%eax
  1f:	66 89 43 02          	mov    %ax,0x2(%ebx)
  23:	8d 6c 24 14          	lea    0x14(%esp),%ebp
  27:	89 e9                	mov    %ebp,%ecx
  29:	ba 04 00 00 00       	mov    $0x4,%edx
  2e:	b8 04 00 00 00       	mov    $0x4,%eax
  33:	e8 fc ff ff ff       	call   34 <smbios_init_type_4+0x34>
  38:	85 c0                	test   %eax,%eax
  3a:	74 15                	je     51 <smbios_init_type_4+0x51>
  3c:	56                   	push   %esi
  3d:	68 1d 00 00 00       	push   $0x1d
  42:	ba 00 04 00 00       	mov    $0x400,%edx
  47:	29 c2                	sub    %eax,%edx
  49:	52                   	push   %edx
  4a:	8d 44 05 ff          	lea    -0x1(%ebp,%eax,1),%eax
  4e:	50                   	push   %eax
  4f:	eb 0c                	jmp    5d <smbios_init_type_4+0x5d>
  51:	56                   	push   %esi
  52:	68 21 00 00 00       	push   $0x21
  57:	68 00 04 00 00       	push   $0x400
  5c:	55                   	push   %ebp
  5d:	e8 fc ff ff ff       	call   5e <smbios_init_type_4+0x5e>
  62:	83 c4 10             	add    $0x10,%esp
  65:	89 e8                	mov    %ebp,%eax
  67:	e8 fc ff ff ff       	call   68 <smbios_init_type_4+0x68>
  6c:	8d 48 01             	lea    0x1(%eax),%ecx
  6f:	8b 3c 24             	mov    (%esp),%edi
  72:	89 ee                	mov    %ebp,%esi
  74:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  76:	89 e8                	mov    %ebp,%eax
  78:	e8 fc ff ff ff       	call   79 <smbios_init_type_4+0x79>
  7d:	8b 3c 24             	mov    (%esp),%edi
  80:	8d 6c 07 01          	lea    0x1(%edi,%eax,1),%ebp
  84:	c6 43 04 01          	movb   $0x1,0x4(%ebx)
  88:	8d 4b 05             	lea    0x5(%ebx),%ecx
  8b:	ba 05 00 00 00       	mov    $0x5,%edx
  90:	b8 04 00 00 00       	mov    $0x4,%eax
  95:	e8 fc ff ff ff       	call   96 <smbios_init_type_4+0x96>
  9a:	85 c0                	test   %eax,%eax
  9c:	75 04                	jne    a2 <smbios_init_type_4+0xa2>
  9e:	c6 43 05 03          	movb   $0x3,0x5(%ebx)
  a2:	8d 4b 06             	lea    0x6(%ebx),%ecx
  a5:	ba 06 00 00 00       	mov    $0x6,%edx
  aa:	b8 04 00 00 00       	mov    $0x4,%eax
  af:	e8 fc ff ff ff       	call   b0 <smbios_init_type_4+0xb0>
  b4:	85 c0                	test   %eax,%eax
  b6:	75 04                	jne    bc <smbios_init_type_4+0xbc>
  b8:	c6 43 06 01          	movb   $0x1,0x6(%ebx)
  bc:	89 e9                	mov    %ebp,%ecx
  be:	ba 07 00 00 00       	mov    $0x7,%edx
  c3:	b8 04 00 00 00       	mov    $0x4,%eax
  c8:	e8 fc ff ff ff       	call   c9 <smbios_init_type_4+0xc9>
  cd:	83 f8 01             	cmp    $0x1,%eax
  d0:	74 1f                	je     f1 <smbios_init_type_4+0xf1>
  d2:	76 04                	jbe    d8 <smbios_init_type_4+0xd8>
  d4:	01 c5                	add    %eax,%ebp
  d6:	eb 10                	jmp    e8 <smbios_init_type_4+0xe8>
  d8:	c7 45 00 42 6f 63 68 	movl   $0x68636f42,0x0(%ebp)
  df:	66 c7 45 04 73 00    	movw   $0x73,0x4(%ebp)
  e5:	83 c5 06             	add    $0x6,%ebp
  e8:	b0 02                	mov    $0x2,%al
  ea:	be 02 00 00 00       	mov    $0x2,%esi
  ef:	eb 07                	jmp    f8 <smbios_init_type_4+0xf8>
  f1:	31 c0                	xor    %eax,%eax
  f3:	be 01 00 00 00       	mov    $0x1,%esi
  f8:	88 43 07             	mov    %al,0x7(%ebx)
  fb:	8d 4b 08             	lea    0x8(%ebx),%ecx
  fe:	ba 08 00 00 00       	mov    $0x8,%edx
 103:	b8 04 00 00 00       	mov    $0x4,%eax
 108:	e8 fc ff ff ff       	call   109 <smbios_init_type_4+0x109>
 10d:	85 c0                	test   %eax,%eax
 10f:	75 2c                	jne    13d <smbios_init_type_4+0x13d>
 111:	8d 44 24 10          	lea    0x10(%esp),%eax
 115:	50                   	push   %eax
 116:	8d 44 24 10          	lea    0x10(%esp),%eax
 11a:	50                   	push   %eax
 11b:	8d 4c 24 10          	lea    0x10(%esp),%ecx
 11f:	8d 54 24 0c          	lea    0xc(%esp),%edx
 123:	b8 01 00 00 00       	mov    $0x1,%eax
 128:	e8 fc ff ff ff       	call   129 <smbios_init_type_4+0x129>
 12d:	8b 44 24 0c          	mov    0xc(%esp),%eax
 131:	89 43 08             	mov    %eax,0x8(%ebx)
 134:	8b 44 24 18          	mov    0x18(%esp),%eax
 138:	89 43 0c             	mov    %eax,0xc(%ebx)
 13b:	58                   	pop    %eax
 13c:	5a                   	pop    %edx
 13d:	89 e9                	mov    %ebp,%ecx
 13f:	ba 10 00 00 00       	mov    $0x10,%edx
 144:	b8 04 00 00 00       	mov    $0x4,%eax
 149:	e8 fc ff ff ff       	call   14a <smbios_init_type_4+0x14a>
 14e:	31 d2                	xor    %edx,%edx
 150:	83 f8 01             	cmp    $0x1,%eax
 153:	76 05                	jbe    15a <smbios_init_type_4+0x15a>
 155:	01 c5                	add    %eax,%ebp
 157:	8d 56 01             	lea    0x1(%esi),%edx
 15a:	88 53 10             	mov    %dl,0x10(%ebx)
 15d:	8d 4b 11             	lea    0x11(%ebx),%ecx
 160:	ba 11 00 00 00       	mov    $0x11,%edx
 165:	b8 04 00 00 00       	mov    $0x4,%eax
 16a:	e8 fc ff ff ff       	call   16b <smbios_init_type_4+0x16b>
 16f:	85 c0                	test   %eax,%eax
 171:	75 04                	jne    177 <smbios_init_type_4+0x177>
 173:	c6 43 11 00          	movb   $0x0,0x11(%ebx)
 177:	8d 4b 12             	lea    0x12(%ebx),%ecx
 17a:	ba 12 00 00 00       	mov    $0x12,%edx
 17f:	b8 04 00 00 00       	mov    $0x4,%eax
 184:	e8 fc ff ff ff       	call   185 <smbios_init_type_4+0x185>
 189:	85 c0                	test   %eax,%eax
 18b:	75 06                	jne    193 <smbios_init_type_4+0x193>
 18d:	66 c7 43 12 00 00    	movw   $0x0,0x12(%ebx)
 193:	8d 4b 14             	lea    0x14(%ebx),%ecx
 196:	ba 14 00 00 00       	mov    $0x14,%edx
 19b:	b8 04 00 00 00       	mov    $0x4,%eax
 1a0:	e8 fc ff ff ff       	call   1a1 <smbios_init_type_4+0x1a1>
 1a5:	85 c0                	test   %eax,%eax
 1a7:	75 06                	jne    1af <smbios_init_type_4+0x1af>
 1a9:	66 c7 43 14 d0 07    	movw   $0x7d0,0x14(%ebx)
 1af:	8d 4b 16             	lea    0x16(%ebx),%ecx
 1b2:	ba 16 00 00 00       	mov    $0x16,%edx
 1b7:	b8 04 00 00 00       	mov    $0x4,%eax
 1bc:	e8 fc ff ff ff       	call   1bd <smbios_init_type_4+0x1bd>
 1c1:	85 c0                	test   %eax,%eax
 1c3:	75 06                	jne    1cb <smbios_init_type_4+0x1cb>
 1c5:	66 c7 43 16 d0 07    	movw   $0x7d0,0x16(%ebx)
 1cb:	8d 4b 18             	lea    0x18(%ebx),%ecx
 1ce:	ba 18 00 00 00       	mov    $0x18,%edx
 1d3:	b8 04 00 00 00       	mov    $0x4,%eax
 1d8:	e8 fc ff ff ff       	call   1d9 <smbios_init_type_4+0x1d9>
 1dd:	85 c0                	test   %eax,%eax
 1df:	75 04                	jne    1e5 <smbios_init_type_4+0x1e5>
 1e1:	c6 43 18 41          	movb   $0x41,0x18(%ebx)
 1e5:	8d 4b 19             	lea    0x19(%ebx),%ecx
 1e8:	ba 19 00 00 00       	mov    $0x19,%edx
 1ed:	b8 04 00 00 00       	mov    $0x4,%eax
 1f2:	e8 fc ff ff ff       	call   1f3 <smbios_init_type_4+0x1f3>
 1f7:	85 c0                	test   %eax,%eax
 1f9:	75 04                	jne    1ff <smbios_init_type_4+0x1ff>
 1fb:	c6 43 19 01          	movb   $0x1,0x19(%ebx)
 1ff:	c7 43 1a ff ff ff ff 	movl   $0xffffffff,0x1a(%ebx)
 206:	66 c7 43 1e ff ff    	movw   $0xffff,0x1e(%ebx)
 20c:	c6 45 00 00          	movb   $0x0,0x0(%ebp)
 210:	8d 45 01             	lea    0x1(%ebp),%eax
 213:	81 c4 14 04 00 00    	add    $0x414,%esp
 219:	5b                   	pop    %ebx
 21a:	5e                   	pop    %esi
 21b:	5f                   	pop    %edi
 21c:	5d                   	pop    %ebp
 21d:	c3                   	ret    

Disassembly of section .text.get_external:

00000000 <get_external>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
   a:	89 c7                	mov    %eax,%edi
   c:	89 d3                	mov    %edx,%ebx
   e:	89 cd                	mov    %ecx,%ebp
  10:	89 c6                	mov    %eax,%esi
  12:	c1 fe 06             	sar    $0x6,%esi
  15:	83 e6 03             	and    $0x3,%esi
  18:	83 e0 3f             	and    $0x3f,%eax
  1b:	89 04 24             	mov    %eax,(%esp)
  1e:	8b 04 f5 00 00 00 00 	mov    0x0(,%esi,8),%eax
  25:	8b 14 f5 04 00 00 00 	mov    0x4(,%esi,8),%edx
  2c:	8a 0c 24             	mov    (%esp),%cl
  2f:	0f ad d0             	shrd   %cl,%edx,%eax
  32:	d3 ea                	shr    %cl,%edx
  34:	f6 c1 20             	test   $0x20,%cl
  37:	74 04                	je     3d <get_external+0x3d>
  39:	89 d0                	mov    %edx,%eax
  3b:	31 d2                	xor    %edx,%edx
  3d:	83 e0 01             	and    $0x1,%eax
  40:	0f 85 e0 00 00 00    	jne    126 <get_external+0x126>
  46:	8b 03                	mov    (%ebx),%eax
  48:	89 44 24 04          	mov    %eax,0x4(%esp)
  4c:	83 ff 7f             	cmp    $0x7f,%edi
  4f:	75 07                	jne    58 <get_external+0x58>
  51:	31 c0                	xor    %eax,%eax
  53:	e9 d3 00 00 00       	jmp    12b <get_external+0x12b>
  58:	57                   	push   %edi
  59:	68 28 00 00 00       	push   $0x28
  5e:	68 80 00 00 00       	push   $0x80
  63:	8d 44 24 18          	lea    0x18(%esp),%eax
  67:	50                   	push   %eax
  68:	e8 fc ff ff ff       	call   69 <get_external+0x69>
  6d:	83 c4 10             	add    $0x10,%esp
  70:	31 ff                	xor    %edi,%edi
  72:	89 fa                	mov    %edi,%edx
  74:	8d 44 24 0c          	lea    0xc(%esp),%eax
  78:	e8 fc ff ff ff       	call   79 <get_external+0x79>
  7d:	89 c7                	mov    %eax,%edi
  7f:	85 c0                	test   %eax,%eax
  81:	74 75                	je     f8 <get_external+0xf8>
  83:	8b 13                	mov    (%ebx),%edx
  85:	8b 88 84 00 00 00    	mov    0x84(%eax),%ecx
  8b:	8b 84 24 a4 00 00 00 	mov    0xa4(%esp),%eax
  92:	29 d0                	sub    %edx,%eax
  94:	39 c8                	cmp    %ecx,%eax
  96:	73 11                	jae    a9 <get_external+0xa9>
  98:	ba 00 00 00 00       	mov    $0x0,%edx
  9d:	b8 5f 00 00 00       	mov    $0x5f,%eax
  a2:	e8 fc ff ff ff       	call   a3 <get_external+0xa3>
  a7:	eb 4f                	jmp    f8 <get_external+0xf8>
  a9:	89 54 24 08          	mov    %edx,0x8(%esp)
  ad:	89 f8                	mov    %edi,%eax
  af:	ff 97 88 00 00 00    	call   *0x88(%edi)
  b5:	8b 87 84 00 00 00    	mov    0x84(%edi),%eax
  bb:	03 03                	add    (%ebx),%eax
  bd:	89 03                	mov    %eax,(%ebx)
  bf:	c6 00 00             	movb   $0x0,(%eax)
  c2:	8b 03                	mov    (%ebx),%eax
  c4:	8d 48 01             	lea    0x1(%eax),%ecx
  c7:	89 0b                	mov    %ecx,(%ebx)
  c9:	8b 54 24 08          	mov    0x8(%esp),%edx
  cd:	0f b6 4a 01          	movzbl 0x1(%edx),%ecx
  d1:	3b 8f 84 00 00 00    	cmp    0x84(%edi),%ecx
  d7:	72 06                	jb     df <get_external+0xdf>
  d9:	c6 40 01 00          	movb   $0x0,0x1(%eax)
  dd:	ff 03                	incl   (%ebx)
  df:	ff 45 00             	incl   0x0(%ebp)
  e2:	8b 03                	mov    (%ebx),%eax
  e4:	29 d0                	sub    %edx,%eax
  e6:	8b 8c 24 a0 00 00 00 	mov    0xa0(%esp),%ecx
  ed:	3b 01                	cmp    (%ecx),%eax
  ef:	76 81                	jbe    72 <get_external+0x72>
  f1:	89 01                	mov    %eax,(%ecx)
  f3:	e9 7a ff ff ff       	jmp    72 <get_external+0x72>
  f8:	8b 44 24 04          	mov    0x4(%esp),%eax
  fc:	39 03                	cmp    %eax,(%ebx)
  fe:	0f 84 4d ff ff ff    	je     51 <get_external+0x51>
 104:	8a 0c 24             	mov    (%esp),%cl
 107:	31 c0                	xor    %eax,%eax
 109:	31 d2                	xor    %edx,%edx
 10b:	f6 c1 20             	test   $0x20,%cl
 10e:	0f 94 c0             	sete   %al
 111:	0f 95 c2             	setne  %dl
 114:	d3 e0                	shl    %cl,%eax
 116:	d3 e2                	shl    %cl,%edx
 118:	09 04 f5 00 00 00 00 	or     %eax,0x0(,%esi,8)
 11f:	09 14 f5 04 00 00 00 	or     %edx,0x4(,%esi,8)
 126:	b8 01 00 00 00       	mov    $0x1,%eax
 12b:	81 c4 8c 00 00 00    	add    $0x8c,%esp
 131:	5b                   	pop    %ebx
 132:	5e                   	pop    %esi
 133:	5f                   	pop    %edi
 134:	5d                   	pop    %ebp
 135:	c3                   	ret    

Disassembly of section .text.smbios_legacy_setup:

00000000 <smbios_legacy_setup>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 3c             	sub    $0x3c,%esp
   7:	68 38 00 00 00       	push   $0x38
   c:	e8 fc ff ff ff       	call   d <smbios_legacy_setup+0xd>
  11:	b9 10 00 00 00       	mov    $0x10,%ecx
  16:	ba 00 80 00 00       	mov    $0x8000,%edx
  1b:	b8 00 00 00 00       	mov    $0x0,%eax
  20:	e8 fc ff ff ff       	call   21 <smbios_legacy_setup+0x21>
  25:	89 44 24 0c          	mov    %eax,0xc(%esp)
  29:	5e                   	pop    %esi
  2a:	85 c0                	test   %eax,%eax
  2c:	75 16                	jne    44 <smbios_legacy_setup+0x44>
  2e:	ba 00 00 00 00       	mov    $0x0,%edx
  33:	b8 08 02 00 00       	mov    $0x208,%eax
  38:	83 c4 3c             	add    $0x3c,%esp
  3b:	5b                   	pop    %ebx
  3c:	5e                   	pop    %esi
  3d:	5f                   	pop    %edi
  3e:	5d                   	pop    %ebp
  3f:	e9 fc ff ff ff       	jmp    40 <smbios_legacy_setup+0x40>
  44:	b9 00 80 00 00       	mov    $0x8000,%ecx
  49:	31 d2                	xor    %edx,%edx
  4b:	8b 44 24 08          	mov    0x8(%esp),%eax
  4f:	e8 fc ff ff ff       	call   50 <smbios_legacy_setup+0x50>
  54:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
  5b:	00 
  5c:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
  63:	00 
  64:	8b 44 24 08          	mov    0x8(%esp),%eax
  68:	89 44 24 18          	mov    %eax,0x18(%esp)
  6c:	05 fc 7f 00 00       	add    $0x7ffc,%eax
  71:	89 04 24             	mov    %eax,(%esp)
  74:	50                   	push   %eax
  75:	8d 44 24 18          	lea    0x18(%esp),%eax
  79:	50                   	push   %eax
  7a:	8d 4c 24 18          	lea    0x18(%esp),%ecx
  7e:	8d 54 24 20          	lea    0x20(%esp),%edx
  82:	31 c0                	xor    %eax,%eax
  84:	e8 fc ff ff ff       	call   85 <smbios_legacy_setup+0x85>
  89:	89 44 24 0c          	mov    %eax,0xc(%esp)
  8d:	59                   	pop    %ecx
  8e:	5b                   	pop    %ebx
  8f:	85 c0                	test   %eax,%eax
  91:	0f 85 86 01 00 00    	jne    21d <smbios_legacy_setup+0x21d>
  97:	8b 5c 24 18          	mov    0x18(%esp),%ebx
  9b:	8d 6b 18             	lea    0x18(%ebx),%ebp
  9e:	c7 03 00 18 00 00    	movl   $0x1800,(%ebx)
  a4:	89 e9                	mov    %ebp,%ecx
  a6:	ba 04 00 00 00       	mov    $0x4,%edx
  ab:	e8 fc ff ff ff       	call   ac <smbios_legacy_setup+0xac>
  b0:	31 d2                	xor    %edx,%edx
  b2:	83 f8 01             	cmp    $0x1,%eax
  b5:	74 20                	je     d7 <smbios_legacy_setup+0xd7>
  b7:	76 04                	jbe    bd <smbios_legacy_setup+0xbd>
  b9:	01 c5                	add    %eax,%ebp
  bb:	eb 10                	jmp    cd <smbios_legacy_setup+0xcd>
  bd:	c7 43 18 42 6f 63 68 	movl   $0x68636f42,0x18(%ebx)
  c4:	66 c7 45 04 73 00    	movw   $0x73,0x4(%ebp)
  ca:	8d 6b 1e             	lea    0x1e(%ebx),%ebp
  cd:	b2 01                	mov    $0x1,%dl
  cf:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
  d6:	00 
  d7:	88 53 04             	mov    %dl,0x4(%ebx)
  da:	89 e9                	mov    %ebp,%ecx
  dc:	ba 05 00 00 00       	mov    $0x5,%edx
  e1:	31 c0                	xor    %eax,%eax
  e3:	e8 fc ff ff ff       	call   e4 <smbios_legacy_setup+0xe4>
  e8:	31 d2                	xor    %edx,%edx
  ea:	83 f8 01             	cmp    $0x1,%eax
  ed:	74 21                	je     110 <smbios_legacy_setup+0x110>
  ef:	ff 44 24 04          	incl   0x4(%esp)
  f3:	8a 54 24 04          	mov    0x4(%esp),%dl
  f7:	83 f8 01             	cmp    $0x1,%eax
  fa:	76 04                	jbe    100 <smbios_legacy_setup+0x100>
  fc:	01 c5                	add    %eax,%ebp
  fe:	eb 10                	jmp    110 <smbios_legacy_setup+0x110>
 100:	c7 45 00 42 6f 63 68 	movl   $0x68636f42,0x0(%ebp)
 107:	66 c7 45 04 73 00    	movw   $0x73,0x4(%ebp)
 10d:	83 c5 06             	add    $0x6,%ebp
 110:	88 53 05             	mov    %dl,0x5(%ebx)
 113:	66 c7 43 06 00 e8    	movw   $0xe800,0x6(%ebx)
 119:	89 e9                	mov    %ebp,%ecx
 11b:	ba 08 00 00 00       	mov    $0x8,%edx
 120:	31 c0                	xor    %eax,%eax
 122:	e8 fc ff ff ff       	call   123 <smbios_legacy_setup+0x123>
 127:	31 d2                	xor    %edx,%edx
 129:	83 f8 01             	cmp    $0x1,%eax
 12c:	74 21                	je     14f <smbios_legacy_setup+0x14f>
 12e:	ff 44 24 04          	incl   0x4(%esp)
 132:	8a 54 24 04          	mov    0x4(%esp),%dl
 136:	83 f8 01             	cmp    $0x1,%eax
 139:	76 04                	jbe    13f <smbios_legacy_setup+0x13f>
 13b:	01 c5                	add    %eax,%ebp
 13d:	eb 10                	jmp    14f <smbios_legacy_setup+0x14f>
 13f:	be 4c 00 00 00       	mov    $0x4c,%esi
 144:	b9 0b 00 00 00       	mov    $0xb,%ecx
 149:	89 ef                	mov    %ebp,%edi
 14b:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 14d:	89 fd                	mov    %edi,%ebp
 14f:	88 53 08             	mov    %dl,0x8(%ebx)
 152:	c6 43 09 00          	movb   $0x0,0x9(%ebx)
 156:	8d 73 0a             	lea    0xa(%ebx),%esi
 159:	89 f1                	mov    %esi,%ecx
 15b:	ba 0a 00 00 00       	mov    $0xa,%edx
 160:	31 c0                	xor    %eax,%eax
 162:	e8 fc ff ff ff       	call   163 <smbios_legacy_setup+0x163>
 167:	85 c0                	test   %eax,%eax
 169:	75 12                	jne    17d <smbios_legacy_setup+0x17d>
 16b:	b9 08 00 00 00       	mov    $0x8,%ecx
 170:	31 d2                	xor    %edx,%edx
 172:	89 f0                	mov    %esi,%eax
 174:	e8 fc ff ff ff       	call   175 <smbios_legacy_setup+0x175>
 179:	c6 43 0a 08          	movb   $0x8,0xa(%ebx)
 17d:	8d 4b 12             	lea    0x12(%ebx),%ecx
 180:	ba 12 00 00 00       	mov    $0x12,%edx
 185:	31 c0                	xor    %eax,%eax
 187:	e8 fc ff ff ff       	call   188 <smbios_legacy_setup+0x188>
 18c:	85 c0                	test   %eax,%eax
 18e:	75 06                	jne    196 <smbios_legacy_setup+0x196>
 190:	66 c7 43 12 00 04    	movw   $0x400,0x12(%ebx)
 196:	8d 4b 14             	lea    0x14(%ebx),%ecx
 199:	ba 14 00 00 00       	mov    $0x14,%edx
 19e:	31 c0                	xor    %eax,%eax
 1a0:	e8 fc ff ff ff       	call   1a1 <smbios_legacy_setup+0x1a1>
 1a5:	85 c0                	test   %eax,%eax
 1a7:	75 04                	jne    1ad <smbios_legacy_setup+0x1ad>
 1a9:	c6 43 14 01          	movb   $0x1,0x14(%ebx)
 1ad:	8d 4b 15             	lea    0x15(%ebx),%ecx
 1b0:	ba 15 00 00 00       	mov    $0x15,%edx
 1b5:	31 c0                	xor    %eax,%eax
 1b7:	e8 fc ff ff ff       	call   1b8 <smbios_legacy_setup+0x1b8>
 1bc:	85 c0                	test   %eax,%eax
 1be:	75 04                	jne    1c4 <smbios_legacy_setup+0x1c4>
 1c0:	c6 43 15 00          	movb   $0x0,0x15(%ebx)
 1c4:	8d 4b 16             	lea    0x16(%ebx),%ecx
 1c7:	ba 16 00 00 00       	mov    $0x16,%edx
 1cc:	31 c0                	xor    %eax,%eax
 1ce:	e8 fc ff ff ff       	call   1cf <smbios_legacy_setup+0x1cf>
 1d3:	85 c0                	test   %eax,%eax
 1d5:	75 04                	jne    1db <smbios_legacy_setup+0x1db>
 1d7:	c6 43 16 ff          	movb   $0xff,0x16(%ebx)
 1db:	8d 4b 17             	lea    0x17(%ebx),%ecx
 1de:	ba 17 00 00 00       	mov    $0x17,%edx
 1e3:	31 c0                	xor    %eax,%eax
 1e5:	e8 fc ff ff ff       	call   1e6 <smbios_legacy_setup+0x1e6>
 1ea:	85 c0                	test   %eax,%eax
 1ec:	75 04                	jne    1f2 <smbios_legacy_setup+0x1f2>
 1ee:	c6 43 17 ff          	movb   $0xff,0x17(%ebx)
 1f2:	c6 45 00 00          	movb   $0x0,0x0(%ebp)
 1f6:	83 7c 24 04 00       	cmpl   $0x0,0x4(%esp)
 1fb:	74 03                	je     200 <smbios_legacy_setup+0x200>
 1fd:	45                   	inc    %ebp
 1fe:	eb 07                	jmp    207 <smbios_legacy_setup+0x207>
 200:	c6 45 01 00          	movb   $0x0,0x1(%ebp)
 204:	83 c5 02             	add    $0x2,%ebp
 207:	ff 44 24 10          	incl   0x10(%esp)
 20b:	89 e8                	mov    %ebp,%eax
 20d:	29 d8                	sub    %ebx,%eax
 20f:	3b 44 24 14          	cmp    0x14(%esp),%eax
 213:	76 04                	jbe    219 <smbios_legacy_setup+0x219>
 215:	89 44 24 14          	mov    %eax,0x14(%esp)
 219:	89 6c 24 18          	mov    %ebp,0x18(%esp)
 21d:	ff 34 24             	push   (%esp)
 220:	8d 44 24 18          	lea    0x18(%esp),%eax
 224:	50                   	push   %eax
 225:	8d 4c 24 18          	lea    0x18(%esp),%ecx
 229:	8d 54 24 20          	lea    0x20(%esp),%edx
 22d:	b8 01 00 00 00       	mov    $0x1,%eax
 232:	e8 fc ff ff ff       	call   233 <smbios_legacy_setup+0x233>
 237:	89 c6                	mov    %eax,%esi
 239:	58                   	pop    %eax
 23a:	5a                   	pop    %edx
 23b:	85 f6                	test   %esi,%esi
 23d:	0f 85 62 01 00 00    	jne    3a5 <smbios_legacy_setup+0x3a5>
 243:	8b 7c 24 18          	mov    0x18(%esp),%edi
 247:	8d 5f 1b             	lea    0x1b(%edi),%ebx
 24a:	c7 07 01 1b 00 01    	movl   $0x1001b01,(%edi)
 250:	89 d9                	mov    %ebx,%ecx
 252:	ba 04 00 00 00       	mov    $0x4,%edx
 257:	b8 01 00 00 00       	mov    $0x1,%eax
 25c:	e8 fc ff ff ff       	call   25d <smbios_legacy_setup+0x25d>
 261:	31 d2                	xor    %edx,%edx
 263:	83 f8 01             	cmp    $0x1,%eax
 266:	74 1d                	je     285 <smbios_legacy_setup+0x285>
 268:	76 04                	jbe    26e <smbios_legacy_setup+0x26e>
 26a:	01 c3                	add    %eax,%ebx
 26c:	eb 10                	jmp    27e <smbios_legacy_setup+0x27e>
 26e:	c7 47 1b 42 6f 63 68 	movl   $0x68636f42,0x1b(%edi)
 275:	66 c7 43 04 73 00    	movw   $0x73,0x4(%ebx)
 27b:	8d 5f 21             	lea    0x21(%edi),%ebx
 27e:	b2 01                	mov    $0x1,%dl
 280:	be 01 00 00 00       	mov    $0x1,%esi
 285:	88 57 04             	mov    %dl,0x4(%edi)
 288:	89 d9                	mov    %ebx,%ecx
 28a:	ba 05 00 00 00       	mov    $0x5,%edx
 28f:	b8 01 00 00 00       	mov    $0x1,%eax
 294:	e8 fc ff ff ff       	call   295 <smbios_legacy_setup+0x295>
 299:	31 d2                	xor    %edx,%edx
 29b:	83 f8 01             	cmp    $0x1,%eax
 29e:	74 1b                	je     2bb <smbios_legacy_setup+0x2bb>
 2a0:	46                   	inc    %esi
 2a1:	89 f2                	mov    %esi,%edx
 2a3:	83 f8 01             	cmp    $0x1,%eax
 2a6:	76 04                	jbe    2ac <smbios_legacy_setup+0x2ac>
 2a8:	01 c3                	add    %eax,%ebx
 2aa:	eb 0f                	jmp    2bb <smbios_legacy_setup+0x2bb>
 2ac:	c7 03 42 6f 63 68    	movl   $0x68636f42,(%ebx)
 2b2:	66 c7 43 04 73 00    	movw   $0x73,0x4(%ebx)
 2b8:	83 c3 06             	add    $0x6,%ebx
 2bb:	88 57 05             	mov    %dl,0x5(%edi)
 2be:	89 d9                	mov    %ebx,%ecx
 2c0:	ba 06 00 00 00       	mov    $0x6,%edx
 2c5:	b8 01 00 00 00       	mov    $0x1,%eax
 2ca:	e8 fc ff ff ff       	call   2cb <smbios_legacy_setup+0x2cb>
 2cf:	31 d2                	xor    %edx,%edx
 2d1:	83 f8 01             	cmp    $0x1,%eax
 2d4:	76 05                	jbe    2db <smbios_legacy_setup+0x2db>
 2d6:	01 c3                	add    %eax,%ebx
 2d8:	46                   	inc    %esi
 2d9:	89 f2                	mov    %esi,%edx
 2db:	88 57 06             	mov    %dl,0x6(%edi)
 2de:	89 d9                	mov    %ebx,%ecx
 2e0:	ba 07 00 00 00       	mov    $0x7,%edx
 2e5:	b8 01 00 00 00       	mov    $0x1,%eax
 2ea:	e8 fc ff ff ff       	call   2eb <smbios_legacy_setup+0x2eb>
 2ef:	31 d2                	xor    %edx,%edx
 2f1:	83 f8 01             	cmp    $0x1,%eax
 2f4:	76 05                	jbe    2fb <smbios_legacy_setup+0x2fb>
 2f6:	01 c3                	add    %eax,%ebx
 2f8:	46                   	inc    %esi
 2f9:	89 f2                	mov    %esi,%edx
 2fb:	88 57 07             	mov    %dl,0x7(%edi)
 2fe:	8d 6f 08             	lea    0x8(%edi),%ebp
 301:	89 e9                	mov    %ebp,%ecx
 303:	ba 08 00 00 00       	mov    $0x8,%edx
 308:	b8 01 00 00 00       	mov    $0x1,%eax
 30d:	e8 fc ff ff ff       	call   30e <smbios_legacy_setup+0x30e>
 312:	85 c0                	test   %eax,%eax
 314:	75 0e                	jne    324 <smbios_legacy_setup+0x324>
 316:	b9 10 00 00 00       	mov    $0x10,%ecx
 31b:	31 d2                	xor    %edx,%edx
 31d:	89 e8                	mov    %ebp,%eax
 31f:	e8 fc ff ff ff       	call   320 <smbios_legacy_setup+0x320>
 324:	8d 4f 18             	lea    0x18(%edi),%ecx
 327:	ba 18 00 00 00       	mov    $0x18,%edx
 32c:	b8 01 00 00 00       	mov    $0x1,%eax
 331:	e8 fc ff ff ff       	call   332 <smbios_legacy_setup+0x332>
 336:	85 c0                	test   %eax,%eax
 338:	75 04                	jne    33e <smbios_legacy_setup+0x33e>
 33a:	c6 47 18 06          	movb   $0x6,0x18(%edi)
 33e:	89 d9                	mov    %ebx,%ecx
 340:	ba 19 00 00 00       	mov    $0x19,%edx
 345:	b8 01 00 00 00       	mov    $0x1,%eax
 34a:	e8 fc ff ff ff       	call   34b <smbios_legacy_setup+0x34b>
 34f:	31 d2                	xor    %edx,%edx
 351:	83 f8 01             	cmp    $0x1,%eax
 354:	76 05                	jbe    35b <smbios_legacy_setup+0x35b>
 356:	01 c3                	add    %eax,%ebx
 358:	46                   	inc    %esi
 359:	89 f2                	mov    %esi,%edx
 35b:	88 57 19             	mov    %dl,0x19(%edi)
 35e:	89 d9                	mov    %ebx,%ecx
 360:	ba 1a 00 00 00       	mov    $0x1a,%edx
 365:	b8 01 00 00 00       	mov    $0x1,%eax
 36a:	e8 fc ff ff ff       	call   36b <smbios_legacy_setup+0x36b>
 36f:	31 d2                	xor    %edx,%edx
 371:	83 f8 01             	cmp    $0x1,%eax
 374:	76 05                	jbe    37b <smbios_legacy_setup+0x37b>
 376:	01 c3                	add    %eax,%ebx
 378:	46                   	inc    %esi
 379:	89 f2                	mov    %esi,%edx
 37b:	88 57 1a             	mov    %dl,0x1a(%edi)
 37e:	c6 03 00             	movb   $0x0,(%ebx)
 381:	85 f6                	test   %esi,%esi
 383:	74 03                	je     388 <smbios_legacy_setup+0x388>
 385:	43                   	inc    %ebx
 386:	eb 07                	jmp    38f <smbios_legacy_setup+0x38f>
 388:	c6 43 01 00          	movb   $0x0,0x1(%ebx)
 38c:	83 c3 02             	add    $0x2,%ebx
 38f:	ff 44 24 10          	incl   0x10(%esp)
 393:	89 d8                	mov    %ebx,%eax
 395:	29 f8                	sub    %edi,%eax
 397:	3b 44 24 14          	cmp    0x14(%esp),%eax
 39b:	76 04                	jbe    3a1 <smbios_legacy_setup+0x3a1>
 39d:	89 44 24 14          	mov    %eax,0x14(%esp)
 3a1:	89 5c 24 18          	mov    %ebx,0x18(%esp)
 3a5:	ff 34 24             	push   (%esp)
 3a8:	8d 44 24 18          	lea    0x18(%esp),%eax
 3ac:	50                   	push   %eax
 3ad:	8d 4c 24 18          	lea    0x18(%esp),%ecx
 3b1:	8d 54 24 20          	lea    0x20(%esp),%edx
 3b5:	b8 03 00 00 00       	mov    $0x3,%eax
 3ba:	e8 fc ff ff ff       	call   3bb <smbios_legacy_setup+0x3bb>
 3bf:	89 c7                	mov    %eax,%edi
 3c1:	5d                   	pop    %ebp
 3c2:	58                   	pop    %eax
 3c3:	85 ff                	test   %edi,%edi
 3c5:	0f 85 b9 01 00 00    	jne    584 <smbios_legacy_setup+0x584>
 3cb:	8b 5c 24 18          	mov    0x18(%esp),%ebx
 3cf:	8d 73 14             	lea    0x14(%ebx),%esi
 3d2:	c7 03 03 14 00 03    	movl   $0x3001403,(%ebx)
 3d8:	89 f1                	mov    %esi,%ecx
 3da:	ba 04 00 00 00       	mov    $0x4,%edx
 3df:	b8 03 00 00 00       	mov    $0x3,%eax
 3e4:	e8 fc ff ff ff       	call   3e5 <smbios_legacy_setup+0x3e5>
 3e9:	31 d2                	xor    %edx,%edx
 3eb:	83 f8 01             	cmp    $0x1,%eax
 3ee:	74 1d                	je     40d <smbios_legacy_setup+0x40d>
 3f0:	76 04                	jbe    3f6 <smbios_legacy_setup+0x3f6>
 3f2:	01 c6                	add    %eax,%esi
 3f4:	eb 10                	jmp    406 <smbios_legacy_setup+0x406>
 3f6:	c7 43 14 42 6f 63 68 	movl   $0x68636f42,0x14(%ebx)
 3fd:	66 c7 46 04 73 00    	movw   $0x73,0x4(%esi)
 403:	8d 73 1a             	lea    0x1a(%ebx),%esi
 406:	b2 01                	mov    $0x1,%dl
 408:	bf 01 00 00 00       	mov    $0x1,%edi
 40d:	88 53 04             	mov    %dl,0x4(%ebx)
 410:	8d 4b 05             	lea    0x5(%ebx),%ecx
 413:	ba 05 00 00 00       	mov    $0x5,%edx
 418:	b8 03 00 00 00       	mov    $0x3,%eax
 41d:	e8 fc ff ff ff       	call   41e <smbios_legacy_setup+0x41e>
 422:	85 c0                	test   %eax,%eax
 424:	75 04                	jne    42a <smbios_legacy_setup+0x42a>
 426:	c6 43 05 01          	movb   $0x1,0x5(%ebx)
 42a:	89 f1                	mov    %esi,%ecx
 42c:	ba 06 00 00 00       	mov    $0x6,%edx
 431:	b8 03 00 00 00       	mov    $0x3,%eax
 436:	e8 fc ff ff ff       	call   437 <smbios_legacy_setup+0x437>
 43b:	31 d2                	xor    %edx,%edx
 43d:	83 f8 01             	cmp    $0x1,%eax
 440:	76 05                	jbe    447 <smbios_legacy_setup+0x447>
 442:	01 c6                	add    %eax,%esi
 444:	47                   	inc    %edi
 445:	89 fa                	mov    %edi,%edx
 447:	88 53 06             	mov    %dl,0x6(%ebx)
 44a:	89 f1                	mov    %esi,%ecx
 44c:	ba 07 00 00 00       	mov    $0x7,%edx
 451:	b8 03 00 00 00       	mov    $0x3,%eax
 456:	e8 fc ff ff ff       	call   457 <smbios_legacy_setup+0x457>
 45b:	31 d2                	xor    %edx,%edx
 45d:	83 f8 01             	cmp    $0x1,%eax
 460:	76 05                	jbe    467 <smbios_legacy_setup+0x467>
 462:	01 c6                	add    %eax,%esi
 464:	47                   	inc    %edi
 465:	89 fa                	mov    %edi,%edx
 467:	88 53 07             	mov    %dl,0x7(%ebx)
 46a:	89 f1                	mov    %esi,%ecx
 46c:	ba 08 00 00 00       	mov    $0x8,%edx
 471:	b8 03 00 00 00       	mov    $0x3,%eax
 476:	e8 fc ff ff ff       	call   477 <smbios_legacy_setup+0x477>
 47b:	31 d2                	xor    %edx,%edx
 47d:	83 f8 01             	cmp    $0x1,%eax
 480:	76 05                	jbe    487 <smbios_legacy_setup+0x487>
 482:	01 c6                	add    %eax,%esi
 484:	47                   	inc    %edi
 485:	89 fa                	mov    %edi,%edx
 487:	88 53 08             	mov    %dl,0x8(%ebx)
 48a:	8d 4b 09             	lea    0x9(%ebx),%ecx
 48d:	ba 09 00 00 00       	mov    $0x9,%edx
 492:	b8 03 00 00 00       	mov    $0x3,%eax
 497:	e8 fc ff ff ff       	call   498 <smbios_legacy_setup+0x498>
 49c:	85 c0                	test   %eax,%eax
 49e:	75 04                	jne    4a4 <smbios_legacy_setup+0x4a4>
 4a0:	c6 43 09 03          	movb   $0x3,0x9(%ebx)
 4a4:	8d 4b 0a             	lea    0xa(%ebx),%ecx
 4a7:	ba 0a 00 00 00       	mov    $0xa,%edx
 4ac:	b8 03 00 00 00       	mov    $0x3,%eax
 4b1:	e8 fc ff ff ff       	call   4b2 <smbios_legacy_setup+0x4b2>
 4b6:	85 c0                	test   %eax,%eax
 4b8:	75 04                	jne    4be <smbios_legacy_setup+0x4be>
 4ba:	c6 43 0a 03          	movb   $0x3,0xa(%ebx)
 4be:	8d 4b 0b             	lea    0xb(%ebx),%ecx
 4c1:	ba 0b 00 00 00       	mov    $0xb,%edx
 4c6:	b8 03 00 00 00       	mov    $0x3,%eax
 4cb:	e8 fc ff ff ff       	call   4cc <smbios_legacy_setup+0x4cc>
 4d0:	85 c0                	test   %eax,%eax
 4d2:	75 04                	jne    4d8 <smbios_legacy_setup+0x4d8>
 4d4:	c6 43 0b 03          	movb   $0x3,0xb(%ebx)
 4d8:	8d 4b 0c             	lea    0xc(%ebx),%ecx
 4db:	ba 0c 00 00 00       	mov    $0xc,%edx
 4e0:	b8 03 00 00 00       	mov    $0x3,%eax
 4e5:	e8 fc ff ff ff       	call   4e6 <smbios_legacy_setup+0x4e6>
 4ea:	85 c0                	test   %eax,%eax
 4ec:	75 04                	jne    4f2 <smbios_legacy_setup+0x4f2>
 4ee:	c6 43 0c 02          	movb   $0x2,0xc(%ebx)
 4f2:	8d 4b 0d             	lea    0xd(%ebx),%ecx
 4f5:	ba 0d 00 00 00       	mov    $0xd,%edx
 4fa:	b8 03 00 00 00       	mov    $0x3,%eax
 4ff:	e8 fc ff ff ff       	call   500 <smbios_legacy_setup+0x500>
 504:	85 c0                	test   %eax,%eax
 506:	75 07                	jne    50f <smbios_legacy_setup+0x50f>
 508:	c7 43 0d 00 00 00 00 	movl   $0x0,0xd(%ebx)
 50f:	8d 4b 11             	lea    0x11(%ebx),%ecx
 512:	ba 11 00 00 00       	mov    $0x11,%edx
 517:	b8 03 00 00 00       	mov    $0x3,%eax
 51c:	e8 fc ff ff ff       	call   51d <smbios_legacy_setup+0x51d>
 521:	85 c0                	test   %eax,%eax
 523:	75 04                	jne    529 <smbios_legacy_setup+0x529>
 525:	c6 43 11 00          	movb   $0x0,0x11(%ebx)
 529:	8d 4b 12             	lea    0x12(%ebx),%ecx
 52c:	ba 12 00 00 00       	mov    $0x12,%edx
 531:	b8 03 00 00 00       	mov    $0x3,%eax
 536:	e8 fc ff ff ff       	call   537 <smbios_legacy_setup+0x537>
 53b:	85 c0                	test   %eax,%eax
 53d:	75 04                	jne    543 <smbios_legacy_setup+0x543>
 53f:	c6 43 12 00          	movb   $0x0,0x12(%ebx)
 543:	8d 4b 13             	lea    0x13(%ebx),%ecx
 546:	ba 13 00 00 00       	mov    $0x13,%edx
 54b:	b8 03 00 00 00       	mov    $0x3,%eax
 550:	e8 fc ff ff ff       	call   551 <smbios_legacy_setup+0x551>
 555:	85 c0                	test   %eax,%eax
 557:	75 04                	jne    55d <smbios_legacy_setup+0x55d>
 559:	c6 43 13 00          	movb   $0x0,0x13(%ebx)
 55d:	c6 06 00             	movb   $0x0,(%esi)
 560:	85 ff                	test   %edi,%edi
 562:	74 03                	je     567 <smbios_legacy_setup+0x567>
 564:	46                   	inc    %esi
 565:	eb 07                	jmp    56e <smbios_legacy_setup+0x56e>
 567:	c6 46 01 00          	movb   $0x0,0x1(%esi)
 56b:	83 c6 02             	add    $0x2,%esi
 56e:	ff 44 24 10          	incl   0x10(%esp)
 572:	89 f0                	mov    %esi,%eax
 574:	29 d8                	sub    %ebx,%eax
 576:	3b 44 24 14          	cmp    0x14(%esp),%eax
 57a:	76 04                	jbe    580 <smbios_legacy_setup+0x580>
 57c:	89 44 24 14          	mov    %eax,0x14(%esp)
 580:	89 74 24 18          	mov    %esi,0x18(%esp)
 584:	bb 01 00 00 00       	mov    $0x1,%ebx
 589:	39 1d 00 00 00 00    	cmp    %ebx,0x0
 58f:	72 46                	jb     5d7 <smbios_legacy_setup+0x5d7>
 591:	ff 34 24             	push   (%esp)
 594:	8d 44 24 18          	lea    0x18(%esp),%eax
 598:	50                   	push   %eax
 599:	8d 4c 24 18          	lea    0x18(%esp),%ecx
 59d:	8d 54 24 20          	lea    0x20(%esp),%edx
 5a1:	b8 04 00 00 00       	mov    $0x4,%eax
 5a6:	e8 fc ff ff ff       	call   5a7 <smbios_legacy_setup+0x5a7>
 5ab:	5e                   	pop    %esi
 5ac:	5f                   	pop    %edi
 5ad:	85 c0                	test   %eax,%eax
 5af:	75 23                	jne    5d4 <smbios_legacy_setup+0x5d4>
 5b1:	8b 74 24 18          	mov    0x18(%esp),%esi
 5b5:	89 da                	mov    %ebx,%edx
 5b7:	89 f0                	mov    %esi,%eax
 5b9:	e8 fc ff ff ff       	call   5ba <smbios_legacy_setup+0x5ba>
 5be:	ff 44 24 10          	incl   0x10(%esp)
 5c2:	89 c2                	mov    %eax,%edx
 5c4:	29 f2                	sub    %esi,%edx
 5c6:	3b 54 24 14          	cmp    0x14(%esp),%edx
 5ca:	76 04                	jbe    5d0 <smbios_legacy_setup+0x5d0>
 5cc:	89 54 24 14          	mov    %edx,0x14(%esp)
 5d0:	89 44 24 18          	mov    %eax,0x18(%esp)
 5d4:	43                   	inc    %ebx
 5d5:	eb b2                	jmp    589 <smbios_legacy_setup+0x589>
 5d7:	8b 35 00 00 00 00    	mov    0x0,%esi
 5dd:	31 ff                	xor    %edi,%edi
 5df:	03 35 00 00 00 00    	add    0x0,%esi
 5e5:	13 3d 04 00 00 00    	adc    0x4,%edi
 5eb:	0f ac fe 14          	shrd   $0x14,%edi,%esi
 5ef:	c1 ef 14             	shr    $0x14,%edi
 5f2:	89 74 24 04          	mov    %esi,0x4(%esp)
 5f6:	89 f0                	mov    %esi,%eax
 5f8:	05 ff 3f 00 00       	add    $0x3fff,%eax
 5fd:	c1 f8 0e             	sar    $0xe,%eax
 600:	89 c5                	mov    %eax,%ebp
 602:	ff 34 24             	push   (%esp)
 605:	8d 44 24 18          	lea    0x18(%esp),%eax
 609:	50                   	push   %eax
 60a:	8d 4c 24 18          	lea    0x18(%esp),%ecx
 60e:	8d 54 24 20          	lea    0x20(%esp),%edx
 612:	b8 10 00 00 00       	mov    $0x10,%eax
 617:	e8 fc ff ff ff       	call   618 <smbios_legacy_setup+0x618>
 61c:	59                   	pop    %ecx
 61d:	5b                   	pop    %ebx
 61e:	85 c0                	test   %eax,%eax
 620:	0f 85 97 00 00 00    	jne    6bd <smbios_legacy_setup+0x6bd>
 626:	8b 5c 24 18          	mov    0x18(%esp),%ebx
 62a:	c7 03 10 0f 00 10    	movl   $0x10000f10,(%ebx)
 630:	8d 4b 04             	lea    0x4(%ebx),%ecx
 633:	ba 04 00 00 00       	mov    $0x4,%edx
 638:	b8 10 00 00 00       	mov    $0x10,%eax
 63d:	e8 fc ff ff ff       	call   63e <smbios_legacy_setup+0x63e>
 642:	85 c0                	test   %eax,%eax
 644:	75 04                	jne    64a <smbios_legacy_setup+0x64a>
 646:	c6 43 04 01          	movb   $0x1,0x4(%ebx)
 64a:	8d 4b 05             	lea    0x5(%ebx),%ecx
 64d:	ba 05 00 00 00       	mov    $0x5,%edx
 652:	b8 10 00 00 00       	mov    $0x10,%eax
 657:	e8 fc ff ff ff       	call   658 <smbios_legacy_setup+0x658>
 65c:	85 c0                	test   %eax,%eax
 65e:	75 04                	jne    664 <smbios_legacy_setup+0x664>
 660:	c6 43 05 03          	movb   $0x3,0x5(%ebx)
 664:	8d 4b 06             	lea    0x6(%ebx),%ecx
 667:	ba 06 00 00 00       	mov    $0x6,%edx
 66c:	b8 10 00 00 00       	mov    $0x10,%eax
 671:	e8 fc ff ff ff       	call   672 <smbios_legacy_setup+0x672>
 676:	85 c0                	test   %eax,%eax
 678:	75 04                	jne    67e <smbios_legacy_setup+0x67e>
 67a:	c6 43 06 06          	movb   $0x6,0x6(%ebx)
 67e:	b8 00 00 00 80       	mov    $0x80000000,%eax
 683:	81 fe ff ff 1f 00    	cmp    $0x1fffff,%esi
 689:	77 05                	ja     690 <smbios_legacy_setup+0x690>
 68b:	89 f0                	mov    %esi,%eax
 68d:	c1 e0 0a             	shl    $0xa,%eax
 690:	89 43 07             	mov    %eax,0x7(%ebx)
 693:	66 c7 43 0b fe ff    	movw   $0xfffe,0xb(%ebx)
 699:	66 89 6b 0d          	mov    %bp,0xd(%ebx)
 69d:	66 c7 43 0f 00 00    	movw   $0x0,0xf(%ebx)
 6a3:	83 c3 11             	add    $0x11,%ebx
 6a6:	ff 44 24 10          	incl   0x10(%esp)
 6aa:	83 7c 24 14 10       	cmpl   $0x10,0x14(%esp)
 6af:	77 08                	ja     6b9 <smbios_legacy_setup+0x6b9>
 6b1:	c7 44 24 14 11 00 00 	movl   $0x11,0x14(%esp)
 6b8:	00 
 6b9:	89 5c 24 18          	mov    %ebx,0x18(%esp)
 6bd:	31 f6                	xor    %esi,%esi
 6bf:	39 ee                	cmp    %ebp,%esi
 6c1:	7d 62                	jge    725 <smbios_legacy_setup+0x725>
 6c3:	8d 45 ff             	lea    -0x1(%ebp),%eax
 6c6:	bb 00 40 00 00       	mov    $0x4000,%ebx
 6cb:	39 f0                	cmp    %esi,%eax
 6cd:	75 0e                	jne    6dd <smbios_legacy_setup+0x6dd>
 6cf:	8b 44 24 04          	mov    0x4(%esp),%eax
 6d3:	8d 58 ff             	lea    -0x1(%eax),%ebx
 6d6:	81 e3 ff 3f 00 00    	and    $0x3fff,%ebx
 6dc:	43                   	inc    %ebx
 6dd:	ff 34 24             	push   (%esp)
 6e0:	8d 44 24 18          	lea    0x18(%esp),%eax
 6e4:	50                   	push   %eax
 6e5:	8d 4c 24 18          	lea    0x18(%esp),%ecx
 6e9:	8d 54 24 20          	lea    0x20(%esp),%edx
 6ed:	b8 11 00 00 00       	mov    $0x11,%eax
 6f2:	e8 fc ff ff ff       	call   6f3 <smbios_legacy_setup+0x6f3>
 6f7:	5f                   	pop    %edi
 6f8:	5a                   	pop    %edx
 6f9:	85 c0                	test   %eax,%eax
 6fb:	75 25                	jne    722 <smbios_legacy_setup+0x722>
 6fd:	8b 7c 24 18          	mov    0x18(%esp),%edi
 701:	89 f1                	mov    %esi,%ecx
 703:	89 da                	mov    %ebx,%edx
 705:	89 f8                	mov    %edi,%eax
 707:	e8 fc ff ff ff       	call   708 <smbios_legacy_setup+0x708>
 70c:	ff 44 24 10          	incl   0x10(%esp)
 710:	89 c2                	mov    %eax,%edx
 712:	29 fa                	sub    %edi,%edx
 714:	3b 54 24 14          	cmp    0x14(%esp),%edx
 718:	76 04                	jbe    71e <smbios_legacy_setup+0x71e>
 71a:	89 54 24 14          	mov    %edx,0x14(%esp)
 71e:	89 44 24 18          	mov    %eax,0x18(%esp)
 722:	46                   	inc    %esi
 723:	eb 9a                	jmp    6bf <smbios_legacy_setup+0x6bf>
 725:	ff 34 24             	push   (%esp)
 728:	8d 44 24 18          	lea    0x18(%esp),%eax
 72c:	50                   	push   %eax
 72d:	8d 4c 24 18          	lea    0x18(%esp),%ecx
 731:	8d 54 24 20          	lea    0x20(%esp),%edx
 735:	b8 13 00 00 00       	mov    $0x13,%eax
 73a:	e8 fc ff ff ff       	call   73b <smbios_legacy_setup+0x73b>
 73f:	5b                   	pop    %ebx
 740:	5e                   	pop    %esi
 741:	85 c0                	test   %eax,%eax
 743:	75 46                	jne    78b <smbios_legacy_setup+0x78b>
 745:	8b 15 00 00 00 00    	mov    0x0,%edx
 74b:	c1 ea 14             	shr    $0x14,%edx
 74e:	8b 44 24 18          	mov    0x18(%esp),%eax
 752:	c7 00 13 0f 00 13    	movl   $0x13000f13,(%eax)
 758:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 75f:	c1 e2 0a             	shl    $0xa,%edx
 762:	4a                   	dec    %edx
 763:	89 50 08             	mov    %edx,0x8(%eax)
 766:	c7 40 0c 00 10 01 00 	movl   $0x11000,0xc(%eax)
 76d:	c6 40 10 00          	movb   $0x0,0x10(%eax)
 771:	83 c0 11             	add    $0x11,%eax
 774:	ff 44 24 10          	incl   0x10(%esp)
 778:	83 7c 24 14 10       	cmpl   $0x10,0x14(%esp)
 77d:	77 08                	ja     787 <smbios_legacy_setup+0x787>
 77f:	c7 44 24 14 11 00 00 	movl   $0x11,0x14(%esp)
 786:	00 
 787:	89 44 24 18          	mov    %eax,0x18(%esp)
 78b:	a1 04 00 00 00       	mov    0x4,%eax
 790:	0b 05 00 00 00 00    	or     0x0,%eax
 796:	74 73                	je     80b <smbios_legacy_setup+0x80b>
 798:	ff 34 24             	push   (%esp)
 79b:	8d 44 24 18          	lea    0x18(%esp),%eax
 79f:	50                   	push   %eax
 7a0:	8d 4c 24 18          	lea    0x18(%esp),%ecx
 7a4:	8d 54 24 20          	lea    0x20(%esp),%edx
 7a8:	b8 13 00 00 00       	mov    $0x13,%eax
 7ad:	e8 fc ff ff ff       	call   7ae <smbios_legacy_setup+0x7ae>
 7b2:	5a                   	pop    %edx
 7b3:	59                   	pop    %ecx
 7b4:	85 c0                	test   %eax,%eax
 7b6:	75 53                	jne    80b <smbios_legacy_setup+0x80b>
 7b8:	a1 00 00 00 00       	mov    0x0,%eax
 7bd:	8b 15 04 00 00 00    	mov    0x4,%edx
 7c3:	0f ac d0 14          	shrd   $0x14,%edx,%eax
 7c7:	c1 ea 14             	shr    $0x14,%edx
 7ca:	8b 54 24 18          	mov    0x18(%esp),%edx
 7ce:	c7 02 13 0f 01 13    	movl   $0x13010f13,(%edx)
 7d4:	c7 42 04 00 00 40 00 	movl   $0x400000,0x4(%edx)
 7db:	c1 e0 0a             	shl    $0xa,%eax
 7de:	05 ff ff 3f 00       	add    $0x3fffff,%eax
 7e3:	89 42 08             	mov    %eax,0x8(%edx)
 7e6:	c7 42 0c 00 10 01 00 	movl   $0x11000,0xc(%edx)
 7ed:	c6 42 10 00          	movb   $0x0,0x10(%edx)
 7f1:	83 c2 11             	add    $0x11,%edx
 7f4:	ff 44 24 10          	incl   0x10(%esp)
 7f8:	83 7c 24 14 10       	cmpl   $0x10,0x14(%esp)
 7fd:	77 08                	ja     807 <smbios_legacy_setup+0x807>
 7ff:	c7 44 24 14 11 00 00 	movl   $0x11,0x14(%esp)
 806:	00 
 807:	89 54 24 18          	mov    %edx,0x18(%esp)
 80b:	ff 34 24             	push   (%esp)
 80e:	8d 44 24 18          	lea    0x18(%esp),%eax
 812:	50                   	push   %eax
 813:	8d 4c 24 18          	lea    0x18(%esp),%ecx
 817:	8d 54 24 20          	lea    0x20(%esp),%edx
 81b:	b8 14 00 00 00       	mov    $0x14,%eax
 820:	e8 fc ff ff ff       	call   821 <smbios_legacy_setup+0x821>
 825:	5e                   	pop    %esi
 826:	5f                   	pop    %edi
 827:	85 c0                	test   %eax,%eax
 829:	75 4d                	jne    878 <smbios_legacy_setup+0x878>
 82b:	8b 15 00 00 00 00    	mov    0x0,%edx
 831:	c1 ea 14             	shr    $0x14,%edx
 834:	8b 44 24 18          	mov    0x18(%esp),%eax
 838:	c7 00 14 13 00 14    	movl   $0x14001314,(%eax)
 83e:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 845:	c1 e2 0a             	shl    $0xa,%edx
 848:	4a                   	dec    %edx
 849:	89 50 08             	mov    %edx,0x8(%eax)
 84c:	c7 40 0c 00 11 00 13 	movl   $0x13001100,0xc(%eax)
 853:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
 85a:	c6 40 14 00          	movb   $0x0,0x14(%eax)
 85e:	83 c0 15             	add    $0x15,%eax
 861:	ff 44 24 10          	incl   0x10(%esp)
 865:	83 7c 24 14 14       	cmpl   $0x14,0x14(%esp)
 86a:	77 08                	ja     874 <smbios_legacy_setup+0x874>
 86c:	c7 44 24 14 15 00 00 	movl   $0x15,0x14(%esp)
 873:	00 
 874:	89 44 24 18          	mov    %eax,0x18(%esp)
 878:	a1 04 00 00 00       	mov    0x4,%eax
 87d:	0b 05 00 00 00 00    	or     0x0,%eax
 883:	75 29                	jne    8ae <smbios_legacy_setup+0x8ae>
 885:	ff 34 24             	push   (%esp)
 888:	8d 44 24 18          	lea    0x18(%esp),%eax
 88c:	50                   	push   %eax
 88d:	8d 4c 24 18          	lea    0x18(%esp),%ecx
 891:	8d 54 24 20          	lea    0x20(%esp),%edx
 895:	b8 20 00 00 00       	mov    $0x20,%eax
 89a:	e8 fc ff ff ff       	call   89b <smbios_legacy_setup+0x89b>
 89f:	59                   	pop    %ecx
 8a0:	5b                   	pop    %ebx
 8a1:	85 c0                	test   %eax,%eax
 8a3:	0f 85 0f 01 00 00    	jne    9b8 <smbios_legacy_setup+0x9b8>
 8a9:	e9 b7 00 00 00       	jmp    965 <smbios_legacy_setup+0x965>
 8ae:	bf 00 10 00 00       	mov    $0x1000,%edi
 8b3:	31 f6                	xor    %esi,%esi
 8b5:	39 ee                	cmp    %ebp,%esi
 8b7:	7d cc                	jge    885 <smbios_legacy_setup+0x885>
 8b9:	8d 45 ff             	lea    -0x1(%ebp),%eax
 8bc:	bb 00 40 00 00       	mov    $0x4000,%ebx
 8c1:	39 f0                	cmp    %esi,%eax
 8c3:	75 0e                	jne    8d3 <smbios_legacy_setup+0x8d3>
 8c5:	8b 44 24 04          	mov    0x4(%esp),%eax
 8c9:	8d 58 ff             	lea    -0x1(%eax),%ebx
 8cc:	81 e3 ff 3f 00 00    	and    $0x3fff,%ebx
 8d2:	43                   	inc    %ebx
 8d3:	85 f6                	test   %esi,%esi
 8d5:	75 0a                	jne    8e1 <smbios_legacy_setup+0x8e1>
 8d7:	a1 00 00 00 00       	mov    0x0,%eax
 8dc:	c1 e8 14             	shr    $0x14,%eax
 8df:	29 c3                	sub    %eax,%ebx
 8e1:	ff 34 24             	push   (%esp)
 8e4:	8d 44 24 18          	lea    0x18(%esp),%eax
 8e8:	50                   	push   %eax
 8e9:	8d 4c 24 18          	lea    0x18(%esp),%ecx
 8ed:	8d 54 24 20          	lea    0x20(%esp),%edx
 8f1:	b8 14 00 00 00       	mov    $0x14,%eax
 8f6:	e8 fc ff ff ff       	call   8f7 <smbios_legacy_setup+0x8f7>
 8fb:	59                   	pop    %ecx
 8fc:	5a                   	pop    %edx
 8fd:	85 c0                	test   %eax,%eax
 8ff:	75 5c                	jne    95d <smbios_legacy_setup+0x95d>
 901:	8b 44 24 18          	mov    0x18(%esp),%eax
 905:	66 c7 00 14 13       	movw   $0x1314,(%eax)
 90a:	8d 96 01 14 00 00    	lea    0x1401(%esi),%edx
 910:	66 89 50 02          	mov    %dx,0x2(%eax)
 914:	89 fa                	mov    %edi,%edx
 916:	c1 e2 0a             	shl    $0xa,%edx
 919:	89 50 04             	mov    %edx,0x4(%eax)
 91c:	89 d9                	mov    %ebx,%ecx
 91e:	c1 e1 0a             	shl    $0xa,%ecx
 921:	8d 54 0a ff          	lea    -0x1(%edx,%ecx,1),%edx
 925:	89 50 08             	mov    %edx,0x8(%eax)
 928:	8d 96 00 11 00 00    	lea    0x1100(%esi),%edx
 92e:	66 89 50 0c          	mov    %dx,0xc(%eax)
 932:	c7 40 0e 01 13 01 00 	movl   $0x11301,0xe(%eax)
 939:	66 c7 40 12 00 00    	movw   $0x0,0x12(%eax)
 93f:	c6 40 14 00          	movb   $0x0,0x14(%eax)
 943:	83 c0 15             	add    $0x15,%eax
 946:	ff 44 24 10          	incl   0x10(%esp)
 94a:	83 7c 24 14 14       	cmpl   $0x14,0x14(%esp)
 94f:	77 08                	ja     959 <smbios_legacy_setup+0x959>
 951:	c7 44 24 14 15 00 00 	movl   $0x15,0x14(%esp)
 958:	00 
 959:	89 44 24 18          	mov    %eax,0x18(%esp)
 95d:	01 df                	add    %ebx,%edi
 95f:	46                   	inc    %esi
 960:	e9 50 ff ff ff       	jmp    8b5 <smbios_legacy_setup+0x8b5>
 965:	8b 5c 24 18          	mov    0x18(%esp),%ebx
 969:	c7 03 20 0b 00 20    	movl   $0x20000b20,(%ebx)
 96f:	8d 43 04             	lea    0x4(%ebx),%eax
 972:	b9 06 00 00 00       	mov    $0x6,%ecx
 977:	31 d2                	xor    %edx,%edx
 979:	e8 fc ff ff ff       	call   97a <smbios_legacy_setup+0x97a>
 97e:	8d 4b 0a             	lea    0xa(%ebx),%ecx
 981:	ba 0a 00 00 00       	mov    $0xa,%edx
 986:	b8 20 00 00 00       	mov    $0x20,%eax
 98b:	e8 fc ff ff ff       	call   98c <smbios_legacy_setup+0x98c>
 990:	85 c0                	test   %eax,%eax
 992:	75 04                	jne    998 <smbios_legacy_setup+0x998>
 994:	c6 43 0a 00          	movb   $0x0,0xa(%ebx)
 998:	66 c7 43 0b 00 00    	movw   $0x0,0xb(%ebx)
 99e:	83 c3 0d             	add    $0xd,%ebx
 9a1:	ff 44 24 10          	incl   0x10(%esp)
 9a5:	83 7c 24 14 0c       	cmpl   $0xc,0x14(%esp)
 9aa:	77 08                	ja     9b4 <smbios_legacy_setup+0x9b4>
 9ac:	c7 44 24 14 0d 00 00 	movl   $0xd,0x14(%esp)
 9b3:	00 
 9b4:	89 5c 24 18          	mov    %ebx,0x18(%esp)
 9b8:	31 db                	xor    %ebx,%ebx
 9ba:	ff 34 24             	push   (%esp)
 9bd:	8d 44 24 18          	lea    0x18(%esp),%eax
 9c1:	50                   	push   %eax
 9c2:	8d 4c 24 18          	lea    0x18(%esp),%ecx
 9c6:	8d 54 24 20          	lea    0x20(%esp),%edx
 9ca:	89 d8                	mov    %ebx,%eax
 9cc:	e8 fc ff ff ff       	call   9cd <smbios_legacy_setup+0x9cd>
 9d1:	43                   	inc    %ebx
 9d2:	58                   	pop    %eax
 9d3:	5a                   	pop    %edx
 9d4:	81 fb 00 01 00 00    	cmp    $0x100,%ebx
 9da:	75 de                	jne    9ba <smbios_legacy_setup+0x9ba>
 9dc:	83 3d 0c 00 00 00 00 	cmpl   $0x0,0xc
 9e3:	78 2a                	js     a0f <smbios_legacy_setup+0xa0f>
 9e5:	8b 44 24 18          	mov    0x18(%esp),%eax
 9e9:	c7 00 7f 04 00 7f    	movl   $0x7f00047f,(%eax)
 9ef:	66 c7 40 04 00 00    	movw   $0x0,0x4(%eax)
 9f5:	83 c0 06             	add    $0x6,%eax
 9f8:	ff 44 24 10          	incl   0x10(%esp)
 9fc:	83 7c 24 14 05       	cmpl   $0x5,0x14(%esp)
 a01:	77 08                	ja     a0b <smbios_legacy_setup+0xa0b>
 a03:	c7 44 24 14 06 00 00 	movl   $0x6,0x14(%esp)
 a0a:	00 
 a0b:	89 44 24 18          	mov    %eax,0x18(%esp)
 a0f:	8b 6c 24 18          	mov    0x18(%esp),%ebp
 a13:	2b 6c 24 08          	sub    0x8(%esp),%ebp
 a17:	8b 44 24 14          	mov    0x14(%esp),%eax
 a1b:	89 04 24             	mov    %eax,(%esp)
 a1e:	8b 44 24 10          	mov    0x10(%esp),%eax
 a22:	89 44 24 04          	mov    %eax,0x4(%esp)
 a26:	0f b7 c5             	movzwl %bp,%eax
 a29:	89 44 24 0c          	mov    %eax,0xc(%esp)
 a2d:	b9 10 00 00 00       	mov    $0x10,%ecx
 a32:	66 81 fd 58 02       	cmp    $0x258,%bp
 a37:	77 09                	ja     a42 <smbios_legacy_setup+0xa42>
 a39:	89 c2                	mov    %eax,%edx
 a3b:	b8 00 00 00 00       	mov    $0x0,%eax
 a40:	eb 08                	jmp    a4a <smbios_legacy_setup+0xa4a>
 a42:	0f b7 d5             	movzwl %bp,%edx
 a45:	b8 00 00 00 00       	mov    $0x0,%eax
 a4a:	e8 fc ff ff ff       	call   a4b <smbios_legacy_setup+0xa4b>
 a4f:	89 c3                	mov    %eax,%ebx
 a51:	85 c0                	test   %eax,%eax
 a53:	75 14                	jne    a69 <smbios_legacy_setup+0xa69>
 a55:	ba 00 00 00 00       	mov    $0x0,%edx
 a5a:	b8 21 00 00 00       	mov    $0x21,%eax
 a5f:	e8 fc ff ff ff       	call   a60 <smbios_legacy_setup+0xa60>
 a64:	e9 8b 00 00 00       	jmp    af4 <smbios_legacy_setup+0xaf4>
 a69:	89 c7                	mov    %eax,%edi
 a6b:	8b 74 24 08          	mov    0x8(%esp),%esi
 a6f:	0f b7 cd             	movzwl %bp,%ecx
 a72:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 a74:	b9 1f 00 00 00       	mov    $0x1f,%ecx
 a79:	31 d2                	xor    %edx,%edx
 a7b:	8d 44 24 1d          	lea    0x1d(%esp),%eax
 a7f:	e8 fc ff ff ff       	call   a80 <smbios_legacy_setup+0xa80>
 a84:	c7 44 24 1d 5f 53 4d 	movl   $0x5f4d535f,0x1d(%esp)
 a8b:	5f 
 a8c:	66 c7 44 24 22 1f 02 	movw   $0x21f,0x22(%esp)
 a93:	c6 44 24 24 04       	movb   $0x4,0x24(%esp)
 a98:	8b 04 24             	mov    (%esp),%eax
 a9b:	66 89 44 24 25       	mov    %ax,0x25(%esp)
 aa0:	c7 44 24 2d 5f 44 4d 	movl   $0x494d445f,0x2d(%esp)
 aa7:	49 
 aa8:	c6 44 24 31 5f       	movb   $0x5f,0x31(%esp)
 aad:	66 89 6c 24 33       	mov    %bp,0x33(%esp)
 ab2:	89 5c 24 35          	mov    %ebx,0x35(%esp)
 ab6:	8b 44 24 04          	mov    0x4(%esp),%eax
 aba:	66 89 44 24 39       	mov    %ax,0x39(%esp)
 abf:	c6 44 24 3b 24       	movb   $0x24,0x3b(%esp)
 ac4:	ba 10 00 00 00       	mov    $0x10,%edx
 ac9:	8d 44 24 1d          	lea    0x1d(%esp),%eax
 acd:	e8 fc ff ff ff       	call   ace <smbios_legacy_setup+0xace>
 ad2:	28 44 24 21          	sub    %al,0x21(%esp)
 ad6:	0f b6 54 24 22       	movzbl 0x22(%esp),%edx
 adb:	83 ea 10             	sub    $0x10,%edx
 ade:	8d 44 24 2d          	lea    0x2d(%esp),%eax
 ae2:	e8 fc ff ff ff       	call   ae3 <smbios_legacy_setup+0xae3>
 ae7:	28 44 24 32          	sub    %al,0x32(%esp)
 aeb:	8d 44 24 1d          	lea    0x1d(%esp),%eax
 aef:	e8 fc ff ff ff       	call   af0 <smbios_legacy_setup+0xaf0>
 af4:	8b 44 24 08          	mov    0x8(%esp),%eax
 af8:	83 c4 3c             	add    $0x3c,%esp
 afb:	5b                   	pop    %ebx
 afc:	5e                   	pop    %esi
 afd:	5f                   	pop    %edi
 afe:	5d                   	pop    %ebp
 aff:	e9 fc ff ff ff       	jmp    b00 <smbios_legacy_setup+0xb00>
