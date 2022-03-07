
./virtio-ring.o:     file format elf32-i386


Disassembly of section .text.vring_more_used:

00000000 <vring_more_used>:
   0:	8b 90 10 28 00 00    	mov    0x2810(%eax),%edx
   6:	66 8b 80 16 28 00 00 	mov    0x2816(%eax),%ax
   d:	66 39 42 02          	cmp    %ax,0x2(%edx)
  11:	0f 95 c0             	setne  %al
  14:	0f b6 c0             	movzbl %al,%eax
  17:	c3                   	ret    

Disassembly of section .text.vring_detach:

00000000 <vring_detach>:
   0:	53                   	push   %ebx
   1:	89 c1                	mov    %eax,%ecx
   3:	8b 98 08 28 00 00    	mov    0x2808(%eax),%ebx
   9:	89 d0                	mov    %edx,%eax
   b:	c1 e0 04             	shl    $0x4,%eax
   e:	01 d8                	add    %ebx,%eax
  10:	f6 40 0c 01          	testb  $0x1,0xc(%eax)
  14:	74 06                	je     1c <vring_detach+0x1c>
  16:	0f b7 40 0e          	movzwl 0xe(%eax),%eax
  1a:	eb ef                	jmp    b <vring_detach+0xb>
  1c:	8b 99 14 28 00 00    	mov    0x2814(%ecx),%ebx
  22:	66 89 58 0e          	mov    %bx,0xe(%eax)
  26:	66 89 91 14 28 00 00 	mov    %dx,0x2814(%ecx)
  2d:	5b                   	pop    %ebx
  2e:	c3                   	ret    

Disassembly of section .text.vring_get_buf:

00000000 <vring_get_buf>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	89 c3                	mov    %eax,%ebx
   5:	89 d1                	mov    %edx,%ecx
   7:	8b b8 10 28 00 00    	mov    0x2810(%eax),%edi
   d:	0f b7 80 16 28 00 00 	movzwl 0x2816(%eax),%eax
  14:	89 c6                	mov    %eax,%esi
  16:	31 d2                	xor    %edx,%edx
  18:	f7 b3 04 28 00 00    	divl   0x2804(%ebx)
  1e:	8b 44 d7 04          	mov    0x4(%edi,%edx,8),%eax
  22:	85 c9                	test   %ecx,%ecx
  24:	74 06                	je     2c <vring_get_buf+0x2c>
  26:	8b 54 d7 08          	mov    0x8(%edi,%edx,8),%edx
  2a:	89 11                	mov    %edx,(%ecx)
  2c:	0f b7 bc 43 18 28 00 	movzwl 0x2818(%ebx,%eax,2),%edi
  33:	00 
  34:	89 c2                	mov    %eax,%edx
  36:	89 d8                	mov    %ebx,%eax
  38:	e8 fc ff ff ff       	call   39 <vring_get_buf+0x39>
  3d:	46                   	inc    %esi
  3e:	66 89 b3 16 28 00 00 	mov    %si,0x2816(%ebx)
  45:	89 f8                	mov    %edi,%eax
  47:	5b                   	pop    %ebx
  48:	5e                   	pop    %esi
  49:	5f                   	pop    %edi
  4a:	c3                   	ret    

Disassembly of section .text.vring_add_buf:

00000000 <vring_add_buf>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 10             	sub    $0x10,%esp
   7:	89 c3                	mov    %eax,%ebx
   9:	89 0c 24             	mov    %ecx,(%esp)
   c:	8b b8 08 28 00 00    	mov    0x2808(%eax),%edi
  12:	8b 80 0c 28 00 00    	mov    0x280c(%eax),%eax
  18:	89 44 24 08          	mov    %eax,0x8(%esp)
  1c:	89 c8                	mov    %ecx,%eax
  1e:	03 44 24 24          	add    0x24(%esp),%eax
  22:	75 11                	jne    35 <vring_add_buf+0x35>
  24:	68 00 00 00 00       	push   $0x0
  29:	6a 6d                	push   $0x6d
  2b:	68 00 00 00 00       	push   $0x0
  30:	e8 fc ff ff ff       	call   31 <vring_add_buf+0x31>
  35:	89 d6                	mov    %edx,%esi
  37:	0f b7 83 14 28 00 00 	movzwl 0x2814(%ebx),%eax
  3e:	66 89 44 24 06       	mov    %ax,0x6(%esp)
  43:	89 44 24 0c          	mov    %eax,0xc(%esp)
  47:	31 ed                	xor    %ebp,%ebp
  49:	31 d2                	xor    %edx,%edx
  4b:	39 2c 24             	cmp    %ebp,(%esp)
  4e:	74 29                	je     79 <vring_add_buf+0x79>
  50:	89 c1                	mov    %eax,%ecx
  52:	c1 e1 04             	shl    $0x4,%ecx
  55:	01 f9                	add    %edi,%ecx
  57:	66 c7 41 0c 01 00    	movw   $0x1,0xc(%ecx)
  5d:	8b 14 ee             	mov    (%esi,%ebp,8),%edx
  60:	89 11                	mov    %edx,(%ecx)
  62:	c7 41 04 00 00 00 00 	movl   $0x0,0x4(%ecx)
  69:	8b 54 ee 04          	mov    0x4(%esi,%ebp,8),%edx
  6d:	89 51 08             	mov    %edx,0x8(%ecx)
  70:	45                   	inc    %ebp
  71:	89 c2                	mov    %eax,%edx
  73:	0f b7 41 0e          	movzwl 0xe(%ecx),%eax
  77:	eb d2                	jmp    4b <vring_add_buf+0x4b>
  79:	8b 0c 24             	mov    (%esp),%ecx
  7c:	8d 34 ce             	lea    (%esi,%ecx,8),%esi
  7f:	83 7c 24 24 00       	cmpl   $0x0,0x24(%esp)
  84:	74 2d                	je     b3 <vring_add_buf+0xb3>
  86:	89 c1                	mov    %eax,%ecx
  88:	c1 e1 04             	shl    $0x4,%ecx
  8b:	01 f9                	add    %edi,%ecx
  8d:	66 c7 41 0c 03 00    	movw   $0x3,0xc(%ecx)
  93:	8b 16                	mov    (%esi),%edx
  95:	89 11                	mov    %edx,(%ecx)
  97:	c7 41 04 00 00 00 00 	movl   $0x0,0x4(%ecx)
  9e:	8b 56 04             	mov    0x4(%esi),%edx
  a1:	89 51 08             	mov    %edx,0x8(%ecx)
  a4:	83 c6 08             	add    $0x8,%esi
  a7:	ff 4c 24 24          	decl   0x24(%esp)
  ab:	89 c2                	mov    %eax,%edx
  ad:	0f b7 41 0e          	movzwl 0xe(%ecx),%eax
  b1:	eb cc                	jmp    7f <vring_add_buf+0x7f>
  b3:	c1 e2 04             	shl    $0x4,%edx
  b6:	66 83 64 17 0c fe    	andw   $0xfffe,0xc(%edi,%edx,1)
  bc:	66 89 83 14 28 00 00 	mov    %ax,0x2814(%ebx)
  c3:	8b 44 24 28          	mov    0x28(%esp),%eax
  c7:	8b 7c 24 0c          	mov    0xc(%esp),%edi
  cb:	66 89 84 7b 18 28 00 	mov    %ax,0x2818(%ebx,%edi,2)
  d2:	00 
  d3:	8b 44 24 08          	mov    0x8(%esp),%eax
  d7:	0f b7 40 02          	movzwl 0x2(%eax),%eax
  db:	03 44 24 2c          	add    0x2c(%esp),%eax
  df:	31 d2                	xor    %edx,%edx
  e1:	f7 b3 04 28 00 00    	divl   0x2804(%ebx)
  e7:	8b 44 24 08          	mov    0x8(%esp),%eax
  eb:	66 8b 7c 24 06       	mov    0x6(%esp),%di
  f0:	66 89 7c 50 04       	mov    %di,0x4(%eax,%edx,2)
  f5:	83 c4 10             	add    $0x10,%esp
  f8:	5b                   	pop    %ebx
  f9:	5e                   	pop    %esi
  fa:	5f                   	pop    %edi
  fb:	5d                   	pop    %ebp
  fc:	c3                   	ret    

Disassembly of section .text.vring_kick:

00000000 <vring_kick>:
   0:	53                   	push   %ebx
   1:	8b 9a 0c 28 00 00    	mov    0x280c(%edx),%ebx
   7:	66 01 4b 02          	add    %cx,0x2(%ebx)
   b:	5b                   	pop    %ebx
   c:	e9 fc ff ff ff       	jmp    d <vring_kick+0xd>
