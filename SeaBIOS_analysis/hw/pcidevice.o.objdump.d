
./pcidevice.o:     file format elf32-i386


Disassembly of section .text.pci_probe_devices:

00000000 <pci_probe_devices>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	81 ec 14 04 00 00    	sub    $0x414,%esp
   a:	68 00 00 00 00       	push   $0x0
   f:	e8 fc ff ff ff       	call   10 <pci_probe_devices+0x10>
  14:	b9 00 04 00 00       	mov    $0x400,%ecx
  19:	31 d2                	xor    %edx,%edx
  1b:	8d 44 24 18          	lea    0x18(%esp),%eax
  1f:	e8 fc ff ff ff       	call   20 <pci_probe_devices+0x20>
  24:	31 d2                	xor    %edx,%edx
  26:	31 c9                	xor    %ecx,%ecx
  28:	b8 0b 00 00 00       	mov    $0xb,%eax
  2d:	e8 fc ff ff ff       	call   2e <pci_probe_devices+0x2e>
  32:	89 44 24 14          	mov    %eax,0x14(%esp)
  36:	58                   	pop    %eax
  37:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
  3e:	00 
  3f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  46:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  4d:	00 
  4e:	83 ce ff             	or     $0xffffffff,%esi
  51:	bd 00 00 00 00       	mov    $0x0,%ebp
  56:	39 35 00 00 00 00    	cmp    %esi,0x0
  5c:	0f 8e 79 01 00 00    	jle    1db <pci_probe_devices+0x1db>
  62:	46                   	inc    %esi
  63:	89 f0                	mov    %esi,%eax
  65:	c1 e0 08             	shl    $0x8,%eax
  68:	48                   	dec    %eax
  69:	89 f2                	mov    %esi,%edx
  6b:	e8 fc ff ff ff       	call   6c <pci_probe_devices+0x6c>
  70:	89 c7                	mov    %eax,%edi
  72:	85 ff                	test   %edi,%edi
  74:	0f 88 53 01 00 00    	js     1cd <pci_probe_devices+0x1cd>
  7a:	b9 10 00 00 00       	mov    $0x10,%ecx
  7f:	ba 20 00 00 00       	mov    $0x20,%edx
  84:	b8 00 00 00 00       	mov    $0x0,%eax
  89:	e8 fc ff ff ff       	call   8a <pci_probe_devices+0x8a>
  8e:	89 c3                	mov    %eax,%ebx
  90:	85 c0                	test   %eax,%eax
  92:	75 2e                	jne    c2 <pci_probe_devices+0xc2>
  94:	b9 10 00 00 00       	mov    $0x10,%ecx
  99:	ba 20 00 00 00       	mov    $0x20,%edx
  9e:	b8 00 00 00 00       	mov    $0x0,%eax
  a3:	e8 fc ff ff ff       	call   a4 <pci_probe_devices+0xa4>
  a8:	89 c3                	mov    %eax,%ebx
  aa:	85 c0                	test   %eax,%eax
  ac:	75 14                	jne    c2 <pci_probe_devices+0xc2>
  ae:	ba 00 00 00 00       	mov    $0x0,%edx
  b3:	b8 24 00 00 00       	mov    $0x24,%eax
  b8:	e8 fc ff ff ff       	call   b9 <pci_probe_devices+0xb9>
  bd:	e9 3d 01 00 00       	jmp    1ff <pci_probe_devices+0x1ff>
  c2:	b9 20 00 00 00       	mov    $0x20,%ecx
  c7:	31 d2                	xor    %edx,%edx
  c9:	89 d8                	mov    %ebx,%eax
  cb:	e8 fc ff ff ff       	call   cc <pci_probe_devices+0xcc>
  d0:	8d 43 04             	lea    0x4(%ebx),%eax
  d3:	89 44 24 04          	mov    %eax,0x4(%esp)
  d7:	8b 45 00             	mov    0x0(%ebp),%eax
  da:	89 6b 08             	mov    %ebp,0x8(%ebx)
  dd:	89 43 04             	mov    %eax,0x4(%ebx)
  e0:	85 c0                	test   %eax,%eax
  e2:	74 07                	je     eb <pci_probe_devices+0xeb>
  e4:	8b 4c 24 04          	mov    0x4(%esp),%ecx
  e8:	89 48 04             	mov    %ecx,0x4(%eax)
  eb:	8b 44 24 04          	mov    0x4(%esp),%eax
  ef:	89 45 00             	mov    %eax,0x0(%ebp)
  f2:	ff 44 24 0c          	incl   0xc(%esp)
  f6:	8b 54 b4 14          	mov    0x14(%esp,%esi,4),%edx
  fa:	85 d2                	test   %edx,%edx
  fc:	75 19                	jne    117 <pci_probe_devices+0x117>
  fe:	39 74 24 08          	cmp    %esi,0x8(%esp)
 102:	74 03                	je     107 <pci_probe_devices+0x107>
 104:	ff 04 24             	incl   (%esp)
 107:	39 35 00 00 00 00    	cmp    %esi,0x0
 10d:	7d 0e                	jge    11d <pci_probe_devices+0x11d>
 10f:	89 35 00 00 00 00    	mov    %esi,0x0
 115:	eb 06                	jmp    11d <pci_probe_devices+0x11d>
 117:	0f b6 42 02          	movzbl 0x2(%edx),%eax
 11b:	eb 07                	jmp    124 <pci_probe_devices+0x124>
 11d:	8b 04 24             	mov    (%esp),%eax
 120:	89 74 24 08          	mov    %esi,0x8(%esp)
 124:	66 89 3b             	mov    %di,(%ebx)
 127:	89 53 0c             	mov    %edx,0xc(%ebx)
 12a:	88 43 02             	mov    %al,0x2(%ebx)
 12d:	0f b7 ef             	movzwl %di,%ebp
 130:	31 d2                	xor    %edx,%edx
 132:	89 e8                	mov    %ebp,%eax
 134:	e8 fc ff ff ff       	call   135 <pci_probe_devices+0x135>
 139:	89 43 10             	mov    %eax,0x10(%ebx)
 13c:	ba 08 00 00 00       	mov    $0x8,%edx
 141:	89 e8                	mov    %ebp,%eax
 143:	e8 fc ff ff ff       	call   144 <pci_probe_devices+0x144>
 148:	89 c2                	mov    %eax,%edx
 14a:	c1 ea 10             	shr    $0x10,%edx
 14d:	66 89 53 14          	mov    %dx,0x14(%ebx)
 151:	86 e0                	xchg   %ah,%al
 153:	66 89 43 16          	mov    %ax,0x16(%ebx)
 157:	ba 0e 00 00 00       	mov    $0xe,%edx
 15c:	89 e8                	mov    %ebp,%eax
 15e:	e8 fc ff ff ff       	call   15f <pci_probe_devices+0x15f>
 163:	88 43 18             	mov    %al,0x18(%ebx)
 166:	83 e0 7f             	and    $0x7f,%eax
 169:	48                   	dec    %eax
 16a:	3c 01                	cmp    $0x1,%al
 16c:	77 2e                	ja     19c <pci_probe_devices+0x19c>
 16e:	ba 19 00 00 00       	mov    $0x19,%edx
 173:	89 e8                	mov    %ebp,%eax
 175:	e8 fc ff ff ff       	call   176 <pci_probe_devices+0x176>
 17a:	88 43 19             	mov    %al,0x19(%ebx)
 17d:	0f b6 c0             	movzbl %al,%eax
 180:	39 f0                	cmp    %esi,%eax
 182:	7e 0b                	jle    18f <pci_probe_devices+0x18f>
 184:	83 7c 84 14 00       	cmpl   $0x0,0x14(%esp,%eax,4)
 189:	75 04                	jne    18f <pci_probe_devices+0x18f>
 18b:	89 5c 84 14          	mov    %ebx,0x14(%esp,%eax,4)
 18f:	3b 05 00 00 00 00    	cmp    0x0,%eax
 195:	7e 05                	jle    19c <pci_probe_devices+0x19c>
 197:	a3 00 00 00 00       	mov    %eax,0x0
 19c:	0f b7 43 14          	movzwl 0x14(%ebx),%eax
 1a0:	50                   	push   %eax
 1a1:	0f b7 43 12          	movzwl 0x12(%ebx),%eax
 1a5:	50                   	push   %eax
 1a6:	0f b7 43 10          	movzwl 0x10(%ebx),%eax
 1aa:	50                   	push   %eax
 1ab:	53                   	push   %ebx
 1ac:	68 1f 00 00 00       	push   $0x1f
 1b1:	e8 fc ff ff ff       	call   1b2 <pci_probe_devices+0x1b2>
 1b6:	89 f2                	mov    %esi,%edx
 1b8:	89 f8                	mov    %edi,%eax
 1ba:	e8 fc ff ff ff       	call   1bb <pci_probe_devices+0x1bb>
 1bf:	89 c7                	mov    %eax,%edi
 1c1:	83 c4 14             	add    $0x14,%esp
 1c4:	8b 6c 24 04          	mov    0x4(%esp),%ebp
 1c8:	e9 a5 fe ff ff       	jmp    72 <pci_probe_devices+0x72>
 1cd:	81 fe ff 00 00 00    	cmp    $0xff,%esi
 1d3:	0f 85 7d fe ff ff    	jne    56 <pci_probe_devices+0x56>
 1d9:	eb 0d                	jmp    1e8 <pci_probe_devices+0x1e8>
 1db:	8b 0c 24             	mov    (%esp),%ecx
 1de:	39 4c 24 10          	cmp    %ecx,0x10(%esp)
 1e2:	0f 8f 7a fe ff ff    	jg     62 <pci_probe_devices+0x62>
 1e8:	ff 35 00 00 00 00    	push   0x0
 1ee:	ff 74 24 10          	push   0x10(%esp)
 1f2:	68 45 00 00 00       	push   $0x45
 1f7:	e8 fc ff ff ff       	call   1f8 <pci_probe_devices+0x1f8>
 1fc:	83 c4 0c             	add    $0xc,%esp
 1ff:	81 c4 14 04 00 00    	add    $0x414,%esp
 205:	5b                   	pop    %ebx
 206:	5e                   	pop    %esi
 207:	5f                   	pop    %edi
 208:	5d                   	pop    %ebp
 209:	c3                   	ret    

Disassembly of section .text.pci_find_device:

00000000 <pci_find_device>:
   0:	53                   	push   %ebx
   1:	89 c3                	mov    %eax,%ebx
   3:	a1 00 00 00 00       	mov    0x0,%eax
   8:	83 e8 04             	sub    $0x4,%eax
   b:	83 f8 fc             	cmp    $0xfffffffc,%eax
   e:	74 14                	je     24 <pci_find_device+0x24>
  10:	66 39 58 10          	cmp    %bx,0x10(%eax)
  14:	75 06                	jne    1c <pci_find_device+0x1c>
  16:	66 39 50 12          	cmp    %dx,0x12(%eax)
  1a:	74 0a                	je     26 <pci_find_device+0x26>
  1c:	8b 48 04             	mov    0x4(%eax),%ecx
  1f:	8d 41 fc             	lea    -0x4(%ecx),%eax
  22:	eb e7                	jmp    b <pci_find_device+0xb>
  24:	31 c0                	xor    %eax,%eax
  26:	5b                   	pop    %ebx
  27:	c3                   	ret    

Disassembly of section .text.pci_find_class:

00000000 <pci_find_class>:
   0:	89 c1                	mov    %eax,%ecx
   2:	a1 00 00 00 00       	mov    0x0,%eax
   7:	83 e8 04             	sub    $0x4,%eax
   a:	83 f8 fc             	cmp    $0xfffffffc,%eax
   d:	74 0e                	je     1d <pci_find_class+0x1d>
   f:	66 39 48 14          	cmp    %cx,0x14(%eax)
  13:	74 0a                	je     1f <pci_find_class+0x1f>
  15:	8b 50 04             	mov    0x4(%eax),%edx
  18:	8d 42 fc             	lea    -0x4(%edx),%eax
  1b:	eb ed                	jmp    a <pci_find_class+0xa>
  1d:	31 c0                	xor    %eax,%eax
  1f:	c3                   	ret    

Disassembly of section .text.pci_init_device:

00000000 <pci_init_device>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 d3                	mov    %edx,%ebx
   4:	8b 10                	mov    (%eax),%edx
   6:	85 d2                	test   %edx,%edx
   8:	74 41                	je     4b <pci_init_device+0x4b>
   a:	83 fa ff             	cmp    $0xffffffff,%edx
   d:	74 08                	je     17 <pci_init_device+0x17>
   f:	0f b7 73 10          	movzwl 0x10(%ebx),%esi
  13:	39 d6                	cmp    %edx,%esi
  15:	75 2f                	jne    46 <pci_init_device+0x46>
  17:	8b 50 04             	mov    0x4(%eax),%edx
  1a:	83 fa ff             	cmp    $0xffffffff,%edx
  1d:	74 08                	je     27 <pci_init_device+0x27>
  1f:	0f b7 73 12          	movzwl 0x12(%ebx),%esi
  23:	39 f2                	cmp    %esi,%edx
  25:	75 1f                	jne    46 <pci_init_device+0x46>
  27:	0f b7 53 14          	movzwl 0x14(%ebx),%edx
  2b:	33 50 08             	xor    0x8(%eax),%edx
  2e:	23 50 0c             	and    0xc(%eax),%edx
  31:	75 13                	jne    46 <pci_init_device+0x46>
  33:	8b 70 10             	mov    0x10(%eax),%esi
  36:	31 c0                	xor    %eax,%eax
  38:	85 f6                	test   %esi,%esi
  3a:	74 18                	je     54 <pci_init_device+0x54>
  3c:	89 ca                	mov    %ecx,%edx
  3e:	89 d8                	mov    %ebx,%eax
  40:	ff d6                	call   *%esi
  42:	31 c0                	xor    %eax,%eax
  44:	eb 0e                	jmp    54 <pci_init_device+0x54>
  46:	83 c0 14             	add    $0x14,%eax
  49:	eb b9                	jmp    4 <pci_init_device+0x4>
  4b:	83 78 0c 00          	cmpl   $0x0,0xc(%eax)
  4f:	75 be                	jne    f <pci_init_device+0xf>
  51:	83 c8 ff             	or     $0xffffffff,%eax
  54:	5b                   	pop    %ebx
  55:	5e                   	pop    %esi
  56:	c3                   	ret    

Disassembly of section .text.pci_find_init_device:

00000000 <pci_find_init_device>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	89 c6                	mov    %eax,%esi
   5:	89 d7                	mov    %edx,%edi
   7:	a1 00 00 00 00       	mov    0x0,%eax
   c:	8d 58 fc             	lea    -0x4(%eax),%ebx
   f:	83 fb fc             	cmp    $0xfffffffc,%ebx
  12:	74 17                	je     2b <pci_find_init_device+0x2b>
  14:	89 f9                	mov    %edi,%ecx
  16:	89 da                	mov    %ebx,%edx
  18:	89 f0                	mov    %esi,%eax
  1a:	e8 fc ff ff ff       	call   1b <pci_find_init_device+0x1b>
  1f:	85 c0                	test   %eax,%eax
  21:	74 0a                	je     2d <pci_find_init_device+0x2d>
  23:	8b 5b 04             	mov    0x4(%ebx),%ebx
  26:	83 eb 04             	sub    $0x4,%ebx
  29:	eb e4                	jmp    f <pci_find_init_device+0xf>
  2b:	31 db                	xor    %ebx,%ebx
  2d:	89 d8                	mov    %ebx,%eax
  2f:	5b                   	pop    %ebx
  30:	5e                   	pop    %esi
  31:	5f                   	pop    %edi
  32:	c3                   	ret    

Disassembly of section .text.pci_enable_busmaster:

00000000 <pci_enable_busmaster>:
   0:	53                   	push   %ebx
   1:	89 c3                	mov    %eax,%ebx
   3:	e8 fc ff ff ff       	call   4 <pci_enable_busmaster+0x4>
   8:	0f b7 03             	movzwl (%ebx),%eax
   b:	6a 04                	push   $0x4
   d:	31 c9                	xor    %ecx,%ecx
   f:	ba 04 00 00 00       	mov    $0x4,%edx
  14:	e8 fc ff ff ff       	call   15 <pci_enable_busmaster+0x15>
  19:	c7 43 1c 01 00 00 00 	movl   $0x1,0x1c(%ebx)
  20:	58                   	pop    %eax
  21:	5b                   	pop    %ebx
  22:	c3                   	ret    

Disassembly of section .text.pci_enable_iobar:

00000000 <pci_enable_iobar>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	53                   	push   %ebx
   3:	89 c6                	mov    %eax,%esi
   5:	89 14 24             	mov    %edx,(%esp)
   8:	e8 fc ff ff ff       	call   9 <pci_enable_iobar+0x9>
   d:	0f b7 06             	movzwl (%esi),%eax
  10:	8b 14 24             	mov    (%esp),%edx
  13:	e8 fc ff ff ff       	call   14 <pci_enable_iobar+0x14>
  18:	a8 01                	test   $0x1,%al
  1a:	75 0c                	jne    28 <pci_enable_iobar+0x28>
  1c:	ba 00 00 00 00       	mov    $0x0,%edx
  21:	b8 99 00 00 00       	mov    $0x99,%eax
  26:	eb 19                	jmp    41 <pci_enable_iobar+0x41>
  28:	83 e0 fc             	and    $0xfffffffc,%eax
  2b:	89 c3                	mov    %eax,%ebx
  2d:	8d 40 ff             	lea    -0x1(%eax),%eax
  30:	3d fe ff 00 00       	cmp    $0xfffe,%eax
  35:	76 13                	jbe    4a <pci_enable_iobar+0x4a>
  37:	ba 00 00 00 00       	mov    $0x0,%edx
  3c:	b8 9e 00 00 00       	mov    $0x9e,%eax
  41:	e8 fc ff ff ff       	call   42 <pci_enable_iobar+0x42>
  46:	31 c0                	xor    %eax,%eax
  48:	eb 1b                	jmp    65 <pci_enable_iobar+0x65>
  4a:	0f b7 06             	movzwl (%esi),%eax
  4d:	6a 01                	push   $0x1
  4f:	31 c9                	xor    %ecx,%ecx
  51:	ba 04 00 00 00       	mov    $0x4,%edx
  56:	e8 fc ff ff ff       	call   57 <pci_enable_iobar+0x57>
  5b:	c7 46 1c 01 00 00 00 	movl   $0x1,0x1c(%esi)
  62:	89 d8                	mov    %ebx,%eax
  64:	59                   	pop    %ecx
  65:	5a                   	pop    %edx
  66:	5b                   	pop    %ebx
  67:	5e                   	pop    %esi
  68:	c3                   	ret    

Disassembly of section .text.pci_enable_membar:

00000000 <pci_enable_membar>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	89 c6                	mov    %eax,%esi
   5:	89 d7                	mov    %edx,%edi
   7:	e8 fc ff ff ff       	call   8 <pci_enable_membar+0x8>
   c:	0f b7 06             	movzwl (%esi),%eax
   f:	89 fa                	mov    %edi,%edx
  11:	e8 fc ff ff ff       	call   12 <pci_enable_membar+0x12>
  16:	a8 01                	test   $0x1,%al
  18:	74 0c                	je     26 <pci_enable_membar+0x26>
  1a:	ba 00 00 00 00       	mov    $0x0,%edx
  1f:	b8 ad 00 00 00       	mov    $0xad,%eax
  24:	eb 3c                	jmp    62 <pci_enable_membar+0x62>
  26:	89 c3                	mov    %eax,%ebx
  28:	a8 04                	test   $0x4,%al
  2a:	74 1c                	je     48 <pci_enable_membar+0x48>
  2c:	8d 57 04             	lea    0x4(%edi),%edx
  2f:	0f b7 06             	movzwl (%esi),%eax
  32:	e8 fc ff ff ff       	call   33 <pci_enable_membar+0x33>
  37:	85 c0                	test   %eax,%eax
  39:	74 0d                	je     48 <pci_enable_membar+0x48>
  3b:	68 71 00 00 00       	push   $0x71
  40:	e8 fc ff ff ff       	call   41 <pci_enable_membar+0x41>
  45:	59                   	pop    %ecx
  46:	eb 1f                	jmp    67 <pci_enable_membar+0x67>
  48:	83 e3 f0             	and    $0xfffffff0,%ebx
  4b:	8d 83 00 00 40 00    	lea    0x400000(%ebx),%eax
  51:	3d ff ff 3f 01       	cmp    $0x13fffff,%eax
  56:	77 13                	ja     6b <pci_enable_membar+0x6b>
  58:	ba 00 00 00 00       	mov    $0x0,%edx
  5d:	b8 ba 00 00 00       	mov    $0xba,%eax
  62:	e8 fc ff ff ff       	call   63 <pci_enable_membar+0x63>
  67:	31 c0                	xor    %eax,%eax
  69:	eb 1b                	jmp    86 <pci_enable_membar+0x86>
  6b:	0f b7 06             	movzwl (%esi),%eax
  6e:	6a 02                	push   $0x2
  70:	31 c9                	xor    %ecx,%ecx
  72:	ba 04 00 00 00       	mov    $0x4,%edx
  77:	e8 fc ff ff ff       	call   78 <pci_enable_membar+0x78>
  7c:	c7 46 1c 01 00 00 00 	movl   $0x1,0x1c(%esi)
  83:	89 d8                	mov    %ebx,%eax
  85:	5a                   	pop    %edx
  86:	5b                   	pop    %ebx
  87:	5e                   	pop    %esi
  88:	5f                   	pop    %edi
  89:	c3                   	ret    
