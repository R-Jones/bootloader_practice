
./usb-uas.o:     file format elf32-i386


Disassembly of section .text.uas_add_lun:

00000000 <uas_add_lun>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 0c             	sub    $0xc,%esp
   7:	89 04 24             	mov    %eax,(%esp)
   a:	89 d6                	mov    %edx,%esi
   c:	b9 10 00 00 00       	mov    $0x10,%ecx
  11:	ba 3c 00 00 00       	mov    $0x3c,%edx
  16:	b8 00 00 00 00       	mov    $0x0,%eax
  1b:	e8 fc ff ff ff       	call   1c <uas_add_lun+0x1c>
  20:	85 c0                	test   %eax,%eax
  22:	75 11                	jne    35 <uas_add_lun+0x35>
  24:	ba 00 00 00 00       	mov    $0x0,%edx
  29:	b8 c6 00 00 00       	mov    $0xc6,%eax
  2e:	e8 fc ff ff ff       	call   2f <uas_add_lun+0x2f>
  33:	eb 76                	jmp    ab <uas_add_lun+0xab>
  35:	89 c3                	mov    %eax,%ebx
  37:	8b 46 34             	mov    0x34(%esi),%eax
  3a:	89 44 24 04          	mov    %eax,0x4(%esp)
  3e:	8b 7e 30             	mov    0x30(%esi),%edi
  41:	8b 46 2c             	mov    0x2c(%esi),%eax
  44:	89 44 24 08          	mov    %eax,0x8(%esp)
  48:	8b 6e 28             	mov    0x28(%esi),%ebp
  4b:	8b 76 24             	mov    0x24(%esi),%esi
  4e:	b9 3c 00 00 00       	mov    $0x3c,%ecx
  53:	31 d2                	xor    %edx,%edx
  55:	89 d8                	mov    %ebx,%eax
  57:	e8 fc ff ff ff       	call   58 <uas_add_lun+0x58>
  5c:	89 f8                	mov    %edi,%eax
  5e:	e8 fc ff ff ff       	call   5f <uas_add_lun+0x5f>
  63:	83 f8 01             	cmp    $0x1,%eax
  66:	b0 72                	mov    $0x72,%al
  68:	1c ff                	sbb    $0xff,%al
  6a:	88 03                	mov    %al,(%ebx)
  6c:	89 73 24             	mov    %esi,0x24(%ebx)
  6f:	89 6b 28             	mov    %ebp,0x28(%ebx)
  72:	8b 44 24 08          	mov    0x8(%esp),%eax
  76:	89 43 2c             	mov    %eax,0x2c(%ebx)
  79:	89 7b 30             	mov    %edi,0x30(%ebx)
  7c:	8b 44 24 04          	mov    0x4(%esp),%eax
  80:	89 43 34             	mov    %eax,0x34(%ebx)
  83:	8b 04 24             	mov    (%esp),%eax
  86:	89 43 38             	mov    %eax,0x38(%ebx)
  89:	89 c2                	mov    %eax,%edx
  8b:	89 f0                	mov    %esi,%eax
  8d:	e8 fc ff ff ff       	call   8e <uas_add_lun+0x8e>
  92:	89 c1                	mov    %eax,%ecx
  94:	ba 00 00 00 00       	mov    $0x0,%edx
  99:	89 d8                	mov    %ebx,%eax
  9b:	e8 fc ff ff ff       	call   9c <uas_add_lun+0x9c>
  a0:	85 c0                	test   %eax,%eax
  a2:	74 0a                	je     ae <uas_add_lun+0xae>
  a4:	89 d8                	mov    %ebx,%eax
  a6:	e8 fc ff ff ff       	call   a7 <uas_add_lun+0xa7>
  ab:	83 c8 ff             	or     $0xffffffff,%eax
  ae:	83 c4 0c             	add    $0xc,%esp
  b1:	5b                   	pop    %ebx
  b2:	5e                   	pop    %esi
  b3:	5f                   	pop    %edi
  b4:	5d                   	pop    %ebp
  b5:	c3                   	ret    

Disassembly of section .text.uas_process_op:

00000000 <uas_process_op>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 24             	sub    $0x24,%esp
   7:	89 c6                	mov    %eax,%esi
   9:	8b 78 04             	mov    0x4(%eax),%edi
   c:	b9 22 00 00 00       	mov    $0x22,%ecx
  11:	31 d2                	xor    %edx,%edx
  13:	8d 44 24 02          	lea    0x2(%esp),%eax
  17:	e8 fc ff ff ff       	call   18 <uas_process_op+0x18>
  1c:	c6 44 24 02 01       	movb   $0x1,0x2(%esp)
  21:	66 c7 44 24 04 ad de 	movw   $0xdead,0x4(%esp)
  28:	8b 47 38             	mov    0x38(%edi),%eax
  2b:	88 44 24 0b          	mov    %al,0xb(%esp)
  2f:	b9 10 00 00 00       	mov    $0x10,%ecx
  34:	8d 54 24 12          	lea    0x12(%esp),%edx
  38:	89 f0                	mov    %esi,%eax
  3a:	e8 fc ff ff ff       	call   3b <uas_process_op+0x3b>
  3f:	85 c0                	test   %eax,%eax
  41:	79 0e                	jns    51 <uas_process_op+0x51>
  43:	89 f0                	mov    %esi,%eax
  45:	e8 fc ff ff ff       	call   46 <uas_process_op+0x46>
  4a:	89 c3                	mov    %eax,%ebx
  4c:	e9 11 01 00 00       	jmp    162 <uas_process_op+0x162>
  51:	89 c5                	mov    %eax,%ebp
  53:	8b 47 28             	mov    0x28(%edi),%eax
  56:	6a 20                	push   $0x20
  58:	8d 4c 24 06          	lea    0x6(%esp),%ecx
  5c:	31 d2                	xor    %edx,%edx
  5e:	e8 fc ff ff ff       	call   5f <uas_process_op+0x5f>
  63:	5a                   	pop    %edx
  64:	85 c0                	test   %eax,%eax
  66:	74 0a                	je     72 <uas_process_op+0x72>
  68:	68 08 00 00 00       	push   $0x8
  6d:	e9 95 00 00 00       	jmp    107 <uas_process_op+0x107>
  72:	b9 22 00 00 00       	mov    $0x22,%ecx
  77:	ba ff 00 00 00       	mov    $0xff,%edx
  7c:	8d 44 24 02          	lea    0x2(%esp),%eax
  80:	e8 fc ff ff ff       	call   81 <uas_process_op+0x81>
  85:	8b 47 2c             	mov    0x2c(%edi),%eax
  88:	6a 22                	push   $0x22
  8a:	8d 4c 24 06          	lea    0x6(%esp),%ecx
  8e:	ba 80 00 00 00       	mov    $0x80,%edx
  93:	e8 fc ff ff ff       	call   94 <uas_process_op+0x94>
  98:	89 c3                	mov    %eax,%ebx
  9a:	58                   	pop    %eax
  9b:	85 db                	test   %ebx,%ebx
  9d:	74 07                	je     a6 <uas_process_op+0xa6>
  9f:	68 1f 00 00 00       	push   $0x1f
  a4:	eb 61                	jmp    107 <uas_process_op+0x107>
  a6:	0f b6 44 24 02       	movzbl 0x2(%esp),%eax
  ab:	3c 06                	cmp    $0x6,%al
  ad:	74 17                	je     c6 <uas_process_op+0xc6>
  af:	3c 07                	cmp    $0x7,%al
  b1:	74 36                	je     e9 <uas_process_op+0xe9>
  b3:	3c 03                	cmp    $0x3,%al
  b5:	0f 84 9b 00 00 00    	je     156 <uas_process_op+0x156>
  bb:	50                   	push   %eax
  bc:	68 5e 00 00 00       	push   $0x5e
  c1:	e9 87 00 00 00       	jmp    14d <uas_process_op+0x14d>
  c6:	8b 47 30             	mov    0x30(%edi),%eax
  c9:	0f b7 56 0a          	movzwl 0xa(%esi),%edx
  cd:	0f af d5             	imul   %ebp,%edx
  d0:	52                   	push   %edx
  d1:	8b 0e                	mov    (%esi),%ecx
  d3:	ba 80 00 00 00       	mov    $0x80,%edx
  d8:	e8 fc ff ff ff       	call   d9 <uas_process_op+0xd9>
  dd:	5d                   	pop    %ebp
  de:	85 c0                	test   %eax,%eax
  e0:	74 2d                	je     10f <uas_process_op+0x10f>
  e2:	68 35 00 00 00       	push   $0x35
  e7:	eb 1e                	jmp    107 <uas_process_op+0x107>
  e9:	8b 47 34             	mov    0x34(%edi),%eax
  ec:	0f b7 56 0a          	movzwl 0xa(%esi),%edx
  f0:	0f af d5             	imul   %ebp,%edx
  f3:	52                   	push   %edx
  f4:	8b 0e                	mov    (%esi),%ecx
  f6:	31 d2                	xor    %edx,%edx
  f8:	e8 fc ff ff ff       	call   f9 <uas_process_op+0xf9>
  fd:	5e                   	pop    %esi
  fe:	85 c0                	test   %eax,%eax
 100:	74 0d                	je     10f <uas_process_op+0x10f>
 102:	68 49 00 00 00       	push   $0x49
 107:	e8 fc ff ff ff       	call   108 <uas_process_op+0x108>
 10c:	5b                   	pop    %ebx
 10d:	eb 4e                	jmp    15d <uas_process_op+0x15d>
 10f:	b9 22 00 00 00       	mov    $0x22,%ecx
 114:	ba ff 00 00 00       	mov    $0xff,%edx
 119:	8d 44 24 02          	lea    0x2(%esp),%eax
 11d:	e8 fc ff ff ff       	call   11e <uas_process_op+0x11e>
 122:	8b 47 2c             	mov    0x2c(%edi),%eax
 125:	6a 22                	push   $0x22
 127:	8d 4c 24 06          	lea    0x6(%esp),%ecx
 12b:	ba 80 00 00 00       	mov    $0x80,%edx
 130:	e8 fc ff ff ff       	call   131 <uas_process_op+0x131>
 135:	59                   	pop    %ecx
 136:	85 c0                	test   %eax,%eax
 138:	0f 85 61 ff ff ff    	jne    9f <uas_process_op+0x9f>
 13e:	0f b6 44 24 02       	movzbl 0x2(%esp),%eax
 143:	3c 03                	cmp    $0x3,%al
 145:	74 0f                	je     156 <uas_process_op+0x156>
 147:	50                   	push   %eax
 148:	68 7b 00 00 00       	push   $0x7b
 14d:	e8 fc ff ff ff       	call   14e <uas_process_op+0x14e>
 152:	58                   	pop    %eax
 153:	5a                   	pop    %edx
 154:	eb 07                	jmp    15d <uas_process_op+0x15d>
 156:	80 7c 24 08 00       	cmpb   $0x0,0x8(%esp)
 15b:	74 05                	je     162 <uas_process_op+0x162>
 15d:	bb 0c 00 00 00       	mov    $0xc,%ebx
 162:	89 d8                	mov    %ebx,%eax
 164:	83 c4 24             	add    $0x24,%esp
 167:	5b                   	pop    %ebx
 168:	5e                   	pop    %esi
 169:	5f                   	pop    %edi
 16a:	5d                   	pop    %ebp
 16b:	c3                   	ret    

Disassembly of section .text.usb_uas_setup:

00000000 <usb_uas_setup>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 48             	sub    $0x48,%esp
   7:	89 04 24             	mov    %eax,(%esp)
   a:	8b 58 10             	mov    0x10(%eax),%ebx
   d:	0f b6 43 06          	movzbl 0x6(%ebx),%eax
  11:	0f b6 53 07          	movzbl 0x7(%ebx),%edx
  15:	3c 06                	cmp    $0x6,%al
  17:	75 05                	jne    1e <usb_uas_setup+0x1e>
  19:	80 fa 62             	cmp    $0x62,%dl
  1c:	74 14                	je     32 <usb_uas_setup+0x32>
  1e:	52                   	push   %edx
  1f:	50                   	push   %eax
  20:	68 a0 00 00 00       	push   $0xa0
  25:	e8 fc ff ff ff       	call   26 <usb_uas_setup+0x26>
  2a:	83 c4 0c             	add    $0xc,%esp
  2d:	e9 43 01 00 00       	jmp    175 <usb_uas_setup+0x175>
  32:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  39:	00 
  3a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  41:	00 
  42:	31 f6                	xor    %esi,%esi
  44:	31 ff                	xor    %edi,%edi
  46:	31 ed                	xor    %ebp,%ebp
  48:	85 db                	test   %ebx,%ebx
  4a:	74 7b                	je     c7 <usb_uas_setup+0xc7>
  4c:	0f b6 03             	movzbl (%ebx),%eax
  4f:	01 c3                	add    %eax,%ebx
  51:	8a 43 01             	mov    0x1(%ebx),%al
  54:	3c 24                	cmp    $0x24,%al
  56:	74 16                	je     6e <usb_uas_setup+0x6e>
  58:	3c 30                	cmp    $0x30,%al
  5a:	74 08                	je     64 <usb_uas_setup+0x64>
  5c:	3c 05                	cmp    $0x5,%al
  5e:	75 67                	jne    c7 <usb_uas_setup+0xc7>
  60:	89 dd                	mov    %ebx,%ebp
  62:	eb e4                	jmp    48 <usb_uas_setup+0x48>
  64:	68 d3 00 00 00       	push   $0xd3
  69:	e9 d5 00 00 00       	jmp    143 <usb_uas_setup+0x143>
  6e:	8a 43 02             	mov    0x2(%ebx),%al
  71:	3c 03                	cmp    $0x3,%al
  73:	74 42                	je     b7 <usb_uas_setup+0xb7>
  75:	77 1a                	ja     91 <usb_uas_setup+0x91>
  77:	3c 01                	cmp    $0x1,%al
  79:	74 2e                	je     a9 <usb_uas_setup+0xa9>
  7b:	3c 02                	cmp    $0x2,%al
  7d:	0f 85 c6 00 00 00    	jne    149 <usb_uas_setup+0x149>
  83:	89 ea                	mov    %ebp,%edx
  85:	8b 04 24             	mov    (%esp),%eax
  88:	e8 fc ff ff ff       	call   89 <usb_uas_setup+0x89>
  8d:	89 c6                	mov    %eax,%esi
  8f:	eb b7                	jmp    48 <usb_uas_setup+0x48>
  91:	3c 04                	cmp    $0x4,%al
  93:	0f 85 b0 00 00 00    	jne    149 <usb_uas_setup+0x149>
  99:	89 ea                	mov    %ebp,%edx
  9b:	8b 04 24             	mov    (%esp),%eax
  9e:	e8 fc ff ff ff       	call   9f <usb_uas_setup+0x9f>
  a3:	89 44 24 08          	mov    %eax,0x8(%esp)
  a7:	eb 9f                	jmp    48 <usb_uas_setup+0x48>
  a9:	89 ea                	mov    %ebp,%edx
  ab:	8b 04 24             	mov    (%esp),%eax
  ae:	e8 fc ff ff ff       	call   af <usb_uas_setup+0xaf>
  b3:	89 c7                	mov    %eax,%edi
  b5:	eb 91                	jmp    48 <usb_uas_setup+0x48>
  b7:	89 ea                	mov    %ebp,%edx
  b9:	8b 04 24             	mov    (%esp),%eax
  bc:	e8 fc ff ff ff       	call   bd <usb_uas_setup+0xbd>
  c1:	89 44 24 04          	mov    %eax,0x4(%esp)
  c5:	eb 81                	jmp    48 <usb_uas_setup+0x48>
  c7:	85 ff                	test   %edi,%edi
  c9:	74 7e                	je     149 <usb_uas_setup+0x149>
  cb:	85 f6                	test   %esi,%esi
  cd:	74 7a                	je     149 <usb_uas_setup+0x149>
  cf:	83 7c 24 04 00       	cmpl   $0x0,0x4(%esp)
  d4:	74 73                	je     149 <usb_uas_setup+0x149>
  d6:	83 7c 24 08 00       	cmpl   $0x0,0x8(%esp)
  db:	74 6c                	je     149 <usb_uas_setup+0x149>
  dd:	b9 3c 00 00 00       	mov    $0x3c,%ecx
  e2:	31 d2                	xor    %edx,%edx
  e4:	8d 44 24 0c          	lea    0xc(%esp),%eax
  e8:	e8 fc ff ff ff       	call   e9 <usb_uas_setup+0xe9>
  ed:	8b 44 24 04          	mov    0x4(%esp),%eax
  f1:	e8 fc ff ff ff       	call   f2 <usb_uas_setup+0xf2>
  f6:	83 f8 01             	cmp    $0x1,%eax
  f9:	b0 72                	mov    $0x72,%al
  fb:	1c ff                	sbb    $0xff,%al
  fd:	88 44 24 0c          	mov    %al,0xc(%esp)
 101:	8b 04 24             	mov    (%esp),%eax
 104:	89 44 24 30          	mov    %eax,0x30(%esp)
 108:	89 7c 24 34          	mov    %edi,0x34(%esp)
 10c:	89 74 24 38          	mov    %esi,0x38(%esp)
 110:	8b 44 24 04          	mov    0x4(%esp),%eax
 114:	89 44 24 3c          	mov    %eax,0x3c(%esp)
 118:	8b 44 24 08          	mov    0x8(%esp),%eax
 11c:	89 44 24 40          	mov    %eax,0x40(%esp)
 120:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%esp)
 127:	00 
 128:	ba 00 00 00 00       	mov    $0x0,%edx
 12d:	8d 44 24 0c          	lea    0xc(%esp),%eax
 131:	e8 fc ff ff ff       	call   132 <usb_uas_setup+0x132>
 136:	89 c2                	mov    %eax,%edx
 138:	31 c0                	xor    %eax,%eax
 13a:	85 d2                	test   %edx,%edx
 13c:	7f 3a                	jg     178 <usb_uas_setup+0x178>
 13e:	68 ff 00 00 00       	push   $0xff
 143:	e8 fc ff ff ff       	call   144 <usb_uas_setup+0x144>
 148:	58                   	pop    %eax
 149:	89 fa                	mov    %edi,%edx
 14b:	8b 04 24             	mov    (%esp),%eax
 14e:	e8 fc ff ff ff       	call   14f <usb_uas_setup+0x14f>
 153:	89 f2                	mov    %esi,%edx
 155:	8b 04 24             	mov    (%esp),%eax
 158:	e8 fc ff ff ff       	call   159 <usb_uas_setup+0x159>
 15d:	8b 54 24 04          	mov    0x4(%esp),%edx
 161:	8b 04 24             	mov    (%esp),%eax
 164:	e8 fc ff ff ff       	call   165 <usb_uas_setup+0x165>
 169:	8b 54 24 08          	mov    0x8(%esp),%edx
 16d:	8b 04 24             	mov    (%esp),%eax
 170:	e8 fc ff ff ff       	call   171 <usb_uas_setup+0x171>
 175:	83 c8 ff             	or     $0xffffffff,%eax
 178:	83 c4 48             	add    $0x48,%esp
 17b:	5b                   	pop    %ebx
 17c:	5e                   	pop    %esi
 17d:	5f                   	pop    %edi
 17e:	5d                   	pop    %ebp
 17f:	c3                   	ret    
