
./virtio-mmio.o:     file format elf32-i386


Disassembly of section .text.virtio_mmio_setup_one:

00000000 <virtio_mmio_setup_one>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 fa 00             	cmp    $0x0,%edx
   7:	76 09                	jbe    12 <virtio_mmio_setup_one+0x12>
   9:	52                   	push   %edx
   a:	50                   	push   %eax
   b:	68 12 00 00 00       	push   $0x12
  10:	eb 13                	jmp    25 <virtio_mmio_setup_one+0x25>
  12:	89 c3                	mov    %eax,%ebx
  14:	8b 08                	mov    (%eax),%ecx
  16:	81 f9 76 69 72 74    	cmp    $0x74726976,%ecx
  1c:	74 11                	je     2f <virtio_mmio_setup_one+0x2f>
  1e:	52                   	push   %edx
  1f:	50                   	push   %eax
  20:	68 2f 00 00 00       	push   $0x2f
  25:	e8 fc ff ff ff       	call   26 <virtio_mmio_setup_one+0x26>
  2a:	83 c4 0c             	add    $0xc,%esp
  2d:	eb 7c                	jmp    ab <virtio_mmio_setup_one+0xab>
  2f:	8b 78 04             	mov    0x4(%eax),%edi
  32:	8d 4f ff             	lea    -0x1(%edi),%ecx
  35:	83 f9 01             	cmp    $0x1,%ecx
  38:	76 12                	jbe    4c <virtio_mmio_setup_one+0x4c>
  3a:	57                   	push   %edi
  3b:	52                   	push   %edx
  3c:	50                   	push   %eax
  3d:	68 52 00 00 00       	push   $0x52
  42:	e8 fc ff ff ff       	call   43 <virtio_mmio_setup_one+0x43>
  47:	83 c4 10             	add    $0x10,%esp
  4a:	eb 5f                	jmp    ab <virtio_mmio_setup_one+0xab>
  4c:	8b 70 08             	mov    0x8(%eax),%esi
  4f:	b9 00 00 00 00       	mov    $0x0,%ecx
  54:	83 fe 1a             	cmp    $0x1a,%esi
  57:	77 10                	ja     69 <virtio_mmio_setup_one+0x69>
  59:	8b 0c b5 00 00 00 00 	mov    0x0(,%esi,4),%ecx
  60:	85 c9                	test   %ecx,%ecx
  62:	75 05                	jne    69 <virtio_mmio_setup_one+0x69>
  64:	b9 00 00 00 00       	mov    $0x0,%ecx
  69:	bd 08 00 00 00       	mov    $0x8,%ebp
  6e:	4f                   	dec    %edi
  6f:	74 05                	je     76 <virtio_mmio_setup_one+0x76>
  71:	bd 11 00 00 00       	mov    $0x11,%ebp
  76:	55                   	push   %ebp
  77:	51                   	push   %ecx
  78:	56                   	push   %esi
  79:	52                   	push   %edx
  7a:	50                   	push   %eax
  7b:	68 79 00 00 00       	push   $0x79
  80:	e8 fc ff ff ff       	call   81 <virtio_mmio_setup_one+0x81>
  85:	83 c4 18             	add    $0x18,%esp
  88:	83 fe 02             	cmp    $0x2,%esi
  8b:	74 0e                	je     9b <virtio_mmio_setup_one+0x9b>
  8d:	83 fe 08             	cmp    $0x8,%esi
  90:	75 19                	jne    ab <virtio_mmio_setup_one+0xab>
  92:	89 da                	mov    %ebx,%edx
  94:	b8 00 00 00 00       	mov    $0x0,%eax
  99:	eb 07                	jmp    a2 <virtio_mmio_setup_one+0xa2>
  9b:	89 da                	mov    %ebx,%edx
  9d:	b8 00 00 00 00       	mov    $0x0,%eax
  a2:	5b                   	pop    %ebx
  a3:	5e                   	pop    %esi
  a4:	5f                   	pop    %edi
  a5:	5d                   	pop    %ebp
  a6:	e9 fc ff ff ff       	jmp    a7 <virtio_mmio_setup_one+0xa7>
  ab:	5b                   	pop    %ebx
  ac:	5e                   	pop    %esi
  ad:	5f                   	pop    %edi
  ae:	5d                   	pop    %ebp
  af:	c3                   	ret    

Disassembly of section .text.virtio_mmio_setup_acpi:

00000000 <virtio_mmio_setup_acpi>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	83 ec 20             	sub    $0x20,%esp
   6:	ba a1 00 00 00       	mov    $0xa1,%edx
   b:	31 c0                	xor    %eax,%eax
   d:	e8 fc ff ff ff       	call   e <virtio_mmio_setup_acpi+0xe>
  12:	89 c3                	mov    %eax,%ebx
  14:	85 c0                	test   %eax,%eax
  16:	74 6e                	je     86 <virtio_mmio_setup_acpi+0x86>
  18:	8d 4c 24 18          	lea    0x18(%esp),%ecx
  1c:	8d 54 24 08          	lea    0x8(%esp),%edx
  20:	89 d8                	mov    %ebx,%eax
  22:	e8 fc ff ff ff       	call   23 <virtio_mmio_setup_acpi+0x23>
  27:	85 c0                	test   %eax,%eax
  29:	78 52                	js     7d <virtio_mmio_setup_acpi+0x7d>
  2b:	8d 54 24 10          	lea    0x10(%esp),%edx
  2f:	89 d8                	mov    %ebx,%eax
  31:	e8 fc ff ff ff       	call   32 <virtio_mmio_setup_acpi+0x32>
  36:	85 c0                	test   %eax,%eax
  38:	78 43                	js     7d <virtio_mmio_setup_acpi+0x7d>
  3a:	8b 44 24 10          	mov    0x10(%esp),%eax
  3e:	8b 54 24 14          	mov    0x14(%esp),%edx
  42:	89 04 24             	mov    %eax,(%esp)
  45:	89 54 24 04          	mov    %edx,0x4(%esp)
  49:	8b 74 24 08          	mov    0x8(%esp),%esi
  4d:	8b 7c 24 0c          	mov    0xc(%esp),%edi
  51:	89 d8                	mov    %ebx,%eax
  53:	e8 fc ff ff ff       	call   54 <virtio_mmio_setup_acpi+0x54>
  58:	ff 74 24 04          	push   0x4(%esp)
  5c:	ff 74 24 04          	push   0x4(%esp)
  60:	57                   	push   %edi
  61:	56                   	push   %esi
  62:	50                   	push   %eax
  63:	68 aa 00 00 00       	push   $0xaa
  68:	e8 fc ff ff ff       	call   69 <virtio_mmio_setup_acpi+0x69>
  6d:	8b 44 24 20          	mov    0x20(%esp),%eax
  71:	8b 54 24 24          	mov    0x24(%esp),%edx
  75:	e8 fc ff ff ff       	call   76 <virtio_mmio_setup_acpi+0x76>
  7a:	83 c4 18             	add    $0x18,%esp
  7d:	ba a1 00 00 00       	mov    $0xa1,%edx
  82:	89 d8                	mov    %ebx,%eax
  84:	eb 87                	jmp    d <virtio_mmio_setup_acpi+0xd>
  86:	83 c4 20             	add    $0x20,%esp
  89:	5b                   	pop    %ebx
  8a:	5e                   	pop    %esi
  8b:	5f                   	pop    %edi
  8c:	c3                   	ret    

Disassembly of section .text.vp_init_mmio:

00000000 <vp_init_mmio>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 c3                	mov    %eax,%ebx
   4:	89 d6                	mov    %edx,%esi
   6:	b9 44 00 00 00       	mov    $0x44,%ecx
   b:	31 d2                	xor    %edx,%edx
   d:	e8 fc ff ff ff       	call   e <vp_init_mmio+0xe>
  12:	c6 43 41 01          	movb   $0x1,0x41(%ebx)
  16:	c6 43 09 02          	movb   $0x2,0x9(%ebx)
  1a:	89 33                	mov    %esi,(%ebx)
  1c:	c6 43 2d 02          	movb   $0x2,0x2d(%ebx)
  20:	81 c6 00 01 00 00    	add    $0x100,%esi
  26:	89 73 24             	mov    %esi,0x24(%ebx)
  29:	89 d8                	mov    %ebx,%eax
  2b:	e8 fc ff ff ff       	call   2c <vp_init_mmio+0x2c>
  30:	ba 03 00 00 00       	mov    $0x3,%edx
  35:	89 d8                	mov    %ebx,%eax
  37:	5b                   	pop    %ebx
  38:	5e                   	pop    %esi
  39:	e9 fc ff ff ff       	jmp    3a <vp_init_mmio+0x3a>
