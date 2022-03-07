
./optionroms.o:     file format elf32-i386


Disassembly of section .text.__callrom:

00000000 <__callrom>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 d6                	mov    %edx,%esi
   8:	89 cf                	mov    %ecx,%edi
   a:	c1 e8 04             	shr    $0x4,%eax
   d:	89 c3                	mov    %eax,%ebx
   f:	0f b7 c2             	movzwl %dx,%eax
  12:	50                   	push   %eax
  13:	0f b7 c3             	movzwl %bx,%eax
  16:	50                   	push   %eax
  17:	68 00 00 00 00       	push   $0x0
  1c:	e8 fc ff ff ff       	call   1d <__callrom+0x1d>
  21:	b9 26 00 00 00       	mov    $0x26,%ecx
  26:	31 d2                	xor    %edx,%edx
  28:	8d 44 24 0e          	lea    0xe(%esp),%eax
  2c:	e8 fc ff ff ff       	call   2d <__callrom+0x2d>
  31:	66 c7 44 24 32 00 02 	movw   $0x200,0x32(%esp)
  38:	66 89 7c 24 2a       	mov    %di,0x2a(%esp)
  3d:	66 c7 44 24 1e ff ff 	movw   $0xffff,0x1e(%esp)
  44:	66 c7 44 24 22 ff ff 	movw   $0xffff,0x22(%esp)
  4b:	66 c7 44 24 10 00 f0 	movw   $0xf000,0x10(%esp)
  52:	e8 fc ff ff ff       	call   53 <__callrom+0x53>
  57:	66 89 44 24 12       	mov    %ax,0x12(%esp)
  5c:	66 89 74 24 2e       	mov    %si,0x2e(%esp)
  61:	66 89 5c 24 30       	mov    %bx,0x30(%esp)
  66:	e8 fc ff ff ff       	call   67 <__callrom+0x67>
  6b:	8d 44 24 0e          	lea    0xe(%esp),%eax
  6f:	e8 fc ff ff ff       	call   70 <__callrom+0x70>
  74:	e8 fc ff ff ff       	call   75 <__callrom+0x75>
  79:	83 c4 34             	add    $0x34,%esp
  7c:	5b                   	pop    %ebx
  7d:	5e                   	pop    %esi
  7e:	5f                   	pop    %edi
  7f:	c3                   	ret    

Disassembly of section .text.map_pcirom:

00000000 <map_pcirom>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	52                   	push   %edx
   5:	89 c7                	mov    %eax,%edi
   7:	50                   	push   %eax
   8:	68 21 00 00 00       	push   $0x21
   d:	e8 fc ff ff ff       	call   e <map_pcirom+0xe>
  12:	0f b6 47 18          	movzbl 0x18(%edi),%eax
  16:	59                   	pop    %ecx
  17:	5b                   	pop    %ebx
  18:	a8 7f                	test   $0x7f,%al
  1a:	74 12                	je     2e <map_pcirom+0x2e>
  1c:	50                   	push   %eax
  1d:	68 4a 00 00 00       	push   $0x4a
  22:	e8 fc ff ff ff       	call   23 <map_pcirom+0x23>
  27:	5d                   	pop    %ebp
  28:	58                   	pop    %eax
  29:	e9 98 01 00 00       	jmp    1c6 <map_pcirom+0x1c6>
  2e:	0f b7 07             	movzwl (%edi),%eax
  31:	89 04 24             	mov    %eax,(%esp)
  34:	ba 30 00 00 00       	mov    $0x30,%edx
  39:	e8 fc ff ff ff       	call   3a <map_pcirom+0x3a>
  3e:	89 c3                	mov    %eax,%ebx
  40:	b9 fe ff ff ff       	mov    $0xfffffffe,%ecx
  45:	ba 30 00 00 00       	mov    $0x30,%edx
  4a:	8b 04 24             	mov    (%esp),%eax
  4d:	e8 fc ff ff ff       	call   4e <map_pcirom+0x4e>
  52:	ba 30 00 00 00       	mov    $0x30,%edx
  57:	8b 04 24             	mov    (%esp),%eax
  5a:	e8 fc ff ff ff       	call   5b <map_pcirom+0x5b>
  5f:	89 c6                	mov    %eax,%esi
  61:	50                   	push   %eax
  62:	53                   	push   %ebx
  63:	68 74 00 00 00       	push   $0x74
  68:	e8 fc ff ff ff       	call   69 <map_pcirom+0x69>
  6d:	83 e3 fe             	and    $0xfffffffe,%ebx
  70:	8d 46 ff             	lea    -0x1(%esi),%eax
  73:	83 c4 0c             	add    $0xc,%esp
  76:	83 f8 fd             	cmp    $0xfffffffd,%eax
  79:	0f 87 38 01 00 00    	ja     1b7 <map_pcirom+0x1b7>
  7f:	39 de                	cmp    %ebx,%esi
  81:	74 0d                	je     90 <map_pcirom+0x90>
  83:	8d 83 00 00 40 00    	lea    0x400000(%ebx),%eax
  89:	3d ff ff 3f 01       	cmp    $0x13fffff,%eax
  8e:	77 0a                	ja     9a <map_pcirom+0x9a>
  90:	68 96 00 00 00       	push   $0x96
  95:	e9 b6 00 00 00       	jmp    150 <map_pcirom+0x150>
  9a:	89 d9                	mov    %ebx,%ecx
  9c:	83 c9 01             	or     $0x1,%ecx
  9f:	ba 30 00 00 00       	mov    $0x30,%edx
  a4:	8b 04 24             	mov    (%esp),%eax
  a7:	e8 fc ff ff ff       	call   a8 <map_pcirom+0xa8>
  ac:	89 dd                	mov    %ebx,%ebp
  ae:	57                   	push   %edi
  af:	0f b7 47 12          	movzwl 0x12(%edi),%eax
  b3:	50                   	push   %eax
  b4:	0f b7 47 10          	movzwl 0x10(%edi),%eax
  b8:	50                   	push   %eax
  b9:	55                   	push   %ebp
  ba:	68 bd 00 00 00       	push   $0xbd
  bf:	e8 fc ff ff ff       	call   c0 <map_pcirom+0xc0>
  c4:	0f b7 45 00          	movzwl 0x0(%ebp),%eax
  c8:	83 c4 14             	add    $0x14,%esp
  cb:	66 3d 55 aa          	cmp    $0xaa55,%ax
  cf:	74 12                	je     e3 <map_pcirom+0xe3>
  d1:	50                   	push   %eax
  d2:	68 f3 00 00 00       	push   $0xf3
  d7:	e8 fc ff ff ff       	call   d8 <map_pcirom+0xd8>
  dc:	5e                   	pop    %esi
  dd:	5f                   	pop    %edi
  de:	e9 d4 00 00 00       	jmp    1b7 <map_pcirom+0x1b7>
  e3:	0f b7 75 18          	movzwl 0x18(%ebp),%esi
  e7:	89 f0                	mov    %esi,%eax
  e9:	01 ee                	add    %ebp,%esi
  eb:	81 3e 50 43 49 52    	cmpl   $0x52494350,(%esi)
  f1:	74 07                	je     fa <map_pcirom+0xfa>
  f3:	68 15 01 00 00       	push   $0x115
  f8:	eb 56                	jmp    150 <map_pcirom+0x150>
  fa:	a8 03                	test   $0x3,%al
  fc:	74 17                	je     115 <map_pcirom+0x115>
  fe:	0f b7 46 06          	movzwl 0x6(%esi),%eax
 102:	50                   	push   %eax
 103:	0f b7 46 04          	movzwl 0x4(%esi),%eax
 107:	50                   	push   %eax
 108:	68 33 01 00 00       	push   $0x133
 10d:	e8 fc ff ff ff       	call   10e <map_pcirom+0x10e>
 112:	83 c4 0c             	add    $0xc,%esp
 115:	85 f6                	test   %esi,%esi
 117:	74 da                	je     f3 <map_pcirom+0xf3>
 119:	0f b7 56 04          	movzwl 0x4(%esi),%edx
 11d:	0f b7 4e 06          	movzwl 0x6(%esi),%ecx
 121:	0f b6 46 14          	movzbl 0x14(%esi),%eax
 125:	66 3b 57 10          	cmp    0x10(%edi),%dx
 129:	75 0a                	jne    135 <map_pcirom+0x135>
 12b:	66 39 4f 12          	cmp    %cx,0x12(%edi)
 12f:	75 04                	jne    135 <map_pcirom+0x135>
 131:	84 c0                	test   %al,%al
 133:	74 31                	je     166 <map_pcirom+0x166>
 135:	50                   	push   %eax
 136:	51                   	push   %ecx
 137:	52                   	push   %edx
 138:	68 64 01 00 00       	push   $0x164
 13d:	e8 fc ff ff ff       	call   13e <map_pcirom+0x13e>
 142:	83 c4 10             	add    $0x10,%esp
 145:	80 7e 15 00          	cmpb   $0x0,0x15(%esi)
 149:	79 0d                	jns    158 <map_pcirom+0x158>
 14b:	68 9b 01 00 00       	push   $0x19b
 150:	e8 fc ff ff ff       	call   151 <map_pcirom+0x151>
 155:	59                   	pop    %ecx
 156:	eb 5f                	jmp    1b7 <map_pcirom+0x1b7>
 158:	0f b7 46 10          	movzwl 0x10(%esi),%eax
 15c:	c1 e0 09             	shl    $0x9,%eax
 15f:	01 c5                	add    %eax,%ebp
 161:	e9 48 ff ff ff       	jmp    ae <map_pcirom+0xae>
 166:	0f b6 7d 02          	movzbl 0x2(%ebp),%edi
 16a:	c1 e7 09             	shl    $0x9,%edi
 16d:	89 f8                	mov    %edi,%eax
 16f:	e8 fc ff ff ff       	call   170 <map_pcirom+0x170>
 174:	89 c6                	mov    %eax,%esi
 176:	85 c0                	test   %eax,%eax
 178:	75 11                	jne    18b <map_pcirom+0x18b>
 17a:	ba 00 00 00 00       	mov    $0x0,%edx
 17f:	b8 eb 00 00 00       	mov    $0xeb,%eax
 184:	e8 fc ff ff ff       	call   185 <map_pcirom+0x185>
 189:	eb 1b                	jmp    1a6 <map_pcirom+0x1a6>
 18b:	50                   	push   %eax
 18c:	55                   	push   %ebp
 18d:	57                   	push   %edi
 18e:	68 b0 01 00 00       	push   $0x1b0
 193:	e8 fc ff ff ff       	call   194 <map_pcirom+0x194>
 198:	89 f9                	mov    %edi,%ecx
 19a:	89 ea                	mov    %ebp,%edx
 19c:	89 f0                	mov    %esi,%eax
 19e:	e8 fc ff ff ff       	call   19f <map_pcirom+0x19f>
 1a3:	83 c4 10             	add    $0x10,%esp
 1a6:	89 d9                	mov    %ebx,%ecx
 1a8:	ba 30 00 00 00       	mov    $0x30,%edx
 1ad:	8b 04 24             	mov    (%esp),%eax
 1b0:	e8 fc ff ff ff       	call   1b1 <map_pcirom+0x1b1>
 1b5:	eb 11                	jmp    1c8 <map_pcirom+0x1c8>
 1b7:	89 d9                	mov    %ebx,%ecx
 1b9:	ba 30 00 00 00       	mov    $0x30,%edx
 1be:	8b 04 24             	mov    (%esp),%eax
 1c1:	e8 fc ff ff ff       	call   1c2 <map_pcirom+0x1c2>
 1c6:	31 f6                	xor    %esi,%esi
 1c8:	89 f0                	mov    %esi,%eax
 1ca:	5a                   	pop    %edx
 1cb:	5b                   	pop    %ebx
 1cc:	5e                   	pop    %esi
 1cd:	5f                   	pop    %edi
 1ce:	5d                   	pop    %ebp
 1cf:	c3                   	ret    

Disassembly of section .text.getRomPriority:

00000000 <getRomPriority>:
   0:	53                   	push   %ebx
   1:	89 c3                	mov    %eax,%ebx
   3:	81 ea 00 00 0c 00    	sub    $0xc0000,%edx
   9:	c1 ea 0b             	shr    $0xb,%edx
   c:	8b 04 d0             	mov    (%eax,%edx,8),%eax
   f:	8b 54 d3 04          	mov    0x4(%ebx,%edx,8),%edx
  13:	89 d3                	mov    %edx,%ebx
  15:	09 c3                	or     %eax,%ebx
  17:	74 18                	je     31 <getRomPriority+0x31>
  19:	80 e2 02             	and    $0x2,%dl
  1c:	74 08                	je     26 <getRomPriority+0x26>
  1e:	89 ca                	mov    %ecx,%edx
  20:	5b                   	pop    %ebx
  21:	e9 fc ff ff ff       	jmp    22 <getRomPriority+0x22>
  26:	83 c0 04             	add    $0x4,%eax
  29:	89 ca                	mov    %ecx,%edx
  2b:	5b                   	pop    %ebx
  2c:	e9 fc ff ff ff       	jmp    2d <getRomPriority+0x2d>
  31:	83 c8 ff             	or     $0xffffffff,%eax
  34:	5b                   	pop    %ebx
  35:	c3                   	ret    

Disassembly of section .text.deploy_romfile:

00000000 <deploy_romfile>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	51                   	push   %ecx
   3:	89 c6                	mov    %eax,%esi
   5:	8b 88 84 00 00 00    	mov    0x84(%eax),%ecx
   b:	89 c8                	mov    %ecx,%eax
   d:	89 0c 24             	mov    %ecx,(%esp)
  10:	e8 fc ff ff ff       	call   11 <deploy_romfile+0x11>
  15:	89 c3                	mov    %eax,%ebx
  17:	85 c0                	test   %eax,%eax
  19:	8b 0c 24             	mov    (%esp),%ecx
  1c:	75 11                	jne    2f <deploy_romfile+0x2f>
  1e:	ba 00 00 00 00       	mov    $0x0,%edx
  23:	b8 b3 00 00 00       	mov    $0xb3,%eax
  28:	e8 fc ff ff ff       	call   29 <deploy_romfile+0x29>
  2d:	eb 10                	jmp    3f <deploy_romfile+0x3f>
  2f:	89 c2                	mov    %eax,%edx
  31:	89 f0                	mov    %esi,%eax
  33:	ff 96 88 00 00 00    	call   *0x88(%esi)
  39:	85 c0                	test   %eax,%eax
  3b:	7f 02                	jg     3f <deploy_romfile+0x3f>
  3d:	31 db                	xor    %ebx,%ebx
  3f:	89 d8                	mov    %ebx,%eax
  41:	5a                   	pop    %edx
  42:	5b                   	pop    %ebx
  43:	5e                   	pop    %esi
  44:	c3                   	ret    

Disassembly of section .text.is_valid_rom:

00000000 <is_valid_rom>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 c3                	mov    %eax,%ebx
   4:	0f b6 40 02          	movzbl 0x2(%eax),%eax
   8:	50                   	push   %eax
   9:	0f b7 03             	movzwl (%ebx),%eax
   c:	50                   	push   %eax
   d:	53                   	push   %ebx
   e:	68 dc 01 00 00       	push   $0x1dc
  13:	e8 fc ff ff ff       	call   14 <is_valid_rom+0x14>
  18:	83 c4 10             	add    $0x10,%esp
  1b:	31 d2                	xor    %edx,%edx
  1d:	66 81 3b 55 aa       	cmpw   $0xaa55,(%ebx)
  22:	75 40                	jne    64 <is_valid_rom+0x64>
  24:	8a 43 02             	mov    0x2(%ebx),%al
  27:	31 d2                	xor    %edx,%edx
  29:	84 c0                	test   %al,%al
  2b:	74 37                	je     64 <is_valid_rom+0x64>
  2d:	0f b6 f0             	movzbl %al,%esi
  30:	c1 e6 09             	shl    $0x9,%esi
  33:	89 f2                	mov    %esi,%edx
  35:	89 d8                	mov    %ebx,%eax
  37:	e8 fc ff ff ff       	call   38 <is_valid_rom+0x38>
  3c:	ba 01 00 00 00       	mov    $0x1,%edx
  41:	84 c0                	test   %al,%al
  43:	74 1f                	je     64 <is_valid_rom+0x64>
  45:	0f b6 c0             	movzbl %al,%eax
  48:	50                   	push   %eax
  49:	56                   	push   %esi
  4a:	53                   	push   %ebx
  4b:	68 fe 01 00 00       	push   $0x1fe
  50:	e8 fc ff ff ff       	call   51 <is_valid_rom+0x51>
  55:	83 c4 10             	add    $0x10,%esp
  58:	31 d2                	xor    %edx,%edx
  5a:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
  61:	0f 94 c2             	sete   %dl
  64:	89 d0                	mov    %edx,%eax
  66:	5b                   	pop    %ebx
  67:	5e                   	pop    %esi
  68:	c3                   	ret    

Disassembly of section .text.callrom:

00000000 <callrom>:
   0:	0f b7 ca             	movzwl %dx,%ecx
   3:	ba 03 00 00 00       	mov    $0x3,%edx
   8:	e9 fc ff ff ff       	jmp    9 <callrom+0x9>

Disassembly of section .text.init_optionrom.isra.0:

00000000 <init_optionrom.isra.0>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 c6                	mov    %eax,%esi
   6:	89 d7                	mov    %edx,%edi
   8:	89 cd                	mov    %ecx,%ebp
   a:	e8 fc ff ff ff       	call   b <init_optionrom.isra.0+0xb>
   f:	85 c0                	test   %eax,%eax
  11:	74 70                	je     83 <init_optionrom.isra.0+0x83>
  13:	0f b6 46 02          	movzbl 0x2(%esi),%eax
  17:	c1 e0 09             	shl    $0x9,%eax
  1a:	e8 fc ff ff ff       	call   1b <init_optionrom.isra.0+0x1b>
  1f:	89 c3                	mov    %eax,%ebx
  21:	85 c0                	test   %eax,%eax
  23:	75 13                	jne    38 <init_optionrom.isra.0+0x38>
  25:	ba 00 00 00 00       	mov    $0x0,%edx
  2a:	b8 84 00 00 00       	mov    $0x84,%eax
  2f:	5b                   	pop    %ebx
  30:	5e                   	pop    %esi
  31:	5f                   	pop    %edi
  32:	5d                   	pop    %ebp
  33:	e9 fc ff ff ff       	jmp    34 <init_optionrom.isra.0+0x34>
  38:	39 c6                	cmp    %eax,%esi
  3a:	74 0e                	je     4a <init_optionrom.isra.0+0x4a>
  3c:	0f b6 4e 02          	movzbl 0x2(%esi),%ecx
  40:	c1 e1 09             	shl    $0x9,%ecx
  43:	89 f2                	mov    %esi,%edx
  45:	e8 fc ff ff ff       	call   46 <init_optionrom.isra.0+0x46>
  4a:	0f b6 56 02          	movzbl 0x2(%esi),%edx
  4e:	c1 e2 09             	shl    $0x9,%edx
  51:	89 d8                	mov    %ebx,%eax
  53:	e8 fc ff ff ff       	call   54 <init_optionrom.isra.0+0x54>
  58:	85 ed                	test   %ebp,%ebp
  5a:	75 0d                	jne    69 <init_optionrom.isra.0+0x69>
  5c:	0f b7 43 1a          	movzwl 0x1a(%ebx),%eax
  60:	81 3c 03 24 50 6e 50 	cmpl   $0x506e5024,(%ebx,%eax,1)
  67:	75 0a                	jne    73 <init_optionrom.isra.0+0x73>
  69:	0f b7 d7             	movzwl %di,%edx
  6c:	89 d8                	mov    %ebx,%eax
  6e:	e8 fc ff ff ff       	call   6f <init_optionrom.isra.0+0x6f>
  73:	0f b6 43 02          	movzbl 0x2(%ebx),%eax
  77:	c1 e0 09             	shl    $0x9,%eax
  7a:	5b                   	pop    %ebx
  7b:	5e                   	pop    %esi
  7c:	5f                   	pop    %edi
  7d:	5d                   	pop    %ebp
  7e:	e9 fc ff ff ff       	jmp    7f <init_optionrom.isra.0+0x7f>
  83:	5b                   	pop    %ebx
  84:	5e                   	pop    %esi
  85:	5f                   	pop    %edi
  86:	5d                   	pop    %ebp
  87:	c3                   	ret    

Disassembly of section .text.run_file_roms:

00000000 <run_file_roms>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 c5                	mov    %eax,%ebp
   6:	89 d7                	mov    %edx,%edi
   8:	89 ce                	mov    %ecx,%esi
   a:	31 db                	xor    %ebx,%ebx
   c:	89 da                	mov    %ebx,%edx
   e:	89 e8                	mov    %ebp,%eax
  10:	e8 fc ff ff ff       	call   11 <run_file_roms+0x11>
  15:	89 c3                	mov    %eax,%ebx
  17:	85 c0                	test   %eax,%eax
  19:	74 2c                	je     47 <run_file_roms+0x47>
  1b:	e8 fc ff ff ff       	call   1c <run_file_roms+0x1c>
  20:	85 c0                	test   %eax,%eax
  22:	74 e8                	je     c <run_file_roms+0xc>
  24:	85 f6                	test   %esi,%esi
  26:	74 14                	je     3c <run_file_roms+0x3c>
  28:	8d 90 00 00 f4 ff    	lea    -0xc0000(%eax),%edx
  2e:	c1 ea 0b             	shr    $0xb,%edx
  31:	89 1c d6             	mov    %ebx,(%esi,%edx,8)
  34:	c7 44 d6 04 00 00 00 	movl   $0x0,0x4(%esi,%edx,8)
  3b:	00 
  3c:	89 f9                	mov    %edi,%ecx
  3e:	31 d2                	xor    %edx,%edx
  40:	e8 fc ff ff ff       	call   41 <run_file_roms+0x41>
  45:	eb c5                	jmp    c <run_file_roms+0xc>
  47:	5b                   	pop    %ebx
  48:	5e                   	pop    %esi
  49:	5f                   	pop    %edi
  4a:	5d                   	pop    %ebp
  4b:	c3                   	ret    

Disassembly of section .text.init_pcirom:

00000000 <init_pcirom>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 28             	sub    $0x28,%esp
   7:	89 c3                	mov    %eax,%ebx
   9:	89 14 24             	mov    %edx,(%esp)
   c:	89 cd                	mov    %ecx,%ebp
   e:	0f b7 40 12          	movzwl 0x12(%eax),%eax
  12:	50                   	push   %eax
  13:	0f b7 43 10          	movzwl 0x10(%ebx),%eax
  17:	50                   	push   %eax
  18:	53                   	push   %ebx
  19:	68 38 02 00 00       	push   $0x238
  1e:	e8 fc ff ff ff       	call   1f <init_pcirom+0x1f>
  23:	0f b7 43 12          	movzwl 0x12(%ebx),%eax
  27:	50                   	push   %eax
  28:	0f b7 43 10          	movzwl 0x10(%ebx),%eax
  2c:	50                   	push   %eax
  2d:	68 67 02 00 00       	push   $0x267
  32:	6a 11                	push   $0x11
  34:	8d 74 24 37          	lea    0x37(%esp),%esi
  38:	56                   	push   %esi
  39:	e8 fc ff ff ff       	call   3a <init_pcirom+0x3a>
  3e:	83 c4 24             	add    $0x24,%esp
  41:	89 f0                	mov    %esi,%eax
  43:	e8 fc ff ff ff       	call   44 <init_pcirom+0x44>
  48:	89 c7                	mov    %eax,%edi
  4a:	85 c0                	test   %eax,%eax
  4c:	74 07                	je     55 <init_pcirom+0x55>
  4e:	e8 fc ff ff ff       	call   4f <init_pcirom+0x4f>
  53:	eb 20                	jmp    75 <init_pcirom+0x75>
  55:	83 3d 00 00 00 00 01 	cmpl   $0x1,0x0
  5c:	7f 10                	jg     6e <init_pcirom+0x6e>
  5e:	0f 85 d8 00 00 00    	jne    13c <init_pcirom+0x13c>
  64:	f6 04 24 01          	testb  $0x1,(%esp)
  68:	0f 84 ce 00 00 00    	je     13c <init_pcirom+0x13c>
  6e:	89 d8                	mov    %ebx,%eax
  70:	e8 fc ff ff ff       	call   71 <init_pcirom+0x71>
  75:	85 c0                	test   %eax,%eax
  77:	0f 84 bf 00 00 00    	je     13c <init_pcirom+0x13c>
  7d:	8b 0d 64 00 00 00    	mov    0x64,%ecx
  83:	89 4c 24 08          	mov    %ecx,0x8(%esp)
  87:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  8e:	00 
  8f:	0f b7 54 24 04       	movzwl 0x4(%esp),%edx
  94:	81 ca 00 00 00 f0    	or     $0xf0000000,%edx
  9a:	89 54 24 0c          	mov    %edx,0xc(%esp)
  9e:	0f b7 70 1a          	movzwl 0x1a(%eax),%esi
  a2:	01 c6                	add    %eax,%esi
  a4:	81 3e 24 50 6e 50    	cmpl   $0x506e5024,(%esi)
  aa:	74 02                	je     ae <init_pcirom+0xae>
  ac:	31 f6                	xor    %esi,%esi
  ae:	85 ed                	test   %ebp,%ebp
  b0:	74 15                	je     c7 <init_pcirom+0xc7>
  b2:	8d 90 00 00 f4 ff    	lea    -0xc0000(%eax),%edx
  b8:	c1 ea 0b             	shr    $0xb,%edx
  bb:	89 5c d5 00          	mov    %ebx,0x0(%ebp,%edx,8)
  bf:	c7 44 d5 04 02 00 00 	movl   $0x2,0x4(%ebp,%edx,8)
  c6:	00 
  c7:	0f b7 13             	movzwl (%ebx),%edx
  ca:	8b 0c 24             	mov    (%esp),%ecx
  cd:	89 44 24 10          	mov    %eax,0x10(%esp)
  d1:	e8 fc ff ff ff       	call   d2 <init_pcirom+0xd2>
  d6:	0f b7 54 24 04       	movzwl 0x4(%esp),%edx
  db:	81 ca 00 00 00 f0    	or     $0xf0000000,%edx
  e1:	3b 15 64 00 00 00    	cmp    0x64,%edx
  e7:	0f 95 c2             	setne  %dl
  ea:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
  ee:	39 4c 24 08          	cmp    %ecx,0x8(%esp)
  f2:	0f 94 c1             	sete   %cl
  f5:	21 ca                	and    %ecx,%edx
  f7:	0b 3c 24             	or     (%esp),%edi
  fa:	0f 94 c1             	sete   %cl
  fd:	84 ca                	test   %cl,%dl
  ff:	74 3b                	je     13c <init_pcirom+0x13c>
 101:	85 f6                	test   %esi,%esi
 103:	8b 44 24 10          	mov    0x10(%esp),%eax
 107:	74 33                	je     13c <init_pcirom+0x13c>
 109:	53                   	push   %ebx
 10a:	83 e0 f0             	and    $0xfffffff0,%eax
 10d:	0f b7 56 10          	movzwl 0x10(%esi),%edx
 111:	01 d0                	add    %edx,%eax
 113:	50                   	push   %eax
 114:	68 78 02 00 00       	push   $0x278
 119:	e8 fc ff ff ff       	call   11a <init_pcirom+0x11a>
 11e:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 125:	00 
 126:	8b 44 24 0c          	mov    0xc(%esp),%eax
 12a:	66 a3 64 00 00 00    	mov    %ax,0x64
 130:	66 c7 05 66 00 00 00 	movw   $0xf000,0x66
 137:	00 f0 
 139:	83 c4 0c             	add    $0xc,%esp
 13c:	83 c4 28             	add    $0x28,%esp
 13f:	5b                   	pop    %ebx
 140:	5e                   	pop    %esi
 141:	5f                   	pop    %edi
 142:	5d                   	pop    %ebp
 143:	c3                   	ret    

Disassembly of section .text.call_bcv:

00000000 <call_bcv>:
   0:	0f b7 d2             	movzwl %dx,%edx
   3:	0f b7 c0             	movzwl %ax,%eax
   6:	c1 e0 04             	shl    $0x4,%eax
   9:	31 c9                	xor    %ecx,%ecx
   b:	e9 fc ff ff ff       	jmp    c <call_bcv+0xc>

Disassembly of section .text.is_pci_vga:

00000000 <is_pci_vga>:
   0:	66 81 78 14 00 03    	cmpw   $0x300,0x14(%eax)
   6:	75 3c                	jne    44 <is_pci_vga+0x44>
   8:	53                   	push   %ebx
   9:	89 c3                	mov    %eax,%ebx
   b:	0f b7 00             	movzwl (%eax),%eax
   e:	ba 04 00 00 00       	mov    $0x4,%edx
  13:	e8 fc ff ff ff       	call   14 <is_pci_vga+0x14>
  18:	83 e0 03             	and    $0x3,%eax
  1b:	66 83 f8 03          	cmp    $0x3,%ax
  1f:	74 15                	je     36 <is_pci_vga+0x36>
  21:	31 c0                	xor    %eax,%eax
  23:	eb 1d                	jmp    42 <is_pci_vga+0x42>
  25:	0f b7 03             	movzwl (%ebx),%eax
  28:	ba 3e 00 00 00       	mov    $0x3e,%edx
  2d:	e8 fc ff ff ff       	call   2e <is_pci_vga+0x2e>
  32:	a8 08                	test   $0x8,%al
  34:	74 eb                	je     21 <is_pci_vga+0x21>
  36:	8b 5b 0c             	mov    0xc(%ebx),%ebx
  39:	85 db                	test   %ebx,%ebx
  3b:	75 e8                	jne    25 <is_pci_vga+0x25>
  3d:	b8 01 00 00 00       	mov    $0x1,%eax
  42:	5b                   	pop    %ebx
  43:	c3                   	ret    
  44:	31 c0                	xor    %eax,%eax
  46:	c3                   	ret    

Disassembly of section .text.optionrom_setup:

00000000 <optionrom_setup>:
   0:	57                   	push   %edi
   1:	8d 7c 24 08          	lea    0x8(%esp),%edi
   5:	83 e4 f8             	and    $0xfffffff8,%esp
   8:	ff 77 fc             	push   -0x4(%edi)
   b:	55                   	push   %ebp
   c:	89 e5                	mov    %esp,%ebp
   e:	57                   	push   %edi
   f:	56                   	push   %esi
  10:	53                   	push   %ebx
  11:	81 ec 0c 03 00 00    	sub    $0x30c,%esp
  17:	68 b0 02 00 00       	push   $0x2b0
  1c:	e8 fc ff ff ff       	call   1d <optionrom_setup+0x1d>
  21:	b9 00 03 00 00       	mov    $0x300,%ecx
  26:	31 d2                	xor    %edx,%edx
  28:	8d 85 f0 fc ff ff    	lea    -0x310(%ebp),%eax
  2e:	e8 fc ff ff ff       	call   2f <optionrom_setup+0x2f>
  33:	e8 fc ff ff ff       	call   34 <optionrom_setup+0x34>
  38:	89 c6                	mov    %eax,%esi
  3a:	a1 00 00 00 00       	mov    0x0,%eax
  3f:	8d 58 fc             	lea    -0x4(%eax),%ebx
  42:	59                   	pop    %ecx
  43:	83 fb fc             	cmp    $0xfffffffc,%ebx
  46:	74 28                	je     70 <optionrom_setup+0x70>
  48:	8b 43 14             	mov    0x14(%ebx),%eax
  4b:	24 7f                	and    $0x7f,%al
  4d:	66 3d 00 03          	cmp    $0x300,%ax
  51:	74 15                	je     68 <optionrom_setup+0x68>
  53:	83 7b 1c 00          	cmpl   $0x0,0x1c(%ebx)
  57:	75 0f                	jne    68 <optionrom_setup+0x68>
  59:	8d 8d f0 fc ff ff    	lea    -0x310(%ebp),%ecx
  5f:	31 d2                	xor    %edx,%edx
  61:	89 d8                	mov    %ebx,%eax
  63:	e8 fc ff ff ff       	call   64 <optionrom_setup+0x64>
  68:	8b 5b 04             	mov    0x4(%ebx),%ebx
  6b:	83 eb 04             	sub    $0x4,%ebx
  6e:	eb d3                	jmp    43 <optionrom_setup+0x43>
  70:	8d 8d f0 fc ff ff    	lea    -0x310(%ebp),%ecx
  76:	31 d2                	xor    %edx,%edx
  78:	b8 c6 02 00 00       	mov    $0x2c6,%eax
  7d:	e8 fc ff ff ff       	call   7e <optionrom_setup+0x7e>
  82:	31 c0                	xor    %eax,%eax
  84:	e8 fc ff ff ff       	call   85 <optionrom_setup+0x85>
  89:	e8 fc ff ff ff       	call   8a <optionrom_setup+0x8a>
  8e:	39 f0                	cmp    %esi,%eax
  90:	0f 86 f4 00 00 00    	jbe    18a <optionrom_setup+0x18a>
  96:	89 f0                	mov    %esi,%eax
  98:	e8 fc ff ff ff       	call   99 <optionrom_setup+0x99>
  9d:	85 c0                	test   %eax,%eax
  9f:	75 11                	jne    b2 <optionrom_setup+0xb2>
  a1:	8d 86 00 08 00 00    	lea    0x800(%esi),%eax
  a7:	89 85 e8 fc ff ff    	mov    %eax,-0x318(%ebp)
  ad:	e9 cd 00 00 00       	jmp    17f <optionrom_setup+0x17f>
  b2:	0f b6 46 02          	movzbl 0x2(%esi),%eax
  b6:	c1 e0 09             	shl    $0x9,%eax
  b9:	05 ff 07 00 00       	add    $0x7ff,%eax
  be:	25 00 f8 ff ff       	and    $0xfffff800,%eax
  c3:	01 f0                	add    %esi,%eax
  c5:	89 85 e8 fc ff ff    	mov    %eax,-0x318(%ebp)
  cb:	0f b7 5e 1a          	movzwl 0x1a(%esi),%ebx
  cf:	01 f3                	add    %esi,%ebx
  d1:	89 f0                	mov    %esi,%eax
  d3:	c1 e8 04             	shr    $0x4,%eax
  d6:	0f b7 c0             	movzwl %ax,%eax
  d9:	89 85 ec fc ff ff    	mov    %eax,-0x314(%ebp)
  df:	81 3b 24 50 6e 50    	cmpl   $0x506e5024,(%ebx)
  e5:	75 09                	jne    f0 <optionrom_setup+0xf0>
  e7:	bf 01 00 00 00       	mov    $0x1,%edi
  ec:	85 db                	test   %ebx,%ebx
  ee:	75 62                	jne    152 <optionrom_setup+0x152>
  f0:	31 c9                	xor    %ecx,%ecx
  f2:	89 f2                	mov    %esi,%edx
  f4:	8d 85 f0 fc ff ff    	lea    -0x310(%ebp),%eax
  fa:	e8 fc ff ff ff       	call   fb <optionrom_setup+0xfb>
  ff:	50                   	push   %eax
 100:	31 c9                	xor    %ecx,%ecx
 102:	ba 03 00 00 00       	mov    $0x3,%edx
 107:	8b 85 ec fc ff ff    	mov    -0x314(%ebp),%eax
 10d:	e8 fc ff ff ff       	call   10e <optionrom_setup+0x10e>
 112:	5a                   	pop    %edx
 113:	eb 6a                	jmp    17f <optionrom_setup+0x17f>
 115:	66 83 7b 16 00       	cmpw   $0x0,0x16(%ebx)
 11a:	74 63                	je     17f <optionrom_setup+0x17f>
 11c:	89 f2                	mov    %esi,%edx
 11e:	8d 85 f0 fc ff ff    	lea    -0x310(%ebp),%eax
 124:	e8 fc ff ff ff       	call   125 <optionrom_setup+0x125>
 129:	0f b7 4b 10          	movzwl 0x10(%ebx),%ecx
 12d:	0f b7 53 16          	movzwl 0x16(%ebx),%edx
 131:	50                   	push   %eax
 132:	8b 85 ec fc ff ff    	mov    -0x314(%ebp),%eax
 138:	e8 fc ff ff ff       	call   139 <optionrom_setup+0x139>
 13d:	58                   	pop    %eax
 13e:	0f b7 5b 06          	movzwl 0x6(%ebx),%ebx
 142:	66 85 db             	test   %bx,%bx
 145:	74 38                	je     17f <optionrom_setup+0x17f>
 147:	01 f3                	add    %esi,%ebx
 149:	47                   	inc    %edi
 14a:	81 3b 24 50 6e 50    	cmpl   $0x506e5024,(%ebx)
 150:	75 2d                	jne    17f <optionrom_setup+0x17f>
 152:	8d 4f ff             	lea    -0x1(%edi),%ecx
 155:	66 83 7b 1a 00       	cmpw   $0x0,0x1a(%ebx)
 15a:	74 b9                	je     115 <optionrom_setup+0x115>
 15c:	89 f2                	mov    %esi,%edx
 15e:	8d 85 f0 fc ff ff    	lea    -0x310(%ebp),%eax
 164:	e8 fc ff ff ff       	call   165 <optionrom_setup+0x165>
 169:	0f b7 4b 10          	movzwl 0x10(%ebx),%ecx
 16d:	0f b7 53 1a          	movzwl 0x1a(%ebx),%edx
 171:	50                   	push   %eax
 172:	8b 85 ec fc ff ff    	mov    -0x314(%ebp),%eax
 178:	e8 fc ff ff ff       	call   179 <optionrom_setup+0x179>
 17d:	eb be                	jmp    13d <optionrom_setup+0x13d>
 17f:	8b b5 e8 fc ff ff    	mov    -0x318(%ebp),%esi
 185:	e9 ff fe ff ff       	jmp    89 <optionrom_setup+0x89>
 18a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 18d:	5b                   	pop    %ebx
 18e:	5e                   	pop    %esi
 18f:	5f                   	pop    %edi
 190:	5d                   	pop    %ebp
 191:	8d 67 f8             	lea    -0x8(%edi),%esp
 194:	5f                   	pop    %edi
 195:	c3                   	ret    

Disassembly of section .text.vgarom_setup:

00000000 <vgarom_setup>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	68 cf 02 00 00       	push   $0x2cf
   7:	e8 fc ff ff ff       	call   8 <vgarom_setup+0x8>
   c:	ba 01 00 00 00       	mov    $0x1,%edx
  11:	31 c9                	xor    %ecx,%ecx
  13:	b8 e8 02 00 00       	mov    $0x2e8,%eax
  18:	e8 fc ff ff ff       	call   19 <vgarom_setup+0x19>
  1d:	a3 00 00 00 00       	mov    %eax,0x0
  22:	ba 01 00 00 00       	mov    $0x1,%edx
  27:	31 c9                	xor    %ecx,%ecx
  29:	b8 00 03 00 00       	mov    $0x300,%eax
  2e:	e8 fc ff ff ff       	call   2f <vgarom_setup+0x2f>
  33:	a3 00 00 00 00       	mov    %eax,0x0
  38:	ba 02 00 00 00       	mov    $0x2,%edx
  3d:	31 c9                	xor    %ecx,%ecx
  3f:	b8 17 03 00 00       	mov    $0x317,%eax
  44:	e8 fc ff ff ff       	call   45 <vgarom_setup+0x45>
  49:	a3 00 00 00 00       	mov    %eax,0x0
  4e:	ba 01 00 00 00       	mov    $0x1,%edx
  53:	31 c9                	xor    %ecx,%ecx
  55:	b8 2e 03 00 00       	mov    $0x32e,%eax
  5a:	e8 fc ff ff ff       	call   5b <vgarom_setup+0x5b>
  5f:	a3 00 00 00 00       	mov    %eax,0x0
  64:	e8 fc ff ff ff       	call   65 <vgarom_setup+0x65>
  69:	8d 88 00 00 f4 ff    	lea    -0xc0000(%eax),%ecx
  6f:	31 d2                	xor    %edx,%edx
  71:	b8 00 00 0c 00       	mov    $0xc0000,%eax
  76:	e8 fc ff ff ff       	call   77 <vgarom_setup+0x77>
  7b:	a1 00 00 00 00       	mov    0x0,%eax
  80:	8d 58 fc             	lea    -0x4(%eax),%ebx
  83:	5a                   	pop    %edx
  84:	83 fb fc             	cmp    $0xfffffffc,%ebx
  87:	74 2a                	je     b3 <vgarom_setup+0xb3>
  89:	89 d8                	mov    %ebx,%eax
  8b:	e8 fc ff ff ff       	call   8c <vgarom_setup+0x8c>
  90:	85 c0                	test   %eax,%eax
  92:	75 08                	jne    9c <vgarom_setup+0x9c>
  94:	8b 5b 04             	mov    0x4(%ebx),%ebx
  97:	83 eb 04             	sub    $0x4,%ebx
  9a:	eb e8                	jmp    84 <vgarom_setup+0x84>
  9c:	89 d8                	mov    %ebx,%eax
  9e:	e8 fc ff ff ff       	call   9f <vgarom_setup+0x9f>
  a3:	31 c9                	xor    %ecx,%ecx
  a5:	ba 01 00 00 00       	mov    $0x1,%edx
  aa:	89 d8                	mov    %ebx,%eax
  ac:	e8 fc ff ff ff       	call   ad <vgarom_setup+0xad>
  b1:	eb 65                	jmp    118 <vgarom_setup+0x118>
  b3:	68 43 03 00 00       	push   $0x343
  b8:	e8 fc ff ff ff       	call   b9 <vgarom_setup+0xb9>
  bd:	a1 00 00 00 00       	mov    0x0,%eax
  c2:	8d 58 fc             	lea    -0x4(%eax),%ebx
  c5:	58                   	pop    %eax
  c6:	83 fb fc             	cmp    $0xfffffffc,%ebx
  c9:	74 4d                	je     118 <vgarom_setup+0x118>
  cb:	66 81 7b 14 80 03    	cmpw   $0x380,0x14(%ebx)
  d1:	75 3d                	jne    110 <vgarom_setup+0x110>
  d3:	89 d8                	mov    %ebx,%eax
  d5:	e8 fc ff ff ff       	call   d6 <vgarom_setup+0xd6>
  da:	89 c6                	mov    %eax,%esi
  dc:	85 c0                	test   %eax,%eax
  de:	74 30                	je     110 <vgarom_setup+0x110>
  e0:	53                   	push   %ebx
  e1:	68 69 03 00 00       	push   $0x369
  e6:	e8 fc ff ff ff       	call   e7 <vgarom_setup+0xe7>
  eb:	0f b7 03             	movzwl (%ebx),%eax
  ee:	6a 03                	push   $0x3
  f0:	31 c9                	xor    %ecx,%ecx
  f2:	ba 04 00 00 00       	mov    $0x4,%edx
  f7:	e8 fc ff ff ff       	call   f8 <vgarom_setup+0xf8>
  fc:	0f b7 13             	movzwl (%ebx),%edx
  ff:	b9 01 00 00 00       	mov    $0x1,%ecx
 104:	89 f0                	mov    %esi,%eax
 106:	e8 fc ff ff ff       	call   107 <vgarom_setup+0x107>
 10b:	83 c4 0c             	add    $0xc,%esp
 10e:	eb 08                	jmp    118 <vgarom_setup+0x118>
 110:	8b 5b 04             	mov    0x4(%ebx),%ebx
 113:	83 eb 04             	sub    $0x4,%ebx
 116:	eb ae                	jmp    c6 <vgarom_setup+0xc6>
 118:	31 c9                	xor    %ecx,%ecx
 11a:	ba 01 00 00 00       	mov    $0x1,%edx
 11f:	b8 85 03 00 00       	mov    $0x385,%eax
 124:	e8 fc ff ff ff       	call   125 <vgarom_setup+0x125>
 129:	31 c0                	xor    %eax,%eax
 12b:	e8 fc ff ff ff       	call   12c <vgarom_setup+0x12c>
 130:	e8 fc ff ff ff       	call   131 <vgarom_setup+0x131>
 135:	3d 00 00 0c 00       	cmp    $0xc0000,%eax
 13a:	74 0a                	je     146 <vgarom_setup+0x146>
 13c:	c7 05 00 00 00 00 00 	movl   $0xc0000,0x0
 143:	00 0c 00 
 146:	5b                   	pop    %ebx
 147:	5e                   	pop    %esi
 148:	c3                   	ret    

Disassembly of section .text.s3_resume_vga:

00000000 <s3_resume_vga>:
   0:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
   7:	74 1e                	je     27 <s3_resume_vga+0x27>
   9:	a1 00 00 00 00       	mov    0x0,%eax
   e:	85 c0                	test   %eax,%eax
  10:	74 15                	je     27 <s3_resume_vga+0x27>
  12:	e8 fc ff ff ff       	call   13 <s3_resume_vga+0x13>
  17:	85 c0                	test   %eax,%eax
  19:	74 0c                	je     27 <s3_resume_vga+0x27>
  1b:	31 d2                	xor    %edx,%edx
  1d:	a1 00 00 00 00       	mov    0x0,%eax
  22:	e9 fc ff ff ff       	jmp    23 <s3_resume_vga+0x23>
  27:	c3                   	ret    
