
./pciinit.o:     file format elf32-i386


Disassembly of section .text.piix_pci_slot_get_irq:

00000000 <piix_pci_slot_get_irq>:
   0:	53                   	push   %ebx
   1:	31 c9                	xor    %ecx,%ecx
   3:	8b 58 0c             	mov    0xc(%eax),%ebx
   6:	8b 00                	mov    (%eax),%eax
   8:	c0 e8 03             	shr    $0x3,%al
   b:	0f b6 c0             	movzbl %al,%eax
   e:	85 db                	test   %ebx,%ebx
  10:	74 06                	je     18 <piix_pci_slot_get_irq+0x18>
  12:	01 c1                	add    %eax,%ecx
  14:	89 d8                	mov    %ebx,%eax
  16:	eb eb                	jmp    3 <piix_pci_slot_get_irq+0x3>
  18:	8d 44 01 ff          	lea    -0x1(%ecx,%eax,1),%eax
  1c:	8d 44 02 ff          	lea    -0x1(%edx,%eax,1),%eax
  20:	83 e0 03             	and    $0x3,%eax
  23:	0f b6 80 00 00 00 00 	movzbl 0x0(%eax),%eax
  2a:	5b                   	pop    %ebx
  2b:	c3                   	ret    

Disassembly of section .text.mch_pci_slot_get_irq:

00000000 <mch_pci_slot_get_irq>:
   0:	53                   	push   %ebx
   1:	31 c9                	xor    %ecx,%ecx
   3:	8b 58 0c             	mov    0xc(%eax),%ebx
   6:	8b 00                	mov    (%eax),%eax
   8:	c0 e8 03             	shr    $0x3,%al
   b:	85 db                	test   %ebx,%ebx
   d:	74 09                	je     18 <mch_pci_slot_get_irq+0x18>
   f:	0f b6 c0             	movzbl %al,%eax
  12:	01 c1                	add    %eax,%ecx
  14:	89 d8                	mov    %ebx,%eax
  16:	eb eb                	jmp    3 <mch_pci_slot_get_irq+0x3>
  18:	8d 54 11 ff          	lea    -0x1(%ecx,%edx,1),%edx
  1c:	3c 18                	cmp    $0x18,%al
  1e:	77 0e                	ja     2e <mch_pci_slot_get_irq+0x2e>
  20:	01 d0                	add    %edx,%eax
  22:	83 e0 03             	and    $0x3,%eax
  25:	0f b6 80 00 00 00 00 	movzbl 0x0(%eax),%eax
  2c:	eb 0a                	jmp    38 <mch_pci_slot_get_irq+0x38>
  2e:	83 e2 03             	and    $0x3,%edx
  31:	0f b6 82 00 00 00 00 	movzbl 0x0(%edx),%eax
  38:	5b                   	pop    %ebx
  39:	c3                   	ret    

Disassembly of section .text.i440fx_mem_addr_setup:

00000000 <i440fx_mem_addr_setup>:
   0:	a1 00 00 00 00       	mov    0x0,%eax
   5:	3d 00 00 00 80       	cmp    $0x80000000,%eax
   a:	77 0c                	ja     18 <i440fx_mem_addr_setup+0x18>
   c:	c7 05 00 00 00 00 00 	movl   $0x80000000,0x0
  13:	00 00 80 
  16:	eb 11                	jmp    29 <i440fx_mem_addr_setup+0x29>
  18:	3d 00 00 00 c0       	cmp    $0xc0000000,%eax
  1d:	77 14                	ja     33 <i440fx_mem_addr_setup+0x33>
  1f:	c7 05 00 00 00 00 00 	movl   $0xc0000000,0x0
  26:	00 00 c0 
  29:	c7 05 04 00 00 00 00 	movl   $0x0,0x4
  30:	00 00 00 
  33:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
  3a:	00 00 00 
  3d:	c3                   	ret    

Disassembly of section .text.piix4_pm_config_setup:

00000000 <piix4_pm_config_setup>:
   0:	53                   	push   %ebx
   1:	0f b7 d8             	movzwl %ax,%ebx
   4:	b9 09 00 00 00       	mov    $0x9,%ecx
   9:	ba 3c 00 00 00       	mov    $0x3c,%edx
   e:	89 d8                	mov    %ebx,%eax
  10:	e8 fc ff ff ff       	call   11 <piix4_pm_config_setup+0x11>
  15:	66 8b 0d 00 00 00 00 	mov    0x0,%cx
  1c:	83 c9 01             	or     $0x1,%ecx
  1f:	0f b7 c9             	movzwl %cx,%ecx
  22:	ba 40 00 00 00       	mov    $0x40,%edx
  27:	89 d8                	mov    %ebx,%eax
  29:	e8 fc ff ff ff       	call   2a <piix4_pm_config_setup+0x2a>
  2e:	b9 01 00 00 00       	mov    $0x1,%ecx
  33:	ba 80 00 00 00       	mov    $0x80,%edx
  38:	89 d8                	mov    %ebx,%eax
  3a:	e8 fc ff ff ff       	call   3b <piix4_pm_config_setup+0x3b>
  3f:	0f b7 0d 00 00 00 00 	movzwl 0x0,%ecx
  46:	81 c1 00 01 00 00    	add    $0x100,%ecx
  4c:	83 c9 01             	or     $0x1,%ecx
  4f:	ba 90 00 00 00       	mov    $0x90,%edx
  54:	89 d8                	mov    %ebx,%eax
  56:	e8 fc ff ff ff       	call   57 <piix4_pm_config_setup+0x57>
  5b:	b9 09 00 00 00       	mov    $0x9,%ecx
  60:	ba d2 00 00 00       	mov    $0xd2,%edx
  65:	89 d8                	mov    %ebx,%eax
  67:	5b                   	pop    %ebx
  68:	e9 fc ff ff ff       	jmp    69 <piix4_pm_config_setup+0x69>

Disassembly of section .text.mch_isa_lpc_setup:

00000000 <mch_isa_lpc_setup>:
   0:	52                   	push   %edx
   1:	0f b7 c0             	movzwl %ax,%eax
   4:	66 8b 0d 00 00 00 00 	mov    0x0,%cx
   b:	83 c9 01             	or     $0x1,%ecx
   e:	0f b7 c9             	movzwl %cx,%ecx
  11:	ba 40 00 00 00       	mov    $0x40,%edx
  16:	89 04 24             	mov    %eax,(%esp)
  19:	e8 fc ff ff ff       	call   1a <mch_isa_lpc_setup+0x1a>
  1e:	b9 80 00 00 00       	mov    $0x80,%ecx
  23:	ba 44 00 00 00       	mov    $0x44,%edx
  28:	8b 04 24             	mov    (%esp),%eax
  2b:	e8 fc ff ff ff       	call   2c <mch_isa_lpc_setup+0x2c>
  30:	b9 01 c0 d1 fe       	mov    $0xfed1c001,%ecx
  35:	ba f0 00 00 00       	mov    $0xf0,%edx
  3a:	8b 04 24             	mov    (%esp),%eax
  3d:	83 c4 04             	add    $0x4,%esp
  40:	e9 fc ff ff ff       	jmp    41 <mch_isa_lpc_setup+0x41>

Disassembly of section .text.ich9_smbus_enable:

00000000 <ich9_smbus_enable>:
   0:	52                   	push   %edx
   1:	0f b7 c0             	movzwl %ax,%eax
   4:	0f b7 0d 00 00 00 00 	movzwl 0x0,%ecx
   b:	81 c1 00 01 00 00    	add    $0x100,%ecx
  11:	83 c9 01             	or     $0x1,%ecx
  14:	ba 20 00 00 00       	mov    $0x20,%edx
  19:	89 04 24             	mov    %eax,(%esp)
  1c:	e8 fc ff ff ff       	call   1d <ich9_smbus_enable+0x1d>
  21:	b9 01 00 00 00       	mov    $0x1,%ecx
  26:	ba 40 00 00 00       	mov    $0x40,%edx
  2b:	8b 04 24             	mov    (%esp),%eax
  2e:	83 c4 04             	add    $0x4,%esp
  31:	e9 fc ff ff ff       	jmp    32 <ich9_smbus_enable+0x32>

Disassembly of section .text.ich9_smbus_setup:

00000000 <ich9_smbus_setup>:
   0:	0f b7 00             	movzwl (%eax),%eax
   3:	a3 00 00 00 00       	mov    %eax,0x0
   8:	e9 fc ff ff ff       	jmp    9 <ich9_smbus_setup+0x9>

Disassembly of section .text.mch_mmconfig_setup:

00000000 <mch_mmconfig_setup>:
   0:	52                   	push   %edx
   1:	0f b7 c0             	movzwl %ax,%eax
   4:	31 c9                	xor    %ecx,%ecx
   6:	ba 60 00 00 00       	mov    $0x60,%edx
   b:	89 04 24             	mov    %eax,(%esp)
   e:	e8 fc ff ff ff       	call   f <mch_mmconfig_setup+0xf>
  13:	31 c9                	xor    %ecx,%ecx
  15:	ba 64 00 00 00       	mov    $0x64,%edx
  1a:	8b 04 24             	mov    (%esp),%eax
  1d:	e8 fc ff ff ff       	call   1e <mch_mmconfig_setup+0x1e>
  22:	b9 01 00 00 b0       	mov    $0xb0000001,%ecx
  27:	ba 60 00 00 00       	mov    $0x60,%edx
  2c:	8b 04 24             	mov    (%esp),%eax
  2f:	e8 fc ff ff ff       	call   30 <mch_mmconfig_setup+0x30>
  34:	b9 00 00 00 00       	mov    $0x0,%ecx
  39:	b8 00 00 00 b0       	mov    $0xb0000000,%eax
  3e:	31 d2                	xor    %edx,%edx
  40:	83 c4 04             	add    $0x4,%esp
  43:	e9 fc ff ff ff       	jmp    44 <mch_mmconfig_setup+0x44>

Disassembly of section .text.dummy_pci_slot_get_irq:

00000000 <dummy_pci_slot_get_irq>:
   0:	68 04 00 00 00       	push   $0x4
   5:	e8 fc ff ff ff       	call   6 <dummy_pci_slot_get_irq+0x6>
   a:	58                   	pop    %eax
   b:	b8 ff 00 00 00       	mov    $0xff,%eax
  10:	c3                   	ret    

Disassembly of section .text.piix_isa_bridge_setup:

00000000 <piix_isa_bridge_setup>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	52                   	push   %edx
   5:	89 c6                	mov    %eax,%esi
   7:	66 c7 44 24 02 00 00 	movw   $0x0,0x2(%esp)
   e:	bb 60 00 00 00       	mov    $0x60,%ebx
  13:	0f b6 ab a0 ff ff ff 	movzbl -0x60(%ebx),%ebp
  1a:	89 e9                	mov    %ebp,%ecx
  1c:	89 ea                	mov    %ebp,%edx
  1e:	c1 fa 03             	sar    $0x3,%edx
  21:	83 e1 07             	and    $0x7,%ecx
  24:	bf 01 00 00 00       	mov    $0x1,%edi
  29:	d3 e7                	shl    %cl,%edi
  2b:	89 f9                	mov    %edi,%ecx
  2d:	08 4c 14 02          	or     %cl,0x2(%esp,%edx,1)
  31:	0f b7 06             	movzwl (%esi),%eax
  34:	89 e9                	mov    %ebp,%ecx
  36:	89 da                	mov    %ebx,%edx
  38:	e8 fc ff ff ff       	call   39 <piix_isa_bridge_setup+0x39>
  3d:	43                   	inc    %ebx
  3e:	83 fb 64             	cmp    $0x64,%ebx
  41:	75 d0                	jne    13 <piix_isa_bridge_setup+0x13>
  43:	ba d0 04 00 00       	mov    $0x4d0,%edx
  48:	8a 44 24 02          	mov    0x2(%esp),%al
  4c:	ee                   	out    %al,(%dx)
  4d:	0f b6 44 24 03       	movzbl 0x3(%esp),%eax
  52:	ba d1 04 00 00       	mov    $0x4d1,%edx
  57:	ee                   	out    %al,(%dx)
  58:	50                   	push   %eax
  59:	0f b6 44 24 06       	movzbl 0x6(%esp),%eax
  5e:	50                   	push   %eax
  5f:	68 32 00 00 00       	push   $0x32
  64:	e8 fc ff ff ff       	call   65 <piix_isa_bridge_setup+0x65>
  69:	83 c4 10             	add    $0x10,%esp
  6c:	5b                   	pop    %ebx
  6d:	5e                   	pop    %esi
  6e:	5f                   	pop    %edi
  6f:	5d                   	pop    %ebp
  70:	c3                   	ret    

Disassembly of section .text.pci_find_resource_reserve_capability:

00000000 <pci_find_resource_reserve_capability>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	0f b7 f0             	movzwl %ax,%esi
   6:	31 d2                	xor    %edx,%edx
   8:	89 f0                	mov    %esi,%eax
   a:	e8 fc ff ff ff       	call   b <pci_find_resource_reserve_capability+0xb>
   f:	66 3d 36 1b          	cmp    $0x1b36,%ax
  13:	74 07                	je     1c <pci_find_resource_reserve_capability+0x1c>
  15:	68 54 00 00 00       	push   $0x54
  1a:	eb 1d                	jmp    39 <pci_find_resource_reserve_capability+0x39>
  1c:	ba 02 00 00 00       	mov    $0x2,%edx
  21:	89 f0                	mov    %esi,%eax
  23:	e8 fc ff ff ff       	call   24 <pci_find_resource_reserve_capability+0x24>
  28:	66 83 f8 01          	cmp    $0x1,%ax
  2c:	74 13                	je     41 <pci_find_resource_reserve_capability+0x41>
  2e:	66 83 f8 0c          	cmp    $0xc,%ax
  32:	74 0d                	je     41 <pci_find_resource_reserve_capability+0x41>
  34:	68 73 00 00 00       	push   $0x73
  39:	e8 fc ff ff ff       	call   3a <pci_find_resource_reserve_capability+0x3a>
  3e:	5b                   	pop    %ebx
  3f:	eb 46                	jmp    87 <pci_find_resource_reserve_capability+0x87>
  41:	31 db                	xor    %ebx,%ebx
  43:	0f b6 cb             	movzbl %bl,%ecx
  46:	ba 09 00 00 00       	mov    $0x9,%edx
  4b:	89 f0                	mov    %esi,%eax
  4d:	e8 fc ff ff ff       	call   4e <pci_find_resource_reserve_capability+0x4e>
  52:	88 c3                	mov    %al,%bl
  54:	84 c0                	test   %al,%al
  56:	74 33                	je     8b <pci_find_resource_reserve_capability+0x8b>
  58:	0f b6 f8             	movzbl %al,%edi
  5b:	8d 57 03             	lea    0x3(%edi),%edx
  5e:	89 f0                	mov    %esi,%eax
  60:	e8 fc ff ff ff       	call   61 <pci_find_resource_reserve_capability+0x61>
  65:	fe c8                	dec    %al
  67:	75 da                	jne    43 <pci_find_resource_reserve_capability+0x43>
  69:	8d 57 02             	lea    0x2(%edi),%edx
  6c:	89 f0                	mov    %esi,%eax
  6e:	e8 fc ff ff ff       	call   6f <pci_find_resource_reserve_capability+0x6f>
  73:	3c 1f                	cmp    $0x1f,%al
  75:	77 1f                	ja     96 <pci_find_resource_reserve_capability+0x96>
  77:	0f b6 c0             	movzbl %al,%eax
  7a:	50                   	push   %eax
  7b:	68 ac 00 00 00       	push   $0xac
  80:	e8 fc ff ff ff       	call   81 <pci_find_resource_reserve_capability+0x81>
  85:	5a                   	pop    %edx
  86:	59                   	pop    %ecx
  87:	31 db                	xor    %ebx,%ebx
  89:	eb 0b                	jmp    96 <pci_find_resource_reserve_capability+0x96>
  8b:	68 e1 00 00 00       	push   $0xe1
  90:	e8 fc ff ff ff       	call   91 <pci_find_resource_reserve_capability+0x91>
  95:	58                   	pop    %eax
  96:	88 d8                	mov    %bl,%al
  98:	5b                   	pop    %ebx
  99:	5e                   	pop    %esi
  9a:	5f                   	pop    %edi
  9b:	c3                   	ret    

Disassembly of section .text.pci_bios_init_bus_rec:

00000000 <pci_bios_init_bus_rec>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 08             	sub    $0x8,%esp
   7:	89 c3                	mov    %eax,%ebx
   9:	89 d7                	mov    %edx,%edi
   b:	50                   	push   %eax
   c:	68 00 00 00 00       	push   $0x0
  11:	68 0b 01 00 00       	push   $0x10b
  16:	e8 fc ff ff ff       	call   17 <pci_bios_init_bus_rec+0x17>
  1b:	89 d8                	mov    %ebx,%eax
  1d:	c1 e0 08             	shl    $0x8,%eax
  20:	48                   	dec    %eax
  21:	89 44 24 0c          	mov    %eax,0xc(%esp)
  25:	89 da                	mov    %ebx,%edx
  27:	e8 fc ff ff ff       	call   28 <pci_bios_init_bus_rec+0x28>
  2c:	89 c6                	mov    %eax,%esi
  2e:	83 c4 0c             	add    $0xc,%esp
  31:	85 f6                	test   %esi,%esi
  33:	78 41                	js     76 <pci_bios_init_bus_rec+0x76>
  35:	0f b7 ee             	movzwl %si,%ebp
  38:	ba 0a 00 00 00       	mov    $0xa,%edx
  3d:	89 e8                	mov    %ebp,%eax
  3f:	e8 fc ff ff ff       	call   40 <pci_bios_init_bus_rec+0x40>
  44:	66 3d 04 06          	cmp    $0x604,%ax
  48:	75 1f                	jne    69 <pci_bios_init_bus_rec+0x69>
  4a:	b9 ff 00 00 00       	mov    $0xff,%ecx
  4f:	ba 19 00 00 00       	mov    $0x19,%edx
  54:	89 e8                	mov    %ebp,%eax
  56:	e8 fc ff ff ff       	call   57 <pci_bios_init_bus_rec+0x57>
  5b:	31 c9                	xor    %ecx,%ecx
  5d:	ba 1a 00 00 00       	mov    $0x1a,%edx
  62:	89 e8                	mov    %ebp,%eax
  64:	e8 fc ff ff ff       	call   65 <pci_bios_init_bus_rec+0x65>
  69:	89 da                	mov    %ebx,%edx
  6b:	89 f0                	mov    %esi,%eax
  6d:	e8 fc ff ff ff       	call   6e <pci_bios_init_bus_rec+0x6e>
  72:	89 c6                	mov    %eax,%esi
  74:	eb bb                	jmp    31 <pci_bios_init_bus_rec+0x31>
  76:	89 da                	mov    %ebx,%edx
  78:	8b 04 24             	mov    (%esp),%eax
  7b:	e8 fc ff ff ff       	call   7c <pci_bios_init_bus_rec+0x7c>
  80:	89 c5                	mov    %eax,%ebp
  82:	85 c0                	test   %eax,%eax
  84:	0f 88 bd 01 00 00    	js     247 <pci_bios_init_bus_rec+0x247>
  8a:	0f b7 c5             	movzwl %bp,%eax
  8d:	89 04 24             	mov    %eax,(%esp)
  90:	ba 0a 00 00 00       	mov    $0xa,%edx
  95:	e8 fc ff ff ff       	call   96 <pci_bios_init_bus_rec+0x96>
  9a:	66 3d 04 06          	cmp    $0x604,%ax
  9e:	0f 85 9a 01 00 00    	jne    23e <pci_bios_init_bus_rec+0x23e>
  a4:	55                   	push   %ebp
  a5:	68 00 00 00 00       	push   $0x0
  aa:	68 1f 01 00 00       	push   $0x11f
  af:	e8 fc ff ff ff       	call   b0 <pci_bios_init_bus_rec+0xb0>
  b4:	ba 18 00 00 00       	mov    $0x18,%edx
  b9:	0f b7 c5             	movzwl %bp,%eax
  bc:	e8 fc ff ff ff       	call   bd <pci_bios_init_bus_rec+0xbd>
  c1:	0f b6 c0             	movzbl %al,%eax
  c4:	83 c4 0c             	add    $0xc,%esp
  c7:	39 d8                	cmp    %ebx,%eax
  c9:	74 20                	je     eb <pci_bios_init_bus_rec+0xeb>
  cb:	53                   	push   %ebx
  cc:	50                   	push   %eax
  cd:	68 33 01 00 00       	push   $0x133
  d2:	e8 fc ff ff ff       	call   d3 <pci_bios_init_bus_rec+0xd3>
  d7:	89 d9                	mov    %ebx,%ecx
  d9:	ba 18 00 00 00       	mov    $0x18,%edx
  de:	0f b7 c5             	movzwl %bp,%eax
  e1:	e8 fc ff ff ff       	call   e2 <pci_bios_init_bus_rec+0xe2>
  e6:	83 c4 0c             	add    $0xc,%esp
  e9:	eb 0d                	jmp    f8 <pci_bios_init_bus_rec+0xf8>
  eb:	53                   	push   %ebx
  ec:	68 54 01 00 00       	push   $0x154
  f1:	e8 fc ff ff ff       	call   f2 <pci_bios_init_bus_rec+0xf2>
  f6:	59                   	pop    %ecx
  f7:	5e                   	pop    %esi
  f8:	ba 19 00 00 00       	mov    $0x19,%edx
  fd:	0f b7 c5             	movzwl %bp,%eax
 100:	e8 fc ff ff ff       	call   101 <pci_bios_init_bus_rec+0x101>
 105:	88 04 24             	mov    %al,(%esp)
 108:	8a 07                	mov    (%edi),%al
 10a:	40                   	inc    %eax
 10b:	88 07                	mov    %al,(%edi)
 10d:	3a 04 24             	cmp    (%esp),%al
 110:	0f b6 14 24          	movzbl (%esp),%edx
 114:	74 28                	je     13e <pci_bios_init_bus_rec+0x13e>
 116:	0f b6 c0             	movzbl %al,%eax
 119:	50                   	push   %eax
 11a:	52                   	push   %edx
 11b:	68 6d 01 00 00       	push   $0x16d
 120:	e8 fc ff ff ff       	call   121 <pci_bios_init_bus_rec+0x121>
 125:	0f b6 0f             	movzbl (%edi),%ecx
 128:	88 4c 24 0c          	mov    %cl,0xc(%esp)
 12c:	ba 19 00 00 00       	mov    $0x19,%edx
 131:	0f b7 c5             	movzwl %bp,%eax
 134:	e8 fc ff ff ff       	call   135 <pci_bios_init_bus_rec+0x135>
 139:	83 c4 0c             	add    $0xc,%esp
 13c:	eb 0d                	jmp    14b <pci_bios_init_bus_rec+0x14b>
 13e:	52                   	push   %edx
 13f:	68 90 01 00 00       	push   $0x190
 144:	e8 fc ff ff ff       	call   145 <pci_bios_init_bus_rec+0x145>
 149:	58                   	pop    %eax
 14a:	5a                   	pop    %edx
 14b:	ba 1a 00 00 00       	mov    $0x1a,%edx
 150:	0f b7 c5             	movzwl %bp,%eax
 153:	e8 fc ff ff ff       	call   154 <pci_bios_init_bus_rec+0x154>
 158:	88 44 24 07          	mov    %al,0x7(%esp)
 15c:	b9 ff 00 00 00       	mov    $0xff,%ecx
 161:	ba 1a 00 00 00       	mov    $0x1a,%edx
 166:	0f b7 c5             	movzwl %bp,%eax
 169:	e8 fc ff ff ff       	call   16a <pci_bios_init_bus_rec+0x16a>
 16e:	0f b6 34 24          	movzbl (%esp),%esi
 172:	89 fa                	mov    %edi,%edx
 174:	89 f0                	mov    %esi,%eax
 176:	e8 85 fe ff ff       	call   0 <pci_bios_init_bus_rec>
 17b:	8a 07                	mov    (%edi),%al
 17d:	88 44 24 06          	mov    %al,0x6(%esp)
 181:	3a 44 24 07          	cmp    0x7(%esp),%al
 185:	0f 84 8f 00 00 00    	je     21a <pci_bios_init_bus_rec+0x21a>
 18b:	0f b7 c5             	movzwl %bp,%eax
 18e:	e8 fc ff ff ff       	call   18f <pci_bios_init_bus_rec+0x18f>
 193:	84 c0                	test   %al,%al
 195:	74 62                	je     1f9 <pci_bios_init_bus_rec+0x1f9>
 197:	0f b6 c0             	movzbl %al,%eax
 19a:	8d 50 04             	lea    0x4(%eax),%edx
 19d:	0f b7 c5             	movzwl %bp,%eax
 1a0:	e8 fc ff ff ff       	call   1a1 <pci_bios_init_bus_rec+0x1a1>
 1a5:	83 f8 ff             	cmp    $0xffffffff,%eax
 1a8:	74 4f                	je     1f9 <pci_bios_init_bus_rec+0x1f9>
 1aa:	88 44 24 06          	mov    %al,0x6(%esp)
 1ae:	8a 0c 24             	mov    (%esp),%cl
 1b1:	01 c1                	add    %eax,%ecx
 1b3:	8a 14 24             	mov    (%esp),%dl
 1b6:	38 c2                	cmp    %al,%dl
 1b8:	73 02                	jae    1bc <pci_bios_init_bus_rec+0x1bc>
 1ba:	88 c2                	mov    %al,%dl
 1bc:	38 d1                	cmp    %dl,%cl
 1be:	73 15                	jae    1d5 <pci_bios_init_bus_rec+0x1d5>
 1c0:	0f b6 c0             	movzbl %al,%eax
 1c3:	50                   	push   %eax
 1c4:	68 ab 01 00 00       	push   $0x1ab
 1c9:	e8 fc ff ff ff       	call   1ca <pci_bios_init_bus_rec+0x1ca>
 1ce:	59                   	pop    %ecx
 1cf:	58                   	pop    %eax
 1d0:	c6 44 24 06 00       	movb   $0x0,0x6(%esp)
 1d5:	0f b6 54 24 06       	movzbl 0x6(%esp),%edx
 1da:	8d 04 16             	lea    (%esi,%edx,1),%eax
 1dd:	0f b6 0f             	movzbl (%edi),%ecx
 1e0:	39 c8                	cmp    %ecx,%eax
 1e2:	7e 15                	jle    1f9 <pci_bios_init_bus_rec+0x1f9>
 1e4:	52                   	push   %edx
 1e5:	68 d1 01 00 00       	push   $0x1d1
 1ea:	e8 fc ff ff ff       	call   1eb <pci_bios_init_bus_rec+0x1eb>
 1ef:	8a 4c 24 08          	mov    0x8(%esp),%cl
 1f3:	00 4c 24 0e          	add    %cl,0xe(%esp)
 1f7:	58                   	pop    %eax
 1f8:	5a                   	pop    %edx
 1f9:	0f b6 44 24 06       	movzbl 0x6(%esp),%eax
 1fe:	50                   	push   %eax
 1ff:	0f b6 44 24 0b       	movzbl 0xb(%esp),%eax
 204:	50                   	push   %eax
 205:	68 fb 01 00 00       	push   $0x1fb
 20a:	e8 fc ff ff ff       	call   20b <pci_bios_init_bus_rec+0x20b>
 20f:	8a 44 24 12          	mov    0x12(%esp),%al
 213:	88 07                	mov    %al,(%edi)
 215:	83 c4 0c             	add    $0xc,%esp
 218:	eb 12                	jmp    22c <pci_bios_init_bus_rec+0x22c>
 21a:	0f b6 44 24 06       	movzbl 0x6(%esp),%eax
 21f:	50                   	push   %eax
 220:	68 20 02 00 00       	push   $0x220
 225:	e8 fc ff ff ff       	call   226 <pci_bios_init_bus_rec+0x226>
 22a:	59                   	pop    %ecx
 22b:	5e                   	pop    %esi
 22c:	0f b6 4c 24 06       	movzbl 0x6(%esp),%ecx
 231:	ba 1a 00 00 00       	mov    $0x1a,%edx
 236:	0f b7 c5             	movzwl %bp,%eax
 239:	e8 fc ff ff ff       	call   23a <pci_bios_init_bus_rec+0x23a>
 23e:	89 da                	mov    %ebx,%edx
 240:	89 e8                	mov    %ebp,%eax
 242:	e9 34 fe ff ff       	jmp    7b <pci_bios_init_bus_rec+0x7b>
 247:	83 c4 08             	add    $0x8,%esp
 24a:	5b                   	pop    %ebx
 24b:	5e                   	pop    %esi
 24c:	5f                   	pop    %edi
 24d:	5d                   	pop    %ebp
 24e:	c3                   	ret    

Disassembly of section .text.mch_mem_addr_setup:

00000000 <mch_mem_addr_setup>:
   0:	0f b7 00             	movzwl (%eax),%eax
   3:	a3 00 00 00 00       	mov    %eax,0x0
   8:	e8 fc ff ff ff       	call   9 <mch_mem_addr_setup+0x9>
   d:	6a 02                	push   $0x2
   f:	6a 00                	push   $0x0
  11:	68 00 00 00 10       	push   $0x10000000
  16:	b8 00 00 00 b0       	mov    $0xb0000000,%eax
  1b:	31 d2                	xor    %edx,%edx
  1d:	e8 fc ff ff ff       	call   1e <mch_mem_addr_setup+0x1e>
  22:	c7 05 00 00 00 00 00 	movl   $0xc0000000,0x0
  29:	00 00 c0 
  2c:	c7 05 04 00 00 00 00 	movl   $0x0,0x4
  33:	00 00 00 
  36:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
  3d:	00 00 00 
  40:	66 8b 0d 00 00 00 00 	mov    0x0,%cx
  47:	83 c4 0c             	add    $0xc,%esp
  4a:	b8 00 00 01 00       	mov    $0x10000,%eax
  4f:	31 d2                	xor    %edx,%edx
  51:	66 81 f9 ff 0f       	cmp    $0xfff,%cx
  56:	76 05                	jbe    5d <mch_mem_addr_setup+0x5d>
  58:	0f b7 c1             	movzwl %cx,%eax
  5b:	31 d2                	xor    %edx,%edx
  5d:	a3 00 00 00 00       	mov    %eax,0x0
  62:	89 15 04 00 00 00    	mov    %edx,0x4
  68:	c3                   	ret    

Disassembly of section .text.malloc_tmp:

00000000 <malloc_tmp>:
   0:	52                   	push   %edx
   1:	89 c2                	mov    %eax,%edx
   3:	b9 10 00 00 00       	mov    $0x10,%ecx
   8:	89 04 24             	mov    %eax,(%esp)
   b:	b8 00 00 00 00       	mov    $0x0,%eax
  10:	e8 fc ff ff ff       	call   11 <malloc_tmp+0x11>
  15:	85 c0                	test   %eax,%eax
  17:	8b 14 24             	mov    (%esp),%edx
  1a:	75 12                	jne    2e <malloc_tmp+0x2e>
  1c:	b9 10 00 00 00       	mov    $0x10,%ecx
  21:	b8 00 00 00 00       	mov    $0x0,%eax
  26:	83 c4 04             	add    $0x4,%esp
  29:	e9 fc ff ff ff       	jmp    2a <malloc_tmp+0x2a>
  2e:	5a                   	pop    %edx
  2f:	c3                   	ret    

Disassembly of section .text.pci_region_create_entry:

00000000 <pci_region_create_entry>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 10             	sub    $0x10,%esp
   7:	89 c6                	mov    %eax,%esi
   9:	89 54 24 0c          	mov    %edx,0xc(%esp)
   d:	89 cf                	mov    %ecx,%edi
   f:	8b 44 24 24          	mov    0x24(%esp),%eax
  13:	89 44 24 04          	mov    %eax,0x4(%esp)
  17:	8b 44 24 28          	mov    0x28(%esp),%eax
  1b:	89 44 24 08          	mov    %eax,0x8(%esp)
  1f:	8b 44 24 2c          	mov    0x2c(%esp),%eax
  23:	89 04 24             	mov    %eax,(%esp)
  26:	8b 6c 24 30          	mov    0x30(%esp),%ebp
  2a:	b8 28 00 00 00       	mov    $0x28,%eax
  2f:	e8 fc ff ff ff       	call   30 <pci_region_create_entry+0x30>
  34:	89 c3                	mov    %eax,%ebx
  36:	85 c0                	test   %eax,%eax
  38:	75 14                	jne    4e <pci_region_create_entry+0x4e>
  3a:	ba 00 00 00 00       	mov    $0x0,%edx
  3f:	b8 07 03 00 00       	mov    $0x307,%eax
  44:	e8 fc ff ff ff       	call   45 <pci_region_create_entry+0x45>
  49:	e9 89 00 00 00       	jmp    d7 <pci_region_create_entry+0xd7>
  4e:	b9 28 00 00 00       	mov    $0x28,%ecx
  53:	31 d2                	xor    %edx,%edx
  55:	e8 fc ff ff ff       	call   56 <pci_region_create_entry+0x56>
  5a:	8b 44 24 0c          	mov    0xc(%esp),%eax
  5e:	89 03                	mov    %eax,(%ebx)
  60:	89 7b 04             	mov    %edi,0x4(%ebx)
  63:	8b 44 24 04          	mov    0x4(%esp),%eax
  67:	89 43 08             	mov    %eax,0x8(%ebx)
  6a:	8b 44 24 08          	mov    0x8(%esp),%eax
  6e:	89 43 0c             	mov    %eax,0xc(%ebx)
  71:	8b 04 24             	mov    (%esp),%eax
  74:	89 43 10             	mov    %eax,0x10(%ebx)
  77:	89 6b 14             	mov    %ebp,0x14(%ebx)
  7a:	8b 44 24 38          	mov    0x38(%esp),%eax
  7e:	89 43 18             	mov    %eax,0x18(%ebx)
  81:	8b 44 24 34          	mov    0x34(%esp),%eax
  85:	89 43 1c             	mov    %eax,0x1c(%ebx)
  88:	6b c0 0c             	imul   $0xc,%eax,%eax
  8b:	8d 54 06 08          	lea    0x8(%esi,%eax,1),%edx
  8f:	8b 44 06 08          	mov    0x8(%esi,%eax,1),%eax
  93:	85 c0                	test   %eax,%eax
  95:	74 2e                	je     c5 <pci_region_create_entry+0xc5>
  97:	8b 70 f0             	mov    -0x10(%eax),%esi
  9a:	8b 48 f4             	mov    -0xc(%eax),%ecx
  9d:	3b 34 24             	cmp    (%esp),%esi
  a0:	89 cf                	mov    %ecx,%edi
  a2:	19 ef                	sbb    %ebp,%edi
  a4:	72 1f                	jb     c5 <pci_region_create_entry+0xc5>
  a6:	39 e9                	cmp    %ebp,%ecx
  a8:	75 15                	jne    bf <pci_region_create_entry+0xbf>
  aa:	3b 34 24             	cmp    (%esp),%esi
  ad:	75 10                	jne    bf <pci_region_create_entry+0xbf>
  af:	8b 48 ec             	mov    -0x14(%eax),%ecx
  b2:	8b 7c 24 04          	mov    0x4(%esp),%edi
  b6:	39 78 e8             	cmp    %edi,-0x18(%eax)
  b9:	1b 4c 24 08          	sbb    0x8(%esp),%ecx
  bd:	72 06                	jb     c5 <pci_region_create_entry+0xc5>
  bf:	89 c2                	mov    %eax,%edx
  c1:	8b 00                	mov    (%eax),%eax
  c3:	eb ce                	jmp    93 <pci_region_create_entry+0x93>
  c5:	8d 4b 20             	lea    0x20(%ebx),%ecx
  c8:	89 53 24             	mov    %edx,0x24(%ebx)
  cb:	89 43 20             	mov    %eax,0x20(%ebx)
  ce:	85 c0                	test   %eax,%eax
  d0:	74 03                	je     d5 <pci_region_create_entry+0xd5>
  d2:	89 48 04             	mov    %ecx,0x4(%eax)
  d5:	89 0a                	mov    %ecx,(%edx)
  d7:	89 d8                	mov    %ebx,%eax
  d9:	83 c4 10             	add    $0x10,%esp
  dc:	5b                   	pop    %ebx
  dd:	5e                   	pop    %esi
  de:	5f                   	pop    %edi
  df:	5d                   	pop    %ebp
  e0:	c3                   	ret    

Disassembly of section .text.piix_ide_setup:

00000000 <piix_ide_setup>:
   0:	52                   	push   %edx
   1:	0f b7 00             	movzwl (%eax),%eax
   4:	b9 00 80 00 00       	mov    $0x8000,%ecx
   9:	ba 40 00 00 00       	mov    $0x40,%edx
   e:	89 04 24             	mov    %eax,(%esp)
  11:	e8 fc ff ff ff       	call   12 <piix_ide_setup+0x12>
  16:	b9 00 80 00 00       	mov    $0x8000,%ecx
  1b:	ba 42 00 00 00       	mov    $0x42,%edx
  20:	8b 04 24             	mov    (%esp),%eax
  23:	83 c4 04             	add    $0x4,%esp
  26:	e9 fc ff ff ff       	jmp    27 <piix_ide_setup+0x27>

Disassembly of section .text.piix4_pm_setup:

00000000 <piix4_pm_setup>:
   0:	0f b7 00             	movzwl (%eax),%eax
   3:	a3 00 00 00 00       	mov    %eax,0x0
   8:	e8 fc ff ff ff       	call   9 <piix4_pm_setup+0x9>
   d:	0f b7 15 00 00 00 00 	movzwl 0x0,%edx
  14:	89 d0                	mov    %edx,%eax
  16:	83 c2 04             	add    $0x4,%edx
  19:	89 15 00 00 00 00    	mov    %edx,0x0
  1f:	83 c0 08             	add    $0x8,%eax
  22:	0f b7 c0             	movzwl %ax,%eax
  25:	e9 fc ff ff ff       	jmp    26 <piix4_pm_setup+0x26>

Disassembly of section .text.mch_isa_bridge_setup:

00000000 <mch_isa_bridge_setup>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	52                   	push   %edx
   4:	66 c7 44 24 02 00 00 	movw   $0x0,0x2(%esp)
   b:	bb 60 00 00 00       	mov    $0x60,%ebx
  10:	0f b7 30             	movzwl (%eax),%esi
  13:	0f b6 bb a0 ff ff ff 	movzbl -0x60(%ebx),%edi
  1a:	89 f9                	mov    %edi,%ecx
  1c:	89 f8                	mov    %edi,%eax
  1e:	c1 f8 03             	sar    $0x3,%eax
  21:	83 e1 07             	and    $0x7,%ecx
  24:	ba 01 00 00 00       	mov    $0x1,%edx
  29:	d3 e2                	shl    %cl,%edx
  2b:	08 54 04 02          	or     %dl,0x2(%esp,%eax,1)
  2f:	89 f9                	mov    %edi,%ecx
  31:	89 da                	mov    %ebx,%edx
  33:	89 f0                	mov    %esi,%eax
  35:	e8 fc ff ff ff       	call   36 <mch_isa_bridge_setup+0x36>
  3a:	8d 53 08             	lea    0x8(%ebx),%edx
  3d:	89 f9                	mov    %edi,%ecx
  3f:	89 f0                	mov    %esi,%eax
  41:	e8 fc ff ff ff       	call   42 <mch_isa_bridge_setup+0x42>
  46:	43                   	inc    %ebx
  47:	83 fb 64             	cmp    $0x64,%ebx
  4a:	75 c7                	jne    13 <mch_isa_bridge_setup+0x13>
  4c:	ba d0 04 00 00       	mov    $0x4d0,%edx
  51:	8a 44 24 02          	mov    0x2(%esp),%al
  55:	ee                   	out    %al,(%dx)
  56:	0f b6 44 24 03       	movzbl 0x3(%esp),%eax
  5b:	ba d1 04 00 00       	mov    $0x4d1,%edx
  60:	ee                   	out    %al,(%dx)
  61:	50                   	push   %eax
  62:	0f b6 44 24 06       	movzbl 0x6(%esp),%eax
  67:	50                   	push   %eax
  68:	68 3d 02 00 00       	push   $0x23d
  6d:	e8 fc ff ff ff       	call   6e <mch_isa_bridge_setup+0x6e>
  72:	89 35 00 00 00 00    	mov    %esi,0x0
  78:	89 f0                	mov    %esi,%eax
  7a:	e8 fc ff ff ff       	call   7b <mch_isa_bridge_setup+0x7b>
  7f:	6a 02                	push   $0x2
  81:	6a 00                	push   $0x0
  83:	68 00 40 00 00       	push   $0x4000
  88:	b8 00 c0 d1 fe       	mov    $0xfed1c000,%eax
  8d:	31 d2                	xor    %edx,%edx
  8f:	e8 fc ff ff ff       	call   90 <mch_isa_bridge_setup+0x90>
  94:	0f b7 15 00 00 00 00 	movzwl 0x0,%edx
  9b:	89 d0                	mov    %edx,%eax
  9d:	83 c2 04             	add    $0x4,%edx
  a0:	89 15 00 00 00 00    	mov    %edx,0x0
  a6:	83 c0 08             	add    $0x8,%eax
  a9:	0f b7 c0             	movzwl %ax,%eax
  ac:	83 c4 1c             	add    $0x1c,%esp
  af:	5b                   	pop    %ebx
  b0:	5e                   	pop    %esi
  b1:	5f                   	pop    %edi
  b2:	e9 fc ff ff ff       	jmp    b3 <mch_isa_bridge_setup+0xb3>

Disassembly of section .text.intel_igd_setup:

00000000 <intel_igd_setup>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	56                   	push   %esi
   5:	89 c6                	mov    %eax,%esi
   7:	b8 5b 02 00 00       	mov    $0x25b,%eax
   c:	e8 fc ff ff ff       	call   d <intel_igd_setup+0xd>
  11:	89 c3                	mov    %eax,%ebx
  13:	31 d2                	xor    %edx,%edx
  15:	31 c9                	xor    %ecx,%ecx
  17:	b8 6c 02 00 00       	mov    $0x26c,%eax
  1c:	e8 fc ff ff ff       	call   1d <intel_igd_setup+0x1d>
  21:	89 c7                	mov    %eax,%edi
  23:	89 d5                	mov    %edx,%ebp
  25:	85 db                	test   %ebx,%ebx
  27:	74 7a                	je     a3 <intel_igd_setup+0xa3>
  29:	8b 93 84 00 00 00    	mov    0x84(%ebx),%edx
  2f:	85 d2                	test   %edx,%edx
  31:	74 70                	je     a3 <intel_igd_setup+0xa3>
  33:	b9 00 10 00 00       	mov    $0x1000,%ecx
  38:	b8 00 00 00 00       	mov    $0x0,%eax
  3d:	e8 fc ff ff ff       	call   3e <intel_igd_setup+0x3e>
  42:	89 04 24             	mov    %eax,(%esp)
  45:	85 c0                	test   %eax,%eax
  47:	75 0c                	jne    55 <intel_igd_setup+0x55>
  49:	ba 00 00 00 00       	mov    $0x0,%edx
  4e:	b8 2c 01 00 00       	mov    $0x12c,%eax
  53:	eb 7b                	jmp    d0 <intel_igd_setup+0xd0>
  55:	8b 8b 84 00 00 00    	mov    0x84(%ebx),%ecx
  5b:	8b 14 24             	mov    (%esp),%edx
  5e:	89 d8                	mov    %ebx,%eax
  60:	ff 93 88 00 00 00    	call   *0x88(%ebx)
  66:	85 c0                	test   %eax,%eax
  68:	79 0d                	jns    77 <intel_igd_setup+0x77>
  6a:	8b 04 24             	mov    (%esp),%eax
  6d:	5b                   	pop    %ebx
  6e:	5b                   	pop    %ebx
  6f:	5e                   	pop    %esi
  70:	5f                   	pop    %edi
  71:	5d                   	pop    %ebp
  72:	e9 fc ff ff ff       	jmp    73 <intel_igd_setup+0x73>
  77:	0f b7 06             	movzwl (%esi),%eax
  7a:	8b 0c 24             	mov    (%esp),%ecx
  7d:	ba fc 00 00 00       	mov    $0xfc,%edx
  82:	e8 fc ff ff ff       	call   83 <intel_igd_setup+0x83>
  87:	56                   	push   %esi
  88:	8b 83 84 00 00 00    	mov    0x84(%ebx),%eax
  8e:	c1 e8 0a             	shr    $0xa,%eax
  91:	50                   	push   %eax
  92:	ff 74 24 08          	push   0x8(%esp)
  96:	68 7e 02 00 00       	push   $0x27e
  9b:	e8 fc ff ff ff       	call   9c <intel_igd_setup+0x9c>
  a0:	83 c4 10             	add    $0x10,%esp
  a3:	89 e8                	mov    %ebp,%eax
  a5:	09 f8                	or     %edi,%eax
  a7:	74 67                	je     110 <intel_igd_setup+0x110>
  a9:	66 83 3e 10          	cmpw   $0x10,(%esi)
  ad:	75 61                	jne    110 <intel_igd_setup+0x110>
  af:	b9 00 00 10 00       	mov    $0x100000,%ecx
  b4:	89 fa                	mov    %edi,%edx
  b6:	b8 00 00 00 00       	mov    $0x0,%eax
  bb:	e8 fc ff ff ff       	call   bc <intel_igd_setup+0xbc>
  c0:	89 c3                	mov    %eax,%ebx
  c2:	85 c0                	test   %eax,%eax
  c4:	75 14                	jne    da <intel_igd_setup+0xda>
  c6:	ba 00 00 00 00       	mov    $0x0,%edx
  cb:	b8 3f 01 00 00       	mov    $0x13f,%eax
  d0:	59                   	pop    %ecx
  d1:	5b                   	pop    %ebx
  d2:	5e                   	pop    %esi
  d3:	5f                   	pop    %edi
  d4:	5d                   	pop    %ebp
  d5:	e9 fc ff ff ff       	jmp    d6 <intel_igd_setup+0xd6>
  da:	31 d2                	xor    %edx,%edx
  dc:	6a 02                	push   $0x2
  de:	55                   	push   %ebp
  df:	57                   	push   %edi
  e0:	e8 fc ff ff ff       	call   e1 <intel_igd_setup+0xe1>
  e5:	0f b7 06             	movzwl (%esi),%eax
  e8:	89 d9                	mov    %ebx,%ecx
  ea:	ba 5c 00 00 00       	mov    $0x5c,%edx
  ef:	e8 fc ff ff ff       	call   f0 <intel_igd_setup+0xf0>
  f4:	56                   	push   %esi
  f5:	89 f8                	mov    %edi,%eax
  f7:	89 ea                	mov    %ebp,%edx
  f9:	0f ac d0 14          	shrd   $0x14,%edx,%eax
  fd:	c1 ea 14             	shr    $0x14,%edx
 100:	52                   	push   %edx
 101:	50                   	push   %eax
 102:	53                   	push   %ebx
 103:	68 b8 02 00 00       	push   $0x2b8
 108:	e8 fc ff ff ff       	call   109 <intel_igd_setup+0x109>
 10d:	83 c4 20             	add    $0x20,%esp
 110:	58                   	pop    %eax
 111:	5b                   	pop    %ebx
 112:	5e                   	pop    %esi
 113:	5f                   	pop    %edi
 114:	5d                   	pop    %ebp
 115:	c3                   	ret    

Disassembly of section .text.pci_set_io_region_addr:

00000000 <pci_set_io_region_addr>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 c6                	mov    %eax,%esi
   6:	8b 4c 24 14          	mov    0x14(%esp),%ecx
   a:	8b 7c 24 18          	mov    0x18(%esp),%edi
   e:	8b 6c 24 1c          	mov    0x1c(%esp),%ebp
  12:	83 fa 06             	cmp    $0x6,%edx
  15:	74 09                	je     20 <pci_set_io_region_addr+0x20>
  17:	8d 1c 95 10 00 00 00 	lea    0x10(,%edx,4),%ebx
  1e:	eb 14                	jmp    34 <pci_set_io_region_addr+0x34>
  20:	8a 40 18             	mov    0x18(%eax),%al
  23:	83 e0 7f             	and    $0x7f,%eax
  26:	31 db                	xor    %ebx,%ebx
  28:	fe c8                	dec    %al
  2a:	0f 94 c3             	sete   %bl
  2d:	8d 1c dd 30 00 00 00 	lea    0x30(,%ebx,8),%ebx
  34:	0f b7 06             	movzwl (%esi),%eax
  37:	89 da                	mov    %ebx,%edx
  39:	e8 fc ff ff ff       	call   3a <pci_set_io_region_addr+0x3a>
  3e:	85 ed                	test   %ebp,%ebp
  40:	74 11                	je     53 <pci_set_io_region_addr+0x53>
  42:	8d 53 04             	lea    0x4(%ebx),%edx
  45:	0f b7 06             	movzwl (%esi),%eax
  48:	89 f9                	mov    %edi,%ecx
  4a:	5b                   	pop    %ebx
  4b:	5e                   	pop    %esi
  4c:	5f                   	pop    %edi
  4d:	5d                   	pop    %ebp
  4e:	e9 fc ff ff ff       	jmp    4f <pci_set_io_region_addr+0x4f>
  53:	5b                   	pop    %ebx
  54:	5e                   	pop    %esi
  55:	5f                   	pop    %edi
  56:	5d                   	pop    %ebp
  57:	c3                   	ret    

Disassembly of section .text.apple_macio_setup:

00000000 <apple_macio_setup>:
   0:	6a 00                	push   $0x0
   2:	6a 00                	push   $0x0
   4:	68 00 00 80 80       	push   $0x80800000
   9:	31 d2                	xor    %edx,%edx
   b:	e8 fc ff ff ff       	call   c <apple_macio_setup+0xc>
  10:	83 c4 0c             	add    $0xc,%esp
  13:	c3                   	ret    

Disassembly of section .text.pic_ibm_setup:

00000000 <pic_ibm_setup>:
   0:	6a 00                	push   $0x0
   2:	6a 00                	push   $0x0
   4:	68 00 00 84 80       	push   $0x80840000
   9:	31 d2                	xor    %edx,%edx
   b:	e8 fc ff ff ff       	call   c <pic_ibm_setup+0xc>
  10:	83 c4 0c             	add    $0xc,%esp
  13:	c3                   	ret    

Disassembly of section .text.storage_ide_setup:

00000000 <storage_ide_setup>:
   0:	52                   	push   %edx
   1:	6a 00                	push   $0x0
   3:	6a 00                	push   $0x0
   5:	68 f0 01 00 00       	push   $0x1f0
   a:	31 d2                	xor    %edx,%edx
   c:	89 44 24 0c          	mov    %eax,0xc(%esp)
  10:	e8 fc ff ff ff       	call   11 <storage_ide_setup+0x11>
  15:	6a 00                	push   $0x0
  17:	6a 00                	push   $0x0
  19:	68 f4 03 00 00       	push   $0x3f4
  1e:	ba 01 00 00 00       	mov    $0x1,%edx
  23:	8b 44 24 18          	mov    0x18(%esp),%eax
  27:	e8 fc ff ff ff       	call   28 <storage_ide_setup+0x28>
  2c:	6a 00                	push   $0x0
  2e:	6a 00                	push   $0x0
  30:	68 70 01 00 00       	push   $0x170
  35:	ba 02 00 00 00       	mov    $0x2,%edx
  3a:	8b 44 24 24          	mov    0x24(%esp),%eax
  3e:	e8 fc ff ff ff       	call   3f <storage_ide_setup+0x3f>
  43:	83 c4 24             	add    $0x24,%esp
  46:	6a 00                	push   $0x0
  48:	6a 00                	push   $0x0
  4a:	68 74 03 00 00       	push   $0x374
  4f:	ba 03 00 00 00       	mov    $0x3,%edx
  54:	8b 44 24 0c          	mov    0xc(%esp),%eax
  58:	e8 fc ff ff ff       	call   59 <storage_ide_setup+0x59>
  5d:	83 c4 10             	add    $0x10,%esp
  60:	c3                   	ret    

Disassembly of section .text.pci_region_sum.isra.0:

00000000 <pci_region_sum.isra.0>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	53                   	push   %ebx
   4:	8d 50 e0             	lea    -0x20(%eax),%edx
   7:	31 c9                	xor    %ecx,%ecx
   9:	31 db                	xor    %ebx,%ebx
   b:	83 fa e0             	cmp    $0xffffffe0,%edx
   e:	74 0e                	je     1e <pci_region_sum.isra.0+0x1e>
  10:	03 4a 08             	add    0x8(%edx),%ecx
  13:	13 5a 0c             	adc    0xc(%edx),%ebx
  16:	8b 52 20             	mov    0x20(%edx),%edx
  19:	83 ea 20             	sub    $0x20,%edx
  1c:	eb ed                	jmp    b <pci_region_sum.isra.0+0xb>
  1e:	89 c8                	mov    %ecx,%eax
  20:	89 da                	mov    %ebx,%edx
  22:	5b                   	pop    %ebx
  23:	5d                   	pop    %ebp
  24:	c3                   	ret    

Disassembly of section .text.pci_region_align.isra.0:

00000000 <pci_region_align.isra.0>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	85 c0                	test   %eax,%eax
   5:	74 08                	je     f <pci_region_align.isra.0+0xf>
   7:	8b 50 f4             	mov    -0xc(%eax),%edx
   a:	8b 40 f0             	mov    -0x10(%eax),%eax
   d:	eb 07                	jmp    16 <pci_region_align.isra.0+0x16>
   f:	b8 01 00 00 00       	mov    $0x1,%eax
  14:	31 d2                	xor    %edx,%edx
  16:	5d                   	pop    %ebp
  17:	c3                   	ret    

Disassembly of section .text.pci_bios_init_root_regions_mem:

00000000 <pci_bios_init_root_regions_mem>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 18             	sub    $0x18,%esp
   7:	89 c1                	mov    %eax,%ecx
   9:	8d 68 18             	lea    0x18(%eax),%ebp
   c:	8d 70 0c             	lea    0xc(%eax),%esi
   f:	8b 40 14             	mov    0x14(%eax),%eax
  12:	e8 fc ff ff ff       	call   13 <pci_bios_init_root_regions_mem+0x13>
  17:	89 c7                	mov    %eax,%edi
  19:	89 d3                	mov    %edx,%ebx
  1b:	8b 41 20             	mov    0x20(%ecx),%eax
  1e:	e8 fc ff ff ff       	call   1f <pci_bios_init_root_regions_mem+0x1f>
  23:	39 c7                	cmp    %eax,%edi
  25:	19 d3                	sbb    %edx,%ebx
  27:	73 02                	jae    2b <pci_bios_init_root_regions_mem+0x2b>
  29:	87 f5                	xchg   %esi,%ebp
  2b:	8b 7d 08             	mov    0x8(%ebp),%edi
  2e:	89 f8                	mov    %edi,%eax
  30:	e8 fc ff ff ff       	call   31 <pci_bios_init_root_regions_mem+0x31>
  35:	89 c1                	mov    %eax,%ecx
  37:	89 d3                	mov    %edx,%ebx
  39:	89 f8                	mov    %edi,%eax
  3b:	e8 fc ff ff ff       	call   3c <pci_bios_init_root_regions_mem+0x3c>
  40:	89 44 24 10          	mov    %eax,0x10(%esp)
  44:	89 54 24 14          	mov    %edx,0x14(%esp)
  48:	a1 00 00 00 00       	mov    0x0,%eax
  4d:	8b 15 04 00 00 00    	mov    0x4,%edx
  53:	89 04 24             	mov    %eax,(%esp)
  56:	89 54 24 04          	mov    %edx,0x4(%esp)
  5a:	29 c8                	sub    %ecx,%eax
  5c:	19 da                	sbb    %ebx,%edx
  5e:	89 44 24 08          	mov    %eax,0x8(%esp)
  62:	89 54 24 0c          	mov    %edx,0xc(%esp)
  66:	8b 44 24 10          	mov    0x10(%esp),%eax
  6a:	8b 54 24 14          	mov    0x14(%esp),%edx
  6e:	f7 d8                	neg    %eax
  70:	83 d2 00             	adc    $0x0,%edx
  73:	f7 da                	neg    %edx
  75:	8b 7c 24 08          	mov    0x8(%esp),%edi
  79:	21 c7                	and    %eax,%edi
  7b:	89 f9                	mov    %edi,%ecx
  7d:	8b 7c 24 0c          	mov    0xc(%esp),%edi
  81:	21 d7                	and    %edx,%edi
  83:	89 4d 00             	mov    %ecx,0x0(%ebp)
  86:	89 7d 04             	mov    %edi,0x4(%ebp)
  89:	89 4c 24 08          	mov    %ecx,0x8(%esp)
  8d:	89 7c 24 0c          	mov    %edi,0xc(%esp)
  91:	8b 46 08             	mov    0x8(%esi),%eax
  94:	89 c3                	mov    %eax,%ebx
  96:	e8 fc ff ff ff       	call   97 <pci_bios_init_root_regions_mem+0x97>
  9b:	89 c7                	mov    %eax,%edi
  9d:	89 d5                	mov    %edx,%ebp
  9f:	89 d8                	mov    %ebx,%eax
  a1:	e8 fc ff ff ff       	call   a2 <pci_bios_init_root_regions_mem+0xa2>
  a6:	8b 4c 24 08          	mov    0x8(%esp),%ecx
  aa:	8b 5c 24 0c          	mov    0xc(%esp),%ebx
  ae:	29 f9                	sub    %edi,%ecx
  b0:	19 eb                	sbb    %ebp,%ebx
  b2:	f7 d8                	neg    %eax
  b4:	83 d2 00             	adc    $0x0,%edx
  b7:	f7 da                	neg    %edx
  b9:	89 cf                	mov    %ecx,%edi
  bb:	21 c7                	and    %eax,%edi
  bd:	21 da                	and    %ebx,%edx
  bf:	89 3e                	mov    %edi,(%esi)
  c1:	89 56 04             	mov    %edx,0x4(%esi)
  c4:	3b 3d 00 00 00 00    	cmp    0x0,%edi
  ca:	89 d0                	mov    %edx,%eax
  cc:	1b 05 04 00 00 00    	sbb    0x4,%eax
  d2:	0f 92 c0             	setb   %al
  d5:	39 3c 24             	cmp    %edi,(%esp)
  d8:	8b 5c 24 04          	mov    0x4(%esp),%ebx
  dc:	19 d3                	sbb    %edx,%ebx
  de:	0f 92 c2             	setb   %dl
  e1:	09 d0                	or     %edx,%eax
  e3:	0f b6 c0             	movzbl %al,%eax
  e6:	f7 d8                	neg    %eax
  e8:	83 c4 18             	add    $0x18,%esp
  eb:	5b                   	pop    %ebx
  ec:	5e                   	pop    %esi
  ed:	5f                   	pop    %edi
  ee:	5d                   	pop    %ebp
  ef:	c3                   	ret    

Disassembly of section .text.pci_region_migrate_64bit_entries.isra.0:

00000000 <pci_region_migrate_64bit_entries.isra.0>:
   0:	83 c2 08             	add    $0x8,%edx
   3:	83 e8 20             	sub    $0x20,%eax
   6:	83 f8 e0             	cmp    $0xffffffe0,%eax
   9:	74 0e                	je     19 <pci_region_migrate_64bit_entries.isra.0+0x19>
   b:	8b 48 20             	mov    0x20(%eax),%ecx
   e:	83 78 18 00          	cmpl   $0x0,0x18(%eax)
  12:	75 06                	jne    1a <pci_region_migrate_64bit_entries.isra.0+0x1a>
  14:	8d 41 e0             	lea    -0x20(%ecx),%eax
  17:	eb ed                	jmp    6 <pci_region_migrate_64bit_entries.isra.0+0x6>
  19:	c3                   	ret    
  1a:	56                   	push   %esi
  1b:	53                   	push   %ebx
  1c:	8b 18                	mov    (%eax),%ebx
  1e:	66 81 7b 14 03 0c    	cmpw   $0xc03,0x14(%ebx)
  24:	74 22                	je     48 <pci_region_migrate_64bit_entries.isra.0+0x48>
  26:	8d 58 20             	lea    0x20(%eax),%ebx
  29:	8b 70 24             	mov    0x24(%eax),%esi
  2c:	89 0e                	mov    %ecx,(%esi)
  2e:	85 c9                	test   %ecx,%ecx
  30:	74 03                	je     35 <pci_region_migrate_64bit_entries.isra.0+0x35>
  32:	89 71 04             	mov    %esi,0x4(%ecx)
  35:	8b 32                	mov    (%edx),%esi
  37:	89 50 24             	mov    %edx,0x24(%eax)
  3a:	89 70 20             	mov    %esi,0x20(%eax)
  3d:	85 f6                	test   %esi,%esi
  3f:	74 03                	je     44 <pci_region_migrate_64bit_entries.isra.0+0x44>
  41:	89 5e 04             	mov    %ebx,0x4(%esi)
  44:	89 1a                	mov    %ebx,(%edx)
  46:	89 da                	mov    %ebx,%edx
  48:	8d 41 e0             	lea    -0x20(%ecx),%eax
  4b:	83 f8 e0             	cmp    $0xffffffe0,%eax
  4e:	74 0b                	je     5b <pci_region_migrate_64bit_entries.isra.0+0x5b>
  50:	8b 48 20             	mov    0x20(%eax),%ecx
  53:	83 78 18 00          	cmpl   $0x0,0x18(%eax)
  57:	75 c3                	jne    1c <pci_region_migrate_64bit_entries.isra.0+0x1c>
  59:	eb ed                	jmp    48 <pci_region_migrate_64bit_entries.isra.0+0x48>
  5b:	5b                   	pop    %ebx
  5c:	5e                   	pop    %esi
  5d:	c3                   	ret    

Disassembly of section .text.pci_region_map_entries:

00000000 <pci_region_map_entries>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 20             	sub    $0x20,%esp
   7:	89 44 24 1c          	mov    %eax,0x1c(%esp)
   b:	89 d5                	mov    %edx,%ebp
   d:	8b 42 08             	mov    0x8(%edx),%eax
  10:	8d 58 e0             	lea    -0x20(%eax),%ebx
  13:	83 fb e0             	cmp    $0xffffffe0,%ebx
  16:	0f 84 ee 01 00 00    	je     20a <pci_region_map_entries+0x20a>
  1c:	8b 43 20             	mov    0x20(%ebx),%eax
  1f:	89 44 24 18          	mov    %eax,0x18(%esp)
  23:	8b 75 00             	mov    0x0(%ebp),%esi
  26:	8b 7d 04             	mov    0x4(%ebp),%edi
  29:	8b 43 08             	mov    0x8(%ebx),%eax
  2c:	8b 53 0c             	mov    0xc(%ebx),%edx
  2f:	89 04 24             	mov    %eax,(%esp)
  32:	89 54 24 04          	mov    %edx,0x4(%esp)
  36:	01 f0                	add    %esi,%eax
  38:	11 fa                	adc    %edi,%edx
  3a:	89 44 24 10          	mov    %eax,0x10(%esp)
  3e:	89 54 24 14          	mov    %edx,0x14(%esp)
  42:	89 45 00             	mov    %eax,0x0(%ebp)
  45:	89 55 04             	mov    %edx,0x4(%ebp)
  48:	8b 4b 04             	mov    0x4(%ebx),%ecx
  4b:	8b 43 1c             	mov    0x1c(%ebx),%eax
  4e:	89 44 24 08          	mov    %eax,0x8(%esp)
  52:	8b 03                	mov    (%ebx),%eax
  54:	83 f9 ff             	cmp    $0xffffffff,%ecx
  57:	75 1b                	jne    74 <pci_region_map_entries+0x74>
  59:	0f b6 48 19          	movzbl 0x19(%eax),%ecx
  5d:	6b c9 28             	imul   $0x28,%ecx,%ecx
  60:	03 4c 24 1c          	add    0x1c(%esp),%ecx
  64:	89 ca                	mov    %ecx,%edx
  66:	6b 4c 24 08 0c       	imul   $0xc,0x8(%esp),%ecx
  6b:	89 34 0a             	mov    %esi,(%edx,%ecx,1)
  6e:	89 7c 0a 04          	mov    %edi,0x4(%edx,%ecx,1)
  72:	eb 3f                	jmp    b3 <pci_region_map_entries+0xb3>
  74:	85 c9                	test   %ecx,%ecx
  76:	78 3b                	js     b3 <pci_region_map_entries+0xb3>
  78:	8b 54 24 08          	mov    0x8(%esp),%edx
  7c:	ff 34 95 00 00 00 00 	push   0x0(,%edx,4)
  83:	ff 74 24 08          	push   0x8(%esp)
  87:	ff 74 24 08          	push   0x8(%esp)
  8b:	57                   	push   %edi
  8c:	56                   	push   %esi
  8d:	51                   	push   %ecx
  8e:	50                   	push   %eax
  8f:	68 f0 02 00 00       	push   $0x2f0
  94:	e8 fc ff ff ff       	call   95 <pci_region_map_entries+0x95>
  99:	83 c4 20             	add    $0x20,%esp
  9c:	8b 53 04             	mov    0x4(%ebx),%edx
  9f:	ff 73 18             	push   0x18(%ebx)
  a2:	57                   	push   %edi
  a3:	56                   	push   %esi
  a4:	8b 03                	mov    (%ebx),%eax
  a6:	e8 fc ff ff ff       	call   a7 <pci_region_map_entries+0xa7>
  ab:	83 c4 0c             	add    $0xc,%esp
  ae:	e9 35 01 00 00       	jmp    1e8 <pci_region_map_entries+0x1e8>
  b3:	8b 00                	mov    (%eax),%eax
  b5:	66 89 44 24 0e       	mov    %ax,0xe(%esp)
  ba:	8b 44 24 10          	mov    0x10(%esp),%eax
  be:	8b 54 24 14          	mov    0x14(%esp),%edx
  c2:	83 c0 ff             	add    $0xffffffff,%eax
  c5:	83 d2 ff             	adc    $0xffffffff,%edx
  c8:	89 04 24             	mov    %eax,(%esp)
  cb:	89 54 24 04          	mov    %edx,0x4(%esp)
  cf:	83 7c 24 08 00       	cmpl   $0x0,0x8(%esp)
  d4:	75 60                	jne    136 <pci_region_map_entries+0x136>
  d6:	89 f0                	mov    %esi,%eax
  d8:	89 fa                	mov    %edi,%edx
  da:	0f ac d0 08          	shrd   $0x8,%edx,%eax
  de:	c1 ea 08             	shr    $0x8,%edx
  e1:	0f b6 c8             	movzbl %al,%ecx
  e4:	ba 1c 00 00 00       	mov    $0x1c,%edx
  e9:	0f b7 44 24 0e       	movzwl 0xe(%esp),%eax
  ee:	89 44 24 08          	mov    %eax,0x8(%esp)
  f2:	e8 fc ff ff ff       	call   f3 <pci_region_map_entries+0xf3>
  f7:	31 c9                	xor    %ecx,%ecx
  f9:	ba 30 00 00 00       	mov    $0x30,%edx
  fe:	8b 44 24 08          	mov    0x8(%esp),%eax
 102:	e8 fc ff ff ff       	call   103 <pci_region_map_entries+0x103>
 107:	8b 04 24             	mov    (%esp),%eax
 10a:	8b 54 24 04          	mov    0x4(%esp),%edx
 10e:	0f ac d0 08          	shrd   $0x8,%edx,%eax
 112:	c1 ea 08             	shr    $0x8,%edx
 115:	0f b6 c8             	movzbl %al,%ecx
 118:	ba 1d 00 00 00       	mov    $0x1d,%edx
 11d:	8b 44 24 08          	mov    0x8(%esp),%eax
 121:	e8 fc ff ff ff       	call   122 <pci_region_map_entries+0x122>
 126:	31 c9                	xor    %ecx,%ecx
 128:	ba 32 00 00 00       	mov    $0x32,%edx
 12d:	8b 44 24 08          	mov    0x8(%esp),%eax
 131:	e8 fc ff ff ff       	call   132 <pci_region_map_entries+0x132>
 136:	83 7b 1c 01          	cmpl   $0x1,0x1c(%ebx)
 13a:	75 40                	jne    17c <pci_region_map_entries+0x17c>
 13c:	0f b7 44 24 0e       	movzwl 0xe(%esp),%eax
 141:	89 f2                	mov    %esi,%edx
 143:	89 f9                	mov    %edi,%ecx
 145:	0f ac ca 10          	shrd   $0x10,%ecx,%edx
 149:	c1 e9 10             	shr    $0x10,%ecx
 14c:	0f b7 ca             	movzwl %dx,%ecx
 14f:	ba 20 00 00 00       	mov    $0x20,%edx
 154:	89 44 24 08          	mov    %eax,0x8(%esp)
 158:	e8 fc ff ff ff       	call   159 <pci_region_map_entries+0x159>
 15d:	8b 14 24             	mov    (%esp),%edx
 160:	8b 4c 24 04          	mov    0x4(%esp),%ecx
 164:	0f ac ca 10          	shrd   $0x10,%ecx,%edx
 168:	c1 e9 10             	shr    $0x10,%ecx
 16b:	0f b7 ca             	movzwl %dx,%ecx
 16e:	ba 22 00 00 00       	mov    $0x22,%edx
 173:	8b 44 24 08          	mov    0x8(%esp),%eax
 177:	e8 fc ff ff ff       	call   178 <pci_region_map_entries+0x178>
 17c:	83 7b 1c 02          	cmpl   $0x2,0x1c(%ebx)
 180:	75 66                	jne    1e8 <pci_region_map_entries+0x1e8>
 182:	0f b7 44 24 0e       	movzwl 0xe(%esp),%eax
 187:	89 44 24 08          	mov    %eax,0x8(%esp)
 18b:	89 f0                	mov    %esi,%eax
 18d:	89 fa                	mov    %edi,%edx
 18f:	0f ac d0 10          	shrd   $0x10,%edx,%eax
 193:	c1 ea 10             	shr    $0x10,%edx
 196:	0f b7 c8             	movzwl %ax,%ecx
 199:	ba 24 00 00 00       	mov    $0x24,%edx
 19e:	8b 44 24 08          	mov    0x8(%esp),%eax
 1a2:	e8 fc ff ff ff       	call   1a3 <pci_region_map_entries+0x1a3>
 1a7:	8b 04 24             	mov    (%esp),%eax
 1aa:	8b 54 24 04          	mov    0x4(%esp),%edx
 1ae:	0f ac d0 10          	shrd   $0x10,%edx,%eax
 1b2:	c1 ea 10             	shr    $0x10,%edx
 1b5:	0f b7 c8             	movzwl %ax,%ecx
 1b8:	ba 26 00 00 00       	mov    $0x26,%edx
 1bd:	8b 44 24 08          	mov    0x8(%esp),%eax
 1c1:	e8 fc ff ff ff       	call   1c2 <pci_region_map_entries+0x1c2>
 1c6:	89 f9                	mov    %edi,%ecx
 1c8:	ba 28 00 00 00       	mov    $0x28,%edx
 1cd:	8b 44 24 08          	mov    0x8(%esp),%eax
 1d1:	e8 fc ff ff ff       	call   1d2 <pci_region_map_entries+0x1d2>
 1d6:	8b 4c 24 04          	mov    0x4(%esp),%ecx
 1da:	ba 2c 00 00 00       	mov    $0x2c,%edx
 1df:	8b 44 24 08          	mov    0x8(%esp),%eax
 1e3:	e8 fc ff ff ff       	call   1e4 <pci_region_map_entries+0x1e4>
 1e8:	8b 43 20             	mov    0x20(%ebx),%eax
 1eb:	8b 53 24             	mov    0x24(%ebx),%edx
 1ee:	89 02                	mov    %eax,(%edx)
 1f0:	85 c0                	test   %eax,%eax
 1f2:	74 03                	je     1f7 <pci_region_map_entries+0x1f7>
 1f4:	89 50 04             	mov    %edx,0x4(%eax)
 1f7:	89 d8                	mov    %ebx,%eax
 1f9:	e8 fc ff ff ff       	call   1fa <pci_region_map_entries+0x1fa>
 1fe:	8b 5c 24 18          	mov    0x18(%esp),%ebx
 202:	83 eb 20             	sub    $0x20,%ebx
 205:	e9 09 fe ff ff       	jmp    13 <pci_region_map_entries+0x13>
 20a:	83 c4 20             	add    $0x20,%esp
 20d:	5b                   	pop    %ebx
 20e:	5e                   	pop    %esi
 20f:	5f                   	pop    %edi
 210:	5d                   	pop    %ebp
 211:	c3                   	ret    

Disassembly of section .text.pci_resume:

00000000 <pci_resume>:
   0:	a1 00 00 00 00       	mov    0x0,%eax
   5:	85 c0                	test   %eax,%eax
   7:	78 08                	js     11 <pci_resume+0x11>
   9:	0f b7 c0             	movzwl %ax,%eax
   c:	e8 fc ff ff ff       	call   d <pci_resume+0xd>
  11:	a1 00 00 00 00       	mov    0x0,%eax
  16:	85 c0                	test   %eax,%eax
  18:	78 08                	js     22 <pci_resume+0x22>
  1a:	0f b7 c0             	movzwl %ax,%eax
  1d:	e8 fc ff ff ff       	call   1e <pci_resume+0x1e>
  22:	a1 00 00 00 00       	mov    0x0,%eax
  27:	85 c0                	test   %eax,%eax
  29:	78 08                	js     33 <pci_resume+0x33>
  2b:	0f b7 c0             	movzwl %ax,%eax
  2e:	e8 fc ff ff ff       	call   2f <pci_resume+0x2f>
  33:	a1 00 00 00 00       	mov    0x0,%eax
  38:	85 c0                	test   %eax,%eax
  3a:	78 08                	js     44 <pci_resume+0x44>
  3c:	0f b7 c0             	movzwl %ax,%eax
  3f:	e9 fc ff ff ff       	jmp    40 <pci_resume+0x40>
  44:	c3                   	ret    

Disassembly of section .text.pci_setup:

00000000 <pci_setup>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 60             	sub    $0x60,%esp
   7:	68 30 03 00 00       	push   $0x330
   c:	e8 fc ff ff ff       	call   d <pci_setup+0xd>
  11:	68 3b 03 00 00       	push   $0x33b
  16:	e8 fc ff ff ff       	call   17 <pci_setup+0x17>
  1b:	e8 fc ff ff ff       	call   1c <pci_setup+0x1c>
  20:	89 44 24 34          	mov    %eax,0x34(%esp)
  24:	5b                   	pop    %ebx
  25:	5e                   	pop    %esi
  26:	85 c0                	test   %eax,%eax
  28:	0f 85 e2 0a 00 00    	jne    b10 <pci_setup+0xb10>
  2e:	31 d2                	xor    %edx,%edx
  30:	31 c9                	xor    %ecx,%ecx
  32:	b8 5a 03 00 00       	mov    $0x35a,%eax
  37:	e8 fc ff ff ff       	call   38 <pci_setup+0x38>
  3c:	89 c3                	mov    %eax,%ebx
  3e:	c6 44 24 54 00       	movb   $0x0,0x54(%esp)
  43:	8d 54 24 54          	lea    0x54(%esp),%edx
  47:	31 c0                	xor    %eax,%eax
  49:	e8 fc ff ff ff       	call   4a <pci_setup+0x4a>
  4e:	84 db                	test   %bl,%bl
  50:	75 2e                	jne    80 <pci_setup+0x80>
  52:	68 6e 03 00 00       	push   $0x36e
  57:	e8 fc ff ff ff       	call   58 <pci_setup+0x58>
  5c:	e8 fc ff ff ff       	call   5d <pci_setup+0x5d>
  61:	a1 00 00 00 00       	mov    0x0,%eax
  66:	a3 00 00 00 00       	mov    %eax,0x0
  6b:	c7 05 04 00 00 00 00 	movl   $0x0,0x4
  72:	00 00 00 
  75:	a1 00 00 00 00       	mov    0x0,%eax
  7a:	8d 58 fc             	lea    -0x4(%eax),%ebx
  7d:	59                   	pop    %ecx
  7e:	eb 1b                	jmp    9b <pci_setup+0x9b>
  80:	8a 44 24 54          	mov    0x54(%esp),%al
  84:	3c ff                	cmp    $0xff,%al
  86:	74 ca                	je     52 <pci_setup+0x52>
  88:	40                   	inc    %eax
  89:	88 44 24 54          	mov    %al,0x54(%esp)
  8d:	0f b6 c0             	movzbl %al,%eax
  90:	8d 54 24 54          	lea    0x54(%esp),%edx
  94:	e8 fc ff ff ff       	call   95 <pci_setup+0x95>
  99:	eb e5                	jmp    80 <pci_setup+0x80>
  9b:	83 fb fc             	cmp    $0xfffffffc,%ebx
  9e:	74 16                	je     b6 <pci_setup+0xb6>
  a0:	31 c9                	xor    %ecx,%ecx
  a2:	89 da                	mov    %ebx,%edx
  a4:	b8 00 00 00 00       	mov    $0x0,%eax
  a9:	e8 fc ff ff ff       	call   aa <pci_setup+0xaa>
  ae:	8b 5b 04             	mov    0x4(%ebx),%ebx
  b1:	83 eb 04             	sub    $0x4,%ebx
  b4:	eb e5                	jmp    9b <pci_setup+0x9b>
  b6:	68 8a 03 00 00       	push   $0x38a
  bb:	e8 fc ff ff ff       	call   bc <pci_setup+0xbc>
  c0:	a1 00 00 00 00       	mov    0x0,%eax
  c5:	40                   	inc    %eax
  c6:	6b c0 28             	imul   $0x28,%eax,%eax
  c9:	e8 fc ff ff ff       	call   ca <pci_setup+0xca>
  ce:	89 44 24 0c          	mov    %eax,0xc(%esp)
  d2:	5a                   	pop    %edx
  d3:	85 c0                	test   %eax,%eax
  d5:	75 16                	jne    ed <pci_setup+0xed>
  d7:	ba 00 00 00 00       	mov    $0x0,%edx
  dc:	b8 92 04 00 00       	mov    $0x492,%eax
  e1:	83 c4 60             	add    $0x60,%esp
  e4:	5b                   	pop    %ebx
  e5:	5e                   	pop    %esi
  e6:	5f                   	pop    %edi
  e7:	5d                   	pop    %ebp
  e8:	e9 fc ff ff ff       	jmp    e9 <pci_setup+0xe9>
  ed:	a1 00 00 00 00       	mov    0x0,%eax
  f2:	8d 48 01             	lea    0x1(%eax),%ecx
  f5:	6b c9 28             	imul   $0x28,%ecx,%ecx
  f8:	31 d2                	xor    %edx,%edx
  fa:	8b 44 24 08          	mov    0x8(%esp),%eax
  fe:	e8 fc ff ff ff       	call   ff <pci_setup+0xff>
 103:	68 ae 03 00 00       	push   $0x3ae
 108:	e8 fc ff ff ff       	call   109 <pci_setup+0x109>
 10d:	a1 00 00 00 00       	mov    0x0,%eax
 112:	8d 70 fc             	lea    -0x4(%eax),%esi
 115:	58                   	pop    %eax
 116:	83 fe fc             	cmp    $0xfffffffc,%esi
 119:	0f 84 3b 02 00 00    	je     35a <pci_setup+0x35a>
 11f:	66 81 7e 14 04 06    	cmpw   $0x604,0x14(%esi)
 125:	75 0f                	jne    136 <pci_setup+0x136>
 127:	0f b6 46 19          	movzbl 0x19(%esi),%eax
 12b:	6b c0 28             	imul   $0x28,%eax,%eax
 12e:	8b 7c 24 08          	mov    0x8(%esp),%edi
 132:	89 74 07 24          	mov    %esi,0x24(%edi,%eax,1)
 136:	0f b6 46 01          	movzbl 0x1(%esi),%eax
 13a:	6b c0 28             	imul   $0x28,%eax,%eax
 13d:	03 44 24 08          	add    0x8(%esp),%eax
 141:	89 44 24 30          	mov    %eax,0x30(%esp)
 145:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
 149:	75 08                	jne    153 <pci_setup+0x153>
 14b:	8b 44 24 08          	mov    0x8(%esp),%eax
 14f:	89 44 24 30          	mov    %eax,0x30(%esp)
 153:	31 ff                	xor    %edi,%edi
 155:	66 81 7e 14 04 06    	cmpw   $0x604,0x14(%esi)
 15b:	75 0c                	jne    169 <pci_setup+0x169>
 15d:	8d 47 fe             	lea    -0x2(%edi),%eax
 160:	83 f8 03             	cmp    $0x3,%eax
 163:	0f 86 dc 01 00 00    	jbe    345 <pci_setup+0x345>
 169:	83 ff 06             	cmp    $0x6,%edi
 16c:	74 09                	je     177 <pci_setup+0x177>
 16e:	8d 1c bd 10 00 00 00 	lea    0x10(,%edi,4),%ebx
 175:	eb 14                	jmp    18b <pci_setup+0x18b>
 177:	8a 46 18             	mov    0x18(%esi),%al
 17a:	83 e0 7f             	and    $0x7f,%eax
 17d:	31 db                	xor    %ebx,%ebx
 17f:	fe c8                	dec    %al
 181:	0f 94 c3             	sete   %bl
 184:	8d 1c dd 30 00 00 00 	lea    0x30(,%ebx,8),%ebx
 18b:	0f b7 06             	movzwl (%esi),%eax
 18e:	89 c5                	mov    %eax,%ebp
 190:	89 da                	mov    %ebx,%edx
 192:	e8 fc ff ff ff       	call   193 <pci_setup+0x193>
 197:	89 44 24 24          	mov    %eax,0x24(%esp)
 19b:	83 ff 06             	cmp    $0x6,%edi
 19e:	75 28                	jne    1c8 <pci_setup+0x1c8>
 1a0:	b9 00 f8 ff ff       	mov    $0xfffff800,%ecx
 1a5:	89 da                	mov    %ebx,%edx
 1a7:	89 e8                	mov    %ebp,%eax
 1a9:	e8 fc ff ff ff       	call   1aa <pci_setup+0x1aa>
 1ae:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
 1b5:	00 
 1b6:	c7 44 24 28 00 f8 ff 	movl   $0xfffff800,0x28(%esp)
 1bd:	ff 
 1be:	c7 44 24 1c 01 00 00 	movl   $0x1,0x1c(%esp)
 1c5:	00 
 1c6:	eb 5e                	jmp    226 <pci_setup+0x226>
 1c8:	f6 44 24 24 01       	testb  $0x1,0x24(%esp)
 1cd:	75 33                	jne    202 <pci_setup+0x202>
 1cf:	8b 44 24 24          	mov    0x24(%esp),%eax
 1d3:	83 e0 08             	and    $0x8,%eax
 1d6:	83 f8 01             	cmp    $0x1,%eax
 1d9:	19 c0                	sbb    %eax,%eax
 1db:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 1df:	83 44 24 1c 02       	addl   $0x2,0x1c(%esp)
 1e4:	8b 44 24 24          	mov    0x24(%esp),%eax
 1e8:	83 e0 06             	and    $0x6,%eax
 1eb:	83 f8 04             	cmp    $0x4,%eax
 1ee:	0f 94 c0             	sete   %al
 1f1:	0f b6 c0             	movzbl %al,%eax
 1f4:	89 44 24 14          	mov    %eax,0x14(%esp)
 1f8:	c7 44 24 28 f0 ff ff 	movl   $0xfffffff0,0x28(%esp)
 1ff:	ff 
 200:	eb 18                	jmp    21a <pci_setup+0x21a>
 202:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%esp)
 209:	00 
 20a:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
 211:	00 
 212:	c7 44 24 28 fc ff ff 	movl   $0xfffffffc,0x28(%esp)
 219:	ff 
 21a:	83 c9 ff             	or     $0xffffffff,%ecx
 21d:	89 da                	mov    %ebx,%edx
 21f:	89 e8                	mov    %ebp,%eax
 221:	e8 fc ff ff ff       	call   222 <pci_setup+0x222>
 226:	89 da                	mov    %ebx,%edx
 228:	89 e8                	mov    %ebp,%eax
 22a:	e8 fc ff ff ff       	call   22b <pci_setup+0x22b>
 22f:	89 44 24 34          	mov    %eax,0x34(%esp)
 233:	89 44 24 40          	mov    %eax,0x40(%esp)
 237:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%esp)
 23e:	00 
 23f:	8b 4c 24 24          	mov    0x24(%esp),%ecx
 243:	89 da                	mov    %ebx,%edx
 245:	89 e8                	mov    %ebp,%eax
 247:	e8 fc ff ff ff       	call   248 <pci_setup+0x248>
 24c:	83 7c 24 14 00       	cmpl   $0x0,0x14(%esp)
 251:	74 6f                	je     2c2 <pci_setup+0x2c2>
 253:	8d 53 04             	lea    0x4(%ebx),%edx
 256:	89 54 24 0c          	mov    %edx,0xc(%esp)
 25a:	89 e8                	mov    %ebp,%eax
 25c:	e8 fc ff ff ff       	call   25d <pci_setup+0x25d>
 261:	89 c3                	mov    %eax,%ebx
 263:	83 c9 ff             	or     $0xffffffff,%ecx
 266:	8b 54 24 0c          	mov    0xc(%esp),%edx
 26a:	89 e8                	mov    %ebp,%eax
 26c:	e8 fc ff ff ff       	call   26d <pci_setup+0x26d>
 271:	8b 54 24 0c          	mov    0xc(%esp),%edx
 275:	89 54 24 24          	mov    %edx,0x24(%esp)
 279:	89 e8                	mov    %ebp,%eax
 27b:	e8 fc ff ff ff       	call   27c <pci_setup+0x27c>
 280:	89 44 24 0c          	mov    %eax,0xc(%esp)
 284:	89 d9                	mov    %ebx,%ecx
 286:	8b 54 24 24          	mov    0x24(%esp),%edx
 28a:	89 e8                	mov    %ebp,%eax
 28c:	e8 fc ff ff ff       	call   28d <pci_setup+0x28d>
 291:	8b 44 24 34          	mov    0x34(%esp),%eax
 295:	23 44 24 28          	and    0x28(%esp),%eax
 299:	89 44 24 38          	mov    %eax,0x38(%esp)
 29d:	8b 44 24 0c          	mov    0xc(%esp),%eax
 2a1:	0b 44 24 44          	or     0x44(%esp),%eax
 2a5:	89 44 24 3c          	mov    %eax,0x3c(%esp)
 2a9:	8b 44 24 38          	mov    0x38(%esp),%eax
 2ad:	8b 54 24 3c          	mov    0x3c(%esp),%edx
 2b1:	f7 d8                	neg    %eax
 2b3:	83 d2 00             	adc    $0x0,%edx
 2b6:	f7 da                	neg    %edx
 2b8:	89 44 24 0c          	mov    %eax,0xc(%esp)
 2bc:	89 54 24 10          	mov    %edx,0x10(%esp)
 2c0:	eb 16                	jmp    2d8 <pci_setup+0x2d8>
 2c2:	8b 44 24 34          	mov    0x34(%esp),%eax
 2c6:	23 44 24 28          	and    0x28(%esp),%eax
 2ca:	f7 d8                	neg    %eax
 2cc:	89 44 24 0c          	mov    %eax,0xc(%esp)
 2d0:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
 2d7:	00 
 2d8:	8b 44 24 10          	mov    0x10(%esp),%eax
 2dc:	0b 44 24 0c          	or     0xc(%esp),%eax
 2e0:	74 63                	je     345 <pci_setup+0x345>
 2e2:	b8 ff 0f 00 00       	mov    $0xfff,%eax
 2e7:	3b 44 24 0c          	cmp    0xc(%esp),%eax
 2eb:	b8 00 00 00 00       	mov    $0x0,%eax
 2f0:	1b 44 24 10          	sbb    0x10(%esp),%eax
 2f4:	72 17                	jb     30d <pci_setup+0x30d>
 2f6:	83 7c 24 1c 00       	cmpl   $0x0,0x1c(%esp)
 2fb:	74 10                	je     30d <pci_setup+0x30d>
 2fd:	c7 44 24 0c 00 10 00 	movl   $0x1000,0xc(%esp)
 304:	00 
 305:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
 30c:	00 
 30d:	ff 74 24 14          	push   0x14(%esp)
 311:	ff 74 24 20          	push   0x20(%esp)
 315:	ff 74 24 18          	push   0x18(%esp)
 319:	ff 74 24 18          	push   0x18(%esp)
 31d:	ff 74 24 20          	push   0x20(%esp)
 321:	ff 74 24 20          	push   0x20(%esp)
 325:	89 f9                	mov    %edi,%ecx
 327:	89 f2                	mov    %esi,%edx
 329:	8b 44 24 48          	mov    0x48(%esp),%eax
 32d:	e8 fc ff ff ff       	call   32e <pci_setup+0x32e>
 332:	83 c4 18             	add    $0x18,%esp
 335:	85 c0                	test   %eax,%eax
 337:	0f 84 d3 07 00 00    	je     b10 <pci_setup+0xb10>
 33d:	83 7c 24 14 01       	cmpl   $0x1,0x14(%esp)
 342:	83 df ff             	sbb    $0xffffffff,%edi
 345:	47                   	inc    %edi
 346:	83 ff 06             	cmp    $0x6,%edi
 349:	0f 8e 06 fe ff ff    	jle    155 <pci_setup+0x155>
 34f:	8b 46 04             	mov    0x4(%esi),%eax
 352:	8d 70 fc             	lea    -0x4(%eax),%esi
 355:	e9 bc fd ff ff       	jmp    116 <pci_setup+0x116>
 35a:	a1 00 00 00 00       	mov    0x0,%eax
 35f:	89 44 24 24          	mov    %eax,0x24(%esp)
 363:	6b c0 28             	imul   $0x28,%eax,%eax
 366:	8b 7c 24 08          	mov    0x8(%esp),%edi
 36a:	01 c7                	add    %eax,%edi
 36c:	83 7c 24 24 00       	cmpl   $0x0,0x24(%esp)
 371:	0f 8e 97 03 00 00    	jle    70e <pci_setup+0x70e>
 377:	8b 47 24             	mov    0x24(%edi),%eax
 37a:	85 c0                	test   %eax,%eax
 37c:	75 09                	jne    387 <pci_setup+0x387>
 37e:	ff 4c 24 24          	decl   0x24(%esp)
 382:	83 ef 28             	sub    $0x28,%edi
 385:	eb e5                	jmp    36c <pci_setup+0x36c>
 387:	0f b7 30             	movzwl (%eax),%esi
 38a:	89 f0                	mov    %esi,%eax
 38c:	89 74 24 14          	mov    %esi,0x14(%esp)
 390:	66 c1 e8 08          	shr    $0x8,%ax
 394:	0f b7 c0             	movzwl %ax,%eax
 397:	6b c0 28             	imul   $0x28,%eax,%eax
 39a:	03 44 24 08          	add    0x8(%esp),%eax
 39e:	89 44 24 28          	mov    %eax,0x28(%esp)
 3a2:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
 3a6:	75 08                	jne    3b0 <pci_setup+0x3b0>
 3a8:	8b 44 24 08          	mov    0x8(%esp),%eax
 3ac:	89 44 24 28          	mov    %eax,0x28(%esp)
 3b0:	31 c9                	xor    %ecx,%ecx
 3b2:	ba 10 00 00 00       	mov    $0x10,%edx
 3b7:	8b 44 24 14          	mov    0x14(%esp),%eax
 3bb:	e8 fc ff ff ff       	call   3bc <pci_setup+0x3bc>
 3c0:	88 44 24 30          	mov    %al,0x30(%esp)
 3c4:	8b 44 24 14          	mov    0x14(%esp),%eax
 3c8:	e8 fc ff ff ff       	call   3c9 <pci_setup+0x3c9>
 3cd:	88 44 24 38          	mov    %al,0x38(%esp)
 3d1:	8b 47 24             	mov    0x24(%edi),%eax
 3d4:	80 7c 24 30 00       	cmpb   $0x0,0x30(%esp)
 3d9:	0f b7 00             	movzwl (%eax),%eax
 3dc:	74 24                	je     402 <pci_setup+0x402>
 3de:	0f b6 54 24 30       	movzbl 0x30(%esp),%edx
 3e3:	83 c2 02             	add    $0x2,%edx
 3e6:	e8 fc ff ff ff       	call   3e7 <pci_setup+0x3e7>
 3eb:	0f b7 d0             	movzwl %ax,%edx
 3ee:	c1 fa 04             	sar    $0x4,%edx
 3f1:	83 e2 0d             	and    $0xd,%edx
 3f4:	80 fa 04             	cmp    $0x4,%dl
 3f7:	0f 94 c2             	sete   %dl
 3fa:	66 c1 e8 08          	shr    $0x8,%ax
 3fe:	21 d0                	and    %edx,%eax
 400:	eb 11                	jmp    413 <pci_setup+0x413>
 402:	31 c9                	xor    %ecx,%ecx
 404:	ba 0c 00 00 00       	mov    $0xc,%edx
 409:	e8 fc ff ff ff       	call   40a <pci_setup+0x40a>
 40e:	84 c0                	test   %al,%al
 410:	0f 95 c0             	setne  %al
 413:	0f b6 c0             	movzbl %al,%eax
 416:	89 44 24 40          	mov    %eax,0x40(%esp)
 41a:	31 f6                	xor    %esi,%esi
 41c:	bd 00 10 00 00       	mov    $0x1000,%ebp
 421:	c7 44 24 34 00 00 00 	movl   $0x0,0x34(%esp)
 428:	00 
 429:	0f b6 44 24 38       	movzbl 0x38(%esp),%eax
 42e:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 432:	8b 5f 24             	mov    0x24(%edi),%ebx
 435:	85 f6                	test   %esi,%esi
 437:	74 0c                	je     445 <pci_setup+0x445>
 439:	ba 24 00 00 00       	mov    $0x24,%edx
 43e:	83 fe 02             	cmp    $0x2,%esi
 441:	74 07                	je     44a <pci_setup+0x44a>
 443:	eb 2a                	jmp    46f <pci_setup+0x46f>
 445:	ba 1c 00 00 00       	mov    $0x1c,%edx
 44a:	0f b7 03             	movzwl (%ebx),%eax
 44d:	b9 ff 00 00 00       	mov    $0xff,%ecx
 452:	89 54 24 0c          	mov    %edx,0xc(%esp)
 456:	e8 fc ff ff ff       	call   457 <pci_setup+0x457>
 45b:	0f b7 03             	movzwl (%ebx),%eax
 45e:	8b 54 24 0c          	mov    0xc(%esp),%edx
 462:	e8 fc ff ff ff       	call   463 <pci_setup+0x463>
 467:	84 c0                	test   %al,%al
 469:	0f 84 83 02 00 00    	je     6f2 <pci_setup+0x6f2>
 46f:	80 7c 24 38 00       	cmpb   $0x0,0x38(%esp)
 474:	0f 84 ba 00 00 00    	je     534 <pci_setup+0x534>
 47a:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 47e:	83 fe 01             	cmp    $0x1,%esi
 481:	74 34                	je     4b7 <pci_setup+0x4b7>
 483:	83 fe 02             	cmp    $0x2,%esi
 486:	74 45                	je     4cd <pci_setup+0x4cd>
 488:	8d 50 08             	lea    0x8(%eax),%edx
 48b:	8b 44 24 14          	mov    0x14(%esp),%eax
 48f:	e8 fc ff ff ff       	call   490 <pci_setup+0x490>
 494:	89 c3                	mov    %eax,%ebx
 496:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 49a:	8d 50 0c             	lea    0xc(%eax),%edx
 49d:	8b 44 24 14          	mov    0x14(%esp),%eax
 4a1:	e8 fc ff ff ff       	call   4a2 <pci_setup+0x4a2>
 4a6:	89 1c 24             	mov    %ebx,(%esp)
 4a9:	89 44 24 04          	mov    %eax,0x4(%esp)
 4ad:	40                   	inc    %eax
 4ae:	0f 85 8f 00 00 00    	jne    543 <pci_setup+0x543>
 4b4:	43                   	inc    %ebx
 4b5:	eb 6e                	jmp    525 <pci_setup+0x525>
 4b7:	8d 50 10             	lea    0x10(%eax),%edx
 4ba:	8b 44 24 14          	mov    0x14(%esp),%eax
 4be:	e8 fc ff ff ff       	call   4bf <pci_setup+0x4bf>
 4c3:	83 f8 ff             	cmp    $0xffffffff,%eax
 4c6:	74 6c                	je     534 <pci_setup+0x534>
 4c8:	89 04 24             	mov    %eax,(%esp)
 4cb:	eb 6e                	jmp    53b <pci_setup+0x53b>
 4cd:	8d 50 14             	lea    0x14(%eax),%edx
 4d0:	8b 44 24 14          	mov    0x14(%esp),%eax
 4d4:	e8 fc ff ff ff       	call   4d5 <pci_setup+0x4d5>
 4d9:	89 c3                	mov    %eax,%ebx
 4db:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 4df:	8d 50 18             	lea    0x18(%eax),%edx
 4e2:	8b 44 24 14          	mov    0x14(%esp),%eax
 4e6:	e8 fc ff ff ff       	call   4e7 <pci_setup+0x4e7>
 4eb:	89 44 24 0c          	mov    %eax,0xc(%esp)
 4ef:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 4f3:	8d 50 1c             	lea    0x1c(%eax),%edx
 4f6:	8b 44 24 14          	mov    0x14(%esp),%eax
 4fa:	e8 fc ff ff ff       	call   4fb <pci_setup+0x4fb>
 4ff:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
 503:	89 0c 24             	mov    %ecx,(%esp)
 506:	89 44 24 04          	mov    %eax,0x4(%esp)
 50a:	83 fb ff             	cmp    $0xffffffff,%ebx
 50d:	74 0b                	je     51a <pci_setup+0x51a>
 50f:	40                   	inc    %eax
 510:	75 17                	jne    529 <pci_setup+0x529>
 512:	41                   	inc    %ecx
 513:	75 14                	jne    529 <pci_setup+0x529>
 515:	89 1c 24             	mov    %ebx,(%esp)
 518:	eb 21                	jmp    53b <pci_setup+0x53b>
 51a:	83 7c 24 04 ff       	cmpl   $0xffffffff,0x4(%esp)
 51f:	75 22                	jne    543 <pci_setup+0x543>
 521:	83 3c 24 ff          	cmpl   $0xffffffff,(%esp)
 525:	75 1c                	jne    543 <pci_setup+0x543>
 527:	eb 0b                	jmp    534 <pci_setup+0x534>
 529:	68 c2 03 00 00       	push   $0x3c2
 52e:	e8 fc ff ff ff       	call   52f <pci_setup+0x52f>
 533:	58                   	pop    %eax
 534:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 53b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 542:	00 
 543:	6b c6 0c             	imul   $0xc,%esi,%eax
 546:	8b 4c 07 08          	mov    0x8(%edi,%eax,1),%ecx
 54a:	89 c8                	mov    %ecx,%eax
 54c:	e8 fc ff ff ff       	call   54d <pci_setup+0x54d>
 551:	89 44 24 0c          	mov    %eax,0xc(%esp)
 555:	89 54 24 10          	mov    %edx,0x10(%esp)
 559:	39 6c 24 0c          	cmp    %ebp,0xc(%esp)
 55d:	8b 44 24 10          	mov    0x10(%esp),%eax
 561:	1b 44 24 34          	sbb    0x34(%esp),%eax
 565:	73 0c                	jae    573 <pci_setup+0x573>
 567:	89 6c 24 0c          	mov    %ebp,0xc(%esp)
 56b:	8b 44 24 34          	mov    0x34(%esp),%eax
 56f:	89 44 24 10          	mov    %eax,0x10(%esp)
 573:	89 c8                	mov    %ecx,%eax
 575:	e8 fc ff ff ff       	call   576 <pci_setup+0x576>
 57a:	89 d1                	mov    %edx,%ecx
 57c:	09 c1                	or     %eax,%ecx
 57e:	75 20                	jne    5a0 <pci_setup+0x5a0>
 580:	85 f6                	test   %esi,%esi
 582:	0f 94 c3             	sete   %bl
 585:	80 7c 24 30 00       	cmpb   $0x0,0x30(%esp)
 58a:	0f 95 c1             	setne  %cl
 58d:	84 cb                	test   %cl,%bl
 58f:	75 0f                	jne    5a0 <pci_setup+0x5a0>
 591:	83 7c 24 40 00       	cmpl   $0x0,0x40(%esp)
 596:	74 08                	je     5a0 <pci_setup+0x5a0>
 598:	8b 44 24 0c          	mov    0xc(%esp),%eax
 59c:	8b 54 24 10          	mov    0x10(%esp),%edx
 5a0:	3b 04 24             	cmp    (%esp),%eax
 5a3:	89 d1                	mov    %edx,%ecx
 5a5:	1b 4c 24 04          	sbb    0x4(%esp),%ecx
 5a9:	73 53                	jae    5fe <pci_setup+0x5fe>
 5ab:	ff 34 b5 00 00 00 00 	push   0x0(,%esi,4)
 5b2:	ff 74 24 08          	push   0x8(%esp)
 5b6:	ff 74 24 08          	push   0x8(%esp)
 5ba:	68 f8 03 00 00       	push   $0x3f8
 5bf:	e8 fc ff ff ff       	call   5c0 <pci_setup+0x5c0>
 5c4:	83 c4 10             	add    $0x10,%esp
 5c7:	85 f6                	test   %esi,%esi
 5c9:	74 63                	je     62e <pci_setup+0x62e>
 5cb:	8b 04 24             	mov    (%esp),%eax
 5ce:	8b 54 24 04          	mov    0x4(%esp),%edx
 5d2:	83 c0 ff             	add    $0xffffffff,%eax
 5d5:	83 d2 ff             	adc    $0xffffffff,%edx
 5d8:	03 44 24 0c          	add    0xc(%esp),%eax
 5dc:	13 54 24 10          	adc    0x10(%esp),%edx
 5e0:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
 5e4:	8b 5c 24 10          	mov    0x10(%esp),%ebx
 5e8:	f7 d9                	neg    %ecx
 5ea:	83 d3 00             	adc    $0x0,%ebx
 5ed:	f7 db                	neg    %ebx
 5ef:	89 cd                	mov    %ecx,%ebp
 5f1:	21 c5                	and    %eax,%ebp
 5f3:	89 2c 24             	mov    %ebp,(%esp)
 5f6:	21 d3                	and    %edx,%ebx
 5f8:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 5fc:	eb 30                	jmp    62e <pci_setup+0x62e>
 5fe:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
 602:	8b 5c 24 10          	mov    0x10(%esp),%ebx
 606:	83 c1 ff             	add    $0xffffffff,%ecx
 609:	83 d3 ff             	adc    $0xffffffff,%ebx
 60c:	01 c8                	add    %ecx,%eax
 60e:	11 da                	adc    %ebx,%edx
 610:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
 614:	8b 5c 24 10          	mov    0x10(%esp),%ebx
 618:	f7 d9                	neg    %ecx
 61a:	83 d3 00             	adc    $0x0,%ebx
 61d:	f7 db                	neg    %ebx
 61f:	89 c5                	mov    %eax,%ebp
 621:	21 cd                	and    %ecx,%ebp
 623:	89 2c 24             	mov    %ebp,(%esp)
 626:	89 d0                	mov    %edx,%eax
 628:	21 d8                	and    %ebx,%eax
 62a:	89 44 24 04          	mov    %eax,0x4(%esp)
 62e:	8b 5f 24             	mov    0x24(%edi),%ebx
 631:	83 fe 02             	cmp    $0x2,%esi
 634:	74 04                	je     63a <pci_setup+0x63a>
 636:	31 c0                	xor    %eax,%eax
 638:	eb 66                	jmp    6a0 <pci_setup+0x6a0>
 63a:	0f b7 03             	movzwl (%ebx),%eax
 63d:	ba 24 00 00 00       	mov    $0x24,%edx
 642:	e8 fc ff ff ff       	call   643 <pci_setup+0x643>
 647:	89 c5                	mov    %eax,%ebp
 649:	85 c0                	test   %eax,%eax
 64b:	75 30                	jne    67d <pci_setup+0x67d>
 64d:	0f b7 03             	movzwl (%ebx),%eax
 650:	b9 f0 ff f0 ff       	mov    $0xfff0fff0,%ecx
 655:	ba 24 00 00 00       	mov    $0x24,%edx
 65a:	e8 fc ff ff ff       	call   65b <pci_setup+0x65b>
 65f:	0f b7 03             	movzwl (%ebx),%eax
 662:	ba 24 00 00 00       	mov    $0x24,%edx
 667:	e8 fc ff ff ff       	call   668 <pci_setup+0x668>
 66c:	89 c5                	mov    %eax,%ebp
 66e:	0f b7 03             	movzwl (%ebx),%eax
 671:	31 c9                	xor    %ecx,%ecx
 673:	ba 24 00 00 00       	mov    $0x24,%edx
 678:	e8 fc ff ff ff       	call   679 <pci_setup+0x679>
 67d:	89 eb                	mov    %ebp,%ebx
 67f:	83 e3 0f             	and    $0xf,%ebx
 682:	4b                   	dec    %ebx
 683:	75 b1                	jne    636 <pci_setup+0x636>
 685:	8b 47 20             	mov    0x20(%edi),%eax
 688:	83 e8 20             	sub    $0x20,%eax
 68b:	83 f8 e0             	cmp    $0xffffffe0,%eax
 68e:	74 0b                	je     69b <pci_setup+0x69b>
 690:	83 78 18 00          	cmpl   $0x0,0x18(%eax)
 694:	74 a0                	je     636 <pci_setup+0x636>
 696:	8b 40 20             	mov    0x20(%eax),%eax
 699:	eb ed                	jmp    688 <pci_setup+0x688>
 69b:	b8 01 00 00 00       	mov    $0x1,%eax
 6a0:	8b 57 24             	mov    0x24(%edi),%edx
 6a3:	50                   	push   %eax
 6a4:	56                   	push   %esi
 6a5:	ff 74 24 18          	push   0x18(%esp)
 6a9:	ff 74 24 18          	push   0x18(%esp)
 6ad:	ff 74 24 14          	push   0x14(%esp)
 6b1:	ff 74 24 14          	push   0x14(%esp)
 6b5:	83 c9 ff             	or     $0xffffffff,%ecx
 6b8:	8b 44 24 40          	mov    0x40(%esp),%eax
 6bc:	e8 fc ff ff ff       	call   6bd <pci_setup+0x6bd>
 6c1:	83 c4 18             	add    $0x18,%esp
 6c4:	85 c0                	test   %eax,%eax
 6c6:	0f 84 44 04 00 00    	je     b10 <pci_setup+0xb10>
 6cc:	8b 50 1c             	mov    0x1c(%eax),%edx
 6cf:	ff 34 95 00 00 00 00 	push   0x0(,%edx,4)
 6d6:	ff 74 24 08          	push   0x8(%esp)
 6da:	ff 74 24 08          	push   0x8(%esp)
 6de:	8b 00                	mov    (%eax),%eax
 6e0:	0f b6 40 19          	movzbl 0x19(%eax),%eax
 6e4:	50                   	push   %eax
 6e5:	68 2d 04 00 00       	push   $0x42d
 6ea:	e8 fc ff ff ff       	call   6eb <pci_setup+0x6eb>
 6ef:	83 c4 14             	add    $0x14,%esp
 6f2:	46                   	inc    %esi
 6f3:	bd 00 00 20 00       	mov    $0x200000,%ebp
 6f8:	c7 44 24 34 00 00 00 	movl   $0x0,0x34(%esp)
 6ff:	00 
 700:	83 fe 03             	cmp    $0x3,%esi
 703:	0f 85 29 fd ff ff    	jne    432 <pci_setup+0x432>
 709:	e9 70 fc ff ff       	jmp    37e <pci_setup+0x37e>
 70e:	68 a5 05 00 00       	push   $0x5a5
 713:	e8 fc ff ff ff       	call   714 <pci_setup+0x714>
 718:	8b 44 24 0c          	mov    0xc(%esp),%eax
 71c:	8b 40 08             	mov    0x8(%eax),%eax
 71f:	e8 fc ff ff ff       	call   720 <pci_setup+0x720>
 724:	59                   	pop    %ecx
 725:	b9 ff 3f 00 00       	mov    $0x3fff,%ecx
 72a:	39 c1                	cmp    %eax,%ecx
 72c:	b9 00 00 00 00       	mov    $0x0,%ecx
 731:	19 d1                	sbb    %edx,%ecx
 733:	73 24                	jae    759 <pci_setup+0x759>
 735:	8b 0d 00 00 00 00    	mov    0x0,%ecx
 73b:	8b 1d 04 00 00 00    	mov    0x4,%ebx
 741:	81 c1 00 f0 ff ff    	add    $0xfffff000,%ecx
 747:	83 d3 ff             	adc    $0xffffffff,%ebx
 74a:	39 c8                	cmp    %ecx,%eax
 74c:	89 d7                	mov    %edx,%edi
 74e:	19 df                	sbb    %ebx,%edi
 750:	b9 00 10 00 00       	mov    $0x1000,%ecx
 755:	72 07                	jb     75e <pci_setup+0x75e>
 757:	eb 64                	jmp    7bd <pci_setup+0x7bd>
 759:	b9 00 c0 00 00       	mov    $0xc000,%ecx
 75e:	31 db                	xor    %ebx,%ebx
 760:	8b 7c 24 08          	mov    0x8(%esp),%edi
 764:	89 0f                	mov    %ecx,(%edi)
 766:	89 5f 04             	mov    %ebx,0x4(%edi)
 769:	89 ce                	mov    %ecx,%esi
 76b:	89 df                	mov    %ebx,%edi
 76d:	83 c6 ff             	add    $0xffffffff,%esi
 770:	83 d7 ff             	adc    $0xffffffff,%edi
 773:	01 c6                	add    %eax,%esi
 775:	11 d7                	adc    %edx,%edi
 777:	57                   	push   %edi
 778:	56                   	push   %esi
 779:	53                   	push   %ebx
 77a:	51                   	push   %ecx
 77b:	68 58 04 00 00       	push   $0x458
 780:	e8 fc ff ff ff       	call   781 <pci_setup+0x781>
 785:	ff 35 04 00 00 00    	push   0x4
 78b:	ff 35 00 00 00 00    	push   0x0
 791:	ff 35 04 00 00 00    	push   0x4
 797:	ff 35 00 00 00 00    	push   0x0
 79d:	68 70 04 00 00       	push   $0x470
 7a2:	e8 fc ff ff ff       	call   7a3 <pci_setup+0x7a3>
 7a7:	83 c4 28             	add    $0x28,%esp
 7aa:	8b 44 24 08          	mov    0x8(%esp),%eax
 7ae:	e8 fc ff ff ff       	call   7af <pci_setup+0x7af>
 7b3:	85 c0                	test   %eax,%eax
 7b5:	0f 84 be 01 00 00    	je     979 <pci_setup+0x979>
 7bb:	eb 07                	jmp    7c4 <pci_setup+0x7c4>
 7bd:	68 8c 04 00 00       	push   $0x48c
 7c2:	eb 42                	jmp    806 <pci_setup+0x806>
 7c4:	c7 44 24 50 00 00 00 	movl   $0x0,0x50(%esp)
 7cb:	00 
 7cc:	c7 44 24 5c 00 00 00 	movl   $0x0,0x5c(%esp)
 7d3:	00 
 7d4:	8b 44 24 08          	mov    0x8(%esp),%eax
 7d8:	8b 40 14             	mov    0x14(%eax),%eax
 7db:	8d 54 24 48          	lea    0x48(%esp),%edx
 7df:	e8 fc ff ff ff       	call   7e0 <pci_setup+0x7e0>
 7e4:	8b 44 24 08          	mov    0x8(%esp),%eax
 7e8:	8b 40 20             	mov    0x20(%eax),%eax
 7eb:	8d 54 24 54          	lea    0x54(%esp),%edx
 7ef:	e8 fc ff ff ff       	call   7f0 <pci_setup+0x7f0>
 7f4:	8b 44 24 08          	mov    0x8(%esp),%eax
 7f8:	e8 fc ff ff ff       	call   7f9 <pci_setup+0x7f9>
 7fd:	85 c0                	test   %eax,%eax
 7ff:	74 0a                	je     80b <pci_setup+0x80b>
 801:	68 ab 04 00 00       	push   $0x4ab
 806:	e8 fc ff ff ff       	call   807 <pci_setup+0x807>
 80b:	8b 74 24 50          	mov    0x50(%esp),%esi
 80f:	89 f0                	mov    %esi,%eax
 811:	e8 fc ff ff ff       	call   812 <pci_setup+0x812>
 816:	89 44 24 14          	mov    %eax,0x14(%esp)
 81a:	89 54 24 18          	mov    %edx,0x18(%esp)
 81e:	8b 5c 24 5c          	mov    0x5c(%esp),%ebx
 822:	89 d8                	mov    %ebx,%eax
 824:	e8 fc ff ff ff       	call   825 <pci_setup+0x825>
 829:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 82d:	89 54 24 20          	mov    %edx,0x20(%esp)
 831:	89 f0                	mov    %esi,%eax
 833:	e8 fc ff ff ff       	call   834 <pci_setup+0x834>
 838:	89 c6                	mov    %eax,%esi
 83a:	89 d7                	mov    %edx,%edi
 83c:	89 d8                	mov    %ebx,%eax
 83e:	e8 fc ff ff ff       	call   83f <pci_setup+0x83f>
 843:	89 04 24             	mov    %eax,(%esp)
 846:	89 54 24 04          	mov    %edx,0x4(%esp)
 84a:	31 d2                	xor    %edx,%edx
 84c:	31 c9                	xor    %ecx,%ecx
 84e:	b8 cc 04 00 00       	mov    $0x4cc,%eax
 853:	e8 fc ff ff ff       	call   854 <pci_setup+0x854>
 858:	89 c3                	mov    %eax,%ebx
 85a:	89 d1                	mov    %edx,%ecx
 85c:	a1 00 00 00 00       	mov    0x0,%eax
 861:	8b 15 04 00 00 00    	mov    0x4,%edx
 867:	42                   	inc    %edx
 868:	39 d8                	cmp    %ebx,%eax
 86a:	89 d5                	mov    %edx,%ebp
 86c:	19 cd                	sbb    %ecx,%ebp
 86e:	73 04                	jae    874 <pci_setup+0x874>
 870:	89 d8                	mov    %ebx,%eax
 872:	89 ca                	mov    %ecx,%edx
 874:	89 f1                	mov    %esi,%ecx
 876:	89 fb                	mov    %edi,%ebx
 878:	83 c1 ff             	add    $0xffffffff,%ecx
 87b:	83 d3 ff             	adc    $0xffffffff,%ebx
 87e:	01 c8                	add    %ecx,%eax
 880:	11 da                	adc    %ebx,%edx
 882:	89 44 24 0c          	mov    %eax,0xc(%esp)
 886:	89 54 24 10          	mov    %edx,0x10(%esp)
 88a:	f7 de                	neg    %esi
 88c:	83 d7 00             	adc    $0x0,%edi
 88f:	f7 df                	neg    %edi
 891:	89 fb                	mov    %edi,%ebx
 893:	8b 7c 24 0c          	mov    0xc(%esp),%edi
 897:	21 f7                	and    %esi,%edi
 899:	89 f8                	mov    %edi,%eax
 89b:	8b 7c 24 10          	mov    0x10(%esp),%edi
 89f:	21 df                	and    %ebx,%edi
 8a1:	89 fa                	mov    %edi,%edx
 8a3:	05 ff ff ff 3f       	add    $0x3fffffff,%eax
 8a8:	83 d2 00             	adc    $0x0,%edx
 8ab:	89 c1                	mov    %eax,%ecx
 8ad:	81 e1 00 00 00 c0    	and    $0xc0000000,%ecx
 8b3:	89 ce                	mov    %ecx,%esi
 8b5:	89 d7                	mov    %edx,%edi
 8b7:	89 4c 24 48          	mov    %ecx,0x48(%esp)
 8bb:	89 54 24 4c          	mov    %edx,0x4c(%esp)
 8bf:	8b 44 24 14          	mov    0x14(%esp),%eax
 8c3:	8b 54 24 18          	mov    0x18(%esp),%edx
 8c7:	03 04 24             	add    (%esp),%eax
 8ca:	13 54 24 04          	adc    0x4(%esp),%edx
 8ce:	83 c0 ff             	add    $0xffffffff,%eax
 8d1:	83 d2 ff             	adc    $0xffffffff,%edx
 8d4:	01 c8                	add    %ecx,%eax
 8d6:	11 fa                	adc    %edi,%edx
 8d8:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8dc:	89 54 24 10          	mov    %edx,0x10(%esp)
 8e0:	8b 0c 24             	mov    (%esp),%ecx
 8e3:	8b 5c 24 04          	mov    0x4(%esp),%ebx
 8e7:	f7 d9                	neg    %ecx
 8e9:	83 d3 00             	adc    $0x0,%ebx
 8ec:	f7 db                	neg    %ebx
 8ee:	8b 6c 24 0c          	mov    0xc(%esp),%ebp
 8f2:	21 cd                	and    %ecx,%ebp
 8f4:	89 e8                	mov    %ebp,%eax
 8f6:	8b 6c 24 10          	mov    0x10(%esp),%ebp
 8fa:	21 dd                	and    %ebx,%ebp
 8fc:	89 ea                	mov    %ebp,%edx
 8fe:	05 ff ff ff 3f       	add    $0x3fffffff,%eax
 903:	83 d2 00             	adc    $0x0,%edx
 906:	89 c5                	mov    %eax,%ebp
 908:	81 e5 00 00 00 c0    	and    $0xc0000000,%ebp
 90e:	89 d3                	mov    %edx,%ebx
 910:	89 6c 24 54          	mov    %ebp,0x54(%esp)
 914:	89 54 24 58          	mov    %edx,0x58(%esp)
 918:	89 35 00 00 00 00    	mov    %esi,0x0
 91e:	89 3d 04 00 00 00    	mov    %edi,0x4
 924:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 928:	8b 54 24 20          	mov    0x20(%esp),%edx
 92c:	05 ff ff ff 3f       	add    $0x3fffffff,%eax
 931:	83 d2 00             	adc    $0x0,%edx
 934:	01 e8                	add    %ebp,%eax
 936:	11 da                	adc    %ebx,%edx
 938:	89 c5                	mov    %eax,%ebp
 93a:	81 e5 00 00 00 c0    	and    $0xc0000000,%ebp
 940:	89 2d 00 00 00 00    	mov    %ebp,0x0
 946:	89 15 04 00 00 00    	mov    %edx,0x4
 94c:	52                   	push   %edx
 94d:	55                   	push   %ebp
 94e:	57                   	push   %edi
 94f:	56                   	push   %esi
 950:	68 e4 04 00 00       	push   $0x4e4
 955:	e8 fc ff ff ff       	call   956 <pci_setup+0x956>
 95a:	8d 54 24 5c          	lea    0x5c(%esp),%edx
 95e:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 962:	e8 fc ff ff ff       	call   963 <pci_setup+0x963>
 967:	8d 54 24 68          	lea    0x68(%esp),%edx
 96b:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 96f:	e8 fc ff ff ff       	call   970 <pci_setup+0x970>
 974:	83 c4 14             	add    $0x14,%esp
 977:	eb 14                	jmp    98d <pci_setup+0x98d>
 979:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
 980:	00 00 00 
 983:	c7 05 04 00 00 00 00 	movl   $0x0,0x4
 98a:	00 00 00 
 98d:	8b 5c 24 08          	mov    0x8(%esp),%ebx
 991:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 995:	3b 05 00 00 00 00    	cmp    0x0,%eax
 99b:	7f 2c                	jg     9c9 <pci_setup+0x9c9>
 99d:	89 da                	mov    %ebx,%edx
 99f:	8b 44 24 08          	mov    0x8(%esp),%eax
 9a3:	e8 fc ff ff ff       	call   9a4 <pci_setup+0x9a4>
 9a8:	8d 53 0c             	lea    0xc(%ebx),%edx
 9ab:	8b 44 24 08          	mov    0x8(%esp),%eax
 9af:	e8 fc ff ff ff       	call   9b0 <pci_setup+0x9b0>
 9b4:	8d 53 18             	lea    0x18(%ebx),%edx
 9b7:	8b 44 24 08          	mov    0x8(%esp),%eax
 9bb:	e8 fc ff ff ff       	call   9bc <pci_setup+0x9bc>
 9c0:	ff 44 24 2c          	incl   0x2c(%esp)
 9c4:	83 c3 28             	add    $0x28,%ebx
 9c7:	eb c8                	jmp    991 <pci_setup+0x991>
 9c9:	a1 00 00 00 00       	mov    0x0,%eax
 9ce:	8d 58 fc             	lea    -0x4(%eax),%ebx
 9d1:	83 fb fc             	cmp    $0xfffffffc,%ebx
 9d4:	0f 84 89 00 00 00    	je     a63 <pci_setup+0xa63>
 9da:	0f b7 43 12          	movzwl 0x12(%ebx),%eax
 9de:	50                   	push   %eax
 9df:	0f b7 43 10          	movzwl 0x10(%ebx),%eax
 9e3:	50                   	push   %eax
 9e4:	53                   	push   %ebx
 9e5:	68 00 05 00 00       	push   $0x500
 9ea:	e8 fc ff ff ff       	call   9eb <pci_setup+0x9eb>
 9ef:	0f b7 33             	movzwl (%ebx),%esi
 9f2:	ba 3d 00 00 00       	mov    $0x3d,%edx
 9f7:	89 f0                	mov    %esi,%eax
 9f9:	e8 fc ff ff ff       	call   9fa <pci_setup+0x9fa>
 9fe:	0f b6 d0             	movzbl %al,%edx
 a01:	83 c4 10             	add    $0x10,%esp
 a04:	85 d2                	test   %edx,%edx
 a06:	74 17                	je     a1f <pci_setup+0xa1f>
 a08:	89 d8                	mov    %ebx,%eax
 a0a:	ff 15 00 00 00 00    	call   *0x0
 a10:	0f b6 c8             	movzbl %al,%ecx
 a13:	ba 3c 00 00 00       	mov    $0x3c,%edx
 a18:	89 f0                	mov    %esi,%eax
 a1a:	e8 fc ff ff ff       	call   a1b <pci_setup+0xa1b>
 a1f:	31 c9                	xor    %ecx,%ecx
 a21:	89 da                	mov    %ebx,%edx
 a23:	b8 00 00 00 00       	mov    $0x0,%eax
 a28:	e8 fc ff ff ff       	call   a29 <pci_setup+0xa29>
 a2d:	68 03 01 00 00       	push   $0x103
 a32:	31 c9                	xor    %ecx,%ecx
 a34:	ba 04 00 00 00       	mov    $0x4,%edx
 a39:	89 f0                	mov    %esi,%eax
 a3b:	e8 fc ff ff ff       	call   a3c <pci_setup+0xa3c>
 a40:	58                   	pop    %eax
 a41:	f6 43 18 01          	testb  $0x1,0x18(%ebx)
 a45:	74 11                	je     a58 <pci_setup+0xa58>
 a47:	6a 02                	push   $0x2
 a49:	31 c9                	xor    %ecx,%ecx
 a4b:	ba 3e 00 00 00       	mov    $0x3e,%edx
 a50:	89 f0                	mov    %esi,%eax
 a52:	e8 fc ff ff ff       	call   a53 <pci_setup+0xa53>
 a57:	5d                   	pop    %ebp
 a58:	8b 5b 04             	mov    0x4(%ebx),%ebx
 a5b:	83 eb 04             	sub    $0x4,%ebx
 a5e:	e9 6e ff ff ff       	jmp    9d1 <pci_setup+0x9d1>
 a63:	8b 44 24 08          	mov    0x8(%esp),%eax
 a67:	e8 fc ff ff ff       	call   a68 <pci_setup+0xa68>
 a6c:	a1 00 00 00 00       	mov    0x0,%eax
 a71:	8d 58 fc             	lea    -0x4(%eax),%ebx
 a74:	83 fb fc             	cmp    $0xfffffffc,%ebx
 a77:	74 22                	je     a9b <pci_setup+0xa9b>
 a79:	89 d8                	mov    %ebx,%eax
 a7b:	e8 fc ff ff ff       	call   a7c <pci_setup+0xa7c>
 a80:	85 c0                	test   %eax,%eax
 a82:	74 0f                	je     a93 <pci_setup+0xa93>
 a84:	53                   	push   %ebx
 a85:	68 20 05 00 00       	push   $0x520
 a8a:	e8 fc ff ff ff       	call   a8b <pci_setup+0xa8b>
 a8f:	5e                   	pop    %esi
 a90:	5f                   	pop    %edi
 a91:	eb 7d                	jmp    b10 <pci_setup+0xb10>
 a93:	8b 5b 04             	mov    0x4(%ebx),%ebx
 a96:	83 eb 04             	sub    $0x4,%ebx
 a99:	eb d9                	jmp    a74 <pci_setup+0xa74>
 a9b:	b8 00 03 00 00       	mov    $0x300,%eax
 aa0:	e8 fc ff ff ff       	call   aa1 <pci_setup+0xaa1>
 aa5:	89 c3                	mov    %eax,%ebx
 aa7:	85 c0                	test   %eax,%eax
 aa9:	75 0d                	jne    ab8 <pci_setup+0xab8>
 aab:	68 40 05 00 00       	push   $0x540
 ab0:	e8 fc ff ff ff       	call   ab1 <pci_setup+0xab1>
 ab5:	5b                   	pop    %ebx
 ab6:	eb 58                	jmp    b10 <pci_setup+0xb10>
 ab8:	50                   	push   %eax
 ab9:	68 5b 05 00 00       	push   $0x55b
 abe:	e8 fc ff ff ff       	call   abf <pci_setup+0xabf>
 ac3:	0f b7 03             	movzwl (%ebx),%eax
 ac6:	6a 03                	push   $0x3
 ac8:	31 c9                	xor    %ecx,%ecx
 aca:	ba 04 00 00 00       	mov    $0x4,%edx
 acf:	e8 fc ff ff ff       	call   ad0 <pci_setup+0xad0>
 ad4:	83 c4 0c             	add    $0xc,%esp
 ad7:	8b 5b 0c             	mov    0xc(%ebx),%ebx
 ada:	85 db                	test   %ebx,%ebx
 adc:	74 32                	je     b10 <pci_setup+0xb10>
 ade:	53                   	push   %ebx
 adf:	68 7e 05 00 00       	push   $0x57e
 ae4:	e8 fc ff ff ff       	call   ae5 <pci_setup+0xae5>
 ae9:	0f b7 03             	movzwl (%ebx),%eax
 aec:	6a 08                	push   $0x8
 aee:	31 c9                	xor    %ecx,%ecx
 af0:	ba 3e 00 00 00       	mov    $0x3e,%edx
 af5:	e8 fc ff ff ff       	call   af6 <pci_setup+0xaf6>
 afa:	0f b7 03             	movzwl (%ebx),%eax
 afd:	6a 03                	push   $0x3
 aff:	31 c9                	xor    %ecx,%ecx
 b01:	ba 04 00 00 00       	mov    $0x4,%edx
 b06:	e8 fc ff ff ff       	call   b07 <pci_setup+0xb07>
 b0b:	83 c4 10             	add    $0x10,%esp
 b0e:	eb c7                	jmp    ad7 <pci_setup+0xad7>
 b10:	83 c4 60             	add    $0x60,%esp
 b13:	5b                   	pop    %ebx
 b14:	5e                   	pop    %esi
 b15:	5f                   	pop    %edi
 b16:	5d                   	pop    %ebp
 b17:	c3                   	ret    
