
./pci.o:     file format elf32-i386


Disassembly of section .text.pci_config_writel:

00000000 <pci_config_writel>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 d3                	mov    %edx,%ebx
   4:	8b 35 00 00 00 00    	mov    0x0,%esi
   a:	85 f6                	test   %esi,%esi
   c:	0f b7 d0             	movzwl %ax,%edx
   f:	74 0b                	je     1c <pci_config_writel+0x1c>
  11:	c1 e2 0c             	shl    $0xc,%edx
  14:	01 de                	add    %ebx,%esi
  16:	01 f2                	add    %esi,%edx
  18:	89 0a                	mov    %ecx,(%edx)
  1a:	eb 20                	jmp    3c <pci_config_writel+0x3c>
  1c:	89 d0                	mov    %edx,%eax
  1e:	c1 e0 08             	shl    $0x8,%eax
  21:	81 e3 fc 00 00 00    	and    $0xfc,%ebx
  27:	09 d8                	or     %ebx,%eax
  29:	0d 00 00 00 80       	or     $0x80000000,%eax
  2e:	ba f8 0c 00 00       	mov    $0xcf8,%edx
  33:	ef                   	out    %eax,(%dx)
  34:	ba fc 0c 00 00       	mov    $0xcfc,%edx
  39:	89 c8                	mov    %ecx,%eax
  3b:	ef                   	out    %eax,(%dx)
  3c:	5b                   	pop    %ebx
  3d:	5e                   	pop    %esi
  3e:	c3                   	ret    

Disassembly of section .text.pci_config_writew:

00000000 <pci_config_writew>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 d3                	mov    %edx,%ebx
   4:	8b 15 00 00 00 00    	mov    0x0,%edx
   a:	85 d2                	test   %edx,%edx
   c:	0f b7 c0             	movzwl %ax,%eax
   f:	74 0c                	je     1d <pci_config_writew+0x1d>
  11:	01 da                	add    %ebx,%edx
  13:	c1 e0 0c             	shl    $0xc,%eax
  16:	01 c2                	add    %eax,%edx
  18:	66 89 0a             	mov    %cx,(%edx)
  1b:	eb 25                	jmp    42 <pci_config_writew+0x42>
  1d:	c1 e0 08             	shl    $0x8,%eax
  20:	89 da                	mov    %ebx,%edx
  22:	81 e2 fc 00 00 00    	and    $0xfc,%edx
  28:	09 d0                	or     %edx,%eax
  2a:	0d 00 00 00 80       	or     $0x80000000,%eax
  2f:	ba f8 0c 00 00       	mov    $0xcf8,%edx
  34:	ef                   	out    %eax,(%dx)
  35:	83 e3 02             	and    $0x2,%ebx
  38:	8d 93 fc 0c 00 00    	lea    0xcfc(%ebx),%edx
  3e:	89 c8                	mov    %ecx,%eax
  40:	66 ef                	out    %ax,(%dx)
  42:	5b                   	pop    %ebx
  43:	5e                   	pop    %esi
  44:	c3                   	ret    

Disassembly of section .text.pci_config_writeb:

00000000 <pci_config_writeb>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 d3                	mov    %edx,%ebx
   4:	8b 35 00 00 00 00    	mov    0x0,%esi
   a:	85 f6                	test   %esi,%esi
   c:	0f b7 c0             	movzwl %ax,%eax
   f:	74 0b                	je     1c <pci_config_writeb+0x1c>
  11:	c1 e0 0c             	shl    $0xc,%eax
  14:	01 de                	add    %ebx,%esi
  16:	01 f0                	add    %esi,%eax
  18:	88 08                	mov    %cl,(%eax)
  1a:	eb 22                	jmp    3e <pci_config_writeb+0x3e>
  1c:	c1 e0 08             	shl    $0x8,%eax
  1f:	81 e2 fc 00 00 00    	and    $0xfc,%edx
  25:	09 d0                	or     %edx,%eax
  27:	0d 00 00 00 80       	or     $0x80000000,%eax
  2c:	ba f8 0c 00 00       	mov    $0xcf8,%edx
  31:	ef                   	out    %eax,(%dx)
  32:	83 e3 03             	and    $0x3,%ebx
  35:	8d 93 fc 0c 00 00    	lea    0xcfc(%ebx),%edx
  3b:	88 c8                	mov    %cl,%al
  3d:	ee                   	out    %al,(%dx)
  3e:	5b                   	pop    %ebx
  3f:	5e                   	pop    %esi
  40:	c3                   	ret    

Disassembly of section .text.pci_config_readl:

00000000 <pci_config_readl>:
   0:	8b 0d 00 00 00 00    	mov    0x0,%ecx
   6:	85 c9                	test   %ecx,%ecx
   8:	0f b7 c0             	movzwl %ax,%eax
   b:	74 0a                	je     17 <pci_config_readl+0x17>
   d:	c1 e0 0c             	shl    $0xc,%eax
  10:	01 d1                	add    %edx,%ecx
  12:	01 c8                	add    %ecx,%eax
  14:	8b 00                	mov    (%eax),%eax
  16:	c3                   	ret    
  17:	c1 e0 08             	shl    $0x8,%eax
  1a:	81 e2 fc 00 00 00    	and    $0xfc,%edx
  20:	09 d0                	or     %edx,%eax
  22:	0d 00 00 00 80       	or     $0x80000000,%eax
  27:	ba f8 0c 00 00       	mov    $0xcf8,%edx
  2c:	ef                   	out    %eax,(%dx)
  2d:	ba fc 0c 00 00       	mov    $0xcfc,%edx
  32:	ed                   	in     (%dx),%eax
  33:	c3                   	ret    

Disassembly of section .text.pci_config_readw:

00000000 <pci_config_readw>:
   0:	89 d1                	mov    %edx,%ecx
   2:	8b 15 00 00 00 00    	mov    0x0,%edx
   8:	85 d2                	test   %edx,%edx
   a:	0f b7 c0             	movzwl %ax,%eax
   d:	74 0b                	je     1a <pci_config_readw+0x1a>
   f:	c1 e0 0c             	shl    $0xc,%eax
  12:	01 ca                	add    %ecx,%edx
  14:	01 d0                	add    %edx,%eax
  16:	66 8b 00             	mov    (%eax),%ax
  19:	c3                   	ret    
  1a:	c1 e0 08             	shl    $0x8,%eax
  1d:	89 ca                	mov    %ecx,%edx
  1f:	81 e2 fc 00 00 00    	and    $0xfc,%edx
  25:	09 d0                	or     %edx,%eax
  27:	0d 00 00 00 80       	or     $0x80000000,%eax
  2c:	ba f8 0c 00 00       	mov    $0xcf8,%edx
  31:	ef                   	out    %eax,(%dx)
  32:	83 e1 02             	and    $0x2,%ecx
  35:	8d 91 fc 0c 00 00    	lea    0xcfc(%ecx),%edx
  3b:	66 ed                	in     (%dx),%ax
  3d:	c3                   	ret    

Disassembly of section .text.pci_config_readb:

00000000 <pci_config_readb>:
   0:	89 d1                	mov    %edx,%ecx
   2:	8b 15 00 00 00 00    	mov    0x0,%edx
   8:	85 d2                	test   %edx,%edx
   a:	0f b7 c0             	movzwl %ax,%eax
   d:	74 0a                	je     19 <pci_config_readb+0x19>
   f:	c1 e0 0c             	shl    $0xc,%eax
  12:	01 ca                	add    %ecx,%edx
  14:	01 d0                	add    %edx,%eax
  16:	8a 00                	mov    (%eax),%al
  18:	c3                   	ret    
  19:	c1 e0 08             	shl    $0x8,%eax
  1c:	89 ca                	mov    %ecx,%edx
  1e:	81 e2 fc 00 00 00    	and    $0xfc,%edx
  24:	09 d0                	or     %edx,%eax
  26:	0d 00 00 00 80       	or     $0x80000000,%eax
  2b:	ba f8 0c 00 00       	mov    $0xcf8,%edx
  30:	ef                   	out    %eax,(%dx)
  31:	83 e1 03             	and    $0x3,%ecx
  34:	8d 91 fc 0c 00 00    	lea    0xcfc(%ecx),%edx
  3a:	ec                   	in     (%dx),%al
  3b:	c3                   	ret    

Disassembly of section .text.pci_config_maskw:

00000000 <pci_config_maskw>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	53                   	push   %ebx
   4:	89 cb                	mov    %ecx,%ebx
   6:	8b 7c 24 14          	mov    0x14(%esp),%edi
   a:	0f b7 f0             	movzwl %ax,%esi
   d:	89 14 24             	mov    %edx,(%esp)
  10:	89 f0                	mov    %esi,%eax
  12:	e8 fc ff ff ff       	call   13 <pci_config_maskw+0x13>
  17:	f7 d3                	not    %ebx
  19:	21 c3                	and    %eax,%ebx
  1b:	09 fb                	or     %edi,%ebx
  1d:	0f b7 cb             	movzwl %bx,%ecx
  20:	8b 14 24             	mov    (%esp),%edx
  23:	89 f0                	mov    %esi,%eax
  25:	5e                   	pop    %esi
  26:	5b                   	pop    %ebx
  27:	5e                   	pop    %esi
  28:	5f                   	pop    %edi
  29:	e9 fc ff ff ff       	jmp    2a <pci_config_maskw+0x2a>

Disassembly of section .text.pci_enable_mmconfig:

00000000 <pci_enable_mmconfig>:
   0:	83 fa 00             	cmp    $0x0,%edx
   3:	77 1d                	ja     22 <pci_enable_mmconfig+0x22>
   5:	57                   	push   %edi
   6:	56                   	push   %esi
   7:	89 c6                	mov    %eax,%esi
   9:	52                   	push   %edx
   a:	50                   	push   %eax
   b:	51                   	push   %ecx
   c:	68 00 00 00 00       	push   $0x0
  11:	e8 fc ff ff ff       	call   12 <pci_enable_mmconfig+0x12>
  16:	89 35 00 00 00 00    	mov    %esi,0x0
  1c:	83 c4 10             	add    $0x10,%esp
  1f:	5e                   	pop    %esi
  20:	5f                   	pop    %edi
  21:	c3                   	ret    
  22:	c3                   	ret    

Disassembly of section .text.pci_find_capability:

00000000 <pci_find_capability>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	53                   	push   %ebx
   5:	89 cb                	mov    %ecx,%ebx
   7:	88 54 24 03          	mov    %dl,0x3(%esp)
   b:	0f b7 f0             	movzwl %ax,%esi
   e:	ba 06 00 00 00       	mov    $0x6,%edx
  13:	89 f0                	mov    %esi,%eax
  15:	e8 fc ff ff ff       	call   16 <pci_find_capability+0x16>
  1a:	a8 10                	test   $0x10,%al
  1c:	75 04                	jne    22 <pci_find_capability+0x22>
  1e:	31 db                	xor    %ebx,%ebx
  20:	eb 49                	jmp    6b <pci_find_capability+0x6b>
  22:	84 db                	test   %bl,%bl
  24:	75 12                	jne    38 <pci_find_capability+0x38>
  26:	ba 34 00 00 00       	mov    $0x34,%edx
  2b:	89 f0                	mov    %esi,%eax
  2d:	e8 fc ff ff ff       	call   2e <pci_find_capability+0x2e>
  32:	88 c3                	mov    %al,%bl
  34:	31 ed                	xor    %ebp,%ebp
  36:	eb 29                	jmp    61 <pci_find_capability+0x61>
  38:	0f b6 d3             	movzbl %bl,%edx
  3b:	42                   	inc    %edx
  3c:	eb ed                	jmp    2b <pci_find_capability+0x2b>
  3e:	84 db                	test   %bl,%bl
  40:	74 dc                	je     1e <pci_find_capability+0x1e>
  42:	0f b6 fb             	movzbl %bl,%edi
  45:	89 fa                	mov    %edi,%edx
  47:	89 f0                	mov    %esi,%eax
  49:	e8 fc ff ff ff       	call   4a <pci_find_capability+0x4a>
  4e:	3a 44 24 03          	cmp    0x3(%esp),%al
  52:	74 17                	je     6b <pci_find_capability+0x6b>
  54:	8d 57 01             	lea    0x1(%edi),%edx
  57:	89 f0                	mov    %esi,%eax
  59:	e8 fc ff ff ff       	call   5a <pci_find_capability+0x5a>
  5e:	88 c3                	mov    %al,%bl
  60:	45                   	inc    %ebp
  61:	81 fd 00 01 00 00    	cmp    $0x100,%ebp
  67:	75 d5                	jne    3e <pci_find_capability+0x3e>
  69:	eb b3                	jmp    1e <pci_find_capability+0x1e>
  6b:	88 d8                	mov    %bl,%al
  6d:	5a                   	pop    %edx
  6e:	5b                   	pop    %ebx
  6f:	5e                   	pop    %esi
  70:	5f                   	pop    %edi
  71:	5d                   	pop    %ebp
  72:	c3                   	ret    

Disassembly of section .text.pci_next:

00000000 <pci_next>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 c3                	mov    %eax,%ebx
   4:	89 d6                	mov    %edx,%esi
   6:	a8 07                	test   $0x7,%al
   8:	75 31                	jne    3b <pci_next+0x3b>
   a:	0f b7 c0             	movzwl %ax,%eax
   d:	ba 0e 00 00 00       	mov    $0xe,%edx
  12:	e8 fc ff ff ff       	call   13 <pci_next+0x13>
  17:	84 c0                	test   %al,%al
  19:	78 20                	js     3b <pci_next+0x3b>
  1b:	83 c3 08             	add    $0x8,%ebx
  1e:	0f b7 c3             	movzwl %bx,%eax
  21:	0f b6 d7             	movzbl %bh,%edx
  24:	39 f2                	cmp    %esi,%edx
  26:	75 16                	jne    3e <pci_next+0x3e>
  28:	31 d2                	xor    %edx,%edx
  2a:	e8 fc ff ff ff       	call   2b <pci_next+0x2b>
  2f:	48                   	dec    %eax
  30:	66 83 f8 fd          	cmp    $0xfffd,%ax
  34:	76 0b                	jbe    41 <pci_next+0x41>
  36:	f6 c3 07             	test   $0x7,%bl
  39:	74 e0                	je     1b <pci_next+0x1b>
  3b:	43                   	inc    %ebx
  3c:	eb e0                	jmp    1e <pci_next+0x1e>
  3e:	83 cb ff             	or     $0xffffffff,%ebx
  41:	89 d8                	mov    %ebx,%eax
  43:	5b                   	pop    %ebx
  44:	5e                   	pop    %esi
  45:	c3                   	ret    

Disassembly of section .text.pci_probe_host:

00000000 <pci_probe_host>:
   0:	ba f8 0c 00 00       	mov    $0xcf8,%edx
   5:	b8 00 00 00 80       	mov    $0x80000000,%eax
   a:	ef                   	out    %eax,(%dx)
   b:	ed                   	in     (%dx),%eax
   c:	89 c2                	mov    %eax,%edx
   e:	31 c0                	xor    %eax,%eax
  10:	81 fa 00 00 00 80    	cmp    $0x80000000,%edx
  16:	74 0e                	je     26 <pci_probe_host+0x26>
  18:	68 23 00 00 00       	push   $0x23
  1d:	e8 fc ff ff ff       	call   1e <pci_probe_host+0x1e>
  22:	58                   	pop    %eax
  23:	83 c8 ff             	or     $0xffffffff,%eax
  26:	c3                   	ret    

Disassembly of section .text.pci_reboot:

00000000 <pci_reboot>:
   0:	53                   	push   %ebx
   1:	50                   	push   %eax
   2:	ba f9 0c 00 00       	mov    $0xcf9,%edx
   7:	ec                   	in     (%dx),%al
   8:	83 e0 f9             	and    $0xfffffff9,%eax
   b:	88 c3                	mov    %al,%bl
   d:	83 c8 02             	or     $0x2,%eax
  10:	ee                   	out    %al,(%dx)
  11:	89 14 24             	mov    %edx,(%esp)
  14:	b8 32 00 00 00       	mov    $0x32,%eax
  19:	e8 fc ff ff ff       	call   1a <pci_reboot+0x1a>
  1e:	88 d8                	mov    %bl,%al
  20:	83 c8 06             	or     $0x6,%eax
  23:	8b 14 24             	mov    (%esp),%edx
  26:	ee                   	out    %al,(%dx)
  27:	b8 32 00 00 00       	mov    $0x32,%eax
  2c:	5a                   	pop    %edx
  2d:	5b                   	pop    %ebx
  2e:	e9 fc ff ff ff       	jmp    2f <pci_reboot+0x2f>
