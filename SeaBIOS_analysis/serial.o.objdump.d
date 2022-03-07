
./serial.o:     file format elf32-i386


Disassembly of section .text.getComAddr:

00000000 <getComAddr>:
   0:	53                   	push   %ebx
   1:	66 8b 50 14          	mov    0x14(%eax),%dx
   5:	66 83 fa 03          	cmp    $0x3,%dx
   9:	76 13                	jbe    1e <getComAddr+0x1e>
   b:	b9 00 00 00 00       	mov    $0x0,%ecx
  10:	ba 3f 00 00 00       	mov    $0x3f,%edx
  15:	e8 fc ff ff ff       	call   16 <getComAddr+0x16>
  1a:	31 db                	xor    %ebx,%ebx
  1c:	eb 20                	jmp    3e <getComAddr+0x3e>
  1e:	66 81 c2 00 02       	add    $0x200,%dx
  23:	0f b7 d2             	movzwl %dx,%edx
  26:	66 8b 1c 12          	mov    (%edx,%edx,1),%bx
  2a:	66 85 db             	test   %bx,%bx
  2d:	75 0f                	jne    3e <getComAddr+0x3e>
  2f:	b9 00 00 00 00       	mov    $0x0,%ecx
  34:	ba 44 00 00 00       	mov    $0x44,%edx
  39:	e8 fc ff ff ff       	call   3a <getComAddr+0x3a>
  3e:	89 d8                	mov    %ebx,%eax
  40:	5b                   	pop    %ebx
  41:	c3                   	ret    

Disassembly of section .text.getLptAddr:

00000000 <getLptAddr>:
   0:	53                   	push   %ebx
   1:	66 8b 50 14          	mov    0x14(%eax),%dx
   5:	66 83 fa 02          	cmp    $0x2,%dx
   9:	76 13                	jbe    1e <getLptAddr+0x1e>
   b:	b9 00 00 00 00       	mov    $0x0,%ecx
  10:	ba e0 00 00 00       	mov    $0xe0,%edx
  15:	e8 fc ff ff ff       	call   16 <getLptAddr+0x16>
  1a:	31 db                	xor    %ebx,%ebx
  1c:	eb 20                	jmp    3e <getLptAddr+0x3e>
  1e:	66 81 c2 04 02       	add    $0x204,%dx
  23:	0f b7 d2             	movzwl %dx,%edx
  26:	66 8b 1c 12          	mov    (%edx,%edx,1),%bx
  2a:	66 85 db             	test   %bx,%bx
  2d:	75 0f                	jne    3e <getLptAddr+0x3e>
  2f:	b9 00 00 00 00       	mov    $0x0,%ecx
  34:	ba e5 00 00 00       	mov    $0xe5,%edx
  39:	e8 fc ff ff ff       	call   3a <getLptAddr+0x3a>
  3e:	89 d8                	mov    %ebx,%eax
  40:	5b                   	pop    %ebx
  41:	c3                   	ret    

Disassembly of section .text.detect_serial.constprop.0:

00000000 <detect_serial.constprop.0>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 c3                	mov    %eax,%ebx
   4:	89 d1                	mov    %edx,%ecx
   6:	8d 70 01             	lea    0x1(%eax),%esi
   9:	b0 02                	mov    $0x2,%al
   b:	89 f2                	mov    %esi,%edx
   d:	ee                   	out    %al,(%dx)
   e:	ec                   	in     (%dx),%al
   f:	3c 02                	cmp    $0x2,%al
  11:	75 2c                	jne    3f <detect_serial.constprop.0+0x3f>
  13:	8d 53 02             	lea    0x2(%ebx),%edx
  16:	ec                   	in     (%dx),%al
  17:	83 e0 3f             	and    $0x3f,%eax
  1a:	88 c2                	mov    %al,%dl
  1c:	31 c0                	xor    %eax,%eax
  1e:	80 fa 02             	cmp    $0x2,%dl
  21:	75 1e                	jne    41 <detect_serial.constprop.0+0x41>
  23:	89 f2                	mov    %esi,%edx
  25:	ee                   	out    %al,(%dx)
  26:	0f b6 c1             	movzbl %cl,%eax
  29:	66 89 9c 00 00 04 00 	mov    %bx,0x400(%eax,%eax,1)
  30:	00 
  31:	c6 80 7c 04 00 00 0a 	movb   $0xa,0x47c(%eax)
  38:	b8 01 00 00 00       	mov    $0x1,%eax
  3d:	eb 02                	jmp    41 <detect_serial.constprop.0+0x41>
  3f:	31 c0                	xor    %eax,%eax
  41:	5b                   	pop    %ebx
  42:	5e                   	pop    %esi
  43:	c3                   	ret    

Disassembly of section .text.serial_setup:

00000000 <serial_setup>:
   0:	53                   	push   %ebx
   1:	68 00 00 00 00       	push   $0x0
   6:	e8 fc ff ff ff       	call   7 <serial_setup+0x7>
   b:	31 d2                	xor    %edx,%edx
   d:	b8 f8 03 00 00       	mov    $0x3f8,%eax
  12:	e8 fc ff ff ff       	call   13 <serial_setup+0x13>
  17:	89 c3                	mov    %eax,%ebx
  19:	0f b6 d0             	movzbl %al,%edx
  1c:	b8 f8 02 00 00       	mov    $0x2f8,%eax
  21:	e8 fc ff ff ff       	call   22 <serial_setup+0x22>
  26:	01 c3                	add    %eax,%ebx
  28:	0f b6 d3             	movzbl %bl,%edx
  2b:	b8 e8 03 00 00       	mov    $0x3e8,%eax
  30:	e8 fc ff ff ff       	call   31 <serial_setup+0x31>
  35:	01 c3                	add    %eax,%ebx
  37:	0f b6 d3             	movzbl %bl,%edx
  3a:	b8 e8 02 00 00       	mov    $0x2e8,%eax
  3f:	e8 fc ff ff ff       	call   40 <serial_setup+0x40>
  44:	01 c3                	add    %eax,%ebx
  46:	0f b7 c3             	movzwl %bx,%eax
  49:	50                   	push   %eax
  4a:	68 0d 00 00 00       	push   $0xd
  4f:	e8 fc ff ff ff       	call   50 <serial_setup+0x50>
  54:	a1 10 04 00 00       	mov    0x410,%eax
  59:	80 e4 f1             	and    $0xf1,%ah
  5c:	c1 e3 09             	shl    $0x9,%ebx
  5f:	09 d8                	or     %ebx,%eax
  61:	66 a3 10 04 00 00    	mov    %ax,0x410
  67:	83 c4 0c             	add    $0xc,%esp
  6a:	5b                   	pop    %ebx
  6b:	c3                   	ret    

Disassembly of section .text.handle_14:

00000000 <handle_14>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	56                   	push   %esi
   5:	89 c3                	mov    %eax,%ebx
   7:	ba 00 00 00 00       	mov    $0x0,%edx
   c:	e8 fc ff ff ff       	call   d <handle_14+0xd>
  11:	8a 43 1d             	mov    0x1d(%ebx),%al
  14:	3c 02                	cmp    $0x2,%al
  16:	0f 84 c4 00 00 00    	je     e0 <handle_14+0xe0>
  1c:	77 06                	ja     24 <handle_14+0x24>
  1e:	84 c0                	test   %al,%al
  20:	75 73                	jne    95 <handle_14+0x95>
  22:	eb 0d                	jmp    31 <handle_14+0x31>
  24:	3c 03                	cmp    $0x3,%al
  26:	0f 84 04 01 00 00    	je     130 <handle_14+0x130>
  2c:	e9 22 01 00 00       	jmp    153 <handle_14+0x153>
  31:	89 d8                	mov    %ebx,%eax
  33:	e8 fc ff ff ff       	call   34 <handle_14+0x34>
  38:	89 c6                	mov    %eax,%esi
  3a:	66 85 c0             	test   %ax,%ax
  3d:	0f 84 26 01 00 00    	je     169 <handle_14+0x169>
  43:	8d 7e 03             	lea    0x3(%esi),%edi
  46:	89 fa                	mov    %edi,%edx
  48:	ec                   	in     (%dx),%al
  49:	83 c8 80             	or     $0xffffff80,%eax
  4c:	ee                   	out    %al,(%dx)
  4d:	8a 43 1c             	mov    0x1c(%ebx),%al
  50:	88 44 24 03          	mov    %al,0x3(%esp)
  54:	8d 6e 01             	lea    0x1(%esi),%ebp
  57:	a8 e0                	test   $0xe0,%al
  59:	75 09                	jne    64 <handle_14+0x64>
  5b:	b0 17                	mov    $0x17,%al
  5d:	89 f2                	mov    %esi,%edx
  5f:	ee                   	out    %al,(%dx)
  60:	b0 04                	mov    $0x4,%al
  62:	eb 15                	jmp    79 <handle_14+0x79>
  64:	8a 4c 24 03          	mov    0x3(%esp),%cl
  68:	c0 e9 05             	shr    $0x5,%cl
  6b:	b8 00 06 00 00       	mov    $0x600,%eax
  70:	d3 f8                	sar    %cl,%eax
  72:	89 f2                	mov    %esi,%edx
  74:	ee                   	out    %al,(%dx)
  75:	66 c1 e8 08          	shr    $0x8,%ax
  79:	89 ea                	mov    %ebp,%edx
  7b:	ee                   	out    %al,(%dx)
  7c:	8a 44 24 03          	mov    0x3(%esp),%al
  80:	83 e0 1f             	and    $0x1f,%eax
  83:	89 fa                	mov    %edi,%edx
  85:	ee                   	out    %al,(%dx)
  86:	8d 56 05             	lea    0x5(%esi),%edx
  89:	ec                   	in     (%dx),%al
  8a:	88 43 1d             	mov    %al,0x1d(%ebx)
  8d:	8d 56 06             	lea    0x6(%esi),%edx
  90:	e9 b3 00 00 00       	jmp    148 <handle_14+0x148>
  95:	89 d8                	mov    %ebx,%eax
  97:	e8 fc ff ff ff       	call   98 <handle_14+0x98>
  9c:	89 c7                	mov    %eax,%edi
  9e:	66 85 c0             	test   %ax,%ax
  a1:	0f 84 c2 00 00 00    	je     169 <handle_14+0x169>
  a7:	0f b7 43 14          	movzwl 0x14(%ebx),%eax
  ab:	0f b6 80 7c 04 00 00 	movzbl 0x47c(%eax),%eax
  b2:	e8 fc ff ff ff       	call   b3 <handle_14+0xb3>
  b7:	89 c5                	mov    %eax,%ebp
  b9:	8d 57 05             	lea    0x5(%edi),%edx
  bc:	ec                   	in     (%dx),%al
  bd:	89 c6                	mov    %eax,%esi
  bf:	83 e0 60             	and    $0x60,%eax
  c2:	3c 60                	cmp    $0x60,%al
  c4:	75 08                	jne    ce <handle_14+0xce>
  c6:	8a 43 1c             	mov    0x1c(%ebx),%al
  c9:	89 fa                	mov    %edi,%edx
  cb:	ee                   	out    %al,(%dx)
  cc:	eb 5b                	jmp    129 <handle_14+0x129>
  ce:	89 e8                	mov    %ebp,%eax
  d0:	e8 fc ff ff ff       	call   d1 <handle_14+0xd1>
  d5:	85 c0                	test   %eax,%eax
  d7:	75 44                	jne    11d <handle_14+0x11d>
  d9:	e8 fc ff ff ff       	call   da <handle_14+0xda>
  de:	eb d9                	jmp    b9 <handle_14+0xb9>
  e0:	89 d8                	mov    %ebx,%eax
  e2:	e8 fc ff ff ff       	call   e3 <handle_14+0xe3>
  e7:	89 c7                	mov    %eax,%edi
  e9:	66 85 c0             	test   %ax,%ax
  ec:	74 7b                	je     169 <handle_14+0x169>
  ee:	0f b7 43 14          	movzwl 0x14(%ebx),%eax
  f2:	0f b6 80 7c 04 00 00 	movzbl 0x47c(%eax),%eax
  f9:	e8 fc ff ff ff       	call   fa <handle_14+0xfa>
  fe:	89 c5                	mov    %eax,%ebp
 100:	8d 57 05             	lea    0x5(%edi),%edx
 103:	ec                   	in     (%dx),%al
 104:	89 c6                	mov    %eax,%esi
 106:	a8 01                	test   $0x1,%al
 108:	74 08                	je     112 <handle_14+0x112>
 10a:	89 fa                	mov    %edi,%edx
 10c:	ec                   	in     (%dx),%al
 10d:	88 43 1c             	mov    %al,0x1c(%ebx)
 110:	eb 17                	jmp    129 <handle_14+0x129>
 112:	89 e8                	mov    %ebp,%eax
 114:	e8 fc ff ff ff       	call   115 <handle_14+0x115>
 119:	85 c0                	test   %eax,%eax
 11b:	74 05                	je     122 <handle_14+0x122>
 11d:	83 ce 80             	or     $0xffffff80,%esi
 120:	eb 07                	jmp    129 <handle_14+0x129>
 122:	e8 fc ff ff ff       	call   123 <handle_14+0x123>
 127:	eb d7                	jmp    100 <handle_14+0x100>
 129:	89 f0                	mov    %esi,%eax
 12b:	88 43 1d             	mov    %al,0x1d(%ebx)
 12e:	eb 1c                	jmp    14c <handle_14+0x14c>
 130:	89 d8                	mov    %ebx,%eax
 132:	e8 fc ff ff ff       	call   133 <handle_14+0x133>
 137:	89 c1                	mov    %eax,%ecx
 139:	66 85 c0             	test   %ax,%ax
 13c:	74 2b                	je     169 <handle_14+0x169>
 13e:	8d 51 05             	lea    0x5(%ecx),%edx
 141:	ec                   	in     (%dx),%al
 142:	88 43 1d             	mov    %al,0x1d(%ebx)
 145:	8d 51 06             	lea    0x6(%ecx),%edx
 148:	ec                   	in     (%dx),%al
 149:	88 43 1c             	mov    %al,0x1c(%ebx)
 14c:	66 83 63 24 fe       	andw   $0xfffe,0x24(%ebx)
 151:	eb 16                	jmp    169 <handle_14+0x169>
 153:	b9 00 00 00 00       	mov    $0x0,%ecx
 158:	ba a2 00 00 00       	mov    $0xa2,%edx
 15d:	89 d8                	mov    %ebx,%eax
 15f:	5b                   	pop    %ebx
 160:	5b                   	pop    %ebx
 161:	5e                   	pop    %esi
 162:	5f                   	pop    %edi
 163:	5d                   	pop    %ebp
 164:	e9 fc ff ff ff       	jmp    165 <handle_14+0x165>
 169:	58                   	pop    %eax
 16a:	5b                   	pop    %ebx
 16b:	5e                   	pop    %esi
 16c:	5f                   	pop    %edi
 16d:	5d                   	pop    %ebp
 16e:	c3                   	ret    

Disassembly of section .text.lpt_setup:

00000000 <lpt_setup>:
   0:	53                   	push   %ebx
   1:	68 24 00 00 00       	push   $0x24
   6:	e8 fc ff ff ff       	call   7 <lpt_setup+0x7>
   b:	ba 7a 03 00 00       	mov    $0x37a,%edx
  10:	ec                   	in     (%dx),%al
  11:	83 e0 df             	and    $0xffffffdf,%eax
  14:	ee                   	out    %al,(%dx)
  15:	ba 78 03 00 00       	mov    $0x378,%edx
  1a:	b0 aa                	mov    $0xaa,%al
  1c:	ee                   	out    %al,(%dx)
  1d:	ec                   	in     (%dx),%al
  1e:	59                   	pop    %ecx
  1f:	31 c9                	xor    %ecx,%ecx
  21:	3c aa                	cmp    $0xaa,%al
  23:	75 15                	jne    3a <lpt_setup+0x3a>
  25:	66 c7 05 08 04 00 00 	movw   $0x378,0x408
  2c:	78 03 
  2e:	c6 05 78 04 00 00 14 	movb   $0x14,0x478
  35:	b9 01 00 00 00       	mov    $0x1,%ecx
  3a:	ba 7a 02 00 00       	mov    $0x27a,%edx
  3f:	ec                   	in     (%dx),%al
  40:	83 e0 df             	and    $0xffffffdf,%eax
  43:	ee                   	out    %al,(%dx)
  44:	ba 78 02 00 00       	mov    $0x278,%edx
  49:	b0 aa                	mov    $0xaa,%al
  4b:	ee                   	out    %al,(%dx)
  4c:	ec                   	in     (%dx),%al
  4d:	31 db                	xor    %ebx,%ebx
  4f:	3c aa                	cmp    $0xaa,%al
  51:	75 19                	jne    6c <lpt_setup+0x6c>
  53:	0f b7 c1             	movzwl %cx,%eax
  56:	66 c7 84 00 08 04 00 	movw   $0x278,0x408(%eax,%eax,1)
  5d:	00 78 02 
  60:	c6 80 78 04 00 00 14 	movb   $0x14,0x478(%eax)
  67:	bb 01 00 00 00       	mov    $0x1,%ebx
  6c:	01 cb                	add    %ecx,%ebx
  6e:	0f b7 c3             	movzwl %bx,%eax
  71:	50                   	push   %eax
  72:	68 2e 00 00 00       	push   $0x2e
  77:	e8 fc ff ff ff       	call   78 <lpt_setup+0x78>
  7c:	a1 10 04 00 00       	mov    0x410,%eax
  81:	66 25 ff 3f          	and    $0x3fff,%ax
  85:	c1 e3 0e             	shl    $0xe,%ebx
  88:	09 d8                	or     %ebx,%eax
  8a:	66 a3 10 04 00 00    	mov    %ax,0x410
  90:	58                   	pop    %eax
  91:	5a                   	pop    %edx
  92:	5b                   	pop    %ebx
  93:	c3                   	ret    

Disassembly of section .text.handle_17:

00000000 <handle_17>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	56                   	push   %esi
   5:	89 c3                	mov    %eax,%ebx
   7:	ba 00 00 00 00       	mov    $0x0,%edx
   c:	e8 fc ff ff ff       	call   d <handle_17+0xd>
  11:	8a 43 1d             	mov    0x1d(%ebx),%al
  14:	3c 01                	cmp    $0x1,%al
  16:	0f 84 87 00 00 00    	je     a3 <handle_17+0xa3>
  1c:	3c 02                	cmp    $0x2,%al
  1e:	0f 84 b2 00 00 00    	je     d6 <handle_17+0xd6>
  24:	84 c0                	test   %al,%al
  26:	0f 85 c7 00 00 00    	jne    f3 <handle_17+0xf3>
  2c:	89 d8                	mov    %ebx,%eax
  2e:	e8 fc ff ff ff       	call   2f <handle_17+0x2f>
  33:	89 c7                	mov    %eax,%edi
  35:	66 85 c0             	test   %ax,%ax
  38:	0f 84 cb 00 00 00    	je     109 <handle_17+0x109>
  3e:	0f b7 43 14          	movzwl 0x14(%ebx),%eax
  42:	0f b6 80 78 04 00 00 	movzbl 0x478(%eax),%eax
  49:	e8 fc ff ff ff       	call   4a <handle_17+0x4a>
  4e:	89 c5                	mov    %eax,%ebp
  50:	8a 43 1c             	mov    0x1c(%ebx),%al
  53:	89 fa                	mov    %edi,%edx
  55:	ee                   	out    %al,(%dx)
  56:	8d 57 02             	lea    0x2(%edi),%edx
  59:	ec                   	in     (%dx),%al
  5a:	89 c6                	mov    %eax,%esi
  5c:	83 c8 01             	or     $0x1,%eax
  5f:	ee                   	out    %al,(%dx)
  60:	89 14 24             	mov    %edx,(%esp)
  63:	b8 05 00 00 00       	mov    $0x5,%eax
  68:	e8 fc ff ff ff       	call   69 <handle_17+0x69>
  6d:	89 f0                	mov    %esi,%eax
  6f:	83 e0 fe             	and    $0xfffffffe,%eax
  72:	8b 14 24             	mov    (%esp),%edx
  75:	ee                   	out    %al,(%dx)
  76:	8d 57 01             	lea    0x1(%edi),%edx
  79:	ec                   	in     (%dx),%al
  7a:	89 c6                	mov    %eax,%esi
  7c:	a8 40                	test   $0x40,%al
  7e:	75 05                	jne    85 <handle_17+0x85>
  80:	83 f6 48             	xor    $0x48,%esi
  83:	eb 1a                	jmp    9f <handle_17+0x9f>
  85:	89 e8                	mov    %ebp,%eax
  87:	e8 fc ff ff ff       	call   88 <handle_17+0x88>
  8c:	85 c0                	test   %eax,%eax
  8e:	74 08                	je     98 <handle_17+0x98>
  90:	83 f6 48             	xor    $0x48,%esi
  93:	83 ce 01             	or     $0x1,%esi
  96:	eb 07                	jmp    9f <handle_17+0x9f>
  98:	e8 fc ff ff ff       	call   99 <handle_17+0x99>
  9d:	eb d7                	jmp    76 <handle_17+0x76>
  9f:	89 f0                	mov    %esi,%eax
  a1:	eb 46                	jmp    e9 <handle_17+0xe9>
  a3:	89 d8                	mov    %ebx,%eax
  a5:	e8 fc ff ff ff       	call   a6 <handle_17+0xa6>
  aa:	89 c6                	mov    %eax,%esi
  ac:	66 85 c0             	test   %ax,%ax
  af:	74 58                	je     109 <handle_17+0x109>
  b1:	8d 56 02             	lea    0x2(%esi),%edx
  b4:	ec                   	in     (%dx),%al
  b5:	89 c7                	mov    %eax,%edi
  b7:	83 e0 fb             	and    $0xfffffffb,%eax
  ba:	ee                   	out    %al,(%dx)
  bb:	89 14 24             	mov    %edx,(%esp)
  be:	b8 05 00 00 00       	mov    $0x5,%eax
  c3:	e8 fc ff ff ff       	call   c4 <handle_17+0xc4>
  c8:	89 f8                	mov    %edi,%eax
  ca:	83 c8 04             	or     $0x4,%eax
  cd:	8b 14 24             	mov    (%esp),%edx
  d0:	ee                   	out    %al,(%dx)
  d1:	8d 56 01             	lea    0x1(%esi),%edx
  d4:	eb 0f                	jmp    e5 <handle_17+0xe5>
  d6:	89 d8                	mov    %ebx,%eax
  d8:	e8 fc ff ff ff       	call   d9 <handle_17+0xd9>
  dd:	66 85 c0             	test   %ax,%ax
  e0:	74 27                	je     109 <handle_17+0x109>
  e2:	8d 50 01             	lea    0x1(%eax),%edx
  e5:	ec                   	in     (%dx),%al
  e6:	83 f0 48             	xor    $0x48,%eax
  e9:	88 43 1d             	mov    %al,0x1d(%ebx)
  ec:	66 83 63 24 fe       	andw   $0xfffe,0x24(%ebx)
  f1:	eb 16                	jmp    109 <handle_17+0x109>
  f3:	b9 00 00 00 00       	mov    $0x0,%ecx
  f8:	ba 2a 01 00 00       	mov    $0x12a,%edx
  fd:	89 d8                	mov    %ebx,%eax
  ff:	5b                   	pop    %ebx
 100:	5b                   	pop    %ebx
 101:	5e                   	pop    %esi
 102:	5f                   	pop    %edi
 103:	5d                   	pop    %ebp
 104:	e9 fc ff ff ff       	jmp    105 <handle_17+0x105>
 109:	58                   	pop    %eax
 10a:	5b                   	pop    %ebx
 10b:	5e                   	pop    %esi
 10c:	5f                   	pop    %edi
 10d:	5d                   	pop    %ebp
 10e:	c3                   	ret    
