
./usb-hub.o:     file format elf32-i386


Disassembly of section .text.get_port_status:

00000000 <get_port_status>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	83 ec 0c             	sub    $0xc,%esp
   5:	89 c3                	mov    %eax,%ebx
   7:	89 0c 24             	mov    %ecx,(%esp)
   a:	c7 44 24 04 a3 00 00 	movl   $0xa3,0x4(%esp)
  11:	00 
  12:	42                   	inc    %edx
  13:	66 89 54 24 08       	mov    %dx,0x8(%esp)
  18:	66 c7 44 24 0a 04 00 	movw   $0x4,0xa(%esp)
  1f:	8d 70 0c             	lea    0xc(%eax),%esi
  22:	89 f0                	mov    %esi,%eax
  24:	e8 fc ff ff ff       	call   25 <get_port_status+0x25>
  29:	8b 43 04             	mov    0x4(%ebx),%eax
  2c:	8b 40 04             	mov    0x4(%eax),%eax
  2f:	8b 0c 24             	mov    (%esp),%ecx
  32:	8d 54 24 04          	lea    0x4(%esp),%edx
  36:	e8 fc ff ff ff       	call   37 <get_port_status+0x37>
  3b:	89 c3                	mov    %eax,%ebx
  3d:	89 f0                	mov    %esi,%eax
  3f:	e8 fc ff ff ff       	call   40 <get_port_status+0x40>
  44:	89 d8                	mov    %ebx,%eax
  46:	83 c4 0c             	add    $0xc,%esp
  49:	5b                   	pop    %ebx
  4a:	5e                   	pop    %esi
  4b:	c3                   	ret    

Disassembly of section .text.usb_hub_detect:

00000000 <usb_hub_detect>:
   0:	53                   	push   %ebx
   1:	51                   	push   %ecx
   2:	89 d3                	mov    %edx,%ebx
   4:	89 e1                	mov    %esp,%ecx
   6:	e8 fc ff ff ff       	call   7 <usb_hub_detect+0x7>
   b:	85 c0                	test   %eax,%eax
   d:	74 12                	je     21 <usb_hub_detect+0x21>
   f:	53                   	push   %ebx
  10:	68 00 00 00 00       	push   $0x0
  15:	e8 fc ff ff ff       	call   16 <usb_hub_detect+0x16>
  1a:	59                   	pop    %ecx
  1b:	5b                   	pop    %ebx
  1c:	83 c8 ff             	or     $0xffffffff,%eax
  1f:	eb 06                	jmp    27 <usb_hub_detect+0x27>
  21:	8b 04 24             	mov    (%esp),%eax
  24:	83 e0 01             	and    $0x1,%eax
  27:	5a                   	pop    %edx
  28:	5b                   	pop    %ebx
  29:	c3                   	ret    

Disassembly of section .text.set_port_feature:

00000000 <set_port_feature>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	83 ec 08             	sub    $0x8,%esp
   5:	89 c3                	mov    %eax,%ebx
   7:	66 c7 04 24 23 03    	movw   $0x323,(%esp)
   d:	66 89 4c 24 02       	mov    %cx,0x2(%esp)
  12:	42                   	inc    %edx
  13:	66 89 54 24 04       	mov    %dx,0x4(%esp)
  18:	66 c7 44 24 06 00 00 	movw   $0x0,0x6(%esp)
  1f:	8d 70 0c             	lea    0xc(%eax),%esi
  22:	89 f0                	mov    %esi,%eax
  24:	e8 fc ff ff ff       	call   25 <set_port_feature+0x25>
  29:	8b 43 04             	mov    0x4(%ebx),%eax
  2c:	8b 40 04             	mov    0x4(%eax),%eax
  2f:	31 c9                	xor    %ecx,%ecx
  31:	89 e2                	mov    %esp,%edx
  33:	e8 fc ff ff ff       	call   34 <set_port_feature+0x34>
  38:	89 c3                	mov    %eax,%ebx
  3a:	89 f0                	mov    %esi,%eax
  3c:	e8 fc ff ff ff       	call   3d <set_port_feature+0x3d>
  41:	89 d8                	mov    %ebx,%eax
  43:	83 c4 08             	add    $0x8,%esp
  46:	5b                   	pop    %ebx
  47:	5e                   	pop    %esi
  48:	c3                   	ret    

Disassembly of section .text.usb_hub_disconnect:

00000000 <usb_hub_disconnect>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	83 ec 08             	sub    $0x8,%esp
   6:	89 c6                	mov    %eax,%esi
   8:	89 d3                	mov    %edx,%ebx
   a:	c7 04 24 23 01 01 00 	movl   $0x10123,(%esp)
  11:	8d 42 01             	lea    0x1(%edx),%eax
  14:	66 89 44 24 04       	mov    %ax,0x4(%esp)
  19:	66 c7 44 24 06 00 00 	movw   $0x0,0x6(%esp)
  20:	8d 7e 0c             	lea    0xc(%esi),%edi
  23:	89 f8                	mov    %edi,%eax
  25:	e8 fc ff ff ff       	call   26 <usb_hub_disconnect+0x26>
  2a:	8b 46 04             	mov    0x4(%esi),%eax
  2d:	8b 40 04             	mov    0x4(%eax),%eax
  30:	31 c9                	xor    %ecx,%ecx
  32:	89 e2                	mov    %esp,%edx
  34:	e8 fc ff ff ff       	call   35 <usb_hub_disconnect+0x35>
  39:	89 c6                	mov    %eax,%esi
  3b:	89 f8                	mov    %edi,%eax
  3d:	e8 fc ff ff ff       	call   3e <usb_hub_disconnect+0x3e>
  42:	85 f6                	test   %esi,%esi
  44:	74 0d                	je     53 <usb_hub_disconnect+0x53>
  46:	53                   	push   %ebx
  47:	68 1f 00 00 00       	push   $0x1f
  4c:	e8 fc ff ff ff       	call   4d <usb_hub_disconnect+0x4d>
  51:	59                   	pop    %ecx
  52:	5b                   	pop    %ebx
  53:	83 c4 08             	add    $0x8,%esp
  56:	5b                   	pop    %ebx
  57:	5e                   	pop    %esi
  58:	5f                   	pop    %edi
  59:	c3                   	ret    

Disassembly of section .text.usb_hub_reset:

00000000 <usb_hub_reset>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	56                   	push   %esi
   4:	89 c3                	mov    %eax,%ebx
   6:	89 d6                	mov    %edx,%esi
   8:	b9 04 00 00 00       	mov    $0x4,%ecx
   d:	e8 fc ff ff ff       	call   e <usb_hub_reset+0xe>
  12:	85 c0                	test   %eax,%eax
  14:	75 74                	jne    8a <usb_hub_reset+0x8a>
  16:	b8 14 00 00 00       	mov    $0x14,%eax
  1b:	e8 fc ff ff ff       	call   1c <usb_hub_reset+0x1c>
  20:	89 c7                	mov    %eax,%edi
  22:	89 e1                	mov    %esp,%ecx
  24:	89 f2                	mov    %esi,%edx
  26:	89 d8                	mov    %ebx,%eax
  28:	e8 fc ff ff ff       	call   29 <usb_hub_reset+0x29>
  2d:	85 c0                	test   %eax,%eax
  2f:	75 59                	jne    8a <usb_hub_reset+0x8a>
  31:	8b 04 24             	mov    (%esp),%eax
  34:	a8 10                	test   $0x10,%al
  36:	75 0f                	jne    47 <usb_hub_reset+0x47>
  38:	8b 53 04             	mov    0x4(%ebx),%edx
  3b:	8a 4a 18             	mov    0x18(%edx),%cl
  3e:	80 f9 03             	cmp    $0x3,%cl
  41:	75 2c                	jne    6f <usb_hub_reset+0x6f>
  43:	a8 e0                	test   $0xe0,%al
  45:	74 28                	je     6f <usb_hub_reset+0x6f>
  47:	89 f8                	mov    %edi,%eax
  49:	e8 fc ff ff ff       	call   4a <usb_hub_reset+0x4a>
  4e:	85 c0                	test   %eax,%eax
  50:	74 11                	je     63 <usb_hub_reset+0x63>
  52:	ba 00 00 00 00       	mov    $0x0,%edx
  57:	b8 80 00 00 00       	mov    $0x80,%eax
  5c:	e8 fc ff ff ff       	call   5d <usb_hub_reset+0x5d>
  61:	eb 27                	jmp    8a <usb_hub_reset+0x8a>
  63:	b8 05 00 00 00       	mov    $0x5,%eax
  68:	e8 fc ff ff ff       	call   69 <usb_hub_reset+0x69>
  6d:	eb b3                	jmp    22 <usb_hub_reset+0x22>
  6f:	83 ca ff             	or     $0xffffffff,%edx
  72:	a8 01                	test   $0x1,%al
  74:	74 2d                	je     a3 <usb_hub_reset+0xa3>
  76:	ba 03 00 00 00       	mov    $0x3,%edx
  7b:	80 f9 03             	cmp    $0x3,%cl
  7e:	74 23                	je     a3 <usb_hub_reset+0xa3>
  80:	c1 e8 09             	shr    $0x9,%eax
  83:	83 e0 03             	and    $0x3,%eax
  86:	89 c2                	mov    %eax,%edx
  88:	eb 19                	jmp    a3 <usb_hub_reset+0xa3>
  8a:	56                   	push   %esi
  8b:	68 42 00 00 00       	push   $0x42
  90:	e8 fc ff ff ff       	call   91 <usb_hub_reset+0x91>
  95:	89 f2                	mov    %esi,%edx
  97:	89 d8                	mov    %ebx,%eax
  99:	e8 fc ff ff ff       	call   9a <usb_hub_reset+0x9a>
  9e:	59                   	pop    %ecx
  9f:	5b                   	pop    %ebx
  a0:	83 ca ff             	or     $0xffffffff,%edx
  a3:	89 d0                	mov    %edx,%eax
  a5:	5a                   	pop    %edx
  a6:	5b                   	pop    %ebx
  a7:	5e                   	pop    %esi
  a8:	5f                   	pop    %edi
  a9:	c3                   	ret    

Disassembly of section .text.usb_hub_setup:

00000000 <usb_hub_setup>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	83 ec 34             	sub    $0x34,%esp
   6:	89 c6                	mov    %eax,%esi
   8:	8b 40 04             	mov    0x4(%eax),%eax
   b:	66 c7 44 24 10 a0 06 	movw   $0x6a0,0x10(%esp)
  12:	ba 00 29 00 00       	mov    $0x2900,%edx
  17:	80 78 07 03          	cmpb   $0x3,0x7(%eax)
  1b:	75 05                	jne    22 <usb_hub_setup+0x22>
  1d:	ba 00 2a 00 00       	mov    $0x2a00,%edx
  22:	66 89 54 24 12       	mov    %dx,0x12(%esp)
  27:	c7 44 24 14 00 00 07 	movl   $0x70000,0x14(%esp)
  2e:	00 
  2f:	8d 4c 24 01          	lea    0x1(%esp),%ecx
  33:	8d 54 24 10          	lea    0x10(%esp),%edx
  37:	e8 fc ff ff ff       	call   38 <usb_hub_setup+0x38>
  3c:	89 c3                	mov    %eax,%ebx
  3e:	85 c0                	test   %eax,%eax
  40:	0f 85 b8 00 00 00    	jne    fe <usb_hub_setup+0xfe>
  46:	b9 24 00 00 00       	mov    $0x24,%ecx
  4b:	31 d2                	xor    %edx,%edx
  4d:	8d 44 24 10          	lea    0x10(%esp),%eax
  51:	e8 fc ff ff ff       	call   52 <usb_hub_setup+0x52>
  56:	89 74 24 14          	mov    %esi,0x14(%esp)
  5a:	8b 7e 04             	mov    0x4(%esi),%edi
  5d:	8b 07                	mov    (%edi),%eax
  5f:	89 44 24 18          	mov    %eax,0x18(%esp)
  63:	0f b6 44 24 03       	movzbl 0x3(%esp),%eax
  68:	89 44 24 2c          	mov    %eax,0x2c(%esp)
  6c:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
  73:	00 
  74:	80 7e 18 03          	cmpb   $0x3,0x18(%esi)
  78:	75 4f                	jne    c9 <usb_hub_setup+0xc9>
  7a:	8b 06                	mov    (%esi),%eax
  7c:	8b 50 04             	mov    0x4(%eax),%edx
  7f:	31 c0                	xor    %eax,%eax
  81:	85 d2                	test   %edx,%edx
  83:	74 08                	je     8d <usb_hub_setup+0x8d>
  85:	40                   	inc    %eax
  86:	8b 12                	mov    (%edx),%edx
  88:	8b 52 04             	mov    0x4(%edx),%edx
  8b:	eb f4                	jmp    81 <usb_hub_setup+0x81>
  8d:	66 c7 44 24 08 20 0c 	movw   $0xc20,0x8(%esp)
  94:	66 89 44 24 0a       	mov    %ax,0xa(%esp)
  99:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
  a0:	00 
  a1:	31 c9                	xor    %ecx,%ecx
  a3:	8d 54 24 08          	lea    0x8(%esp),%edx
  a7:	89 f8                	mov    %edi,%eax
  a9:	e8 fc ff ff ff       	call   aa <usb_hub_setup+0xaa>
  ae:	85 c0                	test   %eax,%eax
  b0:	74 17                	je     c9 <usb_hub_setup+0xc9>
  b2:	eb 4a                	jmp    fe <usb_hub_setup+0xfe>
  b4:	b9 08 00 00 00       	mov    $0x8,%ecx
  b9:	89 da                	mov    %ebx,%edx
  bb:	8d 44 24 10          	lea    0x10(%esp),%eax
  bf:	e8 fc ff ff ff       	call   c0 <usb_hub_setup+0xc0>
  c4:	85 c0                	test   %eax,%eax
  c6:	75 36                	jne    fe <usb_hub_setup+0xfe>
  c8:	43                   	inc    %ebx
  c9:	0f b6 44 24 03       	movzbl 0x3(%esp),%eax
  ce:	39 d8                	cmp    %ebx,%eax
  d0:	7f e2                	jg     b4 <usb_hub_setup+0xb4>
  d2:	0f b6 44 24 06       	movzbl 0x6(%esp),%eax
  d7:	01 c0                	add    %eax,%eax
  d9:	e8 fc ff ff ff       	call   da <usb_hub_setup+0xda>
  de:	8d 44 24 10          	lea    0x10(%esp),%eax
  e2:	e8 fc ff ff ff       	call   e3 <usb_hub_setup+0xe3>
  e7:	ff 74 24 30          	push   0x30(%esp)
  eb:	68 60 00 00 00       	push   $0x60
  f0:	e8 fc ff ff ff       	call   f1 <usb_hub_setup+0xf1>
  f5:	58                   	pop    %eax
  f6:	5a                   	pop    %edx
  f7:	83 7c 24 30 01       	cmpl   $0x1,0x30(%esp)
  fc:	19 c0                	sbb    %eax,%eax
  fe:	83 c4 34             	add    $0x34,%esp
 101:	5b                   	pop    %ebx
 102:	5e                   	pop    %esi
 103:	5f                   	pop    %edi
 104:	c3                   	ret    
