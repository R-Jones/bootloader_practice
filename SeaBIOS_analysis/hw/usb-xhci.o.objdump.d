
./usb-xhci.o:     file format elf32-i386


Disassembly of section .text.xhci_hub_detect:

00000000 <xhci_hub_detect>:
   0:	8b 40 08             	mov    0x8(%eax),%eax
   3:	c1 e2 04             	shl    $0x4,%edx
   6:	03 50 30             	add    0x30(%eax),%edx
   9:	8b 02                	mov    (%edx),%eax
   b:	83 e0 01             	and    $0x1,%eax
   e:	c3                   	ret    

Disassembly of section .text.xhci_hub_portmap:

00000000 <xhci_hub_portmap>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	89 c1                	mov    %eax,%ecx
   5:	89 d0                	mov    %edx,%eax
   7:	8b 59 08             	mov    0x8(%ecx),%ebx
   a:	8d 4a 01             	lea    0x1(%edx),%ecx
   d:	0f b6 73 23          	movzbl 0x23(%ebx),%esi
  11:	89 ca                	mov    %ecx,%edx
  13:	39 ce                	cmp    %ecx,%esi
  15:	77 0f                	ja     26 <xhci_hub_portmap+0x26>
  17:	0f b6 7b 24          	movzbl 0x24(%ebx),%edi
  1b:	01 f7                	add    %esi,%edi
  1d:	39 cf                	cmp    %ecx,%edi
  1f:	76 05                	jbe    26 <xhci_hub_portmap+0x26>
  21:	8d 50 02             	lea    0x2(%eax),%edx
  24:	29 f2                	sub    %esi,%edx
  26:	0f b6 73 21          	movzbl 0x21(%ebx),%esi
  2a:	39 ce                	cmp    %ecx,%esi
  2c:	77 11                	ja     3f <xhci_hub_portmap+0x3f>
  2e:	0f b6 5b 22          	movzbl 0x22(%ebx),%ebx
  32:	01 f3                	add    %esi,%ebx
  34:	39 cb                	cmp    %ecx,%ebx
  36:	76 07                	jbe    3f <xhci_hub_portmap+0x3f>
  38:	83 c0 02             	add    $0x2,%eax
  3b:	29 f0                	sub    %esi,%eax
  3d:	89 c2                	mov    %eax,%edx
  3f:	89 d0                	mov    %edx,%eax
  41:	5b                   	pop    %ebx
  42:	5e                   	pop    %esi
  43:	5f                   	pop    %edi
  44:	c3                   	ret    

Disassembly of section .text.xhci_hub_disconnect:

00000000 <xhci_hub_disconnect>:
   0:	c3                   	ret    

Disassembly of section .text.xhci_print_port_state:

00000000 <xhci_print_port_state>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	50                   	push   %eax
   5:	89 d3                	mov    %edx,%ebx
   7:	89 0c 24             	mov    %ecx,(%esp)
   a:	8b 44 24 18          	mov    0x18(%esp),%eax
   e:	89 c1                	mov    %eax,%ecx
  10:	c1 e9 05             	shr    $0x5,%ecx
  13:	83 e1 0f             	and    $0xf,%ecx
  16:	89 c2                	mov    %eax,%edx
  18:	c1 ea 0a             	shr    $0xa,%edx
  1b:	83 e2 0f             	and    $0xf,%edx
  1e:	8b 2c 95 00 00 00 00 	mov    0x0(,%edx,4),%ebp
  25:	bf 0a 00 00 00       	mov    $0xa,%edi
  2a:	a8 02                	test   $0x2,%al
  2c:	74 05                	je     33 <xhci_print_port_state+0x33>
  2e:	bf 00 00 00 00       	mov    $0x0,%edi
  33:	be 0b 00 00 00       	mov    $0xb,%esi
  38:	0f ba e0 09          	bt     $0x9,%eax
  3c:	72 05                	jb     43 <xhci_print_port_state+0x43>
  3e:	be 0a 00 00 00       	mov    $0xa,%esi
  43:	55                   	push   %ebp
  44:	52                   	push   %edx
  45:	51                   	push   %ecx
  46:	57                   	push   %edi
  47:	56                   	push   %esi
  48:	50                   	push   %eax
  49:	8b 44 24 18          	mov    0x18(%esp),%eax
  4d:	40                   	inc    %eax
  4e:	50                   	push   %eax
  4f:	53                   	push   %ebx
  50:	68 15 00 00 00       	push   $0x15
  55:	e8 fc ff ff ff       	call   56 <xhci_print_port_state+0x56>
  5a:	83 c4 28             	add    $0x28,%esp
  5d:	5b                   	pop    %ebx
  5e:	5e                   	pop    %esi
  5f:	5f                   	pop    %edi
  60:	5d                   	pop    %ebp
  61:	c3                   	ret    

Disassembly of section .text.xhci_doorbell:

00000000 <xhci_doorbell>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	89 c7                	mov    %eax,%edi
   5:	89 d6                	mov    %edx,%esi
   7:	89 cb                	mov    %ecx,%ebx
   9:	51                   	push   %ecx
   a:	52                   	push   %edx
   b:	68 00 00 00 00       	push   $0x0
  10:	68 45 00 00 00       	push   $0x45
  15:	e8 fc ff ff ff       	call   16 <xhci_doorbell+0x16>
  1a:	8b 47 38             	mov    0x38(%edi),%eax
  1d:	8d 04 b0             	lea    (%eax,%esi,4),%eax
  20:	89 18                	mov    %ebx,(%eax)
  22:	83 c4 10             	add    $0x10,%esp
  25:	5b                   	pop    %ebx
  26:	5e                   	pop    %esi
  27:	5f                   	pop    %edi
  28:	c3                   	ret    

Disassembly of section .text.xhci_alloc_inctx:

00000000 <xhci_alloc_inctx>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	51                   	push   %ecx
   5:	89 c3                	mov    %eax,%ebx
   7:	89 d7                	mov    %edx,%edi
   9:	8b 00                	mov    (%eax),%eax
   b:	8b 68 08             	mov    0x8(%eax),%ebp
   e:	0f b6 4d 20          	movzbl 0x20(%ebp),%ecx
  12:	b8 20 04 00 00       	mov    $0x420,%eax
  17:	d3 e0                	shl    %cl,%eax
  19:	89 04 24             	mov    %eax,(%esp)
  1c:	b8 00 08 00 00       	mov    $0x800,%eax
  21:	d3 e0                	shl    %cl,%eax
  23:	89 c1                	mov    %eax,%ecx
  25:	8b 14 24             	mov    (%esp),%edx
  28:	b8 00 00 00 00       	mov    $0x0,%eax
  2d:	e8 fc ff ff ff       	call   2e <xhci_alloc_inctx+0x2e>
  32:	89 c6                	mov    %eax,%esi
  34:	85 c0                	test   %eax,%eax
  36:	75 14                	jne    4c <xhci_alloc_inctx+0x4c>
  38:	ba 00 00 00 00       	mov    $0x0,%edx
  3d:	b8 80 03 00 00       	mov    $0x380,%eax
  42:	e8 fc ff ff ff       	call   43 <xhci_alloc_inctx+0x43>
  47:	e9 93 00 00 00       	jmp    df <xhci_alloc_inctx+0xdf>
  4c:	8b 0c 24             	mov    (%esp),%ecx
  4f:	31 d2                	xor    %edx,%edx
  51:	e8 fc ff ff ff       	call   52 <xhci_alloc_inctx+0x52>
  56:	0f b6 4d 20          	movzbl 0x20(%ebp),%ecx
  5a:	b8 20 00 00 00       	mov    $0x20,%eax
  5f:	d3 e0                	shl    %cl,%eax
  61:	01 f0                	add    %esi,%eax
  63:	0f b6 4b 18          	movzbl 0x18(%ebx),%ecx
  67:	89 ca                	mov    %ecx,%edx
  69:	8b 0c 8d 00 00 00 00 	mov    0x0(,%ecx,4),%ecx
  70:	c1 e1 14             	shl    $0x14,%ecx
  73:	c1 e7 1b             	shl    $0x1b,%edi
  76:	09 cf                	or     %ecx,%edi
  78:	0b 38                	or     (%eax),%edi
  7a:	89 38                	mov    %edi,(%eax)
  7c:	8b 0b                	mov    (%ebx),%ecx
  7e:	8b 49 04             	mov    0x4(%ecx),%ecx
  81:	85 c9                	test   %ecx,%ecx
  83:	74 50                	je     d5 <xhci_alloc_inctx+0xd5>
  85:	80 fa 01             	cmp    $0x1,%dl
  88:	77 2c                	ja     b6 <xhci_alloc_inctx+0xb6>
  8a:	8b 53 08             	mov    0x8(%ebx),%edx
  8d:	89 14 24             	mov    %edx,(%esp)
  90:	8b 51 04             	mov    0x4(%ecx),%edx
  93:	8b 52 0c             	mov    0xc(%edx),%edx
  96:	80 79 18 02          	cmpb   $0x2,0x18(%ecx)
  9a:	75 0e                	jne    aa <xhci_alloc_inctx+0xaa>
  9c:	8b 0c 24             	mov    (%esp),%ecx
  9f:	41                   	inc    %ecx
  a0:	c1 e1 08             	shl    $0x8,%ecx
  a3:	09 ca                	or     %ecx,%edx
  a5:	09 50 08             	or     %edx,0x8(%eax)
  a8:	eb 0c                	jmp    b6 <xhci_alloc_inctx+0xb6>
  aa:	8b 4d 3c             	mov    0x3c(%ebp),%ecx
  ad:	8b 14 d1             	mov    (%ecx,%edx,8),%edx
  b0:	8b 52 08             	mov    0x8(%edx),%edx
  b3:	89 50 08             	mov    %edx,0x8(%eax)
  b6:	31 d2                	xor    %edx,%edx
  b8:	8b 0b                	mov    (%ebx),%ecx
  ba:	8b 69 04             	mov    0x4(%ecx),%ebp
  bd:	8b 4b 08             	mov    0x8(%ebx),%ecx
  c0:	41                   	inc    %ecx
  c1:	85 ed                	test   %ebp,%ebp
  c3:	74 0c                	je     d1 <xhci_alloc_inctx+0xd1>
  c5:	c1 e2 04             	shl    $0x4,%edx
  c8:	83 e1 0f             	and    $0xf,%ecx
  cb:	09 ca                	or     %ecx,%edx
  cd:	89 eb                	mov    %ebp,%ebx
  cf:	eb e7                	jmp    b8 <xhci_alloc_inctx+0xb8>
  d1:	09 d7                	or     %edx,%edi
  d3:	89 38                	mov    %edi,(%eax)
  d5:	8b 53 08             	mov    0x8(%ebx),%edx
  d8:	42                   	inc    %edx
  d9:	c1 e2 10             	shl    $0x10,%edx
  dc:	09 50 04             	or     %edx,0x4(%eax)
  df:	89 f0                	mov    %esi,%eax
  e1:	5a                   	pop    %edx
  e2:	5b                   	pop    %ebx
  e3:	5e                   	pop    %esi
  e4:	5f                   	pop    %edi
  e5:	5d                   	pop    %ebp
  e6:	c3                   	ret    

Disassembly of section .text.xhci_hub_reset:

00000000 <xhci_hub_reset>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	56                   	push   %esi
   5:	89 14 24             	mov    %edx,(%esp)
   8:	8b 68 08             	mov    0x8(%eax),%ebp
   b:	89 d7                	mov    %edx,%edi
   d:	c1 e7 04             	shl    $0x4,%edi
  10:	8b 45 30             	mov    0x30(%ebp),%eax
  13:	01 f8                	add    %edi,%eax
  15:	8b 18                	mov    (%eax),%ebx
  17:	f6 c3 01             	test   $0x1,%bl
  1a:	74 6a                	je     86 <xhci_hub_reset+0x86>
  1c:	89 d8                	mov    %ebx,%eax
  1e:	c1 e8 05             	shr    $0x5,%eax
  21:	83 e0 0f             	and    $0xf,%eax
  24:	74 2b                	je     51 <xhci_hub_reset+0x51>
  26:	83 ce ff             	or     $0xffffffff,%esi
  29:	83 f8 07             	cmp    $0x7,%eax
  2c:	0f 85 84 00 00 00    	jne    b6 <xhci_hub_reset+0xb6>
  32:	53                   	push   %ebx
  33:	8b 4c 24 04          	mov    0x4(%esp),%ecx
  37:	ba 00 00 00 00       	mov    $0x0,%edx
  3c:	b8 03 00 00 00       	mov    $0x3,%eax
  41:	e8 fc ff ff ff       	call   42 <xhci_hub_reset+0x42>
  46:	83 cb 10             	or     $0x10,%ebx
  49:	8b 45 30             	mov    0x30(%ebp),%eax
  4c:	01 f8                	add    %edi,%eax
  4e:	89 18                	mov    %ebx,(%eax)
  50:	5b                   	pop    %ebx
  51:	b8 64 00 00 00       	mov    $0x64,%eax
  56:	e8 fc ff ff ff       	call   57 <xhci_hub_reset+0x57>
  5b:	89 c3                	mov    %eax,%ebx
  5d:	8b 45 30             	mov    0x30(%ebp),%eax
  60:	01 f8                	add    %edi,%eax
  62:	8b 00                	mov    (%eax),%eax
  64:	a8 01                	test   $0x1,%al
  66:	74 1e                	je     86 <xhci_hub_reset+0x86>
  68:	a8 02                	test   $0x2,%al
  6a:	75 26                	jne    92 <xhci_hub_reset+0x92>
  6c:	89 d8                	mov    %ebx,%eax
  6e:	e8 fc ff ff ff       	call   6f <xhci_hub_reset+0x6f>
  73:	85 c0                	test   %eax,%eax
  75:	74 14                	je     8b <xhci_hub_reset+0x8b>
  77:	ba 00 00 00 00       	mov    $0x0,%edx
  7c:	b8 75 01 00 00       	mov    $0x175,%eax
  81:	e8 fc ff ff ff       	call   82 <xhci_hub_reset+0x82>
  86:	83 ce ff             	or     $0xffffffff,%esi
  89:	eb 2b                	jmp    b6 <xhci_hub_reset+0xb6>
  8b:	e8 fc ff ff ff       	call   8c <xhci_hub_reset+0x8c>
  90:	eb cb                	jmp    5d <xhci_hub_reset+0x5d>
  92:	89 c2                	mov    %eax,%edx
  94:	c1 ea 0a             	shr    $0xa,%edx
  97:	83 e2 0f             	and    $0xf,%edx
  9a:	8b 34 95 00 00 00 00 	mov    0x0(,%edx,4),%esi
  a1:	50                   	push   %eax
  a2:	8b 4c 24 04          	mov    0x4(%esp),%ecx
  a6:	ba 5d 00 00 00       	mov    $0x5d,%edx
  ab:	b8 01 00 00 00       	mov    $0x1,%eax
  b0:	e8 fc ff ff ff       	call   b1 <xhci_hub_reset+0xb1>
  b5:	59                   	pop    %ecx
  b6:	89 f0                	mov    %esi,%eax
  b8:	5a                   	pop    %edx
  b9:	5b                   	pop    %ebx
  ba:	5e                   	pop    %esi
  bb:	5f                   	pop    %edi
  bc:	5d                   	pop    %ebp
  bd:	c3                   	ret    

Disassembly of section .text.xhci_process_events:

00000000 <xhci_process_events>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 10             	sub    $0x10,%esp
   7:	89 44 24 04          	mov    %eax,0x4(%esp)
   b:	8b 58 44             	mov    0x44(%eax),%ebx
   e:	8b 83 14 01 00 00    	mov    0x114(%ebx),%eax
  14:	89 44 24 08          	mov    %eax,0x8(%esp)
  18:	8b 83 18 01 00 00    	mov    0x118(%ebx),%eax
  1e:	89 44 24 0c          	mov    %eax,0xc(%esp)
  22:	8b 74 24 08          	mov    0x8(%esp),%esi
  26:	c1 e6 04             	shl    $0x4,%esi
  29:	01 de                	add    %ebx,%esi
  2b:	8b 56 0c             	mov    0xc(%esi),%edx
  2e:	89 d1                	mov    %edx,%ecx
  30:	83 e1 01             	and    $0x1,%ecx
  33:	85 c0                	test   %eax,%eax
  35:	0f 95 c0             	setne  %al
  38:	0f b6 c0             	movzbl %al,%eax
  3b:	39 c1                	cmp    %eax,%ecx
  3d:	0f 85 f9 00 00 00    	jne    13c <xhci_process_events+0x13c>
  43:	c1 ea 0a             	shr    $0xa,%edx
  46:	89 d0                	mov    %edx,%eax
  48:	83 e0 3f             	and    $0x3f,%eax
  4b:	0f b6 4e 0b          	movzbl 0xb(%esi),%ecx
  4f:	83 f8 21             	cmp    $0x21,%eax
  52:	77 53                	ja     a7 <xhci_process_events+0xa7>
  54:	80 e2 20             	and    $0x20,%dl
  57:	0f 84 8c 00 00 00    	je     e9 <xhci_process_events+0xe9>
  5d:	8b 16                	mov    (%esi),%edx
  5f:	89 d7                	mov    %edx,%edi
  61:	81 e7 00 ff ff ff    	and    $0xffffff00,%edi
  67:	89 3c 24             	mov    %edi,(%esp)
  6a:	81 c7 00 01 00 00    	add    $0x100,%edi
  70:	89 d5                	mov    %edx,%ebp
  72:	2b 2c 24             	sub    (%esp),%ebp
  75:	c1 fd 04             	sar    $0x4,%ebp
  78:	45                   	inc    %ebp
  79:	51                   	push   %ecx
  7a:	55                   	push   %ebp
  7b:	50                   	push   %eax
  7c:	57                   	push   %edi
  7d:	52                   	push   %edx
  7e:	ff 74 24 14          	push   0x14(%esp)
  82:	68 00 00 00 00       	push   $0x0
  87:	68 62 00 00 00       	push   $0x62
  8c:	e8 fc ff ff ff       	call   8d <xhci_process_events+0x8d>
  91:	b9 04 00 00 00       	mov    $0x4,%ecx
  96:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  98:	8b 44 24 20          	mov    0x20(%esp),%eax
  9c:	89 a8 10 01 00 00    	mov    %ebp,0x110(%eax)
  a2:	83 c4 20             	add    $0x20,%esp
  a5:	eb 56                	jmp    fd <xhci_process_events+0xfd>
  a7:	83 f8 22             	cmp    $0x22,%eax
  aa:	75 3d                	jne    e9 <xhci_process_events+0xe9>
  ac:	8b 0e                	mov    (%esi),%ecx
  ae:	c1 e9 18             	shr    $0x18,%ecx
  b1:	49                   	dec    %ecx
  b2:	89 c8                	mov    %ecx,%eax
  b4:	c1 e0 04             	shl    $0x4,%eax
  b7:	8b 7c 24 04          	mov    0x4(%esp),%edi
  bb:	8b 57 30             	mov    0x30(%edi),%edx
  be:	01 c2                	add    %eax,%edx
  c0:	8b 32                	mov    (%edx),%esi
  c2:	89 f2                	mov    %esi,%edx
  c4:	81 e2 0d fe ff ff    	and    $0xfffffe0d,%edx
  ca:	83 ca 20             	or     $0x20,%edx
  cd:	8b 7c 24 04          	mov    0x4(%esp),%edi
  d1:	03 47 30             	add    0x30(%edi),%eax
  d4:	89 10                	mov    %edx,(%eax)
  d6:	56                   	push   %esi
  d7:	ba 00 00 00 00       	mov    $0x0,%edx
  dc:	b8 03 00 00 00       	mov    $0x3,%eax
  e1:	e8 fc ff ff ff       	call   e2 <xhci_process_events+0xe2>
  e6:	58                   	pop    %eax
  e7:	eb 14                	jmp    fd <xhci_process_events+0xfd>
  e9:	51                   	push   %ecx
  ea:	50                   	push   %eax
  eb:	68 00 00 00 00       	push   $0x0
  f0:	68 99 00 00 00       	push   $0x99
  f5:	e8 fc ff ff ff       	call   f6 <xhci_process_events+0xf6>
  fa:	83 c4 10             	add    $0x10,%esp
  fd:	8b 44 24 08          	mov    0x8(%esp),%eax
 101:	40                   	inc    %eax
 102:	83 7c 24 08 0f       	cmpl   $0xf,0x8(%esp)
 107:	75 12                	jne    11b <xhci_process_events+0x11b>
 109:	31 c0                	xor    %eax,%eax
 10b:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%esp)
 110:	0f 94 c0             	sete   %al
 113:	89 83 18 01 00 00    	mov    %eax,0x118(%ebx)
 119:	31 c0                	xor    %eax,%eax
 11b:	89 83 14 01 00 00    	mov    %eax,0x114(%ebx)
 121:	8b 74 24 04          	mov    0x4(%esp),%esi
 125:	8b 56 34             	mov    0x34(%esi),%edx
 128:	c1 e0 04             	shl    $0x4,%eax
 12b:	01 d8                	add    %ebx,%eax
 12d:	89 42 18             	mov    %eax,0x18(%edx)
 130:	c7 42 1c 00 00 00 00 	movl   $0x0,0x1c(%edx)
 137:	e9 d2 fe ff ff       	jmp    e <xhci_process_events+0xe>
 13c:	83 c4 10             	add    $0x10,%esp
 13f:	5b                   	pop    %ebx
 140:	5e                   	pop    %esi
 141:	5f                   	pop    %edi
 142:	5d                   	pop    %ebp
 143:	c3                   	ret    

Disassembly of section .text.wait_bit:

00000000 <wait_bit>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 c7                	mov    %eax,%edi
   6:	89 d6                	mov    %edx,%esi
   8:	89 cb                	mov    %ecx,%ebx
   a:	8b 44 24 14          	mov    0x14(%esp),%eax
   e:	e8 fc ff ff ff       	call   f <wait_bit+0xf>
  13:	89 c5                	mov    %eax,%ebp
  15:	8b 07                	mov    (%edi),%eax
  17:	21 f0                	and    %esi,%eax
  19:	39 d8                	cmp    %ebx,%eax
  1b:	74 26                	je     43 <wait_bit+0x43>
  1d:	89 e8                	mov    %ebp,%eax
  1f:	e8 fc ff ff ff       	call   20 <wait_bit+0x20>
  24:	85 c0                	test   %eax,%eax
  26:	74 14                	je     3c <wait_bit+0x3c>
  28:	ba 00 00 00 00       	mov    $0x0,%edx
  2d:	b8 2e 01 00 00       	mov    $0x12e,%eax
  32:	e8 fc ff ff ff       	call   33 <wait_bit+0x33>
  37:	83 c8 ff             	or     $0xffffffff,%eax
  3a:	eb 09                	jmp    45 <wait_bit+0x45>
  3c:	e8 fc ff ff ff       	call   3d <wait_bit+0x3d>
  41:	eb d2                	jmp    15 <wait_bit+0x15>
  43:	31 c0                	xor    %eax,%eax
  45:	5b                   	pop    %ebx
  46:	5e                   	pop    %esi
  47:	5f                   	pop    %edi
  48:	5d                   	pop    %ebp
  49:	c3                   	ret    

Disassembly of section .text.xhci_event_wait:

00000000 <xhci_event_wait>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	89 c7                	mov    %eax,%edi
   5:	89 d3                	mov    %edx,%ebx
   7:	89 c8                	mov    %ecx,%eax
   9:	e8 fc ff ff ff       	call   a <xhci_event_wait+0xa>
   e:	89 c6                	mov    %eax,%esi
  10:	89 f8                	mov    %edi,%eax
  12:	e8 fc ff ff ff       	call   13 <xhci_event_wait+0x13>
  17:	8b 83 14 01 00 00    	mov    0x114(%ebx),%eax
  1d:	39 83 10 01 00 00    	cmp    %eax,0x110(%ebx)
  23:	75 09                	jne    2e <xhci_event_wait+0x2e>
  25:	0f b6 83 0b 01 00 00 	movzbl 0x10b(%ebx),%eax
  2c:	eb 26                	jmp    54 <xhci_event_wait+0x54>
  2e:	89 f0                	mov    %esi,%eax
  30:	e8 fc ff ff ff       	call   31 <xhci_event_wait+0x31>
  35:	85 c0                	test   %eax,%eax
  37:	74 14                	je     4d <xhci_event_wait+0x4d>
  39:	ba 00 00 00 00       	mov    $0x0,%edx
  3e:	b8 11 03 00 00       	mov    $0x311,%eax
  43:	e8 fc ff ff ff       	call   44 <xhci_event_wait+0x44>
  48:	83 c8 ff             	or     $0xffffffff,%eax
  4b:	eb 07                	jmp    54 <xhci_event_wait+0x54>
  4d:	e8 fc ff ff ff       	call   4e <xhci_event_wait+0x4e>
  52:	eb bc                	jmp    10 <xhci_event_wait+0x10>
  54:	5b                   	pop    %ebx
  55:	5e                   	pop    %esi
  56:	5f                   	pop    %edi
  57:	c3                   	ret    

Disassembly of section .text.xhci_controller_setup:

00000000 <xhci_controller_setup>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 08             	sub    $0x8,%esp
   7:	89 c7                	mov    %eax,%edi
   9:	b9 10 00 00 00       	mov    $0x10,%ecx
   e:	ba 4c 00 00 00       	mov    $0x4c,%edx
  13:	b8 00 00 00 00       	mov    $0x0,%eax
  18:	e8 fc ff ff ff       	call   19 <xhci_controller_setup+0x19>
  1d:	89 c3                	mov    %eax,%ebx
  1f:	85 c0                	test   %eax,%eax
  21:	75 14                	jne    37 <xhci_controller_setup+0x37>
  23:	ba 00 00 00 00       	mov    $0x0,%edx
  28:	b8 1e 02 00 00       	mov    $0x21e,%eax
  2d:	e8 fc ff ff ff       	call   2e <xhci_controller_setup+0x2e>
  32:	e9 62 01 00 00       	jmp    199 <xhci_controller_setup+0x199>
  37:	b9 4c 00 00 00       	mov    $0x4c,%ecx
  3c:	31 d2                	xor    %edx,%edx
  3e:	e8 fc ff ff ff       	call   3f <xhci_controller_setup+0x3f>
  43:	89 7b 28             	mov    %edi,0x28(%ebx)
  46:	0f b6 07             	movzbl (%edi),%eax
  49:	01 f8                	add    %edi,%eax
  4b:	89 43 2c             	mov    %eax,0x2c(%ebx)
  4e:	8b 43 28             	mov    0x28(%ebx),%eax
  51:	0f b6 00             	movzbl (%eax),%eax
  54:	8d 84 07 00 04 00 00 	lea    0x400(%edi,%eax,1),%eax
  5b:	89 43 30             	mov    %eax,0x30(%ebx)
  5e:	8b 43 28             	mov    0x28(%ebx),%eax
  61:	8b 40 14             	mov    0x14(%eax),%eax
  64:	01 f8                	add    %edi,%eax
  66:	89 43 38             	mov    %eax,0x38(%ebx)
  69:	8b 43 28             	mov    0x28(%ebx),%eax
  6c:	8b 40 18             	mov    0x18(%eax),%eax
  6f:	8d 44 07 20          	lea    0x20(%edi,%eax,1),%eax
  73:	89 43 34             	mov    %eax,0x34(%ebx)
  76:	8b 43 28             	mov    0x28(%ebx),%eax
  79:	8b 50 04             	mov    0x4(%eax),%edx
  7c:	8b 43 28             	mov    0x28(%ebx),%eax
  7f:	8b 40 10             	mov    0x10(%eax),%eax
  82:	89 d1                	mov    %edx,%ecx
  84:	c1 e9 18             	shr    $0x18,%ecx
  87:	89 4b 18             	mov    %ecx,0x18(%ebx)
  8a:	0f b6 d2             	movzbl %dl,%edx
  8d:	89 53 1c             	mov    %edx,0x1c(%ebx)
  90:	89 c6                	mov    %eax,%esi
  92:	c1 ee 10             	shr    $0x10,%esi
  95:	c1 e6 02             	shl    $0x2,%esi
  98:	89 73 14             	mov    %esi,0x14(%ebx)
  9b:	c1 e8 02             	shr    $0x2,%eax
  9e:	83 e0 01             	and    $0x1,%eax
  a1:	88 43 20             	mov    %al,0x20(%ebx)
  a4:	c6 43 10 04          	movb   $0x4,0x10(%ebx)
  a8:	3c 01                	cmp    $0x1,%al
  aa:	19 c0                	sbb    %eax,%eax
  ac:	83 e0 e0             	and    $0xffffffe0,%eax
  af:	83 c0 40             	add    $0x40,%eax
  b2:	50                   	push   %eax
  b3:	52                   	push   %edx
  b4:	51                   	push   %ecx
  b5:	ff 73 28             	push   0x28(%ebx)
  b8:	68 bc 00 00 00       	push   $0xbc
  bd:	e8 fc ff ff ff       	call   be <xhci_controller_setup+0xbe>
  c2:	8b 73 14             	mov    0x14(%ebx),%esi
  c5:	83 c4 14             	add    $0x14,%esp
  c8:	85 f6                	test   %esi,%esi
  ca:	0f 84 a3 00 00 00    	je     173 <xhci_controller_setup+0x173>
  d0:	01 fe                	add    %edi,%esi
  d2:	8b 3e                	mov    (%esi),%edi
  d4:	89 f8                	mov    %edi,%eax
  d6:	0f b6 c0             	movzbl %al,%eax
  d9:	89 fa                	mov    %edi,%edx
  db:	80 fa 02             	cmp    $0x2,%dl
  de:	75 74                	jne    154 <xhci_controller_setup+0x154>
  e0:	8b 56 04             	mov    0x4(%esi),%edx
  e3:	8b 46 08             	mov    0x8(%esi),%eax
  e6:	89 fd                	mov    %edi,%ebp
  e8:	c1 ed 18             	shr    $0x18,%ebp
  eb:	89 c1                	mov    %eax,%ecx
  ed:	c1 e9 10             	shr    $0x10,%ecx
  f0:	51                   	push   %ecx
  f1:	0f b6 c8             	movzbl %al,%ecx
  f4:	51                   	push   %ecx
  f5:	0f b6 cc             	movzbl %ah,%ecx
  f8:	89 44 24 0c          	mov    %eax,0xc(%esp)
  fc:	51                   	push   %ecx
  fd:	89 f9                	mov    %edi,%ecx
  ff:	c1 e9 10             	shr    $0x10,%ecx
 102:	0f b6 c9             	movzbl %cl,%ecx
 105:	51                   	push   %ecx
 106:	55                   	push   %ebp
 107:	89 d1                	mov    %edx,%ecx
 109:	c1 e9 18             	shr    $0x18,%ecx
 10c:	51                   	push   %ecx
 10d:	89 d1                	mov    %edx,%ecx
 10f:	c1 e9 10             	shr    $0x10,%ecx
 112:	0f b6 c9             	movzbl %cl,%ecx
 115:	51                   	push   %ecx
 116:	0f b6 ce             	movzbl %dh,%ecx
 119:	51                   	push   %ecx
 11a:	0f b6 ca             	movzbl %dl,%ecx
 11d:	89 54 24 20          	mov    %edx,0x20(%esp)
 121:	51                   	push   %ecx
 122:	68 f8 00 00 00       	push   $0xf8
 127:	e8 fc ff ff ff       	call   128 <xhci_controller_setup+0x128>
 12c:	83 c4 28             	add    $0x28,%esp
 12f:	8b 14 24             	mov    (%esp),%edx
 132:	81 fa 55 53 42 20    	cmp    $0x20425355,%edx
 138:	8b 44 24 04          	mov    0x4(%esp),%eax
 13c:	75 25                	jne    163 <xhci_controller_setup+0x163>
 13e:	83 fd 02             	cmp    $0x2,%ebp
 141:	75 06                	jne    149 <xhci_controller_setup+0x149>
 143:	66 89 43 21          	mov    %ax,0x21(%ebx)
 147:	eb 1a                	jmp    163 <xhci_controller_setup+0x163>
 149:	83 fd 03             	cmp    $0x3,%ebp
 14c:	75 15                	jne    163 <xhci_controller_setup+0x163>
 14e:	66 89 43 23          	mov    %ax,0x23(%ebx)
 152:	eb 0f                	jmp    163 <xhci_controller_setup+0x163>
 154:	56                   	push   %esi
 155:	50                   	push   %eax
 156:	68 39 01 00 00       	push   $0x139
 15b:	e8 fc ff ff ff       	call   15c <xhci_controller_setup+0x15c>
 160:	83 c4 0c             	add    $0xc,%esp
 163:	89 f8                	mov    %edi,%eax
 165:	0f b6 fc             	movzbl %ah,%edi
 168:	8d 34 be             	lea    (%esi,%edi,4),%esi
 16b:	85 ff                	test   %edi,%edi
 16d:	0f 85 5f ff ff ff    	jne    d2 <xhci_controller_setup+0xd2>
 173:	8b 43 2c             	mov    0x2c(%ebx),%eax
 176:	8b 40 08             	mov    0x8(%eax),%eax
 179:	c1 e0 0c             	shl    $0xc,%eax
 17c:	3d 00 10 00 00       	cmp    $0x1000,%eax
 181:	74 16                	je     199 <xhci_controller_setup+0x199>
 183:	50                   	push   %eax
 184:	68 53 01 00 00       	push   $0x153
 189:	e8 fc ff ff ff       	call   18a <xhci_controller_setup+0x18a>
 18e:	89 d8                	mov    %ebx,%eax
 190:	e8 fc ff ff ff       	call   191 <xhci_controller_setup+0x191>
 195:	5b                   	pop    %ebx
 196:	5e                   	pop    %esi
 197:	31 db                	xor    %ebx,%ebx
 199:	89 d8                	mov    %ebx,%eax
 19b:	83 c4 08             	add    $0x8,%esp
 19e:	5b                   	pop    %ebx
 19f:	5e                   	pop    %esi
 1a0:	5f                   	pop    %edi
 1a1:	5d                   	pop    %ebp
 1a2:	c3                   	ret    

Disassembly of section .text.xhci_trb_queue:

00000000 <xhci_trb_queue>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 c3                	mov    %eax,%ebx
   6:	89 d6                	mov    %edx,%esi
   8:	89 cd                	mov    %ecx,%ebp
   a:	8b 80 14 01 00 00    	mov    0x114(%eax),%eax
  10:	83 f8 0e             	cmp    $0xe,%eax
  13:	76 51                	jbe    66 <xhci_trb_queue+0x66>
  15:	c1 e0 04             	shl    $0x4,%eax
  18:	01 d8                	add    %ebx,%eax
  1a:	89 18                	mov    %ebx,(%eax)
  1c:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
  23:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
  2a:	8b 93 18 01 00 00    	mov    0x118(%ebx),%edx
  30:	31 c9                	xor    %ecx,%ecx
  32:	85 d2                	test   %edx,%edx
  34:	0f 95 c1             	setne  %cl
  37:	81 c9 02 18 00 00    	or     $0x1802,%ecx
  3d:	89 48 0c             	mov    %ecx,0xc(%eax)
  40:	c7 83 14 01 00 00 00 	movl   $0x0,0x114(%ebx)
  47:	00 00 00 
  4a:	83 f2 01             	xor    $0x1,%edx
  4d:	89 93 18 01 00 00    	mov    %edx,0x118(%ebx)
  53:	53                   	push   %ebx
  54:	68 00 00 00 00       	push   $0x0
  59:	68 83 01 00 00       	push   $0x183
  5e:	e8 fc ff ff ff       	call   5f <xhci_trb_queue+0x5f>
  63:	83 c4 0c             	add    $0xc,%esp
  66:	8b 83 14 01 00 00    	mov    0x114(%ebx),%eax
  6c:	89 c2                	mov    %eax,%edx
  6e:	c1 e2 04             	shl    $0x4,%edx
  71:	01 da                	add    %ebx,%edx
  73:	f6 44 24 14 40       	testb  $0x40,0x14(%esp)
  78:	74 08                	je     82 <xhci_trb_queue+0x82>
  7a:	89 d7                	mov    %edx,%edi
  7c:	89 e9                	mov    %ebp,%ecx
  7e:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  80:	eb 09                	jmp    8b <xhci_trb_queue+0x8b>
  82:	89 32                	mov    %esi,(%edx)
  84:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%edx)
  8b:	c1 e0 04             	shl    $0x4,%eax
  8e:	01 d8                	add    %ebx,%eax
  90:	89 68 08             	mov    %ebp,0x8(%eax)
  93:	31 d2                	xor    %edx,%edx
  95:	83 bb 18 01 00 00 00 	cmpl   $0x0,0x118(%ebx)
  9c:	0f 95 c2             	setne  %dl
  9f:	0b 54 24 14          	or     0x14(%esp),%edx
  a3:	89 50 0c             	mov    %edx,0xc(%eax)
  a6:	8b 83 14 01 00 00    	mov    0x114(%ebx),%eax
  ac:	40                   	inc    %eax
  ad:	89 83 14 01 00 00    	mov    %eax,0x114(%ebx)
  b3:	55                   	push   %ebp
  b4:	50                   	push   %eax
  b5:	53                   	push   %ebx
  b6:	68 00 00 00 00       	push   $0x0
  bb:	68 99 01 00 00       	push   $0x199
  c0:	e8 fc ff ff ff       	call   c1 <xhci_trb_queue+0xc1>
  c5:	83 c4 14             	add    $0x14,%esp
  c8:	5b                   	pop    %ebx
  c9:	5e                   	pop    %esi
  ca:	5f                   	pop    %edi
  cb:	5d                   	pop    %ebp
  cc:	c3                   	ret    

Disassembly of section .text.xhci_xfer_normal:

00000000 <xhci_xfer_normal>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 c3                	mov    %eax,%ebx
   4:	8b b0 20 01 00 00    	mov    0x120(%eax),%esi
   a:	68 20 04 00 00       	push   $0x420
   f:	e8 fc ff ff ff       	call   10 <xhci_xfer_normal+0x10>
  14:	58                   	pop    %eax
  15:	8b 8b 30 01 00 00    	mov    0x130(%ebx),%ecx
  1b:	8b 93 2c 01 00 00    	mov    0x12c(%ebx),%edx
  21:	89 f0                	mov    %esi,%eax
  23:	5b                   	pop    %ebx
  24:	5e                   	pop    %esi
  25:	e9 fc ff ff ff       	jmp    26 <xhci_xfer_normal+0x26>

Disassembly of section .text.xhci_cmd_submit:

00000000 <xhci_cmd_submit>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	56                   	push   %esi
   3:	89 c3                	mov    %eax,%ebx
   5:	89 ce                	mov    %ecx,%esi
   7:	85 d2                	test   %edx,%edx
   9:	74 35                	je     40 <xhci_cmd_submit+0x40>
   b:	0f b6 48 20          	movzbl 0x20(%eax),%ecx
   f:	b8 20 00 00 00       	mov    $0x20,%eax
  14:	d3 e0                	shl    %cl,%eax
  16:	0f b6 4c 02 06       	movzbl 0x6(%edx,%eax,1),%ecx
  1b:	49                   	dec    %ecx
  1c:	89 c8                	mov    %ecx,%eax
  1e:	c1 e0 04             	shl    $0x4,%eax
  21:	03 43 30             	add    0x30(%ebx),%eax
  24:	8b 00                	mov    (%eax),%eax
  26:	a8 01                	test   $0x1,%al
  28:	75 16                	jne    40 <xhci_cmd_submit+0x40>
  2a:	50                   	push   %eax
  2b:	ba 00 00 00 00       	mov    $0x0,%edx
  30:	b8 01 00 00 00       	mov    $0x1,%eax
  35:	e8 fc ff ff ff       	call   36 <xhci_cmd_submit+0x36>
  3a:	5b                   	pop    %ebx
  3b:	83 ce ff             	or     $0xffffffff,%esi
  3e:	eb 49                	jmp    89 <xhci_cmd_submit+0x89>
  40:	89 14 24             	mov    %edx,(%esp)
  43:	8b 43 40             	mov    0x40(%ebx),%eax
  46:	05 1c 01 00 00       	add    $0x11c,%eax
  4b:	e8 fc ff ff ff       	call   4c <xhci_cmd_submit+0x4c>
  50:	8b 43 40             	mov    0x40(%ebx),%eax
  53:	56                   	push   %esi
  54:	31 c9                	xor    %ecx,%ecx
  56:	8b 54 24 04          	mov    0x4(%esp),%edx
  5a:	e8 fc ff ff ff       	call   5b <xhci_cmd_submit+0x5b>
  5f:	31 c9                	xor    %ecx,%ecx
  61:	31 d2                	xor    %edx,%edx
  63:	89 d8                	mov    %ebx,%eax
  65:	e8 fc ff ff ff       	call   66 <xhci_cmd_submit+0x66>
  6a:	8b 53 40             	mov    0x40(%ebx),%edx
  6d:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
  72:	89 d8                	mov    %ebx,%eax
  74:	e8 fc ff ff ff       	call   75 <xhci_cmd_submit+0x75>
  79:	89 c6                	mov    %eax,%esi
  7b:	8b 43 40             	mov    0x40(%ebx),%eax
  7e:	05 1c 01 00 00       	add    $0x11c,%eax
  83:	e8 fc ff ff ff       	call   84 <xhci_cmd_submit+0x84>
  88:	59                   	pop    %ecx
  89:	89 f0                	mov    %esi,%eax
  8b:	5a                   	pop    %edx
  8c:	5b                   	pop    %ebx
  8d:	5e                   	pop    %esi
  8e:	c3                   	ret    

Disassembly of section .text.configure_xhci:

00000000 <configure_xhci>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 28             	sub    $0x28,%esp
   7:	89 c3                	mov    %eax,%ebx
   9:	8b 40 1c             	mov    0x1c(%eax),%eax
   c:	8d 14 c5 08 00 00 00 	lea    0x8(,%eax,8),%edx
  13:	b9 40 00 00 00       	mov    $0x40,%ecx
  18:	b8 00 00 00 00       	mov    $0x0,%eax
  1d:	e8 fc ff ff ff       	call   1e <configure_xhci+0x1e>
  22:	89 43 3c             	mov    %eax,0x3c(%ebx)
  25:	b9 40 00 00 00       	mov    $0x40,%ecx
  2a:	ba 10 00 00 00       	mov    $0x10,%edx
  2f:	b8 00 00 00 00       	mov    $0x0,%eax
  34:	e8 fc ff ff ff       	call   35 <configure_xhci+0x35>
  39:	89 43 48             	mov    %eax,0x48(%ebx)
  3c:	b9 00 01 00 00       	mov    $0x100,%ecx
  41:	ba 20 01 00 00       	mov    $0x120,%edx
  46:	b8 00 00 00 00       	mov    $0x0,%eax
  4b:	e8 fc ff ff ff       	call   4c <configure_xhci+0x4c>
  50:	89 43 40             	mov    %eax,0x40(%ebx)
  53:	b9 00 01 00 00       	mov    $0x100,%ecx
  58:	ba 20 01 00 00       	mov    $0x120,%edx
  5d:	b8 00 00 00 00       	mov    $0x0,%eax
  62:	e8 fc ff ff ff       	call   63 <configure_xhci+0x63>
  67:	89 43 44             	mov    %eax,0x44(%ebx)
  6a:	8b 73 3c             	mov    0x3c(%ebx),%esi
  6d:	85 f6                	test   %esi,%esi
  6f:	74 10                	je     81 <configure_xhci+0x81>
  71:	83 7b 40 00          	cmpl   $0x0,0x40(%ebx)
  75:	74 0a                	je     81 <configure_xhci+0x81>
  77:	85 c0                	test   %eax,%eax
  79:	74 06                	je     81 <configure_xhci+0x81>
  7b:	83 7b 48 00          	cmpl   $0x0,0x48(%ebx)
  7f:	75 14                	jne    95 <configure_xhci+0x95>
  81:	ba 00 00 00 00       	mov    $0x0,%edx
  86:	b8 c4 01 00 00       	mov    $0x1c4,%eax
  8b:	e8 fc ff ff ff       	call   8c <configure_xhci+0x8c>
  90:	e9 88 02 00 00       	jmp    31d <configure_xhci+0x31d>
  95:	8b 43 1c             	mov    0x1c(%ebx),%eax
  98:	8d 0c c5 08 00 00 00 	lea    0x8(,%eax,8),%ecx
  9f:	31 d2                	xor    %edx,%edx
  a1:	89 f0                	mov    %esi,%eax
  a3:	e8 fc ff ff ff       	call   a4 <configure_xhci+0xa4>
  a8:	8b 43 40             	mov    0x40(%ebx),%eax
  ab:	b9 20 01 00 00       	mov    $0x120,%ecx
  b0:	31 d2                	xor    %edx,%edx
  b2:	e8 fc ff ff ff       	call   b3 <configure_xhci+0xb3>
  b7:	8b 43 44             	mov    0x44(%ebx),%eax
  ba:	b9 20 01 00 00       	mov    $0x120,%ecx
  bf:	31 d2                	xor    %edx,%edx
  c1:	e8 fc ff ff ff       	call   c2 <configure_xhci+0xc2>
  c6:	8b 43 48             	mov    0x48(%ebx),%eax
  c9:	b9 10 00 00 00       	mov    $0x10,%ecx
  ce:	31 d2                	xor    %edx,%edx
  d0:	e8 fc ff ff ff       	call   d1 <configure_xhci+0xd1>
  d5:	8b 43 2c             	mov    0x2c(%ebx),%eax
  d8:	8b 00                	mov    (%eax),%eax
  da:	a8 01                	test   $0x1,%al
  dc:	75 39                	jne    117 <configure_xhci+0x117>
  de:	68 00 00 00 00       	push   $0x0
  e3:	68 b8 01 00 00       	push   $0x1b8
  e8:	e8 fc ff ff ff       	call   e9 <configure_xhci+0xe9>
  ed:	8b 43 2c             	mov    0x2c(%ebx),%eax
  f0:	c7 00 02 00 00 00    	movl   $0x2,(%eax)
  f6:	8b 43 2c             	mov    0x2c(%ebx),%eax
  f9:	68 e8 03 00 00       	push   $0x3e8
  fe:	31 c9                	xor    %ecx,%ecx
 100:	ba 02 00 00 00       	mov    $0x2,%edx
 105:	e8 fc ff ff ff       	call   106 <configure_xhci+0x106>
 10a:	83 c4 0c             	add    $0xc,%esp
 10d:	85 c0                	test   %eax,%eax
 10f:	0f 85 08 02 00 00    	jne    31d <configure_xhci+0x31d>
 115:	eb 29                	jmp    140 <configure_xhci+0x140>
 117:	83 e0 fe             	and    $0xfffffffe,%eax
 11a:	8b 53 2c             	mov    0x2c(%ebx),%edx
 11d:	89 02                	mov    %eax,(%edx)
 11f:	8b 43 2c             	mov    0x2c(%ebx),%eax
 122:	83 c0 04             	add    $0x4,%eax
 125:	6a 20                	push   $0x20
 127:	b9 01 00 00 00       	mov    $0x1,%ecx
 12c:	ba 01 00 00 00       	mov    $0x1,%edx
 131:	e8 fc ff ff ff       	call   132 <configure_xhci+0x132>
 136:	5e                   	pop    %esi
 137:	85 c0                	test   %eax,%eax
 139:	74 a3                	je     de <configure_xhci+0xde>
 13b:	e9 dd 01 00 00       	jmp    31d <configure_xhci+0x31d>
 140:	8b 43 2c             	mov    0x2c(%ebx),%eax
 143:	83 c0 04             	add    $0x4,%eax
 146:	68 e8 03 00 00       	push   $0x3e8
 14b:	31 c9                	xor    %ecx,%ecx
 14d:	ba 00 08 00 00       	mov    $0x800,%edx
 152:	e8 fc ff ff ff       	call   153 <configure_xhci+0x153>
 157:	89 c7                	mov    %eax,%edi
 159:	59                   	pop    %ecx
 15a:	85 c0                	test   %eax,%eax
 15c:	0f 85 bb 01 00 00    	jne    31d <configure_xhci+0x31d>
 162:	8b 53 1c             	mov    0x1c(%ebx),%edx
 165:	8b 43 2c             	mov    0x2c(%ebx),%eax
 168:	89 50 38             	mov    %edx,0x38(%eax)
 16b:	8b 53 3c             	mov    0x3c(%ebx),%edx
 16e:	8b 43 2c             	mov    0x2c(%ebx),%eax
 171:	89 50 30             	mov    %edx,0x30(%eax)
 174:	8b 43 2c             	mov    0x2c(%ebx),%eax
 177:	c7 40 34 00 00 00 00 	movl   $0x0,0x34(%eax)
 17e:	8b 43 40             	mov    0x40(%ebx),%eax
 181:	83 c8 01             	or     $0x1,%eax
 184:	8b 53 2c             	mov    0x2c(%ebx),%edx
 187:	89 42 18             	mov    %eax,0x18(%edx)
 18a:	8b 43 2c             	mov    0x2c(%ebx),%eax
 18d:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
 194:	8b 43 40             	mov    0x40(%ebx),%eax
 197:	c7 80 18 01 00 00 01 	movl   $0x1,0x118(%eax)
 19e:	00 00 00 
 1a1:	8b 43 48             	mov    0x48(%ebx),%eax
 1a4:	8b 53 44             	mov    0x44(%ebx),%edx
 1a7:	89 10                	mov    %edx,(%eax)
 1a9:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 1b0:	c7 40 08 10 00 00 00 	movl   $0x10,0x8(%eax)
 1b7:	8b 43 34             	mov    0x34(%ebx),%eax
 1ba:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%eax)
 1c1:	8b 53 44             	mov    0x44(%ebx),%edx
 1c4:	8b 43 34             	mov    0x34(%ebx),%eax
 1c7:	89 50 18             	mov    %edx,0x18(%eax)
 1ca:	8b 43 34             	mov    0x34(%ebx),%eax
 1cd:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
 1d4:	8b 53 48             	mov    0x48(%ebx),%edx
 1d7:	8b 43 34             	mov    0x34(%ebx),%eax
 1da:	89 50 10             	mov    %edx,0x10(%eax)
 1dd:	8b 43 34             	mov    0x34(%ebx),%eax
 1e0:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
 1e7:	8b 43 44             	mov    0x44(%ebx),%eax
 1ea:	c7 80 18 01 00 00 01 	movl   $0x1,0x118(%eax)
 1f1:	00 00 00 
 1f4:	8b 43 28             	mov    0x28(%ebx),%eax
 1f7:	8b 40 08             	mov    0x8(%eax),%eax
 1fa:	89 c6                	mov    %eax,%esi
 1fc:	c1 ee 10             	shr    $0x10,%esi
 1ff:	81 e6 e0 03 00 00    	and    $0x3e0,%esi
 205:	c1 e8 1b             	shr    $0x1b,%eax
 208:	09 c6                	or     %eax,%esi
 20a:	0f 84 93 00 00 00    	je     2a3 <configure_xhci+0x2a3>
 210:	56                   	push   %esi
 211:	68 00 00 00 00       	push   $0x0
 216:	68 c7 01 00 00       	push   $0x1c7
 21b:	e8 fc ff ff ff       	call   21c <configure_xhci+0x21c>
 220:	8d 14 f5 00 00 00 00 	lea    0x0(,%esi,8),%edx
 227:	b9 40 00 00 00       	mov    $0x40,%ecx
 22c:	b8 00 00 00 00       	mov    $0x0,%eax
 231:	e8 fc ff ff ff       	call   232 <configure_xhci+0x232>
 236:	89 c5                	mov    %eax,%ebp
 238:	89 f2                	mov    %esi,%edx
 23a:	c1 e2 0c             	shl    $0xc,%edx
 23d:	b9 00 10 00 00       	mov    $0x1000,%ecx
 242:	b8 00 00 00 00       	mov    $0x0,%eax
 247:	e8 fc ff ff ff       	call   248 <configure_xhci+0x248>
 24c:	89 c1                	mov    %eax,%ecx
 24e:	83 c4 0c             	add    $0xc,%esp
 251:	85 ed                	test   %ebp,%ebp
 253:	74 04                	je     259 <configure_xhci+0x259>
 255:	85 c0                	test   %eax,%eax
 257:	75 26                	jne    27f <configure_xhci+0x27f>
 259:	89 0c 24             	mov    %ecx,(%esp)
 25c:	ba 00 00 00 00       	mov    $0x0,%edx
 261:	b8 f3 01 00 00       	mov    $0x1f3,%eax
 266:	e8 fc ff ff ff       	call   267 <configure_xhci+0x267>
 26b:	89 e8                	mov    %ebp,%eax
 26d:	e8 fc ff ff ff       	call   26e <configure_xhci+0x26e>
 272:	8b 04 24             	mov    (%esp),%eax
 275:	e8 fc ff ff ff       	call   276 <configure_xhci+0x276>
 27a:	e9 9e 00 00 00       	jmp    31d <configure_xhci+0x31d>
 27f:	89 f8                	mov    %edi,%eax
 281:	c1 e0 0c             	shl    $0xc,%eax
 284:	01 c8                	add    %ecx,%eax
 286:	89 44 fd 00          	mov    %eax,0x0(%ebp,%edi,8)
 28a:	c7 44 fd 04 00 00 00 	movl   $0x0,0x4(%ebp,%edi,8)
 291:	00 
 292:	47                   	inc    %edi
 293:	39 fe                	cmp    %edi,%esi
 295:	75 e8                	jne    27f <configure_xhci+0x27f>
 297:	8b 43 3c             	mov    0x3c(%ebx),%eax
 29a:	89 28                	mov    %ebp,(%eax)
 29c:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 2a3:	8b 43 2c             	mov    0x2c(%ebx),%eax
 2a6:	8b 00                	mov    (%eax),%eax
 2a8:	83 c8 01             	or     $0x1,%eax
 2ab:	8b 53 2c             	mov    0x2c(%ebx),%edx
 2ae:	89 02                	mov    %eax,(%edx)
 2b0:	b8 14 00 00 00       	mov    $0x14,%eax
 2b5:	e8 fc ff ff ff       	call   2b6 <configure_xhci+0x2b6>
 2ba:	b9 24 00 00 00       	mov    $0x24,%ecx
 2bf:	31 d2                	xor    %edx,%edx
 2c1:	8d 44 24 04          	lea    0x4(%esp),%eax
 2c5:	e8 fc ff ff ff       	call   2c6 <configure_xhci+0x2c6>
 2ca:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
 2ce:	8b 43 18             	mov    0x18(%ebx),%eax
 2d1:	89 44 24 20          	mov    %eax,0x20(%esp)
 2d5:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 2dc:	00 
 2dd:	8d 44 24 04          	lea    0x4(%esp),%eax
 2e1:	e8 fc ff ff ff       	call   2e2 <configure_xhci+0x2e2>
 2e6:	83 7c 24 24 00       	cmpl   $0x0,0x24(%esp)
 2eb:	75 5e                	jne    34b <configure_xhci+0x34b>
 2ed:	68 e9 01 00 00       	push   $0x1e9
 2f2:	e8 fc ff ff ff       	call   2f3 <configure_xhci+0x2f3>
 2f7:	8b 43 2c             	mov    0x2c(%ebx),%eax
 2fa:	8b 00                	mov    (%eax),%eax
 2fc:	83 e0 fe             	and    $0xfffffffe,%eax
 2ff:	8b 53 2c             	mov    0x2c(%ebx),%edx
 302:	89 02                	mov    %eax,(%edx)
 304:	8b 43 2c             	mov    0x2c(%ebx),%eax
 307:	83 c0 04             	add    $0x4,%eax
 30a:	6a 20                	push   $0x20
 30c:	b9 01 00 00 00       	mov    $0x1,%ecx
 311:	ba 01 00 00 00       	mov    $0x1,%edx
 316:	e8 fc ff ff ff       	call   317 <configure_xhci+0x317>
 31b:	58                   	pop    %eax
 31c:	5a                   	pop    %edx
 31d:	8b 43 48             	mov    0x48(%ebx),%eax
 320:	e8 fc ff ff ff       	call   321 <configure_xhci+0x321>
 325:	8b 43 44             	mov    0x44(%ebx),%eax
 328:	e8 fc ff ff ff       	call   329 <configure_xhci+0x329>
 32d:	8b 43 40             	mov    0x40(%ebx),%eax
 330:	e8 fc ff ff ff       	call   331 <configure_xhci+0x331>
 335:	8b 43 3c             	mov    0x3c(%ebx),%eax
 338:	e8 fc ff ff ff       	call   339 <configure_xhci+0x339>
 33d:	89 d8                	mov    %ebx,%eax
 33f:	83 c4 28             	add    $0x28,%esp
 342:	5b                   	pop    %ebx
 343:	5e                   	pop    %esi
 344:	5f                   	pop    %edi
 345:	5d                   	pop    %ebp
 346:	e9 fc ff ff ff       	jmp    347 <configure_xhci+0x347>
 34b:	83 c4 28             	add    $0x28,%esp
 34e:	5b                   	pop    %ebx
 34f:	5e                   	pop    %esi
 350:	5f                   	pop    %edi
 351:	5d                   	pop    %ebp
 352:	c3                   	ret    

Disassembly of section .text.xhci_setup:

00000000 <xhci_setup>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	83 ec 10             	sub    $0x10,%esp
   5:	a1 00 00 00 00       	mov    0x0,%eax
   a:	8d 58 fc             	lea    -0x4(%eax),%ebx
   d:	83 fb fc             	cmp    $0xfffffffc,%ebx
  10:	74 5e                	je     70 <xhci_setup+0x70>
  12:	0f b7 43 14          	movzwl 0x14(%ebx),%eax
  16:	c1 e0 08             	shl    $0x8,%eax
  19:	0f b6 53 16          	movzbl 0x16(%ebx),%edx
  1d:	09 d0                	or     %edx,%eax
  1f:	3d 30 03 0c 00       	cmp    $0xc0330,%eax
  24:	75 42                	jne    68 <xhci_setup+0x68>
  26:	ba 10 00 00 00       	mov    $0x10,%edx
  2b:	89 d8                	mov    %ebx,%eax
  2d:	e8 fc ff ff ff       	call   2e <xhci_setup+0x2e>
  32:	89 c6                	mov    %eax,%esi
  34:	85 c0                	test   %eax,%eax
  36:	74 30                	je     68 <xhci_setup+0x68>
  38:	50                   	push   %eax
  39:	53                   	push   %ebx
  3a:	68 00 02 00 00       	push   $0x200
  3f:	e8 fc ff ff ff       	call   40 <xhci_setup+0x40>
  44:	89 d8                	mov    %ebx,%eax
  46:	e8 fc ff ff ff       	call   47 <xhci_setup+0x47>
  4b:	89 f0                	mov    %esi,%eax
  4d:	e8 fc ff ff ff       	call   4e <xhci_setup+0x4e>
  52:	89 c2                	mov    %eax,%edx
  54:	83 c4 0c             	add    $0xc,%esp
  57:	85 c0                	test   %eax,%eax
  59:	74 0d                	je     68 <xhci_setup+0x68>
  5b:	89 58 08             	mov    %ebx,0x8(%eax)
  5e:	b8 00 00 00 00       	mov    $0x0,%eax
  63:	e8 fc ff ff ff       	call   64 <xhci_setup+0x64>
  68:	8b 5b 04             	mov    0x4(%ebx),%ebx
  6b:	83 eb 04             	sub    $0x4,%ebx
  6e:	eb 9d                	jmp    d <xhci_setup+0xd>
  70:	ba 10 0d 00 00       	mov    $0xd10,%edx
  75:	31 c0                	xor    %eax,%eax
  77:	e8 fc ff ff ff       	call   78 <xhci_setup+0x78>
  7c:	89 c3                	mov    %eax,%ebx
  7e:	85 c0                	test   %eax,%eax
  80:	74 4b                	je     cd <xhci_setup+0xcd>
  82:	8d 4c 24 08          	lea    0x8(%esp),%ecx
  86:	89 e2                	mov    %esp,%edx
  88:	89 d8                	mov    %ebx,%eax
  8a:	e8 fc ff ff ff       	call   8b <xhci_setup+0x8b>
  8f:	85 c0                	test   %eax,%eax
  91:	78 31                	js     c4 <xhci_setup+0xc4>
  93:	8b 34 24             	mov    (%esp),%esi
  96:	83 7c 24 04 00       	cmpl   $0x0,0x4(%esp)
  9b:	75 27                	jne    c4 <xhci_setup+0xc4>
  9d:	56                   	push   %esi
  9e:	68 1c 02 00 00       	push   $0x21c
  a3:	e8 fc ff ff ff       	call   a4 <xhci_setup+0xa4>
  a8:	89 f0                	mov    %esi,%eax
  aa:	e8 fc ff ff ff       	call   ab <xhci_setup+0xab>
  af:	89 c2                	mov    %eax,%edx
  b1:	58                   	pop    %eax
  b2:	59                   	pop    %ecx
  b3:	85 d2                	test   %edx,%edx
  b5:	74 0d                	je     c4 <xhci_setup+0xc4>
  b7:	89 72 0c             	mov    %esi,0xc(%edx)
  ba:	b8 00 00 00 00       	mov    $0x0,%eax
  bf:	e8 fc ff ff ff       	call   c0 <xhci_setup+0xc0>
  c4:	ba 10 0d 00 00       	mov    $0xd10,%edx
  c9:	89 d8                	mov    %ebx,%eax
  cb:	eb aa                	jmp    77 <xhci_setup+0x77>
  cd:	83 c4 10             	add    $0x10,%esp
  d0:	5b                   	pop    %ebx
  d1:	5e                   	pop    %esi
  d2:	c3                   	ret    

Disassembly of section .text.xhci_realloc_pipe:

00000000 <xhci_realloc_pipe>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 14             	sub    $0x14,%esp
   7:	89 14 24             	mov    %edx,(%esp)
   a:	85 c9                	test   %ecx,%ecx
   c:	75 0c                	jne    1a <xhci_realloc_pipe+0x1a>
   e:	89 d0                	mov    %edx,%eax
  10:	e8 fc ff ff ff       	call   11 <xhci_realloc_pipe+0x11>
  15:	e9 e0 00 00 00       	jmp    fa <xhci_realloc_pipe+0xfa>
  1a:	89 c6                	mov    %eax,%esi
  1c:	89 cf                	mov    %ecx,%edi
  1e:	8a 41 03             	mov    0x3(%ecx),%al
  21:	83 e0 03             	and    $0x3,%eax
  24:	88 44 24 0c          	mov    %al,0xc(%esp)
  28:	83 3c 24 00          	cmpl   $0x0,(%esp)
  2c:	0f 85 2f 04 00 00    	jne    461 <xhci_realloc_pipe+0x461>
  32:	8b 06                	mov    (%esi),%eax
  34:	8b 40 08             	mov    0x8(%eax),%eax
  37:	89 44 24 04          	mov    %eax,0x4(%esp)
  3b:	8a 41 02             	mov    0x2(%ecx),%al
  3e:	bd 01 00 00 00       	mov    $0x1,%ebp
  43:	84 c0                	test   %al,%al
  45:	74 10                	je     57 <xhci_realloc_pipe+0x57>
  47:	89 c2                	mov    %eax,%edx
  49:	83 e2 0f             	and    $0xf,%edx
  4c:	01 d2                	add    %edx,%edx
  4e:	c0 e8 07             	shr    $0x7,%al
  51:	0f b6 c0             	movzbl %al,%eax
  54:	8d 2c 10             	lea    (%eax,%edx,1),%ebp
  57:	b9 00 01 00 00       	mov    $0x100,%ecx
  5c:	ba 3c 01 00 00       	mov    $0x13c,%edx
  61:	b8 00 00 00 00       	mov    $0x0,%eax
  66:	80 7c 24 0c 00       	cmpb   $0x0,0xc(%esp)
  6b:	74 05                	je     72 <xhci_realloc_pipe+0x72>
  6d:	b8 00 00 00 00       	mov    $0x0,%eax
  72:	e8 fc ff ff ff       	call   73 <xhci_realloc_pipe+0x73>
  77:	89 c3                	mov    %eax,%ebx
  79:	85 c0                	test   %eax,%eax
  7b:	75 11                	jne    8e <xhci_realloc_pipe+0x8e>
  7d:	ba 00 00 00 00       	mov    $0x0,%edx
  82:	b8 d6 03 00 00       	mov    $0x3d6,%eax
  87:	e8 fc ff ff ff       	call   88 <xhci_realloc_pipe+0x88>
  8c:	eb 6c                	jmp    fa <xhci_realloc_pipe+0xfa>
  8e:	b9 3c 01 00 00       	mov    $0x13c,%ecx
  93:	31 d2                	xor    %edx,%edx
  95:	e8 fc ff ff ff       	call   96 <xhci_realloc_pipe+0x96>
  9a:	8d 83 20 01 00 00    	lea    0x120(%ebx),%eax
  a0:	89 44 24 10          	mov    %eax,0x10(%esp)
  a4:	89 f9                	mov    %edi,%ecx
  a6:	89 f2                	mov    %esi,%edx
  a8:	e8 fc ff ff ff       	call   a9 <xhci_realloc_pipe+0xa9>
  ad:	89 ab 30 01 00 00    	mov    %ebp,0x130(%ebx)
  b3:	c7 83 18 01 00 00 01 	movl   $0x1,0x118(%ebx)
  ba:	00 00 00 
  bd:	80 7c 24 0c 03       	cmpb   $0x3,0xc(%esp)
  c2:	75 42                	jne    106 <xhci_realloc_pipe+0x106>
  c4:	0f b7 93 28 01 00 00 	movzwl 0x128(%ebx),%edx
  cb:	b9 10 00 00 00       	mov    $0x10,%ecx
  d0:	b8 00 00 00 00       	mov    $0x0,%eax
  d5:	e8 fc ff ff ff       	call   d6 <xhci_realloc_pipe+0xd6>
  da:	89 83 34 01 00 00    	mov    %eax,0x134(%ebx)
  e0:	85 c0                	test   %eax,%eax
  e2:	75 22                	jne    106 <xhci_realloc_pipe+0x106>
  e4:	ba 00 00 00 00       	mov    $0x0,%edx
  e9:	b8 e1 03 00 00       	mov    $0x3e1,%eax
  ee:	e8 fc ff ff ff       	call   ef <xhci_realloc_pipe+0xef>
  f3:	89 d8                	mov    %ebx,%eax
  f5:	e8 fc ff ff ff       	call   f6 <xhci_realloc_pipe+0xf6>
  fa:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 101:	e9 3c 04 00 00       	jmp    542 <xhci_realloc_pipe+0x542>
 106:	89 ea                	mov    %ebp,%edx
 108:	89 f0                	mov    %esi,%eax
 10a:	e8 fc ff ff ff       	call   10b <xhci_realloc_pipe+0x10b>
 10f:	89 44 24 08          	mov    %eax,0x8(%esp)
 113:	85 c0                	test   %eax,%eax
 115:	0f 84 2b 03 00 00    	je     446 <xhci_realloc_pipe+0x446>
 11b:	b8 01 00 00 00       	mov    $0x1,%eax
 120:	89 e9                	mov    %ebp,%ecx
 122:	d3 e0                	shl    %cl,%eax
 124:	83 c8 01             	or     $0x1,%eax
 127:	8b 4c 24 08          	mov    0x8(%esp),%ecx
 12b:	89 41 04             	mov    %eax,0x4(%ecx)
 12e:	8b 83 30 01 00 00    	mov    0x130(%ebx),%eax
 134:	8d 68 01             	lea    0x1(%eax),%ebp
 137:	8b 44 24 04          	mov    0x4(%esp),%eax
 13b:	0f b6 48 20          	movzbl 0x20(%eax),%ecx
 13f:	d3 e5                	shl    %cl,%ebp
 141:	c1 e5 05             	shl    $0x5,%ebp
 144:	03 6c 24 08          	add    0x8(%esp),%ebp
 148:	80 7c 24 0c 03       	cmpb   $0x3,0xc(%esp)
 14d:	75 12                	jne    161 <xhci_realloc_pipe+0x161>
 14f:	89 fa                	mov    %edi,%edx
 151:	89 f0                	mov    %esi,%eax
 153:	e8 fc ff ff ff       	call   154 <xhci_realloc_pipe+0x154>
 158:	83 c0 03             	add    $0x3,%eax
 15b:	c1 e0 10             	shl    $0x10,%eax
 15e:	89 45 00             	mov    %eax,0x0(%ebp)
 161:	0f b6 44 24 0c       	movzbl 0xc(%esp),%eax
 166:	c1 e0 03             	shl    $0x3,%eax
 169:	0b 45 04             	or     0x4(%ebp),%eax
 16c:	89 45 04             	mov    %eax,0x4(%ebp)
 16f:	80 7f 02 00          	cmpb   $0x0,0x2(%edi)
 173:	78 07                	js     17c <xhci_realloc_pipe+0x17c>
 175:	80 7c 24 0c 00       	cmpb   $0x0,0xc(%esp)
 17a:	75 06                	jne    182 <xhci_realloc_pipe+0x182>
 17c:	83 c8 20             	or     $0x20,%eax
 17f:	89 45 04             	mov    %eax,0x4(%ebp)
 182:	0f b7 83 28 01 00 00 	movzwl 0x128(%ebx),%eax
 189:	89 c2                	mov    %eax,%edx
 18b:	c1 e2 10             	shl    $0x10,%edx
 18e:	09 55 04             	or     %edx,0x4(%ebp)
 191:	89 da                	mov    %ebx,%edx
 193:	83 ca 01             	or     $0x1,%edx
 196:	89 55 08             	mov    %edx,0x8(%ebp)
 199:	89 45 10             	mov    %eax,0x10(%ebp)
 19c:	ff b3 30 01 00 00    	push   0x130(%ebx)
 1a2:	ff b3 2c 01 00 00    	push   0x12c(%ebx)
 1a8:	53                   	push   %ebx
 1a9:	56                   	push   %esi
 1aa:	68 00 00 00 00       	push   $0x0
 1af:	68 33 02 00 00       	push   $0x233
 1b4:	e8 fc ff ff ff       	call   1b5 <xhci_realloc_pipe+0x1b5>
 1b9:	83 c4 18             	add    $0x18,%esp
 1bc:	83 bb 30 01 00 00 01 	cmpl   $0x1,0x130(%ebx)
 1c3:	0f 85 19 02 00 00    	jne    3e2 <xhci_realloc_pipe+0x3e2>
 1c9:	8b 3e                	mov    (%esi),%edi
 1cb:	8b 47 04             	mov    0x4(%edi),%eax
 1ce:	85 c0                	test   %eax,%eax
 1d0:	0f 84 a6 00 00 00    	je     27c <xhci_realloc_pipe+0x27c>
 1d6:	8b 77 08             	mov    0x8(%edi),%esi
 1d9:	8b 68 04             	mov    0x4(%eax),%ebp
 1dc:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 1df:	8b 56 3c             	mov    0x3c(%esi),%edx
 1e2:	8b 14 ca             	mov    (%edx,%ecx,8),%edx
 1e5:	8b 52 0c             	mov    0xc(%edx),%edx
 1e8:	c1 ea 1b             	shr    $0x1b,%edx
 1eb:	83 fa 03             	cmp    $0x3,%edx
 1ee:	0f 84 88 00 00 00    	je     27c <xhci_realloc_pipe+0x27c>
 1f4:	ba 01 00 00 00       	mov    $0x1,%edx
 1f9:	e8 fc ff ff ff       	call   1fa <xhci_realloc_pipe+0x1fa>
 1fe:	89 c2                	mov    %eax,%edx
 200:	85 c0                	test   %eax,%eax
 202:	0f 84 3e 02 00 00    	je     446 <xhci_realloc_pipe+0x446>
 208:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
 20f:	0f b6 4e 20          	movzbl 0x20(%esi),%ecx
 213:	b8 20 00 00 00       	mov    $0x20,%eax
 218:	d3 e0                	shl    %cl,%eax
 21a:	01 d0                	add    %edx,%eax
 21c:	81 08 00 00 00 04    	orl    $0x4000000,(%eax)
 222:	8b 4f 1c             	mov    0x1c(%edi),%ecx
 225:	c1 e1 18             	shl    $0x18,%ecx
 228:	09 48 04             	or     %ecx,0x4(%eax)
 22b:	8b 7d 0c             	mov    0xc(%ebp),%edi
 22e:	ff 32                	push   (%edx)
 230:	89 54 24 10          	mov    %edx,0x10(%esp)
 234:	6a 01                	push   $0x1
 236:	57                   	push   %edi
 237:	68 00 00 00 00       	push   $0x0
 23c:	68 5f 02 00 00       	push   $0x25f
 241:	e8 fc ff ff ff       	call   242 <xhci_realloc_pipe+0x242>
 246:	c1 e7 18             	shl    $0x18,%edi
 249:	89 f9                	mov    %edi,%ecx
 24b:	80 cd 30             	or     $0x30,%ch
 24e:	8b 54 24 20          	mov    0x20(%esp),%edx
 252:	89 f0                	mov    %esi,%eax
 254:	e8 fc ff ff ff       	call   255 <xhci_realloc_pipe+0x255>
 259:	89 c6                	mov    %eax,%esi
 25b:	8b 44 24 20          	mov    0x20(%esp),%eax
 25f:	e8 fc ff ff ff       	call   260 <xhci_realloc_pipe+0x260>
 264:	83 c4 14             	add    $0x14,%esp
 267:	83 fe 01             	cmp    $0x1,%esi
 26a:	74 10                	je     27c <xhci_realloc_pipe+0x27c>
 26c:	56                   	push   %esi
 26d:	68 00 00 00 00       	push   $0x0
 272:	68 82 02 00 00       	push   $0x282
 277:	e9 3a 01 00 00       	jmp    3b6 <xhci_realloc_pipe+0x3b6>
 27c:	8b 44 24 04          	mov    0x4(%esp),%eax
 280:	0f b6 48 20          	movzbl 0x20(%eax),%ecx
 284:	b8 00 04 00 00       	mov    $0x400,%eax
 289:	d3 e0                	shl    %cl,%eax
 28b:	89 44 24 0c          	mov    %eax,0xc(%esp)
 28f:	89 c1                	mov    %eax,%ecx
 291:	89 c2                	mov    %eax,%edx
 293:	b8 00 00 00 00       	mov    $0x0,%eax
 298:	e8 fc ff ff ff       	call   299 <xhci_realloc_pipe+0x299>
 29d:	89 c5                	mov    %eax,%ebp
 29f:	85 c0                	test   %eax,%eax
 2a1:	75 14                	jne    2b7 <xhci_realloc_pipe+0x2b7>
 2a3:	ba 00 00 00 00       	mov    $0x0,%edx
 2a8:	b8 05 04 00 00       	mov    $0x405,%eax
 2ad:	e8 fc ff ff ff       	call   2ae <xhci_realloc_pipe+0x2ae>
 2b2:	e9 8f 01 00 00       	jmp    446 <xhci_realloc_pipe+0x446>
 2b7:	68 00 00 00 00       	push   $0x0
 2bc:	68 a5 02 00 00       	push   $0x2a5
 2c1:	e8 fc ff ff ff       	call   2c2 <xhci_realloc_pipe+0x2c2>
 2c6:	b9 00 24 00 00       	mov    $0x2400,%ecx
 2cb:	31 d2                	xor    %edx,%edx
 2cd:	8b 44 24 0c          	mov    0xc(%esp),%eax
 2d1:	e8 fc ff ff ff       	call   2d2 <xhci_realloc_pipe+0x2d2>
 2d6:	59                   	pop    %ecx
 2d7:	5e                   	pop    %esi
 2d8:	48                   	dec    %eax
 2d9:	75 78                	jne    353 <xhci_realloc_pipe+0x353>
 2db:	8b 44 24 04          	mov    0x4(%esp),%eax
 2df:	8b 40 40             	mov    0x40(%eax),%eax
 2e2:	8b b0 0c 01 00 00    	mov    0x10c(%eax),%esi
 2e8:	89 f7                	mov    %esi,%edi
 2ea:	c1 ef 18             	shr    $0x18,%edi
 2ed:	57                   	push   %edi
 2ee:	68 00 00 00 00       	push   $0x0
 2f3:	68 aa 02 00 00       	push   $0x2aa
 2f8:	e8 fc ff ff ff       	call   2f9 <xhci_realloc_pipe+0x2f9>
 2fd:	8b 4c 24 18          	mov    0x18(%esp),%ecx
 301:	31 d2                	xor    %edx,%edx
 303:	89 e8                	mov    %ebp,%eax
 305:	e8 fc ff ff ff       	call   306 <xhci_realloc_pipe+0x306>
 30a:	8b 44 24 10          	mov    0x10(%esp),%eax
 30e:	8b 40 3c             	mov    0x3c(%eax),%eax
 311:	8d 04 f8             	lea    (%eax,%edi,8),%eax
 314:	89 28                	mov    %ebp,(%eax)
 316:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 31d:	57                   	push   %edi
 31e:	68 00 00 00 00       	push   $0x0
 323:	68 ca 02 00 00       	push   $0x2ca
 328:	e8 fc ff ff ff       	call   329 <xhci_realloc_pipe+0x329>
 32d:	81 e6 00 00 00 ff    	and    $0xff000000,%esi
 333:	89 f1                	mov    %esi,%ecx
 335:	80 cd 2c             	or     $0x2c,%ch
 338:	8b 54 24 20          	mov    0x20(%esp),%edx
 33c:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 340:	e8 fc ff ff ff       	call   341 <xhci_realloc_pipe+0x341>
 345:	83 c4 18             	add    $0x18,%esp
 348:	83 f8 01             	cmp    $0x1,%eax
 34b:	0f 84 89 00 00 00    	je     3da <xhci_realloc_pipe+0x3da>
 351:	eb 1d                	jmp    370 <xhci_realloc_pipe+0x370>
 353:	68 00 00 00 00       	push   $0x0
 358:	68 d9 02 00 00       	push   $0x2d9
 35d:	e8 fc ff ff ff       	call   35e <xhci_realloc_pipe+0x35e>
 362:	89 e8                	mov    %ebp,%eax
 364:	e8 fc ff ff ff       	call   365 <xhci_realloc_pipe+0x365>
 369:	58                   	pop    %eax
 36a:	5a                   	pop    %edx
 36b:	e9 d6 00 00 00       	jmp    446 <xhci_realloc_pipe+0x446>
 370:	50                   	push   %eax
 371:	68 00 00 00 00       	push   $0x0
 376:	68 f2 02 00 00       	push   $0x2f2
 37b:	e8 fc ff ff ff       	call   37c <xhci_realloc_pipe+0x37c>
 380:	57                   	push   %edi
 381:	68 00 00 00 00       	push   $0x0
 386:	68 ca 02 00 00       	push   $0x2ca
 38b:	e8 fc ff ff ff       	call   38c <xhci_realloc_pipe+0x38c>
 390:	81 ce 00 28 00 00    	or     $0x2800,%esi
 396:	89 f1                	mov    %esi,%ecx
 398:	31 d2                	xor    %edx,%edx
 39a:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 39e:	e8 fc ff ff ff       	call   39f <xhci_realloc_pipe+0x39f>
 3a3:	83 c4 18             	add    $0x18,%esp
 3a6:	83 f8 01             	cmp    $0x1,%eax
 3a9:	74 18                	je     3c3 <xhci_realloc_pipe+0x3c3>
 3ab:	50                   	push   %eax
 3ac:	68 00 00 00 00       	push   $0x0
 3b1:	68 16 03 00 00       	push   $0x316
 3b6:	e8 fc ff ff ff       	call   3b7 <xhci_realloc_pipe+0x3b7>
 3bb:	83 c4 0c             	add    $0xc,%esp
 3be:	e9 83 00 00 00       	jmp    446 <xhci_realloc_pipe+0x446>
 3c3:	8b 44 24 04          	mov    0x4(%esp),%eax
 3c7:	8b 40 3c             	mov    0x3c(%eax),%eax
 3ca:	c7 04 f8 00 00 00 00 	movl   $0x0,(%eax,%edi,8)
 3d1:	89 e8                	mov    %ebp,%eax
 3d3:	e8 fc ff ff ff       	call   3d4 <xhci_realloc_pipe+0x3d4>
 3d8:	eb 6c                	jmp    446 <xhci_realloc_pipe+0x446>
 3da:	89 bb 2c 01 00 00    	mov    %edi,0x12c(%ebx)
 3e0:	eb 4f                	jmp    431 <xhci_realloc_pipe+0x431>
 3e2:	8b 46 04             	mov    0x4(%esi),%eax
 3e5:	8b 70 0c             	mov    0xc(%eax),%esi
 3e8:	89 b3 2c 01 00 00    	mov    %esi,0x12c(%ebx)
 3ee:	8b 44 24 08          	mov    0x8(%esp),%eax
 3f2:	ff 30                	push   (%eax)
 3f4:	ff 70 04             	push   0x4(%eax)
 3f7:	56                   	push   %esi
 3f8:	68 00 00 00 00       	push   $0x0
 3fd:	68 5f 02 00 00       	push   $0x25f
 402:	e8 fc ff ff ff       	call   403 <xhci_realloc_pipe+0x403>
 407:	c1 e6 18             	shl    $0x18,%esi
 40a:	89 f1                	mov    %esi,%ecx
 40c:	80 cd 30             	or     $0x30,%ch
 40f:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 413:	8b 44 24 18          	mov    0x18(%esp),%eax
 417:	e8 fc ff ff ff       	call   418 <xhci_realloc_pipe+0x418>
 41c:	83 c4 14             	add    $0x14,%esp
 41f:	83 f8 01             	cmp    $0x1,%eax
 422:	74 0d                	je     431 <xhci_realloc_pipe+0x431>
 424:	50                   	push   %eax
 425:	68 00 00 00 00       	push   $0x0
 42a:	68 32 03 00 00       	push   $0x332
 42f:	eb 85                	jmp    3b6 <xhci_realloc_pipe+0x3b6>
 431:	8b 44 24 08          	mov    0x8(%esp),%eax
 435:	e8 fc ff ff ff       	call   436 <xhci_realloc_pipe+0x436>
 43a:	8b 44 24 10          	mov    0x10(%esp),%eax
 43e:	89 04 24             	mov    %eax,(%esp)
 441:	e9 fc 00 00 00       	jmp    542 <xhci_realloc_pipe+0x542>
 446:	8b 83 34 01 00 00    	mov    0x134(%ebx),%eax
 44c:	e8 fc ff ff ff       	call   44d <xhci_realloc_pipe+0x44d>
 451:	89 d8                	mov    %ebx,%eax
 453:	e8 fc ff ff ff       	call   454 <xhci_realloc_pipe+0x454>
 458:	8b 44 24 08          	mov    0x8(%esp),%eax
 45c:	e9 dc 00 00 00       	jmp    53d <xhci_realloc_pipe+0x53d>
 461:	8b 04 24             	mov    (%esp),%eax
 464:	0f b7 58 08          	movzwl 0x8(%eax),%ebx
 468:	89 f2                	mov    %esi,%edx
 46a:	e8 fc ff ff ff       	call   46b <xhci_realloc_pipe+0x46b>
 46f:	8b 04 24             	mov    (%esp),%eax
 472:	8b 38                	mov    (%eax),%edi
 474:	ff 70 10             	push   0x10(%eax)
 477:	ff 70 0c             	push   0xc(%eax)
 47a:	8b 44 24 08          	mov    0x8(%esp),%eax
 47e:	2d 20 01 00 00       	sub    $0x120,%eax
 483:	50                   	push   %eax
 484:	56                   	push   %esi
 485:	68 00 00 00 00       	push   $0x0
 48a:	68 33 02 00 00       	push   $0x233
 48f:	e8 fc ff ff ff       	call   490 <xhci_realloc_pipe+0x490>
 494:	83 c4 18             	add    $0x18,%esp
 497:	80 7c 24 0c 00       	cmpb   $0x0,0xc(%esp)
 49c:	0f 85 a0 00 00 00    	jne    542 <xhci_realloc_pipe+0x542>
 4a2:	8b 04 24             	mov    (%esp),%eax
 4a5:	0f b7 40 08          	movzwl 0x8(%eax),%eax
 4a9:	66 39 c3             	cmp    %ax,%bx
 4ac:	0f 84 90 00 00 00    	je     542 <xhci_realloc_pipe+0x542>
 4b2:	50                   	push   %eax
 4b3:	53                   	push   %ebx
 4b4:	68 00 00 00 00       	push   $0x0
 4b9:	68 5a 03 00 00       	push   $0x35a
 4be:	e8 fc ff ff ff       	call   4bf <xhci_realloc_pipe+0x4bf>
 4c3:	ba 01 00 00 00       	mov    $0x1,%edx
 4c8:	89 f0                	mov    %esi,%eax
 4ca:	e8 fc ff ff ff       	call   4cb <xhci_realloc_pipe+0x4cb>
 4cf:	89 c3                	mov    %eax,%ebx
 4d1:	83 c4 10             	add    $0x10,%esp
 4d4:	85 c0                	test   %eax,%eax
 4d6:	74 6a                	je     542 <xhci_realloc_pipe+0x542>
 4d8:	c7 40 04 02 00 00 00 	movl   $0x2,0x4(%eax)
 4df:	0f b6 4f 20          	movzbl 0x20(%edi),%ecx
 4e3:	b8 40 00 00 00       	mov    $0x40,%eax
 4e8:	d3 e0                	shl    %cl,%eax
 4ea:	8b 34 24             	mov    (%esp),%esi
 4ed:	0f b7 56 08          	movzwl 0x8(%esi),%edx
 4f1:	c1 e2 10             	shl    $0x10,%edx
 4f4:	09 54 03 04          	or     %edx,0x4(%ebx,%eax,1)
 4f8:	8b 76 0c             	mov    0xc(%esi),%esi
 4fb:	ff 33                	push   (%ebx)
 4fd:	6a 02                	push   $0x2
 4ff:	56                   	push   %esi
 500:	68 00 00 00 00       	push   $0x0
 505:	68 5f 02 00 00       	push   $0x25f
 50a:	e8 fc ff ff ff       	call   50b <xhci_realloc_pipe+0x50b>
 50f:	c1 e6 18             	shl    $0x18,%esi
 512:	89 f1                	mov    %esi,%ecx
 514:	80 cd 34             	or     $0x34,%ch
 517:	89 da                	mov    %ebx,%edx
 519:	89 f8                	mov    %edi,%eax
 51b:	e8 fc ff ff ff       	call   51c <xhci_realloc_pipe+0x51c>
 520:	83 c4 14             	add    $0x14,%esp
 523:	83 f8 01             	cmp    $0x1,%eax
 526:	74 13                	je     53b <xhci_realloc_pipe+0x53b>
 528:	50                   	push   %eax
 529:	68 00 00 00 00       	push   $0x0
 52e:	68 86 03 00 00       	push   $0x386
 533:	e8 fc ff ff ff       	call   534 <xhci_realloc_pipe+0x534>
 538:	83 c4 0c             	add    $0xc,%esp
 53b:	89 d8                	mov    %ebx,%eax
 53d:	e8 fc ff ff ff       	call   53e <xhci_realloc_pipe+0x53e>
 542:	8b 04 24             	mov    (%esp),%eax
 545:	83 c4 14             	add    $0x14,%esp
 548:	5b                   	pop    %ebx
 549:	5e                   	pop    %esi
 54a:	5f                   	pop    %edi
 54b:	5d                   	pop    %ebp
 54c:	c3                   	ret    

Disassembly of section .text.xhci_send_pipe:

00000000 <xhci_send_pipe>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	53                   	push   %ebx
   5:	89 c3                	mov    %eax,%ebx
   7:	8b 74 24 1c          	mov    0x1c(%esp),%esi
   b:	8b 38                	mov    (%eax),%edi
   d:	85 c9                	test   %ecx,%ecx
   f:	0f 84 8e 00 00 00    	je     a3 <xhci_send_pipe+0xa3>
  15:	89 d5                	mov    %edx,%ebp
  17:	89 ca                	mov    %ecx,%edx
  19:	80 79 01 05          	cmpb   $0x5,0x1(%ecx)
  1d:	75 07                	jne    26 <xhci_send_pipe+0x26>
  1f:	31 c0                	xor    %eax,%eax
  21:	e9 c5 00 00 00       	jmp    eb <xhci_send_pipe+0xeb>
  26:	b9 40 08 00 00       	mov    $0x840,%ecx
  2b:	85 f6                	test   %esi,%esi
  2d:	74 0e                	je     3d <xhci_send_pipe+0x3d>
  2f:	83 fd 01             	cmp    $0x1,%ebp
  32:	19 c9                	sbb    %ecx,%ecx
  34:	66 31 c9             	xor    %cx,%cx
  37:	81 c1 40 08 03 00    	add    $0x30840,%ecx
  3d:	8d 83 e0 fe ff ff    	lea    -0x120(%ebx),%eax
  43:	51                   	push   %ecx
  44:	b9 08 00 00 00       	mov    $0x8,%ecx
  49:	89 44 24 04          	mov    %eax,0x4(%esp)
  4d:	e8 fc ff ff ff       	call   4e <xhci_send_pipe+0x4e>
  52:	58                   	pop    %eax
  53:	85 f6                	test   %esi,%esi
  55:	8b 04 24             	mov    (%esp),%eax
  58:	74 1e                	je     78 <xhci_send_pipe+0x78>
  5a:	83 fd 01             	cmp    $0x1,%ebp
  5d:	19 d2                	sbb    %edx,%edx
  5f:	66 31 d2             	xor    %dx,%dx
  62:	81 c2 00 0c 01 00    	add    $0x10c00,%edx
  68:	52                   	push   %edx
  69:	89 f1                	mov    %esi,%ecx
  6b:	8b 54 24 1c          	mov    0x1c(%esp),%edx
  6f:	e8 fc ff ff ff       	call   70 <xhci_send_pipe+0x70>
  74:	58                   	pop    %eax
  75:	8b 04 24             	mov    (%esp),%eax
  78:	83 fd 01             	cmp    $0x1,%ebp
  7b:	19 d2                	sbb    %edx,%edx
  7d:	81 e2 00 00 01 00    	and    $0x10000,%edx
  83:	81 c2 20 10 00 00    	add    $0x1020,%edx
  89:	52                   	push   %edx
  8a:	31 c9                	xor    %ecx,%ecx
  8c:	31 d2                	xor    %edx,%edx
  8e:	e8 fc ff ff ff       	call   8f <xhci_send_pipe+0x8f>
  93:	8b 4b 10             	mov    0x10(%ebx),%ecx
  96:	8b 53 0c             	mov    0xc(%ebx),%edx
  99:	89 f8                	mov    %edi,%eax
  9b:	e8 fc ff ff ff       	call   9c <xhci_send_pipe+0x9c>
  a0:	59                   	pop    %ecx
  a1:	eb 11                	jmp    b4 <xhci_send_pipe+0xb4>
  a3:	8d 80 e0 fe ff ff    	lea    -0x120(%eax),%eax
  a9:	89 f1                	mov    %esi,%ecx
  ab:	8b 54 24 18          	mov    0x18(%esp),%edx
  af:	e8 fc ff ff ff       	call   b0 <xhci_send_pipe+0xb0>
  b4:	89 f2                	mov    %esi,%edx
  b6:	89 d8                	mov    %ebx,%eax
  b8:	e8 fc ff ff ff       	call   b9 <xhci_send_pipe+0xb9>
  bd:	89 c1                	mov    %eax,%ecx
  bf:	8d 93 e0 fe ff ff    	lea    -0x120(%ebx),%edx
  c5:	89 f8                	mov    %edi,%eax
  c7:	e8 fc ff ff ff       	call   c8 <xhci_send_pipe+0xc8>
  cc:	83 f8 01             	cmp    $0x1,%eax
  cf:	0f 84 4a ff ff ff    	je     1f <xhci_send_pipe+0x1f>
  d5:	50                   	push   %eax
  d6:	68 00 00 00 00       	push   $0x0
  db:	68 af 03 00 00       	push   $0x3af
  e0:	e8 fc ff ff ff       	call   e1 <xhci_send_pipe+0xe1>
  e5:	83 c4 0c             	add    $0xc,%esp
  e8:	83 c8 ff             	or     $0xffffffff,%eax
  eb:	5a                   	pop    %edx
  ec:	5b                   	pop    %ebx
  ed:	5e                   	pop    %esi
  ee:	5f                   	pop    %edi
  ef:	5d                   	pop    %ebp
  f0:	c3                   	ret    

Disassembly of section .text.runtime.src/hw/usb-xhci.c.1176:

00000000 <xhci_poll_intr>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 08             	sub    $0x8,%esp
   7:	89 c6                	mov    %eax,%esi
   9:	89 d3                	mov    %edx,%ebx
   b:	2d 20 01 00 00       	sub    $0x120,%eax
  10:	89 04 24             	mov    %eax,(%esp)
  13:	8b 06                	mov    (%esi),%eax
  15:	0f b7 6e 08          	movzwl 0x8(%esi),%ebp
  19:	8b 56 14             	mov    0x14(%esi),%edx
  1c:	83 7e 18 00          	cmpl   $0x0,0x18(%esi)
  20:	75 16                	jne    38 <xhci_poll_intr+0x38>
  22:	89 e9                	mov    %ebp,%ecx
  24:	8b 04 24             	mov    (%esp),%eax
  27:	e8 fc ff ff ff       	call   28 <xhci_poll_intr+0x28>
  2c:	c7 46 18 01 00 00 00 	movl   $0x1,0x18(%esi)
  33:	83 c8 ff             	or     $0xffffffff,%eax
  36:	eb 50                	jmp    88 <xhci_poll_intr+0x88>
  38:	89 54 24 04          	mov    %edx,0x4(%esp)
  3c:	e8 fc ff ff ff       	call   3d <xhci_poll_intr+0x3d>
  41:	83 c8 ff             	or     $0xffffffff,%eax
  44:	8b 7e f4             	mov    -0xc(%esi),%edi
  47:	39 7e f0             	cmp    %edi,-0x10(%esi)
  4a:	75 3c                	jne    88 <xhci_poll_intr+0x88>
  4c:	55                   	push   %ebp
  4d:	8b 54 24 08          	mov    0x8(%esp),%edx
  51:	52                   	push   %edx
  52:	89 54 24 0c          	mov    %edx,0xc(%esp)
  56:	53                   	push   %ebx
  57:	ff 76 ec             	push   -0x14(%esi)
  5a:	ff 76 e8             	push   -0x18(%esi)
  5d:	68 00 00 00 00       	push   $0x0
  62:	68 c8 03 00 00       	push   $0x3c8
  67:	e8 fc ff ff ff       	call   68 <xhci_poll_intr+0x68>
  6c:	89 df                	mov    %ebx,%edi
  6e:	8b 54 24 20          	mov    0x20(%esp),%edx
  72:	89 d6                	mov    %edx,%esi
  74:	89 e9                	mov    %ebp,%ecx
  76:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  78:	89 e9                	mov    %ebp,%ecx
  7a:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  7e:	e8 fc ff ff ff       	call   7f <xhci_poll_intr+0x7f>
  83:	83 c4 1c             	add    $0x1c,%esp
  86:	31 c0                	xor    %eax,%eax
  88:	83 c4 08             	add    $0x8,%esp
  8b:	5b                   	pop    %ebx
  8c:	5e                   	pop    %esi
  8d:	5f                   	pop    %edi
  8e:	5d                   	pop    %ebp
  8f:	c3                   	ret    
