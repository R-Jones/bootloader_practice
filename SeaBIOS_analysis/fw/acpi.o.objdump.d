
./acpi.o:     file format elf32-i386


Disassembly of section .text.piix4_fadt_setup:

00000000 <piix4_fadt_setup>:
   0:	c7 42 2c 01 00 09 00 	movl   $0x90001,0x2c(%edx)
   7:	c7 42 30 b2 00 00 00 	movl   $0xb2,0x30(%edx)
   e:	66 c7 42 34 f1 f0    	movw   $0xf0f1,0x34(%edx)
  14:	0f b7 05 00 00 00 00 	movzwl 0x0,%eax
  1b:	89 42 38             	mov    %eax,0x38(%edx)
  1e:	8d 48 04             	lea    0x4(%eax),%ecx
  21:	89 4a 40             	mov    %ecx,0x40(%edx)
  24:	83 c0 08             	add    $0x8,%eax
  27:	89 42 4c             	mov    %eax,0x4c(%edx)
  2a:	c7 42 50 e0 af 00 00 	movl   $0xafe0,0x50(%edx)
  31:	66 c7 42 58 04 02    	movw   $0x204,0x58(%edx)
  37:	66 c7 42 5b 04 04    	movw   $0x404,0x5b(%edx)
  3d:	c7 42 60 ff 0f ff 0f 	movl   $0xfff0fff,0x60(%edx)
  44:	c7 42 70 a5 80 00 00 	movl   $0x80a5,0x70(%edx)
  4b:	c3                   	ret    

Disassembly of section .text.ich9_lpc_fadt_setup:

00000000 <ich9_lpc_fadt_setup>:
   0:	c7 42 2c 01 00 09 00 	movl   $0x90001,0x2c(%edx)
   7:	c7 42 30 b2 00 00 00 	movl   $0xb2,0x30(%edx)
   e:	66 c7 42 34 02 03    	movw   $0x302,0x34(%edx)
  14:	0f b7 05 00 00 00 00 	movzwl 0x0,%eax
  1b:	89 42 38             	mov    %eax,0x38(%edx)
  1e:	8d 48 04             	lea    0x4(%eax),%ecx
  21:	89 4a 40             	mov    %ecx,0x40(%edx)
  24:	8d 48 08             	lea    0x8(%eax),%ecx
  27:	89 4a 4c             	mov    %ecx,0x4c(%edx)
  2a:	83 c0 20             	add    $0x20,%eax
  2d:	89 42 50             	mov    %eax,0x50(%edx)
  30:	66 c7 42 58 04 02    	movw   $0x204,0x58(%edx)
  36:	66 c7 42 5b 04 10    	movw   $0x1004,0x5b(%edx)
  3c:	c7 42 60 ff 0f ff 0f 	movl   $0xfff0fff,0x60(%edx)
  43:	c7 42 70 a5 80 00 00 	movl   $0x80a5,0x70(%edx)
  4a:	c3                   	ret    

Disassembly of section .text.getHex:

00000000 <getHex>:
   0:	83 e0 0f             	and    $0xf,%eax
   3:	83 f8 09             	cmp    $0x9,%eax
   6:	77 04                	ja     c <getHex+0xc>
   8:	83 c0 30             	add    $0x30,%eax
   b:	c3                   	ret    
   c:	83 c0 37             	add    $0x37,%eax
   f:	c3                   	ret    

Disassembly of section .text.build_notify:

00000000 <build_notify>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	53                   	push   %ebx
   5:	89 d7                	mov    %edx,%edi
   7:	89 ca                	mov    %ecx,%edx
   9:	8b 6c 24 1c          	mov    0x1c(%esp),%ebp
   d:	8b 74 24 20          	mov    0x20(%esp),%esi
  11:	8b 4c 24 18          	mov    0x18(%esp),%ecx
  15:	29 d1                	sub    %edx,%ecx
  17:	c6 00 14             	movb   $0x14,(%eax)
  1a:	6b d9 0c             	imul   $0xc,%ecx,%ebx
  1d:	83 c3 07             	add    $0x7,%ebx
  20:	89 1c 24             	mov    %ebx,(%esp)
  23:	c1 fb 04             	sar    $0x4,%ebx
  26:	88 58 02             	mov    %bl,0x2(%eax)
  29:	8a 1c 24             	mov    (%esp),%bl
  2c:	83 e3 0f             	and    $0xf,%ebx
  2f:	83 cb 40             	or     $0x40,%ebx
  32:	88 58 01             	mov    %bl,0x1(%eax)
  35:	8b 1f                	mov    (%edi),%ebx
  37:	89 58 03             	mov    %ebx,0x3(%eax)
  3a:	8d 58 08             	lea    0x8(%eax),%ebx
  3d:	c6 40 07 02          	movb   $0x2,0x7(%eax)
  41:	89 df                	mov    %ebx,%edi
  43:	8b 44 24 18          	mov    0x18(%esp),%eax
  47:	29 d0                	sub    %edx,%eax
  49:	85 c0                	test   %eax,%eax
  4b:	7e 43                	jle    90 <build_notify+0x90>
  4d:	c6 07 a0             	movb   $0xa0,(%edi)
  50:	c6 47 01 0b          	movb   $0xb,0x1(%edi)
  54:	c6 47 02 93          	movb   $0x93,0x2(%edi)
  58:	c6 47 03 68          	movb   $0x68,0x3(%edi)
  5c:	c6 47 04 0a          	movb   $0xa,0x4(%edi)
  60:	88 57 05             	mov    %dl,0x5(%edi)
  63:	c6 47 06 86          	movb   $0x86,0x6(%edi)
  67:	8b 45 00             	mov    0x0(%ebp),%eax
  6a:	89 47 07             	mov    %eax,0x7(%edi)
  6d:	89 d0                	mov    %edx,%eax
  6f:	c1 f8 04             	sar    $0x4,%eax
  72:	e8 fc ff ff ff       	call   73 <build_notify+0x73>
  77:	88 44 37 07          	mov    %al,0x7(%edi,%esi,1)
  7b:	89 d0                	mov    %edx,%eax
  7d:	e8 fc ff ff ff       	call   7e <build_notify+0x7e>
  82:	88 44 37 08          	mov    %al,0x8(%edi,%esi,1)
  86:	83 c7 0c             	add    $0xc,%edi
  89:	c6 47 ff 69          	movb   $0x69,-0x1(%edi)
  8d:	42                   	inc    %edx
  8e:	eb b3                	jmp    43 <build_notify+0x43>
  90:	85 c9                	test   %ecx,%ecx
  92:	79 02                	jns    96 <build_notify+0x96>
  94:	31 c9                	xor    %ecx,%ecx
  96:	6b c9 0c             	imul   $0xc,%ecx,%ecx
  99:	8d 04 0b             	lea    (%ebx,%ecx,1),%eax
  9c:	5a                   	pop    %edx
  9d:	5b                   	pop    %ebx
  9e:	5e                   	pop    %esi
  9f:	5f                   	pop    %edi
  a0:	5d                   	pop    %ebp
  a1:	c3                   	ret    

Disassembly of section .text.malloc_high:

00000000 <malloc_high>:
   0:	89 c2                	mov    %eax,%edx
   2:	b9 10 00 00 00       	mov    $0x10,%ecx
   7:	b8 00 00 00 00       	mov    $0x0,%eax
   c:	e9 fc ff ff ff       	jmp    d <malloc_high+0xd>

Disassembly of section .text.fill_dsdt:

00000000 <fill_dsdt>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 c3                	mov    %eax,%ebx
   4:	89 d6                	mov    %edx,%esi
   6:	8b 40 28             	mov    0x28(%eax),%eax
   9:	85 c0                	test   %eax,%eax
   b:	74 05                	je     12 <fill_dsdt+0x12>
   d:	e8 fc ff ff ff       	call   e <fill_dsdt+0xe>
  12:	89 73 28             	mov    %esi,0x28(%ebx)
  15:	ba 74 00 00 00       	mov    $0x74,%edx
  1a:	89 d8                	mov    %ebx,%eax
  1c:	e8 fc ff ff ff       	call   1d <fill_dsdt+0x1d>
  21:	28 43 09             	sub    %al,0x9(%ebx)
  24:	56                   	push   %esi
  25:	68 00 00 00 00       	push   $0x0
  2a:	e8 fc ff ff ff       	call   2b <fill_dsdt+0x2b>
  2f:	58                   	pop    %eax
  30:	5a                   	pop    %edx
  31:	5b                   	pop    %ebx
  32:	5e                   	pop    %esi
  33:	c3                   	ret    

Disassembly of section .text.build_header.constprop.0:

00000000 <build_header.constprop.0>:
   0:	53                   	push   %ebx
   1:	89 c3                	mov    %eax,%ebx
   3:	89 d0                	mov    %edx,%eax
   5:	89 ca                	mov    %ecx,%edx
   7:	89 03                	mov    %eax,(%ebx)
   9:	89 4b 04             	mov    %ecx,0x4(%ebx)
   c:	c6 43 08 01          	movb   $0x1,0x8(%ebx)
  10:	c7 43 0a 42 4f 43 48 	movl   $0x48434f42,0xa(%ebx)
  17:	66 c7 43 0e 53 20    	movw   $0x2053,0xe(%ebx)
  1d:	c7 43 10 42 58 50 43 	movl   $0x43505842,0x10(%ebx)
  24:	89 43 14             	mov    %eax,0x14(%ebx)
  27:	c7 43 18 01 00 00 00 	movl   $0x1,0x18(%ebx)
  2e:	c7 43 1c 42 58 50 43 	movl   $0x43505842,0x1c(%ebx)
  35:	c7 43 20 01 00 00 00 	movl   $0x1,0x20(%ebx)
  3c:	89 d8                	mov    %ebx,%eax
  3e:	e8 fc ff ff ff       	call   3f <build_header.constprop.0+0x3f>
  43:	28 43 09             	sub    %al,0x9(%ebx)
  46:	5b                   	pop    %ebx
  47:	c3                   	ret    

Disassembly of section .text.acpi_setup:

00000000 <acpi_setup>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	81 ec bc 00 00 00    	sub    $0xbc,%esp
   a:	68 0e 00 00 00       	push   $0xe
   f:	e8 fc ff ff ff       	call   10 <acpi_setup+0x10>
  14:	31 d2                	xor    %edx,%edx
  16:	b8 00 00 00 00       	mov    $0x0,%eax
  1b:	e8 fc ff ff ff       	call   1c <acpi_setup+0x1c>
  20:	89 44 24 2c          	mov    %eax,0x2c(%esp)
  24:	5a                   	pop    %edx
  25:	85 c0                	test   %eax,%eax
  27:	0f 84 ca 0a 00 00    	je     af7 <acpi_setup+0xaf7>
  2d:	b8 74 00 00 00       	mov    $0x74,%eax
  32:	e8 fc ff ff ff       	call   33 <acpi_setup+0x33>
  37:	89 04 24             	mov    %eax,(%esp)
  3a:	b9 40 00 00 00       	mov    $0x40,%ecx
  3f:	ba 40 00 00 00       	mov    $0x40,%edx
  44:	b8 00 00 00 00       	mov    $0x0,%eax
  49:	e8 fc ff ff ff       	call   4a <acpi_setup+0x4a>
  4e:	89 c3                	mov    %eax,%ebx
  50:	83 3c 24 00          	cmpl   $0x0,(%esp)
  54:	74 04                	je     5a <acpi_setup+0x5a>
  56:	85 c0                	test   %eax,%eax
  58:	75 22                	jne    7c <acpi_setup+0x7c>
  5a:	ba 00 00 00 00       	mov    $0x0,%edx
  5f:	b8 7b 00 00 00       	mov    $0x7b,%eax
  64:	e8 fc ff ff ff       	call   65 <acpi_setup+0x65>
  69:	31 c0                	xor    %eax,%eax
  6b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  72:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
  79:	00 
  7a:	eb 62                	jmp    de <acpi_setup+0xde>
  7c:	b9 40 00 00 00       	mov    $0x40,%ecx
  81:	31 d2                	xor    %edx,%edx
  83:	e8 fc ff ff ff       	call   84 <acpi_setup+0x84>
  88:	c7 03 46 41 43 53    	movl   $0x53434146,(%ebx)
  8e:	c7 43 04 40 00 00 00 	movl   $0x40,0x4(%ebx)
  95:	b9 74 00 00 00       	mov    $0x74,%ecx
  9a:	31 d2                	xor    %edx,%edx
  9c:	8b 04 24             	mov    (%esp),%eax
  9f:	e8 fc ff ff ff       	call   a0 <acpi_setup+0xa0>
  a4:	8b 04 24             	mov    (%esp),%eax
  a7:	89 58 24             	mov    %ebx,0x24(%eax)
  aa:	c7 40 28 00 00 00 00 	movl   $0x0,0x28(%eax)
  b1:	89 c1                	mov    %eax,%ecx
  b3:	8b 54 24 28          	mov    0x28(%esp),%edx
  b7:	b8 00 00 00 00       	mov    $0x0,%eax
  bc:	e8 fc ff ff ff       	call   bd <acpi_setup+0xbd>
  c1:	b9 74 00 00 00       	mov    $0x74,%ecx
  c6:	ba 46 41 43 50       	mov    $0x50434146,%edx
  cb:	8b 04 24             	mov    (%esp),%eax
  ce:	e8 fc ff ff ff       	call   cf <acpi_setup+0xcf>
  d3:	8b 04 24             	mov    (%esp),%eax
  d6:	c7 44 24 10 01 00 00 	movl   $0x1,0x10(%esp)
  dd:	00 
  de:	89 44 24 6c          	mov    %eax,0x6c(%esp)
  e2:	a1 00 00 00 00       	mov    0x0,%eax
  e7:	89 44 24 04          	mov    %eax,0x4(%esp)
  eb:	3d ff 00 00 00       	cmp    $0xff,%eax
  f0:	76 08                	jbe    fa <acpi_setup+0xfa>
  f2:	c7 44 24 04 ff 00 00 	movl   $0xff,0x4(%esp)
  f9:	00 
  fa:	6b 44 24 04 61       	imul   $0x61,0x4(%esp),%eax
  ff:	05 b8 07 00 00       	add    $0x7b8,%eax
 104:	89 44 24 08          	mov    %eax,0x8(%esp)
 108:	e8 fc ff ff ff       	call   109 <acpi_setup+0x109>
 10d:	89 c5                	mov    %eax,%ebp
 10f:	85 c0                	test   %eax,%eax
 111:	75 18                	jne    12b <acpi_setup+0x12b>
 113:	ba 00 00 00 00       	mov    $0x0,%edx
 118:	b8 46 01 00 00       	mov    $0x146,%eax
 11d:	e8 fc ff ff ff       	call   11e <acpi_setup+0x11e>
 122:	8b 7c 24 10          	mov    0x10(%esp),%edi
 126:	e9 c9 02 00 00       	jmp    3f4 <acpi_setup+0x3f4>
 12b:	8d 54 24 48          	lea    0x48(%esp),%edx
 12f:	b8 20 00 00 00       	mov    $0x20,%eax
 134:	e8 fc ff ff ff       	call   135 <acpi_setup+0x135>
 139:	85 c0                	test   %eax,%eax
 13b:	74 07                	je     144 <acpi_setup+0x144>
 13d:	83 7c 24 48 06       	cmpl   $0x6,0x48(%esp)
 142:	74 04                	je     148 <acpi_setup+0x148>
 144:	8d 44 24 42          	lea    0x42(%esp),%eax
 148:	be 94 00 00 00       	mov    $0x94,%esi
 14d:	b9 62 01 00 00       	mov    $0x162,%ecx
 152:	89 ef                	mov    %ebp,%edi
 154:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 156:	80 78 03 00          	cmpb   $0x0,0x3(%eax)
 15a:	78 04                	js     160 <acpi_setup+0x160>
 15c:	c6 45 7c 58          	movb   $0x58,0x7c(%ebp)
 160:	8a 40 04             	mov    0x4(%eax),%al
 163:	84 c0                	test   %al,%al
 165:	78 09                	js     170 <acpi_setup+0x170>
 167:	c6 85 88 00 00 00 58 	movb   $0x58,0x88(%ebp)
 16e:	eb 0f                	jmp    17f <acpi_setup+0x17f>
 170:	83 e0 7f             	and    $0x7f,%eax
 173:	88 85 92 00 00 00    	mov    %al,0x92(%ebp)
 179:	88 85 90 00 00 00    	mov    %al,0x90(%ebp)
 17f:	a1 00 00 00 00       	mov    0x0,%eax
 184:	89 45 2f             	mov    %eax,0x2f(%ebp)
 187:	a1 00 00 00 00       	mov    0x0,%eax
 18c:	48                   	dec    %eax
 18d:	89 45 39             	mov    %eax,0x39(%ebp)
 190:	a1 00 00 00 00       	mov    0x0,%eax
 195:	8b 15 04 00 00 00    	mov    0x4,%edx
 19b:	89 d7                	mov    %edx,%edi
 19d:	09 c7                	or     %eax,%edi
 19f:	74 32                	je     1d3 <acpi_setup+0x1d3>
 1a1:	c6 45 43 01          	movb   $0x1,0x43(%ebp)
 1a5:	89 45 4d             	mov    %eax,0x4d(%ebp)
 1a8:	89 55 51             	mov    %edx,0x51(%ebp)
 1ab:	8b 35 00 00 00 00    	mov    0x0,%esi
 1b1:	8b 3d 04 00 00 00    	mov    0x4,%edi
 1b7:	89 f1                	mov    %esi,%ecx
 1b9:	89 fb                	mov    %edi,%ebx
 1bb:	83 c1 ff             	add    $0xffffffff,%ecx
 1be:	83 d3 ff             	adc    $0xffffffff,%ebx
 1c1:	89 4d 5e             	mov    %ecx,0x5e(%ebp)
 1c4:	89 5d 62             	mov    %ebx,0x62(%ebp)
 1c7:	29 c6                	sub    %eax,%esi
 1c9:	19 d7                	sbb    %edx,%edi
 1cb:	89 75 6f             	mov    %esi,0x6f(%ebp)
 1ce:	89 7d 73             	mov    %edi,0x73(%ebp)
 1d1:	eb 04                	jmp    1d7 <acpi_setup+0x1d7>
 1d3:	c6 45 43 00          	movb   $0x0,0x43(%ebp)
 1d7:	31 d2                	xor    %edx,%edx
 1d9:	31 c9                	xor    %ecx,%ecx
 1db:	b8 32 00 00 00       	mov    $0x32,%eax
 1e0:	e8 fc ff ff ff       	call   1e1 <acpi_setup+0x1e1>
 1e5:	66 89 85 d0 00 00 00 	mov    %ax,0xd0(%ebp)
 1ec:	c6 85 62 01 00 00 10 	movb   $0x10,0x162(%ebp)
 1f3:	8b 44 24 08          	mov    0x8(%esp),%eax
 1f7:	2d 63 01 00 00       	sub    $0x163,%eax
 1fc:	89 c2                	mov    %eax,%edx
 1fe:	c1 fa 0c             	sar    $0xc,%edx
 201:	88 95 65 01 00 00    	mov    %dl,0x165(%ebp)
 207:	89 c2                	mov    %eax,%edx
 209:	c1 fa 04             	sar    $0x4,%edx
 20c:	88 95 64 01 00 00    	mov    %dl,0x164(%ebp)
 212:	83 e0 0f             	and    $0xf,%eax
 215:	83 c8 80             	or     $0xffffff80,%eax
 218:	88 85 63 01 00 00    	mov    %al,0x163(%ebp)
 21e:	8d 85 6a 01 00 00    	lea    0x16a(%ebp),%eax
 224:	89 44 24 14          	mov    %eax,0x14(%esp)
 228:	c7 85 66 01 00 00 5f 	movl   $0x5f42535f,0x166(%ebp)
 22f:	53 42 5f 
 232:	89 c2                	mov    %eax,%edx
 234:	31 db                	xor    %ebx,%ebx
 236:	39 5c 24 04          	cmp    %ebx,0x4(%esp)
 23a:	7e 31                	jle    26d <acpi_setup+0x26d>
 23c:	b9 15 00 00 00       	mov    $0x15,%ecx
 241:	89 d7                	mov    %edx,%edi
 243:	be 24 00 00 00       	mov    $0x24,%esi
 248:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 24a:	89 d8                	mov    %ebx,%eax
 24c:	c1 f8 04             	sar    $0x4,%eax
 24f:	e8 fc ff ff ff       	call   250 <acpi_setup+0x250>
 254:	88 42 06             	mov    %al,0x6(%edx)
 257:	89 d8                	mov    %ebx,%eax
 259:	e8 fc ff ff ff       	call   25a <acpi_setup+0x25a>
 25e:	88 42 07             	mov    %al,0x7(%edx)
 261:	88 5a 08             	mov    %bl,0x8(%edx)
 264:	88 5a 14             	mov    %bl,0x14(%edx)
 267:	83 c2 54             	add    $0x54,%edx
 26a:	43                   	inc    %ebx
 26b:	eb c9                	jmp    236 <acpi_setup+0x236>
 26d:	6b 44 24 04 54       	imul   $0x54,0x4(%esp),%eax
 272:	03 44 24 14          	add    0x14(%esp),%eax
 276:	6a 02                	push   $0x2
 278:	68 48 00 00 00       	push   $0x48
 27d:	ff 74 24 0c          	push   0xc(%esp)
 281:	31 c9                	xor    %ecx,%ecx
 283:	ba 43 00 00 00       	mov    $0x43,%edx
 288:	e8 fc ff ff ff       	call   289 <acpi_setup+0x289>
 28d:	89 c3                	mov    %eax,%ebx
 28f:	c7 00 08 43 50 4f    	movl   $0x4f504308,(%eax)
 295:	66 c7 40 04 4e 12    	movw   $0x124e,0x4(%eax)
 29b:	8b 44 24 10          	mov    0x10(%esp),%eax
 29f:	83 c0 03             	add    $0x3,%eax
 2a2:	89 c2                	mov    %eax,%edx
 2a4:	c1 fa 04             	sar    $0x4,%edx
 2a7:	88 53 07             	mov    %dl,0x7(%ebx)
 2aa:	83 e0 0f             	and    $0xf,%eax
 2ad:	83 c8 40             	or     $0x40,%eax
 2b0:	88 43 06             	mov    %al,0x6(%ebx)
 2b3:	8d 7b 09             	lea    0x9(%ebx),%edi
 2b6:	8a 44 24 10          	mov    0x10(%esp),%al
 2ba:	88 43 08             	mov    %al,0x8(%ebx)
 2bd:	83 c4 0c             	add    $0xc,%esp
 2c0:	31 f6                	xor    %esi,%esi
 2c2:	39 74 24 04          	cmp    %esi,0x4(%esp)
 2c6:	7e 11                	jle    2d9 <acpi_setup+0x2d9>
 2c8:	89 f0                	mov    %esi,%eax
 2ca:	e8 fc ff ff ff       	call   2cb <acpi_setup+0x2cb>
 2cf:	85 c0                	test   %eax,%eax
 2d1:	0f 95 44 33 09       	setne  0x9(%ebx,%esi,1)
 2d6:	46                   	inc    %esi
 2d7:	eb e9                	jmp    2c2 <acpi_setup+0x2c2>
 2d9:	8b 44 24 04          	mov    0x4(%esp),%eax
 2dd:	8d 1c 07             	lea    (%edi,%eax,1),%ebx
 2e0:	c6 03 10             	movb   $0x10,(%ebx)
 2e3:	8d 54 07 01          	lea    0x1(%edi,%eax,1),%edx
 2e7:	29 ea                	sub    %ebp,%edx
 2e9:	8b 44 24 08          	mov    0x8(%esp),%eax
 2ed:	29 d0                	sub    %edx,%eax
 2ef:	89 c2                	mov    %eax,%edx
 2f1:	c1 fa 0c             	sar    $0xc,%edx
 2f4:	88 53 03             	mov    %dl,0x3(%ebx)
 2f7:	89 c2                	mov    %eax,%edx
 2f9:	c1 fa 04             	sar    $0x4,%edx
 2fc:	88 53 02             	mov    %dl,0x2(%ebx)
 2ff:	83 e0 0f             	and    $0xf,%eax
 302:	83 c8 80             	or     $0xffffff80,%eax
 305:	88 43 01             	mov    %al,0x1(%ebx)
 308:	8d 43 08             	lea    0x8(%ebx),%eax
 30b:	89 44 24 08          	mov    %eax,0x8(%esp)
 30f:	c7 43 04 50 43 49 30 	movl   $0x30494350,0x4(%ebx)
 316:	ba 0c ae ff ff       	mov    $0xffffae0c,%edx
 31b:	ed                   	in     (%dx),%eax
 31c:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 320:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 327:	00 
 328:	b8 01 00 00 00       	mov    $0x1,%eax
 32d:	8a 4c 24 04          	mov    0x4(%esp),%cl
 331:	d3 e0                	shl    %cl,%eax
 333:	23 44 24 1c          	and    0x1c(%esp),%eax
 337:	89 44 24 14          	mov    %eax,0x14(%esp)
 33b:	be 30 00 00 00       	mov    $0x30,%esi
 340:	b9 27 00 00 00       	mov    $0x27,%ecx
 345:	8b 7c 24 08          	mov    0x8(%esp),%edi
 349:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 34b:	8b 44 24 04          	mov    0x4(%esp),%eax
 34f:	c1 f8 04             	sar    $0x4,%eax
 352:	e8 fc ff ff ff       	call   353 <acpi_setup+0x353>
 357:	8b 7c 24 08          	mov    0x8(%esp),%edi
 35b:	88 47 04             	mov    %al,0x4(%edi)
 35e:	8b 44 24 04          	mov    0x4(%esp),%eax
 362:	e8 fc ff ff ff       	call   363 <acpi_setup+0x363>
 367:	88 47 05             	mov    %al,0x5(%edi)
 36a:	8a 44 24 04          	mov    0x4(%esp),%al
 36e:	88 47 0d             	mov    %al,0xd(%edi)
 371:	88 47 16             	mov    %al,0x16(%edi)
 374:	8d 77 1a             	lea    0x1a(%edi),%esi
 377:	b9 04 00 00 00       	mov    $0x4,%ecx
 37c:	ba 4d 00 00 00       	mov    $0x4d,%edx
 381:	89 f0                	mov    %esi,%eax
 383:	e8 fc ff ff ff       	call   384 <acpi_setup+0x384>
 388:	85 c0                	test   %eax,%eax
 38a:	74 0f                	je     39b <acpi_setup+0x39b>
 38c:	ba 00 00 00 00       	mov    $0x0,%edx
 391:	b8 31 01 00 00       	mov    $0x131,%eax
 396:	e8 fc ff ff ff       	call   397 <acpi_setup+0x397>
 39b:	83 7c 24 14 00       	cmpl   $0x0,0x14(%esp)
 3a0:	75 06                	jne    3a8 <acpi_setup+0x3a8>
 3a2:	c7 06 45 4a 30 5f    	movl   $0x5f304a45,(%esi)
 3a8:	83 44 24 08 27       	addl   $0x27,0x8(%esp)
 3ad:	ff 44 24 04          	incl   0x4(%esp)
 3b1:	83 7c 24 04 20       	cmpl   $0x20,0x4(%esp)
 3b6:	0f 85 6c ff ff ff    	jne    328 <acpi_setup+0x328>
 3bc:	8d 83 c1 04 00 00    	lea    0x4c1(%ebx),%eax
 3c2:	6a 01                	push   $0x1
 3c4:	68 57 00 00 00       	push   $0x57
 3c9:	6a 20                	push   $0x20
 3cb:	b9 01 00 00 00       	mov    $0x1,%ecx
 3d0:	ba 52 00 00 00       	mov    $0x52,%edx
 3d5:	e8 fc ff ff ff       	call   3d6 <acpi_setup+0x3d6>
 3da:	29 e8                	sub    %ebp,%eax
 3dc:	89 c1                	mov    %eax,%ecx
 3de:	ba 53 53 44 54       	mov    $0x54445353,%edx
 3e3:	89 e8                	mov    %ebp,%eax
 3e5:	e8 fc ff ff ff       	call   3e6 <acpi_setup+0x3e6>
 3ea:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 3ee:	8d 78 01             	lea    0x1(%eax),%edi
 3f1:	83 c4 0c             	add    $0xc,%esp
 3f4:	8b 44 24 10          	mov    0x10(%esp),%eax
 3f8:	89 6c 84 6c          	mov    %ebp,0x6c(%esp,%eax,4)
 3fc:	a1 00 00 00 00       	mov    0x0,%eax
 401:	8d 0c c5 de 00 00 00 	lea    0xde(,%eax,8),%ecx
 408:	89 c8                	mov    %ecx,%eax
 40a:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 40e:	e8 fc ff ff ff       	call   40f <acpi_setup+0x40f>
 413:	89 c5                	mov    %eax,%ebp
 415:	85 c0                	test   %eax,%eax
 417:	8b 4c 24 04          	mov    0x4(%esp),%ecx
 41b:	75 16                	jne    433 <acpi_setup+0x433>
 41d:	ba 00 00 00 00       	mov    $0x0,%edx
 422:	b8 9b 00 00 00       	mov    $0x9b,%eax
 427:	e8 fc ff ff ff       	call   428 <acpi_setup+0x428>
 42c:	89 fb                	mov    %edi,%ebx
 42e:	e9 00 01 00 00       	jmp    533 <acpi_setup+0x533>
 433:	31 d2                	xor    %edx,%edx
 435:	e8 fc ff ff ff       	call   436 <acpi_setup+0x436>
 43a:	c7 45 24 00 00 e0 fe 	movl   $0xfee00000,0x24(%ebp)
 441:	c7 45 28 01 00 00 00 	movl   $0x1,0x28(%ebp)
 448:	8d 5d 2c             	lea    0x2c(%ebp),%ebx
 44b:	31 d2                	xor    %edx,%edx
 44d:	3b 15 00 00 00 00    	cmp    0x0,%edx
 453:	73 2e                	jae    483 <acpi_setup+0x483>
 455:	c6 03 00             	movb   $0x0,(%ebx)
 458:	c6 43 01 08          	movb   $0x8,0x1(%ebx)
 45c:	88 53 02             	mov    %dl,0x2(%ebx)
 45f:	88 53 03             	mov    %dl,0x3(%ebx)
 462:	0f b6 c2             	movzbl %dl,%eax
 465:	89 54 24 04          	mov    %edx,0x4(%esp)
 469:	e8 fc ff ff ff       	call   46a <acpi_setup+0x46a>
 46e:	85 c0                	test   %eax,%eax
 470:	0f 95 c0             	setne  %al
 473:	0f b6 c0             	movzbl %al,%eax
 476:	89 43 04             	mov    %eax,0x4(%ebx)
 479:	83 c3 08             	add    $0x8,%ebx
 47c:	8b 54 24 04          	mov    0x4(%esp),%edx
 480:	42                   	inc    %edx
 481:	eb ca                	jmp    44d <acpi_setup+0x44d>
 483:	66 c7 03 01 0c       	movw   $0xc01,(%ebx)
 488:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
 48c:	c7 43 04 00 00 c0 fe 	movl   $0xfec00000,0x4(%ebx)
 493:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
 49a:	8d 73 0c             	lea    0xc(%ebx),%esi
 49d:	31 d2                	xor    %edx,%edx
 49f:	31 c9                	xor    %ecx,%ecx
 4a1:	b8 5c 00 00 00       	mov    $0x5c,%eax
 4a6:	e8 fc ff ff ff       	call   4a7 <acpi_setup+0x4a7>
 4ab:	09 c2                	or     %eax,%edx
 4ad:	74 28                	je     4d7 <acpi_setup+0x4d7>
 4af:	b9 0a 00 00 00       	mov    $0xa,%ecx
 4b4:	31 d2                	xor    %edx,%edx
 4b6:	89 f0                	mov    %esi,%eax
 4b8:	e8 fc ff ff ff       	call   4b9 <acpi_setup+0x4b9>
 4bd:	66 c7 43 0c 02 0a    	movw   $0xa02,0xc(%ebx)
 4c3:	c6 43 0f 00          	movb   $0x0,0xf(%ebx)
 4c7:	c7 43 10 02 00 00 00 	movl   $0x2,0x10(%ebx)
 4ce:	66 c7 43 14 00 00    	movw   $0x0,0x14(%ebx)
 4d4:	8d 73 16             	lea    0x16(%ebx),%esi
 4d7:	bb 01 00 00 00       	mov    $0x1,%ebx
 4dc:	43                   	inc    %ebx
 4dd:	83 fb 10             	cmp    $0x10,%ebx
 4e0:	74 31                	je     513 <acpi_setup+0x513>
 4e2:	b8 20 0e 00 00       	mov    $0xe20,%eax
 4e7:	88 d9                	mov    %bl,%cl
 4e9:	d3 f8                	sar    %cl,%eax
 4eb:	a8 01                	test   $0x1,%al
 4ed:	74 ed                	je     4dc <acpi_setup+0x4dc>
 4ef:	b9 0a 00 00 00       	mov    $0xa,%ecx
 4f4:	31 d2                	xor    %edx,%edx
 4f6:	89 f0                	mov    %esi,%eax
 4f8:	e8 fc ff ff ff       	call   4f9 <acpi_setup+0x4f9>
 4fd:	66 c7 06 02 0a       	movw   $0xa02,(%esi)
 502:	88 5e 03             	mov    %bl,0x3(%esi)
 505:	89 5e 04             	mov    %ebx,0x4(%esi)
 508:	66 c7 46 08 0d 00    	movw   $0xd,0x8(%esi)
 50e:	83 c6 0a             	add    $0xa,%esi
 511:	eb c9                	jmp    4dc <acpi_setup+0x4dc>
 513:	c7 06 04 06 ff 00    	movl   $0xff0604,(%esi)
 519:	66 c7 46 04 00 01    	movw   $0x100,0x4(%esi)
 51f:	8d 4e 06             	lea    0x6(%esi),%ecx
 522:	29 e9                	sub    %ebp,%ecx
 524:	ba 41 50 49 43       	mov    $0x43495041,%edx
 529:	89 e8                	mov    %ebp,%eax
 52b:	e8 fc ff ff ff       	call   52c <acpi_setup+0x52c>
 530:	8d 5f 01             	lea    0x1(%edi),%ebx
 533:	89 6c bc 6c          	mov    %ebp,0x6c(%esp,%edi,4)
 537:	a1 00 00 d0 fe       	mov    0xfed00000,%eax
 53c:	c1 e8 10             	shr    $0x10,%eax
 53f:	8b 15 04 00 d0 fe    	mov    0xfed00004,%edx
 545:	89 dd                	mov    %ebx,%ebp
 547:	85 c0                	test   %eax,%eax
 549:	74 6f                	je     5ba <acpi_setup+0x5ba>
 54b:	3d ff ff 00 00       	cmp    $0xffff,%eax
 550:	74 64                	je     5b6 <acpi_setup+0x5b6>
 552:	8d 42 ff             	lea    -0x1(%edx),%eax
 555:	3d ff e0 f5 05       	cmp    $0x5f5e0ff,%eax
 55a:	77 5a                	ja     5b6 <acpi_setup+0x5b6>
 55c:	b8 38 00 00 00       	mov    $0x38,%eax
 561:	e8 fc ff ff ff       	call   562 <acpi_setup+0x562>
 566:	89 c6                	mov    %eax,%esi
 568:	85 c0                	test   %eax,%eax
 56a:	75 11                	jne    57d <acpi_setup+0x57d>
 56c:	ba 00 00 00 00       	mov    $0x0,%edx
 571:	b8 b9 01 00 00       	mov    $0x1b9,%eax
 576:	e8 fc ff ff ff       	call   577 <acpi_setup+0x577>
 57b:	eb 3b                	jmp    5b8 <acpi_setup+0x5b8>
 57d:	b9 38 00 00 00       	mov    $0x38,%ecx
 582:	31 d2                	xor    %edx,%edx
 584:	e8 fc ff ff ff       	call   585 <acpi_setup+0x585>
 589:	c7 46 24 01 a2 86 80 	movl   $0x8086a201,0x24(%esi)
 590:	c7 46 2c 00 00 d0 fe 	movl   $0xfed00000,0x2c(%esi)
 597:	c7 46 30 00 00 00 00 	movl   $0x0,0x30(%esi)
 59e:	b9 38 00 00 00       	mov    $0x38,%ecx
 5a3:	ba 48 50 45 54       	mov    $0x54455048,%edx
 5a8:	89 f0                	mov    %esi,%eax
 5aa:	e8 fc ff ff ff       	call   5ab <acpi_setup+0x5ab>
 5af:	89 f0                	mov    %esi,%eax
 5b1:	8d 6b 01             	lea    0x1(%ebx),%ebp
 5b4:	eb 04                	jmp    5ba <acpi_setup+0x5ba>
 5b6:	89 dd                	mov    %ebx,%ebp
 5b8:	31 c0                	xor    %eax,%eax
 5ba:	89 44 9c 6c          	mov    %eax,0x6c(%esp,%ebx,4)
 5be:	8d 54 24 3c          	lea    0x3c(%esp),%edx
 5c2:	b8 6e 00 00 00       	mov    $0x6e,%eax
 5c7:	e8 fc ff ff ff       	call   5c8 <acpi_setup+0x5c8>
 5cc:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 5d0:	8d 54 24 48          	lea    0x48(%esp),%edx
 5d4:	b8 7d 00 00 00       	mov    $0x7d,%eax
 5d9:	e8 fc ff ff ff       	call   5da <acpi_setup+0x5da>
 5de:	89 c6                	mov    %eax,%esi
 5e0:	83 7c 24 1c 00       	cmpl   $0x0,0x1c(%esp)
 5e5:	0f 84 04 03 00 00    	je     8ef <acpi_setup+0x8ef>
 5eb:	85 c0                	test   %eax,%eax
 5ed:	0f 84 fc 02 00 00    	je     8ef <acpi_setup+0x8ef>
 5f3:	8b 44 24 48          	mov    0x48(%esp),%eax
 5f7:	c1 e8 03             	shr    $0x3,%eax
 5fa:	89 44 24 08          	mov    %eax,0x8(%esp)
 5fe:	8b 44 24 3c          	mov    0x3c(%esp),%eax
 602:	c1 e8 03             	shr    $0x3,%eax
 605:	89 44 24 20          	mov    %eax,0x20(%esp)
 609:	8b 44 24 08          	mov    0x8(%esp),%eax
 60d:	8d 50 03             	lea    0x3(%eax),%edx
 610:	c1 e2 04             	shl    $0x4,%edx
 613:	8b 44 24 20          	mov    0x20(%esp),%eax
 617:	83 c0 02             	add    $0x2,%eax
 61a:	6b c0 28             	imul   $0x28,%eax,%eax
 61d:	01 d0                	add    %edx,%eax
 61f:	89 44 24 2c          	mov    %eax,0x2c(%esp)
 623:	e8 fc ff ff ff       	call   624 <acpi_setup+0x624>
 628:	89 44 24 04          	mov    %eax,0x4(%esp)
 62c:	85 c0                	test   %eax,%eax
 62e:	75 14                	jne    644 <acpi_setup+0x644>
 630:	ba 00 00 00 00       	mov    $0x0,%edx
 635:	b8 e7 01 00 00       	mov    $0x1e7,%eax
 63a:	e8 fc ff ff ff       	call   63b <acpi_setup+0x63b>
 63f:	e9 ab 02 00 00       	jmp    8ef <acpi_setup+0x8ef>
 644:	8b 4c 24 2c          	mov    0x2c(%esp),%ecx
 648:	31 d2                	xor    %edx,%edx
 64a:	8b 44 24 04          	mov    0x4(%esp),%eax
 64e:	e8 fc ff ff ff       	call   64f <acpi_setup+0x64f>
 653:	8b 44 24 04          	mov    0x4(%esp),%eax
 657:	c7 40 24 01 00 00 00 	movl   $0x1,0x24(%eax)
 65e:	83 c0 30             	add    $0x30,%eax
 661:	89 44 24 10          	mov    %eax,0x10(%esp)
 665:	89 c3                	mov    %eax,%ebx
 667:	31 ff                	xor    %edi,%edi
 669:	39 7c 24 08          	cmp    %edi,0x8(%esp)
 66d:	7e 40                	jle    6af <acpi_setup+0x6af>
 66f:	c6 03 00             	movb   $0x0,(%ebx)
 672:	c6 43 01 10          	movb   $0x10,0x1(%ebx)
 676:	89 f8                	mov    %edi,%eax
 678:	88 43 03             	mov    %al,0x3(%ebx)
 67b:	8b 04 fe             	mov    (%esi,%edi,8),%eax
 67e:	88 43 02             	mov    %al,0x2(%ebx)
 681:	8d 43 09             	lea    0x9(%ebx),%eax
 684:	b9 03 00 00 00       	mov    $0x3,%ecx
 689:	31 d2                	xor    %edx,%edx
 68b:	e8 fc ff ff ff       	call   68c <acpi_setup+0x68c>
 690:	c6 43 08 00          	movb   $0x0,0x8(%ebx)
 694:	89 f8                	mov    %edi,%eax
 696:	0f b6 c0             	movzbl %al,%eax
 699:	e8 fc ff ff ff       	call   69a <acpi_setup+0x69a>
 69e:	85 c0                	test   %eax,%eax
 6a0:	0f 95 c0             	setne  %al
 6a3:	0f b6 c0             	movzbl %al,%eax
 6a6:	89 43 04             	mov    %eax,0x4(%ebx)
 6a9:	83 c3 10             	add    $0x10,%ebx
 6ac:	47                   	inc    %edi
 6ad:	eb ba                	jmp    669 <acpi_setup+0x669>
 6af:	8b 5c 24 08          	mov    0x8(%esp),%ebx
 6b3:	c1 e3 04             	shl    $0x4,%ebx
 6b6:	03 5c 24 10          	add    0x10(%esp),%ebx
 6ba:	8b 44 24 08          	mov    0x8(%esp),%eax
 6be:	8d 04 c6             	lea    (%esi,%eax,8),%eax
 6c1:	89 44 24 34          	mov    %eax,0x34(%esp)
 6c5:	66 c7 03 01 28       	movw   $0x2801,(%ebx)
 6ca:	8d 43 02             	lea    0x2(%ebx),%eax
 6cd:	b9 04 00 00 00       	mov    $0x4,%ecx
 6d2:	31 d2                	xor    %edx,%edx
 6d4:	e8 fc ff ff ff       	call   6d5 <acpi_setup+0x6d5>
 6d9:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
 6dd:	c7 43 1c 01 00 00 00 	movl   $0x1,0x1c(%ebx)
 6e4:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
 6eb:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
 6f2:	c7 43 10 00 00 0a 00 	movl   $0xa0000,0x10(%ebx)
 6f9:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
 700:	83 c3 28             	add    $0x28,%ebx
 703:	be 00 00 10 00       	mov    $0x100000,%esi
 708:	31 ff                	xor    %edi,%edi
 70a:	c7 44 24 24 01 00 00 	movl   $0x1,0x24(%esp)
 711:	00 
 712:	c7 44 24 10 01 00 00 	movl   $0x1,0x10(%esp)
 719:	00 
 71a:	8b 4c 24 10          	mov    0x10(%esp),%ecx
 71e:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 722:	39 4c 24 20          	cmp    %ecx,0x20(%esp)
 726:	0f 8c 3e 01 00 00    	jl     86a <acpi_setup+0x86a>
 72c:	8b 4c 24 10          	mov    0x10(%esp),%ecx
 730:	8b 54 c8 fc          	mov    -0x4(%eax,%ecx,8),%edx
 734:	8b 44 c8 f8          	mov    -0x8(%eax,%ecx,8),%eax
 738:	89 44 24 08          	mov    %eax,0x8(%esp)
 73c:	89 54 24 0c          	mov    %edx,0xc(%esp)
 740:	49                   	dec    %ecx
 741:	75 0d                	jne    750 <acpi_setup+0x750>
 743:	81 44 24 08 00 00 f0 	addl   $0xfff00000,0x8(%esp)
 74a:	ff 
 74b:	83 54 24 0c ff       	adcl   $0xffffffff,0xc(%esp)
 750:	8b 44 24 08          	mov    0x8(%esp),%eax
 754:	8b 54 24 0c          	mov    0xc(%esp),%edx
 758:	01 f0                	add    %esi,%eax
 75a:	11 fa                	adc    %edi,%edx
 75c:	89 44 24 14          	mov    %eax,0x14(%esp)
 760:	89 54 24 18          	mov    %edx,0x18(%esp)
 764:	a1 00 00 00 00       	mov    0x0,%eax
 769:	31 d2                	xor    %edx,%edx
 76b:	8a 4c 24 10          	mov    0x10(%esp),%cl
 76f:	49                   	dec    %ecx
 770:	88 4c 24 33          	mov    %cl,0x33(%esp)
 774:	39 35 00 00 00 00    	cmp    %esi,0x0
 77a:	89 d1                	mov    %edx,%ecx
 77c:	19 f9                	sbb    %edi,%ecx
 77e:	0f 82 98 00 00 00    	jb     81c <acpi_setup+0x81c>
 784:	3b 44 24 14          	cmp    0x14(%esp),%eax
 788:	89 d1                	mov    %edx,%ecx
 78a:	1b 4c 24 18          	sbb    0x18(%esp),%ecx
 78e:	0f 83 88 00 00 00    	jae    81c <acpi_setup+0x81c>
 794:	29 f0                	sub    %esi,%eax
 796:	19 fa                	sbb    %edi,%edx
 798:	89 44 24 08          	mov    %eax,0x8(%esp)
 79c:	89 54 24 0c          	mov    %edx,0xc(%esp)
 7a0:	8b 44 24 0c          	mov    0xc(%esp),%eax
 7a4:	0b 44 24 08          	or     0x8(%esp),%eax
 7a8:	74 45                	je     7ef <acpi_setup+0x7ef>
 7aa:	8d 43 28             	lea    0x28(%ebx),%eax
 7ad:	89 44 24 38          	mov    %eax,0x38(%esp)
 7b1:	ff 44 24 24          	incl   0x24(%esp)
 7b5:	66 c7 03 01 28       	movw   $0x2801,(%ebx)
 7ba:	8d 43 02             	lea    0x2(%ebx),%eax
 7bd:	b9 04 00 00 00       	mov    $0x4,%ecx
 7c2:	31 d2                	xor    %edx,%edx
 7c4:	e8 fc ff ff ff       	call   7c5 <acpi_setup+0x7c5>
 7c9:	8a 44 24 33          	mov    0x33(%esp),%al
 7cd:	88 43 02             	mov    %al,0x2(%ebx)
 7d0:	c7 43 1c 01 00 00 00 	movl   $0x1,0x1c(%ebx)
 7d7:	89 73 08             	mov    %esi,0x8(%ebx)
 7da:	89 7b 0c             	mov    %edi,0xc(%ebx)
 7dd:	8b 44 24 08          	mov    0x8(%esp),%eax
 7e1:	8b 54 24 0c          	mov    0xc(%esp),%edx
 7e5:	89 43 10             	mov    %eax,0x10(%ebx)
 7e8:	89 53 14             	mov    %edx,0x14(%ebx)
 7eb:	8b 5c 24 38          	mov    0x38(%esp),%ebx
 7ef:	a1 00 00 00 00       	mov    0x0,%eax
 7f4:	31 d2                	xor    %edx,%edx
 7f6:	8b 74 24 14          	mov    0x14(%esp),%esi
 7fa:	8b 7c 24 18          	mov    0x18(%esp),%edi
 7fe:	29 c6                	sub    %eax,%esi
 800:	19 d7                	sbb    %edx,%edi
 802:	89 74 24 08          	mov    %esi,0x8(%esp)
 806:	89 7c 24 0c          	mov    %edi,0xc(%esp)
 80a:	89 fa                	mov    %edi,%edx
 80c:	42                   	inc    %edx
 80d:	89 74 24 14          	mov    %esi,0x14(%esp)
 811:	89 54 24 18          	mov    %edx,0x18(%esp)
 815:	31 f6                	xor    %esi,%esi
 817:	bf 01 00 00 00       	mov    $0x1,%edi
 81c:	66 c7 03 01 28       	movw   $0x2801,(%ebx)
 821:	8d 43 02             	lea    0x2(%ebx),%eax
 824:	b9 04 00 00 00       	mov    $0x4,%ecx
 829:	31 d2                	xor    %edx,%edx
 82b:	e8 fc ff ff ff       	call   82c <acpi_setup+0x82c>
 830:	8a 44 24 33          	mov    0x33(%esp),%al
 834:	88 43 02             	mov    %al,0x2(%ebx)
 837:	c7 43 1c 01 00 00 00 	movl   $0x1,0x1c(%ebx)
 83e:	89 73 08             	mov    %esi,0x8(%ebx)
 841:	89 7b 0c             	mov    %edi,0xc(%ebx)
 844:	8b 44 24 08          	mov    0x8(%esp),%eax
 848:	8b 54 24 0c          	mov    0xc(%esp),%edx
 84c:	89 43 10             	mov    %eax,0x10(%ebx)
 84f:	89 53 14             	mov    %edx,0x14(%ebx)
 852:	83 c3 28             	add    $0x28,%ebx
 855:	ff 44 24 24          	incl   0x24(%esp)
 859:	ff 44 24 10          	incl   0x10(%esp)
 85d:	8b 74 24 14          	mov    0x14(%esp),%esi
 861:	8b 7c 24 18          	mov    0x18(%esp),%edi
 865:	e9 b0 fe ff ff       	jmp    71a <acpi_setup+0x71a>
 86a:	8b 7c 24 20          	mov    0x20(%esp),%edi
 86e:	8d 34 f8             	lea    (%eax,%edi,8),%esi
 871:	83 c3 02             	add    $0x2,%ebx
 874:	8b 44 24 20          	mov    0x20(%esp),%eax
 878:	40                   	inc    %eax
 879:	39 44 24 24          	cmp    %eax,0x24(%esp)
 87d:	7f 45                	jg     8c4 <acpi_setup+0x8c4>
 87f:	c6 43 fe 01          	movb   $0x1,-0x2(%ebx)
 883:	c6 43 ff 28          	movb   $0x28,-0x1(%ebx)
 887:	b9 04 00 00 00       	mov    $0x4,%ecx
 88c:	31 d2                	xor    %edx,%edx
 88e:	89 d8                	mov    %ebx,%eax
 890:	e8 fc ff ff ff       	call   891 <acpi_setup+0x891>
 895:	c6 03 00             	movb   $0x0,(%ebx)
 898:	c7 43 1a 00 00 00 00 	movl   $0x0,0x1a(%ebx)
 89f:	c7 43 06 00 00 00 00 	movl   $0x0,0x6(%ebx)
 8a6:	c7 43 0a 00 00 00 00 	movl   $0x0,0xa(%ebx)
 8ad:	c7 43 0e 00 00 00 00 	movl   $0x0,0xe(%ebx)
 8b4:	c7 43 12 00 00 00 00 	movl   $0x0,0x12(%ebx)
 8bb:	ff 44 24 24          	incl   0x24(%esp)
 8bf:	83 c3 28             	add    $0x28,%ebx
 8c2:	eb b0                	jmp    874 <acpi_setup+0x874>
 8c4:	8b 4c 24 2c          	mov    0x2c(%esp),%ecx
 8c8:	ba 53 52 41 54       	mov    $0x54415253,%edx
 8cd:	8b 44 24 04          	mov    0x4(%esp),%eax
 8d1:	e8 fc ff ff ff       	call   8d2 <acpi_setup+0x8d2>
 8d6:	89 f0                	mov    %esi,%eax
 8d8:	e8 fc ff ff ff       	call   8d9 <acpi_setup+0x8d9>
 8dd:	8b 44 24 34          	mov    0x34(%esp),%eax
 8e1:	e8 fc ff ff ff       	call   8e2 <acpi_setup+0x8e2>
 8e6:	8b 44 24 04          	mov    0x4(%esp),%eax
 8ea:	8d 5d 01             	lea    0x1(%ebp),%ebx
 8ed:	eb 14                	jmp    903 <acpi_setup+0x903>
 8ef:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 8f3:	e8 fc ff ff ff       	call   8f4 <acpi_setup+0x8f4>
 8f8:	89 f0                	mov    %esi,%eax
 8fa:	e8 fc ff ff ff       	call   8fb <acpi_setup+0x8fb>
 8ff:	89 eb                	mov    %ebp,%ebx
 901:	31 c0                	xor    %eax,%eax
 903:	89 44 ac 6c          	mov    %eax,0x6c(%esp,%ebp,4)
 907:	8b 44 24 28          	mov    0x28(%esp),%eax
 90b:	66 81 78 12 18 29    	cmpw   $0x2918,0x12(%eax)
 911:	75 60                	jne    973 <acpi_setup+0x973>
 913:	b8 3c 00 00 00       	mov    $0x3c,%eax
 918:	e8 fc ff ff ff       	call   919 <acpi_setup+0x919>
 91d:	89 c6                	mov    %eax,%esi
 91f:	85 c0                	test   %eax,%eax
 921:	75 19                	jne    93c <acpi_setup+0x93c>
 923:	ba 00 00 00 00       	mov    $0x0,%edx
 928:	b8 3b 02 00 00       	mov    $0x23b,%eax
 92d:	e8 fc ff ff ff       	call   92e <acpi_setup+0x92e>
 932:	c7 44 9c 6c 00 00 00 	movl   $0x0,0x6c(%esp,%ebx,4)
 939:	00 
 93a:	eb 37                	jmp    973 <acpi_setup+0x973>
 93c:	b9 3c 00 00 00       	mov    $0x3c,%ecx
 941:	31 d2                	xor    %edx,%edx
 943:	e8 fc ff ff ff       	call   944 <acpi_setup+0x944>
 948:	c7 46 2c 00 00 00 b0 	movl   $0xb0000000,0x2c(%esi)
 94f:	c7 46 30 00 00 00 00 	movl   $0x0,0x30(%esi)
 956:	c7 46 34 00 00 00 ff 	movl   $0xff000000,0x34(%esi)
 95d:	b9 3c 00 00 00       	mov    $0x3c,%ecx
 962:	ba 4d 43 46 47       	mov    $0x4746434d,%edx
 967:	89 f0                	mov    %esi,%eax
 969:	e8 fc ff ff ff       	call   96a <acpi_setup+0x96a>
 96e:	89 74 9c 6c          	mov    %esi,0x6c(%esp,%ebx,4)
 972:	43                   	inc    %ebx
 973:	31 f6                	xor    %esi,%esi
 975:	89 f2                	mov    %esi,%edx
 977:	b8 8e 00 00 00       	mov    $0x8e,%eax
 97c:	e8 fc ff ff ff       	call   97d <acpi_setup+0x97d>
 981:	89 c6                	mov    %eax,%esi
 983:	85 c0                	test   %eax,%eax
 985:	74 6e                	je     9f5 <acpi_setup+0x9f5>
 987:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
 98d:	e8 fc ff ff ff       	call   98e <acpi_setup+0x98e>
 992:	89 c2                	mov    %eax,%edx
 994:	85 c0                	test   %eax,%eax
 996:	75 11                	jne    9a9 <acpi_setup+0x9a9>
 998:	ba 00 00 00 00       	mov    $0x0,%edx
 99d:	b8 78 02 00 00       	mov    $0x278,%eax
 9a2:	e8 fc ff ff ff       	call   9a3 <acpi_setup+0x9a3>
 9a7:	eb cc                	jmp    975 <acpi_setup+0x975>
 9a9:	8b 8e 84 00 00 00    	mov    0x84(%esi),%ecx
 9af:	89 44 24 04          	mov    %eax,0x4(%esp)
 9b3:	89 f0                	mov    %esi,%eax
 9b5:	ff 96 88 00 00 00    	call   *0x88(%esi)
 9bb:	83 f8 24             	cmp    $0x24,%eax
 9be:	76 b5                	jbe    975 <acpi_setup+0x975>
 9c0:	8b 54 24 04          	mov    0x4(%esp),%edx
 9c4:	81 3a 44 53 44 54    	cmpl   $0x54445344,(%edx)
 9ca:	75 10                	jne    9dc <acpi_setup+0x9dc>
 9cc:	83 3c 24 00          	cmpl   $0x0,(%esp)
 9d0:	74 0f                	je     9e1 <acpi_setup+0x9e1>
 9d2:	8b 04 24             	mov    (%esp),%eax
 9d5:	e8 fc ff ff ff       	call   9d6 <acpi_setup+0x9d6>
 9da:	eb 05                	jmp    9e1 <acpi_setup+0x9e1>
 9dc:	89 54 9c 6c          	mov    %edx,0x6c(%esp,%ebx,4)
 9e0:	43                   	inc    %ebx
 9e1:	83 fb 14             	cmp    $0x14,%ebx
 9e4:	75 8f                	jne    975 <acpi_setup+0x975>
 9e6:	ba 00 00 00 00       	mov    $0x0,%edx
 9eb:	b8 86 02 00 00       	mov    $0x286,%eax
 9f0:	e8 fc ff ff ff       	call   9f1 <acpi_setup+0x9f1>
 9f5:	83 3c 24 00          	cmpl   $0x0,(%esp)
 9f9:	74 5c                	je     a57 <acpi_setup+0xa57>
 9fb:	8b 04 24             	mov    (%esp),%eax
 9fe:	83 78 28 00          	cmpl   $0x0,0x28(%eax)
 a02:	75 53                	jne    a57 <acpi_setup+0xa57>
 a04:	b8 35 11 00 00       	mov    $0x1135,%eax
 a09:	e8 fc ff ff ff       	call   a0a <acpi_setup+0xa0a>
 a0e:	89 c5                	mov    %eax,%ebp
 a10:	85 c0                	test   %eax,%eax
 a12:	75 0c                	jne    a20 <acpi_setup+0xa20>
 a14:	ba 00 00 00 00       	mov    $0x0,%edx
 a19:	b8 8f 02 00 00       	mov    $0x28f,%eax
 a1e:	eb 55                	jmp    a75 <acpi_setup+0xa75>
 a20:	be f6 01 00 00       	mov    $0x1f6,%esi
 a25:	b9 35 11 00 00       	mov    $0x1135,%ecx
 a2a:	89 c7                	mov    %eax,%edi
 a2c:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 a2e:	89 c2                	mov    %eax,%edx
 a30:	8b 04 24             	mov    (%esp),%eax
 a33:	e8 fc ff ff ff       	call   a34 <acpi_setup+0xa34>
 a38:	b9 24 00 00 00       	mov    $0x24,%ecx
 a3d:	31 d2                	xor    %edx,%edx
 a3f:	89 e8                	mov    %ebp,%eax
 a41:	e8 fc ff ff ff       	call   a42 <acpi_setup+0xa42>
 a46:	b9 35 11 00 00       	mov    $0x1135,%ecx
 a4b:	ba 44 53 44 54       	mov    $0x54445344,%edx
 a50:	89 e8                	mov    %ebp,%eax
 a52:	e8 fc ff ff ff       	call   a53 <acpi_setup+0xa53>
 a57:	8d 2c 9d 24 00 00 00 	lea    0x24(,%ebx,4),%ebp
 a5e:	89 e8                	mov    %ebp,%eax
 a60:	e8 fc ff ff ff       	call   a61 <acpi_setup+0xa61>
 a65:	89 c3                	mov    %eax,%ebx
 a67:	85 c0                	test   %eax,%eax
 a69:	75 19                	jne    a84 <acpi_setup+0xa84>
 a6b:	ba 00 00 00 00       	mov    $0x0,%edx
 a70:	b8 9e 02 00 00       	mov    $0x29e,%eax
 a75:	81 c4 bc 00 00 00    	add    $0xbc,%esp
 a7b:	5b                   	pop    %ebx
 a7c:	5e                   	pop    %esi
 a7d:	5f                   	pop    %edi
 a7e:	5d                   	pop    %ebp
 a7f:	e9 fc ff ff ff       	jmp    a80 <acpi_setup+0xa80>
 a84:	89 e9                	mov    %ebp,%ecx
 a86:	31 d2                	xor    %edx,%edx
 a88:	e8 fc ff ff ff       	call   a89 <acpi_setup+0xa89>
 a8d:	8d 43 24             	lea    0x24(%ebx),%eax
 a90:	8d 4d dc             	lea    -0x24(%ebp),%ecx
 a93:	8d 74 24 6c          	lea    0x6c(%esp),%esi
 a97:	89 c7                	mov    %eax,%edi
 a99:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 a9b:	89 e9                	mov    %ebp,%ecx
 a9d:	ba 52 53 44 54       	mov    $0x54445352,%edx
 aa2:	89 d8                	mov    %ebx,%eax
 aa4:	e8 fc ff ff ff       	call   aa5 <acpi_setup+0xaa5>
 aa9:	b9 24 00 00 00       	mov    $0x24,%ecx
 aae:	31 d2                	xor    %edx,%edx
 ab0:	8d 44 24 48          	lea    0x48(%esp),%eax
 ab4:	e8 fc ff ff ff       	call   ab5 <acpi_setup+0xab5>
 ab9:	c7 44 24 48 52 53 44 	movl   $0x20445352,0x48(%esp)
 ac0:	20 
 ac1:	c7 44 24 4c 50 54 52 	movl   $0x20525450,0x4c(%esp)
 ac8:	20 
 ac9:	c7 44 24 51 42 4f 43 	movl   $0x48434f42,0x51(%esp)
 ad0:	48 
 ad1:	66 c7 44 24 55 53 20 	movw   $0x2053,0x55(%esp)
 ad8:	89 5c 24 58          	mov    %ebx,0x58(%esp)
 adc:	ba 14 00 00 00       	mov    $0x14,%edx
 ae1:	8d 44 24 48          	lea    0x48(%esp),%eax
 ae5:	e8 fc ff ff ff       	call   ae6 <acpi_setup+0xae6>
 aea:	28 44 24 50          	sub    %al,0x50(%esp)
 aee:	8d 44 24 48          	lea    0x48(%esp),%eax
 af2:	e8 fc ff ff ff       	call   af3 <acpi_setup+0xaf3>
 af7:	81 c4 bc 00 00 00    	add    $0xbc,%esp
 afd:	5b                   	pop    %ebx
 afe:	5e                   	pop    %esi
 aff:	5f                   	pop    %edi
 b00:	5d                   	pop    %ebp
 b01:	c3                   	ret    
