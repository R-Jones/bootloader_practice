
./nvme.o:     file format elf32-i386


Disassembly of section .text.nvme_commit_sqe:

00000000 <nvme_commit_sqe>:
   0:	53                   	push   %ebx
   1:	89 c3                	mov    %eax,%ebx
   3:	0f b7 40 12          	movzwl 0x12(%eax),%eax
   7:	50                   	push   %eax
   8:	53                   	push   %ebx
   9:	68 00 00 00 00       	push   $0x0
   e:	e8 fc ff ff ff       	call   f <nvme_commit_sqe+0xf>
  13:	66 8b 43 12          	mov    0x12(%ebx),%ax
  17:	8d 50 01             	lea    0x1(%eax),%edx
  1a:	23 53 04             	and    0x4(%ebx),%edx
  1d:	66 89 53 12          	mov    %dx,0x12(%ebx)
  21:	0f b7 d2             	movzwl %dx,%edx
  24:	8b 03                	mov    (%ebx),%eax
  26:	89 10                	mov    %edx,(%eax)
  28:	83 c4 0c             	add    $0xc,%esp
  2b:	5b                   	pop    %ebx
  2c:	c3                   	ret    

Disassembly of section .text.nvme_init_queue_common:

00000000 <nvme_init_queue_common>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 c6                	mov    %eax,%esi
   6:	89 d3                	mov    %edx,%ebx
   8:	89 cd                	mov    %ecx,%ebp
   a:	8b 7c 24 14          	mov    0x14(%esp),%edi
   e:	b9 08 00 00 00       	mov    $0x8,%ecx
  13:	31 d2                	xor    %edx,%edx
  15:	89 d8                	mov    %ebx,%eax
  17:	e8 fc ff ff ff       	call   18 <nvme_init_queue_common+0x18>
  1c:	0f b7 cd             	movzwl %bp,%ecx
  1f:	8b 46 08             	mov    0x8(%esi),%eax
  22:	0f af c1             	imul   %ecx,%eax
  25:	8b 56 04             	mov    0x4(%esi),%edx
  28:	8d 84 02 00 10 00 00 	lea    0x1000(%edx,%eax,1),%eax
  2f:	89 03                	mov    %eax,(%ebx)
  31:	50                   	push   %eax
  32:	51                   	push   %ecx
  33:	53                   	push   %ebx
  34:	68 15 00 00 00       	push   $0x15
  39:	e8 fc ff ff ff       	call   3a <nvme_init_queue_common+0x3a>
  3e:	4f                   	dec    %edi
  3f:	66 89 7b 04          	mov    %di,0x4(%ebx)
  43:	83 c4 10             	add    $0x10,%esp
  46:	5b                   	pop    %ebx
  47:	5e                   	pop    %esi
  48:	5f                   	pop    %edi
  49:	5d                   	pop    %ebp
  4a:	c3                   	ret    

Disassembly of section .text.nvme_wait_csts_rdy:

00000000 <nvme_wait_csts_rdy>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 c3                	mov    %eax,%ebx
   6:	89 d6                	mov    %edx,%esi
   8:	8b 40 04             	mov    0x4(%eax),%eax
   b:	8b 50 04             	mov    0x4(%eax),%edx
   e:	8b 00                	mov    (%eax),%eax
  10:	0f ac d0 18          	shrd   $0x18,%edx,%eax
  14:	c1 ea 18             	shr    $0x18,%edx
  17:	0f b6 c0             	movzbl %al,%eax
  1a:	69 c0 f4 01 00 00    	imul   $0x1f4,%eax,%eax
  20:	e8 fc ff ff ff       	call   21 <nvme_wait_csts_rdy+0x21>
  25:	89 c7                	mov    %eax,%edi
  27:	8b 43 04             	mov    0x4(%ebx),%eax
  2a:	8b 68 1c             	mov    0x1c(%eax),%ebp
  2d:	89 e8                	mov    %ebp,%eax
  2f:	83 e0 01             	and    $0x1,%eax
  32:	39 f0                	cmp    %esi,%eax
  34:	74 36                	je     6c <nvme_wait_csts_rdy+0x6c>
  36:	e8 fc ff ff ff       	call   37 <nvme_wait_csts_rdy+0x37>
  3b:	83 e5 02             	and    $0x2,%ebp
  3e:	74 0d                	je     4d <nvme_wait_csts_rdy+0x4d>
  40:	68 2c 00 00 00       	push   $0x2c
  45:	e8 fc ff ff ff       	call   46 <nvme_wait_csts_rdy+0x46>
  4a:	58                   	pop    %eax
  4b:	eb 1a                	jmp    67 <nvme_wait_csts_rdy+0x67>
  4d:	89 f8                	mov    %edi,%eax
  4f:	e8 fc ff ff ff       	call   50 <nvme_wait_csts_rdy+0x50>
  54:	85 c0                	test   %eax,%eax
  56:	74 cf                	je     27 <nvme_wait_csts_rdy+0x27>
  58:	ba 00 00 00 00       	mov    $0x0,%edx
  5d:	b8 2b 02 00 00       	mov    $0x22b,%eax
  62:	e8 fc ff ff ff       	call   63 <nvme_wait_csts_rdy+0x63>
  67:	83 c8 ff             	or     $0xffffffff,%eax
  6a:	eb 02                	jmp    6e <nvme_wait_csts_rdy+0x6e>
  6c:	31 c0                	xor    %eax,%eax
  6e:	5b                   	pop    %ebx
  6f:	5e                   	pop    %esi
  70:	5f                   	pop    %edi
  71:	5d                   	pop    %ebp
  72:	c3                   	ret    

Disassembly of section .text.zalloc_page_aligned:

00000000 <zalloc_page_aligned>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 d6                	mov    %edx,%esi
   4:	b9 00 10 00 00       	mov    $0x1000,%ecx
   9:	e8 fc ff ff ff       	call   a <zalloc_page_aligned+0xa>
   e:	89 c3                	mov    %eax,%ebx
  10:	85 c0                	test   %eax,%eax
  12:	74 09                	je     1d <zalloc_page_aligned+0x1d>
  14:	89 f1                	mov    %esi,%ecx
  16:	31 d2                	xor    %edx,%edx
  18:	e8 fc ff ff ff       	call   19 <zalloc_page_aligned+0x19>
  1d:	89 d8                	mov    %ebx,%eax
  1f:	5b                   	pop    %ebx
  20:	5e                   	pop    %esi
  21:	c3                   	ret    

Disassembly of section .text.nvme_init_sq:

00000000 <nvme_init_sq>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	89 d3                	mov    %edx,%ebx
   5:	0f b7 f1             	movzwl %cx,%esi
   8:	0f b7 7c 24 10       	movzwl 0x10(%esp),%edi
   d:	57                   	push   %edi
   e:	89 f1                	mov    %esi,%ecx
  10:	e8 fc ff ff ff       	call   11 <nvme_init_sq+0x11>
  15:	c1 e7 06             	shl    $0x6,%edi
  18:	89 fa                	mov    %edi,%edx
  1a:	b8 00 00 00 00       	mov    $0x0,%eax
  1f:	e8 fc ff ff ff       	call   20 <nvme_init_sq+0x20>
  24:	89 43 08             	mov    %eax,0x8(%ebx)
  27:	5a                   	pop    %edx
  28:	85 c0                	test   %eax,%eax
  2a:	75 14                	jne    40 <nvme_init_sq+0x40>
  2c:	ba 00 00 00 00       	mov    $0x0,%edx
  31:	b8 31 00 00 00       	mov    $0x31,%eax
  36:	e8 fc ff ff ff       	call   37 <nvme_init_sq+0x37>
  3b:	83 c8 ff             	or     $0xffffffff,%eax
  3e:	eb 20                	jmp    60 <nvme_init_sq+0x60>
  40:	50                   	push   %eax
  41:	56                   	push   %esi
  42:	53                   	push   %ebx
  43:	68 59 00 00 00       	push   $0x59
  48:	e8 fc ff ff ff       	call   49 <nvme_init_sq+0x49>
  4d:	8b 44 24 24          	mov    0x24(%esp),%eax
  51:	89 43 0c             	mov    %eax,0xc(%ebx)
  54:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
  5b:	83 c4 10             	add    $0x10,%esp
  5e:	31 c0                	xor    %eax,%eax
  60:	5b                   	pop    %ebx
  61:	5e                   	pop    %esi
  62:	5f                   	pop    %edi
  63:	c3                   	ret    

Disassembly of section .text.nvme_get_next_sqe.constprop.0:

00000000 <nvme_get_next_sqe.constprop.0>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 c6                	mov    %eax,%esi
   6:	89 d5                	mov    %edx,%ebp
   8:	89 cf                	mov    %ecx,%edi
   a:	0f b7 50 12          	movzwl 0x12(%eax),%edx
   e:	0f b7 40 10          	movzwl 0x10(%eax),%eax
  12:	40                   	inc    %eax
  13:	0f b7 4e 04          	movzwl 0x4(%esi),%ecx
  17:	21 c8                	and    %ecx,%eax
  19:	39 d0                	cmp    %edx,%eax
  1b:	75 0f                	jne    2c <nvme_get_next_sqe.constprop.0+0x2c>
  1d:	68 70 00 00 00       	push   $0x70
  22:	e8 fc ff ff ff       	call   23 <nvme_get_next_sqe.constprop.0+0x23>
  27:	58                   	pop    %eax
  28:	31 db                	xor    %ebx,%ebx
  2a:	eb 5b                	jmp    87 <nvme_get_next_sqe.constprop.0+0x87>
  2c:	89 d3                	mov    %edx,%ebx
  2e:	c1 e3 06             	shl    $0x6,%ebx
  31:	03 5e 08             	add    0x8(%esi),%ebx
  34:	52                   	push   %edx
  35:	56                   	push   %esi
  36:	68 8a 00 00 00       	push   $0x8a
  3b:	e8 fc ff ff ff       	call   3c <nvme_get_next_sqe.constprop.0+0x3c>
  40:	b9 40 00 00 00       	mov    $0x40,%ecx
  45:	31 d2                	xor    %edx,%edx
  47:	89 d8                	mov    %ebx,%eax
  49:	e8 fc ff ff ff       	call   4a <nvme_get_next_sqe.constprop.0+0x4a>
  4e:	0f b7 46 12          	movzwl 0x12(%esi),%eax
  52:	c1 e0 10             	shl    $0x10,%eax
  55:	89 e9                	mov    %ebp,%ecx
  57:	0f b6 e9             	movzbl %cl,%ebp
  5a:	09 e8                	or     %ebp,%eax
  5c:	89 03                	mov    %eax,(%ebx)
  5e:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
  65:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
  6c:	89 7b 18             	mov    %edi,0x18(%ebx)
  6f:	c7 43 1c 00 00 00 00 	movl   $0x0,0x1c(%ebx)
  76:	8b 44 24 20          	mov    0x20(%esp),%eax
  7a:	89 43 20             	mov    %eax,0x20(%ebx)
  7d:	c7 43 24 00 00 00 00 	movl   $0x0,0x24(%ebx)
  84:	83 c4 0c             	add    $0xc,%esp
  87:	89 d8                	mov    %ebx,%eax
  89:	5b                   	pop    %ebx
  8a:	5e                   	pop    %esi
  8b:	5f                   	pop    %edi
  8c:	5d                   	pop    %ebp
  8d:	c3                   	ret    

Disassembly of section .text.nvme_wait:

00000000 <nvme_wait>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 14             	sub    $0x14,%esp
   7:	89 04 24             	mov    %eax,(%esp)
   a:	89 d7                	mov    %edx,%edi
   c:	b8 88 13 00 00       	mov    $0x1388,%eax
  11:	e8 fc ff ff ff       	call   12 <nvme_wait+0x12>
  16:	89 c3                	mov    %eax,%ebx
  18:	8b 57 0c             	mov    0xc(%edi),%edx
  1b:	0f b7 42 0c          	movzwl 0xc(%edx),%eax
  1f:	c1 e0 04             	shl    $0x4,%eax
  22:	03 42 08             	add    0x8(%edx),%eax
  25:	8b 40 0c             	mov    0xc(%eax),%eax
  28:	c1 e8 10             	shr    $0x10,%eax
  2b:	83 e0 01             	and    $0x1,%eax
  2e:	8a 52 0e             	mov    0xe(%edx),%dl
  31:	83 e2 01             	and    $0x1,%edx
  34:	38 d0                	cmp    %dl,%al
  36:	74 21                	je     59 <nvme_wait+0x59>
  38:	e8 fc ff ff ff       	call   39 <nvme_wait+0x39>
  3d:	89 d8                	mov    %ebx,%eax
  3f:	e8 fc ff ff ff       	call   40 <nvme_wait+0x40>
  44:	85 c0                	test   %eax,%eax
  46:	74 d0                	je     18 <nvme_wait+0x18>
  48:	ba 00 00 00 00       	mov    $0x0,%edx
  4d:	b8 90 00 00 00       	mov    $0x90,%eax
  52:	e8 fc ff ff ff       	call   53 <nvme_wait+0x53>
  57:	eb 20                	jmp    79 <nvme_wait+0x79>
  59:	8b 6f 0c             	mov    0xc(%edi),%ebp
  5c:	0f b7 55 0c          	movzwl 0xc(%ebp),%edx
  60:	c1 e2 04             	shl    $0x4,%edx
  63:	03 55 08             	add    0x8(%ebp),%edx
  66:	8b 52 0c             	mov    0xc(%edx),%edx
  69:	c1 ea 10             	shr    $0x10,%edx
  6c:	83 e2 01             	and    $0x1,%edx
  6f:	8a 4d 0e             	mov    0xe(%ebp),%cl
  72:	83 e1 01             	and    $0x1,%ecx
  75:	38 ca                	cmp    %cl,%dl
  77:	74 17                	je     90 <nvme_wait+0x90>
  79:	8d 74 24 04          	lea    0x4(%esp),%esi
  7d:	b9 10 00 00 00       	mov    $0x10,%ecx
  82:	ba ff 00 00 00       	mov    $0xff,%edx
  87:	89 f0                	mov    %esi,%eax
  89:	e8 fc ff ff ff       	call   8a <nvme_wait+0x8a>
  8e:	eb 75                	jmp    105 <nvme_wait+0x105>
  90:	0f b7 55 0c          	movzwl 0xc(%ebp),%edx
  94:	89 d3                	mov    %edx,%ebx
  96:	89 d6                	mov    %edx,%esi
  98:	c1 e6 04             	shl    $0x4,%esi
  9b:	03 75 08             	add    0x8(%ebp),%esi
  9e:	43                   	inc    %ebx
  9f:	23 5d 04             	and    0x4(%ebp),%ebx
  a2:	0f b7 cb             	movzwl %bx,%ecx
  a5:	51                   	push   %ecx
  a6:	52                   	push   %edx
  a7:	55                   	push   %ebp
  a8:	68 9d 00 00 00       	push   $0x9d
  ad:	e8 fc ff ff ff       	call   ae <nvme_wait+0xae>
  b2:	83 c4 10             	add    $0x10,%esp
  b5:	66 3b 5d 0c          	cmp    0xc(%ebp),%bx
  b9:	73 20                	jae    db <nvme_wait+0xdb>
  bb:	55                   	push   %ebp
  bc:	68 b2 00 00 00       	push   $0xb2
  c1:	e8 fc ff ff ff       	call   c2 <nvme_wait+0xc2>
  c6:	8a 55 0e             	mov    0xe(%ebp),%dl
  c9:	88 d1                	mov    %dl,%cl
  cb:	83 e1 01             	and    $0x1,%ecx
  ce:	83 f1 01             	xor    $0x1,%ecx
  d1:	83 e2 fe             	and    $0xfffffffe,%edx
  d4:	09 ca                	or     %ecx,%edx
  d6:	88 55 0e             	mov    %dl,0xe(%ebp)
  d9:	58                   	pop    %eax
  da:	5a                   	pop    %edx
  db:	66 89 5d 0c          	mov    %bx,0xc(%ebp)
  df:	0f b7 56 08          	movzwl 0x8(%esi),%edx
  e3:	66 3b 57 10          	cmp    0x10(%edi),%dx
  e7:	74 13                	je     fc <nvme_wait+0xfc>
  e9:	66 89 57 10          	mov    %dx,0x10(%edi)
  ed:	52                   	push   %edx
  ee:	57                   	push   %edi
  ef:	68 be 00 00 00       	push   $0xbe
  f4:	e8 fc ff ff ff       	call   f5 <nvme_wait+0xf5>
  f9:	83 c4 0c             	add    $0xc,%esp
  fc:	0f b7 55 0c          	movzwl 0xc(%ebp),%edx
 100:	8b 45 00             	mov    0x0(%ebp),%eax
 103:	89 10                	mov    %edx,(%eax)
 105:	b9 04 00 00 00       	mov    $0x4,%ecx
 10a:	8b 3c 24             	mov    (%esp),%edi
 10d:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 10f:	8b 04 24             	mov    (%esp),%eax
 112:	83 c4 14             	add    $0x14,%esp
 115:	5b                   	pop    %ebx
 116:	5e                   	pop    %esi
 117:	5f                   	pop    %edi
 118:	5d                   	pop    %ebp
 119:	c3                   	ret    

Disassembly of section .text.nvme_io_readwrite:

00000000 <nvme_io_readwrite>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 c3                	mov    %eax,%ebx
   8:	89 14 24             	mov    %edx,(%esp)
   b:	89 4c 24 04          	mov    %ecx,0x4(%esp)
   f:	8b 4c 24 28          	mov    0x28(%esp),%ecx
  13:	8b 74 24 2c          	mov    0x2c(%esp),%esi
  17:	f6 c1 03             	test   $0x3,%cl
  1a:	74 14                	je     30 <nvme_io_readwrite+0x30>
  1c:	ba 00 00 00 00       	mov    $0x0,%edx
  21:	b8 ac 01 00 00       	mov    $0x1ac,%eax
  26:	e8 fc ff ff ff       	call   27 <nvme_io_readwrite+0x27>
  2b:	e9 95 00 00 00       	jmp    c5 <nvme_io_readwrite+0xc5>
  30:	0f b7 f6             	movzwl %si,%esi
  33:	8b 43 34             	mov    0x34(%ebx),%eax
  36:	0f af c6             	imul   %esi,%eax
  39:	8d 7b 4c             	lea    0x4c(%ebx),%edi
  3c:	3d 00 20 00 00       	cmp    $0x2000,%eax
  41:	77 0c                	ja     4f <nvme_io_readwrite+0x4f>
  43:	31 ff                	xor    %edi,%edi
  45:	3d 00 10 00 00       	cmp    $0x1000,%eax
  4a:	76 03                	jbe    4f <nvme_io_readwrite+0x4f>
  4c:	8b 7b 4c             	mov    0x4c(%ebx),%edi
  4f:	ba 02 00 00 00       	mov    $0x2,%edx
  54:	2b 54 24 30          	sub    0x30(%esp),%edx
  58:	8b 43 24             	mov    0x24(%ebx),%eax
  5b:	83 c0 34             	add    $0x34,%eax
  5e:	57                   	push   %edi
  5f:	e8 fc ff ff ff       	call   60 <nvme_io_readwrite+0x60>
  64:	8b 53 28             	mov    0x28(%ebx),%edx
  67:	89 50 04             	mov    %edx,0x4(%eax)
  6a:	8b 54 24 04          	mov    0x4(%esp),%edx
  6e:	8b 4c 24 08          	mov    0x8(%esp),%ecx
  72:	89 50 28             	mov    %edx,0x28(%eax)
  75:	89 48 2c             	mov    %ecx,0x2c(%eax)
  78:	4e                   	dec    %esi
  79:	81 ce 00 00 00 80    	or     $0x80000000,%esi
  7f:	89 70 30             	mov    %esi,0x30(%eax)
  82:	8b 43 24             	mov    0x24(%ebx),%eax
  85:	83 c0 34             	add    $0x34,%eax
  88:	e8 fc ff ff ff       	call   89 <nvme_io_readwrite+0x89>
  8d:	8b 53 24             	mov    0x24(%ebx),%edx
  90:	83 c2 34             	add    $0x34,%edx
  93:	8d 44 24 0c          	lea    0xc(%esp),%eax
  97:	e8 fc ff ff ff       	call   98 <nvme_io_readwrite+0x98>
  9c:	58                   	pop    %eax
  9d:	31 c0                	xor    %eax,%eax
  9f:	66 f7 44 24 16 fe 01 	testw  $0x1fe,0x16(%esp)
  a6:	74 22                	je     ca <nvme_io_readwrite+0xca>
  a8:	ff 74 24 14          	push   0x14(%esp)
  ac:	ff 74 24 14          	push   0x14(%esp)
  b0:	ff 74 24 14          	push   0x14(%esp)
  b4:	ff 74 24 14          	push   0x14(%esp)
  b8:	68 d4 00 00 00       	push   $0xd4
  bd:	e8 fc ff ff ff       	call   be <nvme_io_readwrite+0xbe>
  c2:	83 c4 14             	add    $0x14,%esp
  c5:	b8 0c 00 00 00       	mov    $0xc,%eax
  ca:	83 c4 18             	add    $0x18,%esp
  cd:	5b                   	pop    %ebx
  ce:	5e                   	pop    %esi
  cf:	5f                   	pop    %edi
  d0:	c3                   	ret    

Disassembly of section .text.nvme_admin_identify:

00000000 <nvme_admin_identify>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 10             	sub    $0x10,%esp
   7:	89 c6                	mov    %eax,%esi
   9:	89 d7                	mov    %edx,%edi
   b:	89 cd                	mov    %ecx,%ebp
   d:	ba 00 10 00 00       	mov    $0x1000,%edx
  12:	b8 00 00 00 00       	mov    $0x0,%eax
  17:	e8 fc ff ff ff       	call   18 <nvme_admin_identify+0x18>
  1c:	89 c3                	mov    %eax,%ebx
  1e:	85 c0                	test   %eax,%eax
  20:	75 11                	jne    33 <nvme_admin_identify+0x33>
  22:	ba 00 00 00 00       	mov    $0x0,%edx
  27:	b8 c0 00 00 00       	mov    $0xc0,%eax
  2c:	e8 fc ff ff ff       	call   2d <nvme_admin_identify+0x2d>
  31:	eb 56                	jmp    89 <nvme_admin_identify+0x89>
  33:	83 c6 0c             	add    $0xc,%esi
  36:	6a 00                	push   $0x0
  38:	89 c1                	mov    %eax,%ecx
  3a:	ba 06 00 00 00       	mov    $0x6,%edx
  3f:	89 f0                	mov    %esi,%eax
  41:	e8 fc ff ff ff       	call   42 <nvme_admin_identify+0x42>
  46:	5a                   	pop    %edx
  47:	85 c0                	test   %eax,%eax
  49:	75 11                	jne    5c <nvme_admin_identify+0x5c>
  4b:	ba 00 00 00 00       	mov    $0x0,%edx
  50:	b8 ca 00 00 00       	mov    $0xca,%eax
  55:	e8 fc ff ff ff       	call   56 <nvme_admin_identify+0x56>
  5a:	eb 24                	jmp    80 <nvme_admin_identify+0x80>
  5c:	89 68 04             	mov    %ebp,0x4(%eax)
  5f:	89 f9                	mov    %edi,%ecx
  61:	0f b6 f9             	movzbl %cl,%edi
  64:	89 78 28             	mov    %edi,0x28(%eax)
  67:	89 f0                	mov    %esi,%eax
  69:	e8 fc ff ff ff       	call   6a <nvme_admin_identify+0x6a>
  6e:	89 f2                	mov    %esi,%edx
  70:	89 e0                	mov    %esp,%eax
  72:	e8 fc ff ff ff       	call   73 <nvme_admin_identify+0x73>
  77:	66 f7 44 24 0e fe 01 	testw  $0x1fe,0xe(%esp)
  7e:	74 09                	je     89 <nvme_admin_identify+0x89>
  80:	89 d8                	mov    %ebx,%eax
  82:	e8 fc ff ff ff       	call   83 <nvme_admin_identify+0x83>
  87:	31 db                	xor    %ebx,%ebx
  89:	89 d8                	mov    %ebx,%eax
  8b:	83 c4 10             	add    $0x10,%esp
  8e:	5b                   	pop    %ebx
  8f:	5e                   	pop    %esi
  90:	5f                   	pop    %edi
  91:	5d                   	pop    %ebp
  92:	c3                   	ret    

Disassembly of section .text.nvme_controller_setup:

00000000 <nvme_controller_setup>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	57                   	push   %edi
   4:	56                   	push   %esi
   5:	53                   	push   %ebx
   6:	83 ec 2c             	sub    $0x2c,%esp
   9:	89 c6                	mov    %eax,%esi
   b:	e8 fc ff ff ff       	call   c <nvme_controller_setup+0xc>
  10:	84 c0                	test   %al,%al
  12:	74 1d                	je     31 <nvme_controller_setup+0x31>
  14:	89 f0                	mov    %esi,%eax
  16:	e8 fc ff ff ff       	call   17 <nvme_controller_setup+0x17>
  1b:	85 c0                	test   %eax,%eax
  1d:	79 12                	jns    31 <nvme_controller_setup+0x31>
  1f:	56                   	push   %esi
  20:	68 f5 00 00 00       	push   $0xf5
  25:	e8 fc ff ff ff       	call   26 <nvme_controller_setup+0x26>
  2a:	58                   	pop    %eax
  2b:	5a                   	pop    %edx
  2c:	e9 c9 05 00 00       	jmp    5fa <nvme_controller_setup+0x5fa>
  31:	ba 10 00 00 00       	mov    $0x10,%edx
  36:	89 f0                	mov    %esi,%eax
  38:	e8 fc ff ff ff       	call   39 <nvme_controller_setup+0x39>
  3d:	89 c7                	mov    %eax,%edi
  3f:	85 c0                	test   %eax,%eax
  41:	0f 84 be 05 00 00    	je     605 <nvme_controller_setup+0x605>
  47:	8b 40 08             	mov    0x8(%eax),%eax
  4a:	0f b6 d0             	movzbl %al,%edx
  4d:	52                   	push   %edx
  4e:	0f b6 d4             	movzbl %ah,%edx
  51:	52                   	push   %edx
  52:	c1 e8 10             	shr    $0x10,%eax
  55:	50                   	push   %eax
  56:	68 22 01 00 00       	push   $0x122
  5b:	e8 fc ff ff ff       	call   5c <nvme_controller_setup+0x5c>
  60:	8b 07                	mov    (%edi),%eax
  62:	8b 57 04             	mov    0x4(%edi),%edx
  65:	52                   	push   %edx
  66:	50                   	push   %eax
  67:	68 50 01 00 00       	push   $0x150
  6c:	e8 fc ff ff ff       	call   6d <nvme_controller_setup+0x6d>
  71:	8b 07                	mov    (%edi),%eax
  73:	8b 57 04             	mov    0x4(%edi),%edx
  76:	83 c4 1c             	add    $0x1c,%esp
  79:	80 e2 20             	and    $0x20,%dl
  7c:	75 10                	jne    8e <nvme_controller_setup+0x8e>
  7e:	68 68 01 00 00       	push   $0x168
  83:	e8 fc ff ff ff       	call   84 <nvme_controller_setup+0x84>
  88:	58                   	pop    %eax
  89:	e9 6c 05 00 00       	jmp    5fa <nvme_controller_setup+0x5fa>
  8e:	b9 10 00 00 00       	mov    $0x10,%ecx
  93:	ba 58 00 00 00       	mov    $0x58,%edx
  98:	b8 00 00 00 00       	mov    $0x0,%eax
  9d:	e8 fc ff ff ff       	call   9e <nvme_controller_setup+0x9e>
  a2:	89 c3                	mov    %eax,%ebx
  a4:	85 c0                	test   %eax,%eax
  a6:	75 14                	jne    bc <nvme_controller_setup+0xbc>
  a8:	ba 00 00 00 00       	mov    $0x0,%edx
  ad:	b8 a4 02 00 00       	mov    $0x2a4,%eax
  b2:	e8 fc ff ff ff       	call   b3 <nvme_controller_setup+0xb3>
  b7:	e9 3e 05 00 00       	jmp    5fa <nvme_controller_setup+0x5fa>
  bc:	b9 58 00 00 00       	mov    $0x58,%ecx
  c1:	31 d2                	xor    %edx,%edx
  c3:	e8 fc ff ff ff       	call   c4 <nvme_controller_setup+0xc4>
  c8:	89 7b 04             	mov    %edi,0x4(%ebx)
  cb:	89 33                	mov    %esi,(%ebx)
  cd:	89 f0                	mov    %esi,%eax
  cf:	e8 fc ff ff ff       	call   d0 <nvme_controller_setup+0xd0>
  d4:	8b 43 04             	mov    0x4(%ebx),%eax
  d7:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
  de:	31 d2                	xor    %edx,%edx
  e0:	89 d8                	mov    %ebx,%eax
  e2:	e8 fc ff ff ff       	call   e3 <nvme_controller_setup+0xe3>
  e7:	85 c0                	test   %eax,%eax
  e9:	74 10                	je     fb <nvme_controller_setup+0xfb>
  eb:	68 2c 00 00 00       	push   $0x2c
  f0:	e8 fc ff ff ff       	call   f1 <nvme_controller_setup+0xf1>
  f5:	58                   	pop    %eax
  f6:	e9 f8 04 00 00       	jmp    5f3 <nvme_controller_setup+0x5f3>
  fb:	8b 43 04             	mov    0x4(%ebx),%eax
  fe:	8b 50 04             	mov    0x4(%eax),%edx
 101:	8b 00                	mov    (%eax),%eax
 103:	89 d1                	mov    %edx,%ecx
 105:	83 e1 0f             	and    $0xf,%ecx
 108:	b8 04 00 00 00       	mov    $0x4,%eax
 10d:	d3 e0                	shl    %cl,%eax
 10f:	89 43 08             	mov    %eax,0x8(%ebx)
 112:	8d 73 20             	lea    0x20(%ebx),%esi
 115:	68 00 01 00 00       	push   $0x100
 11a:	b9 01 00 00 00       	mov    $0x1,%ecx
 11f:	89 f2                	mov    %esi,%edx
 121:	89 d8                	mov    %ebx,%eax
 123:	e8 fc ff ff ff       	call   124 <nvme_controller_setup+0x124>
 128:	ba 00 10 00 00       	mov    $0x1000,%edx
 12d:	b8 00 00 00 00       	mov    $0x0,%eax
 132:	e8 fc ff ff ff       	call   133 <nvme_controller_setup+0x133>
 137:	89 43 28             	mov    %eax,0x28(%ebx)
 13a:	5f                   	pop    %edi
 13b:	85 c0                	test   %eax,%eax
 13d:	75 14                	jne    153 <nvme_controller_setup+0x153>
 13f:	ba 00 00 00 00       	mov    $0x0,%edx
 144:	b8 43 00 00 00       	mov    $0x43,%eax
 149:	e8 fc ff ff ff       	call   14a <nvme_controller_setup+0x14a>
 14e:	e9 a0 04 00 00       	jmp    5f3 <nvme_controller_setup+0x5f3>
 153:	66 c7 43 2c 00 00    	movw   $0x0,0x2c(%ebx)
 159:	80 4b 2e 01          	orb    $0x1,0x2e(%ebx)
 15d:	8d 43 0c             	lea    0xc(%ebx),%eax
 160:	89 45 e0             	mov    %eax,-0x20(%ebp)
 163:	56                   	push   %esi
 164:	6a 40                	push   $0x40
 166:	31 c9                	xor    %ecx,%ecx
 168:	89 c2                	mov    %eax,%edx
 16a:	89 d8                	mov    %ebx,%eax
 16c:	e8 fc ff ff ff       	call   16d <nvme_controller_setup+0x16d>
 171:	5a                   	pop    %edx
 172:	59                   	pop    %ecx
 173:	85 c0                	test   %eax,%eax
 175:	0f 85 69 04 00 00    	jne    5e4 <nvme_controller_setup+0x5e4>
 17b:	8b 43 04             	mov    0x4(%ebx),%eax
 17e:	0f b7 53 24          	movzwl 0x24(%ebx),%edx
 182:	c1 e2 10             	shl    $0x10,%edx
 185:	0f b7 4b 10          	movzwl 0x10(%ebx),%ecx
 189:	09 ca                	or     %ecx,%edx
 18b:	89 50 24             	mov    %edx,0x24(%eax)
 18e:	8b 53 14             	mov    0x14(%ebx),%edx
 191:	31 ff                	xor    %edi,%edi
 193:	89 50 28             	mov    %edx,0x28(%eax)
 196:	89 78 2c             	mov    %edi,0x2c(%eax)
 199:	8b 73 28             	mov    0x28(%ebx),%esi
 19c:	31 ff                	xor    %edi,%edi
 19e:	89 70 30             	mov    %esi,0x30(%eax)
 1a1:	89 78 34             	mov    %edi,0x34(%eax)
 1a4:	52                   	push   %edx
 1a5:	68 9e 01 00 00       	push   $0x19e
 1aa:	e8 fc ff ff ff       	call   1ab <nvme_controller_setup+0x1ab>
 1af:	ff 73 28             	push   0x28(%ebx)
 1b2:	68 bc 01 00 00       	push   $0x1bc
 1b7:	e8 fc ff ff ff       	call   1b8 <nvme_controller_setup+0x1b8>
 1bc:	8b 43 04             	mov    0x4(%ebx),%eax
 1bf:	c7 40 14 01 00 46 00 	movl   $0x460001,0x14(%eax)
 1c6:	ba 01 00 00 00       	mov    $0x1,%edx
 1cb:	89 d8                	mov    %ebx,%eax
 1cd:	e8 fc ff ff ff       	call   1ce <nvme_controller_setup+0x1ce>
 1d2:	83 c4 10             	add    $0x10,%esp
 1d5:	85 c0                	test   %eax,%eax
 1d7:	74 07                	je     1e0 <nvme_controller_setup+0x1e0>
 1d9:	68 da 01 00 00       	push   $0x1da
 1de:	eb 1a                	jmp    1fa <nvme_controller_setup+0x1fa>
 1e0:	31 c9                	xor    %ecx,%ecx
 1e2:	ba 01 00 00 00       	mov    $0x1,%edx
 1e7:	89 d8                	mov    %ebx,%eax
 1e9:	e8 fc ff ff ff       	call   1ea <nvme_controller_setup+0x1ea>
 1ee:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 1f1:	85 c0                	test   %eax,%eax
 1f3:	75 10                	jne    205 <nvme_controller_setup+0x205>
 1f5:	68 06 02 00 00       	push   $0x206
 1fa:	e8 fc ff ff ff       	call   1fb <nvme_controller_setup+0x1fb>
 1ff:	58                   	pop    %eax
 200:	e9 d0 03 00 00       	jmp    5d5 <nvme_controller_setup+0x5d5>
 205:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 208:	8b 80 04 02 00 00    	mov    0x204(%eax),%eax
 20e:	ba f2 00 00 00       	mov    $0xf2,%edx
 213:	83 f8 01             	cmp    $0x1,%eax
 216:	74 05                	je     21d <nvme_controller_setup+0x21d>
 218:	ba f3 00 00 00       	mov    $0xf3,%edx
 21d:	52                   	push   %edx
 21e:	50                   	push   %eax
 21f:	68 2a 02 00 00       	push   $0x22a
 224:	e8 fc ff ff ff       	call   225 <nvme_controller_setup+0x225>
 229:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 22c:	8b 80 04 02 00 00    	mov    0x204(%eax),%eax
 232:	89 43 30             	mov    %eax,0x30(%ebx)
 235:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 238:	e8 fc ff ff ff       	call   239 <nvme_controller_setup+0x239>
 23d:	83 c4 0c             	add    $0xc,%esp
 240:	83 7b 30 00          	cmpl   $0x0,0x30(%ebx)
 244:	0f 84 8b 03 00 00    	je     5d5 <nvme_controller_setup+0x5d5>
 24a:	8d 7b 48             	lea    0x48(%ebx),%edi
 24d:	8b 43 04             	mov    0x4(%ebx),%eax
 250:	8b 50 04             	mov    0x4(%eax),%edx
 253:	8b 00                	mov    (%eax),%eax
 255:	0f b7 f0             	movzwl %ax,%esi
 258:	46                   	inc    %esi
 259:	81 fe 00 01 00 00    	cmp    $0x100,%esi
 25f:	76 05                	jbe    266 <nvme_controller_setup+0x266>
 261:	be 00 01 00 00       	mov    $0x100,%esi
 266:	56                   	push   %esi
 267:	b9 03 00 00 00       	mov    $0x3,%ecx
 26c:	89 fa                	mov    %edi,%edx
 26e:	89 d8                	mov    %ebx,%eax
 270:	e8 fc ff ff ff       	call   271 <nvme_controller_setup+0x271>
 275:	c1 e6 04             	shl    $0x4,%esi
 278:	89 f2                	mov    %esi,%edx
 27a:	b8 00 00 00 00       	mov    $0x0,%eax
 27f:	e8 fc ff ff ff       	call   280 <nvme_controller_setup+0x280>
 284:	89 c1                	mov    %eax,%ecx
 286:	89 43 50             	mov    %eax,0x50(%ebx)
 289:	58                   	pop    %eax
 28a:	85 c9                	test   %ecx,%ecx
 28c:	75 14                	jne    2a2 <nvme_controller_setup+0x2a2>
 28e:	ba 00 00 00 00       	mov    $0x0,%edx
 293:	b8 43 00 00 00       	mov    $0x43,%eax
 298:	e8 fc ff ff ff       	call   299 <nvme_controller_setup+0x299>
 29d:	e9 33 03 00 00       	jmp    5d5 <nvme_controller_setup+0x5d5>
 2a2:	66 c7 43 54 00 00    	movw   $0x0,0x54(%ebx)
 2a8:	80 4b 56 01          	orb    $0x1,0x56(%ebx)
 2ac:	6a 00                	push   $0x0
 2ae:	ba 05 00 00 00       	mov    $0x5,%edx
 2b3:	8b 45 e0             	mov    -0x20(%ebp),%eax
 2b6:	e8 fc ff ff ff       	call   2b7 <nvme_controller_setup+0x2b7>
 2bb:	5e                   	pop    %esi
 2bc:	85 c0                	test   %eax,%eax
 2be:	0f 84 09 01 00 00    	je     3cd <nvme_controller_setup+0x3cd>
 2c4:	0f b7 53 4c          	movzwl 0x4c(%ebx),%edx
 2c8:	c1 e2 10             	shl    $0x10,%edx
 2cb:	83 ca 01             	or     $0x1,%edx
 2ce:	89 50 28             	mov    %edx,0x28(%eax)
 2d1:	c7 40 2c 01 00 00 00 	movl   $0x1,0x2c(%eax)
 2d8:	8b 45 e0             	mov    -0x20(%ebp),%eax
 2db:	e8 fc ff ff ff       	call   2dc <nvme_controller_setup+0x2dc>
 2e0:	8b 55 e0             	mov    -0x20(%ebp),%edx
 2e3:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 2e6:	e8 fc ff ff ff       	call   2e7 <nvme_controller_setup+0x2e7>
 2eb:	66 f7 45 f2 fe 01    	testw  $0x1fe,-0xe(%ebp)
 2f1:	74 1e                	je     311 <nvme_controller_setup+0x311>
 2f3:	ff 75 f0             	push   -0x10(%ebp)
 2f6:	ff 75 ec             	push   -0x14(%ebp)
 2f9:	ff 75 e8             	push   -0x18(%ebp)
 2fc:	ff 75 e4             	push   -0x1c(%ebp)
 2ff:	68 44 02 00 00       	push   $0x244
 304:	e8 fc ff ff ff       	call   305 <nvme_controller_setup+0x305>
 309:	83 c4 14             	add    $0x14,%esp
 30c:	e9 bc 00 00 00       	jmp    3cd <nvme_controller_setup+0x3cd>
 311:	8d 73 34             	lea    0x34(%ebx),%esi
 314:	8b 43 04             	mov    0x4(%ebx),%eax
 317:	8b 50 04             	mov    0x4(%eax),%edx
 31a:	8b 00                	mov    (%eax),%eax
 31c:	57                   	push   %edi
 31d:	0f b7 c0             	movzwl %ax,%eax
 320:	40                   	inc    %eax
 321:	3d 00 01 00 00       	cmp    $0x100,%eax
 326:	76 05                	jbe    32d <nvme_controller_setup+0x32d>
 328:	b8 00 01 00 00       	mov    $0x100,%eax
 32d:	50                   	push   %eax
 32e:	b9 02 00 00 00       	mov    $0x2,%ecx
 333:	89 f2                	mov    %esi,%edx
 335:	89 d8                	mov    %ebx,%eax
 337:	e8 fc ff ff ff       	call   338 <nvme_controller_setup+0x338>
 33c:	89 45 d8             	mov    %eax,-0x28(%ebp)
 33f:	5a                   	pop    %edx
 340:	59                   	pop    %ecx
 341:	85 c0                	test   %eax,%eax
 343:	0f 85 84 00 00 00    	jne    3cd <nvme_controller_setup+0x3cd>
 349:	8b 4b 3c             	mov    0x3c(%ebx),%ecx
 34c:	6a 00                	push   $0x0
 34e:	ba 01 00 00 00       	mov    $0x1,%edx
 353:	8b 45 e0             	mov    -0x20(%ebp),%eax
 356:	e8 fc ff ff ff       	call   357 <nvme_controller_setup+0x357>
 35b:	89 c2                	mov    %eax,%edx
 35d:	5f                   	pop    %edi
 35e:	85 c0                	test   %eax,%eax
 360:	74 5c                	je     3be <nvme_controller_setup+0x3be>
 362:	0f b7 43 38          	movzwl 0x38(%ebx),%eax
 366:	c1 e0 10             	shl    $0x10,%eax
 369:	83 c8 01             	or     $0x1,%eax
 36c:	89 42 28             	mov    %eax,0x28(%edx)
 36f:	c7 42 2c 01 00 01 00 	movl   $0x10001,0x2c(%edx)
 376:	68 01 00 01 00       	push   $0x10001
 37b:	50                   	push   %eax
 37c:	56                   	push   %esi
 37d:	68 6e 02 00 00       	push   $0x26e
 382:	e8 fc ff ff ff       	call   383 <nvme_controller_setup+0x383>
 387:	8b 45 e0             	mov    -0x20(%ebp),%eax
 38a:	e8 fc ff ff ff       	call   38b <nvme_controller_setup+0x38b>
 38f:	8b 55 e0             	mov    -0x20(%ebp),%edx
 392:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 395:	e8 fc ff ff ff       	call   396 <nvme_controller_setup+0x396>
 39a:	83 c4 10             	add    $0x10,%esp
 39d:	66 f7 45 f2 fe 01    	testw  $0x1fe,-0xe(%ebp)
 3a3:	74 76                	je     41b <nvme_controller_setup+0x41b>
 3a5:	ff 75 f0             	push   -0x10(%ebp)
 3a8:	ff 75 ec             	push   -0x14(%ebp)
 3ab:	ff 75 e8             	push   -0x18(%ebp)
 3ae:	ff 75 e4             	push   -0x1c(%ebp)
 3b1:	68 96 02 00 00       	push   $0x296
 3b6:	e8 fc ff ff ff       	call   3b7 <nvme_controller_setup+0x3b7>
 3bb:	83 c4 14             	add    $0x14,%esp
 3be:	8b 43 3c             	mov    0x3c(%ebx),%eax
 3c1:	e8 fc ff ff ff       	call   3c2 <nvme_controller_setup+0x3c2>
 3c6:	c7 43 3c 00 00 00 00 	movl   $0x0,0x3c(%ebx)
 3cd:	8b 43 50             	mov    0x50(%ebx),%eax
 3d0:	e8 fc ff ff ff       	call   3d1 <nvme_controller_setup+0x3d1>
 3d5:	c7 43 50 00 00 00 00 	movl   $0x0,0x50(%ebx)
 3dc:	e9 f4 01 00 00       	jmp    5d5 <nvme_controller_setup+0x5d5>
 3e1:	8b 45 e0             	mov    -0x20(%ebp),%eax
 3e4:	8a 40 1a             	mov    0x1a(%eax),%al
 3e7:	83 e0 0f             	and    $0xf,%eax
 3ea:	88 45 d3             	mov    %al,-0x2d(%ebp)
 3ed:	8b 45 e0             	mov    -0x20(%ebp),%eax
 3f0:	0f b6 40 19          	movzbl 0x19(%eax),%eax
 3f4:	38 45 d3             	cmp    %al,-0x2d(%ebp)
 3f7:	76 5a                	jbe    453 <nvme_controller_setup+0x453>
 3f9:	40                   	inc    %eax
 3fa:	50                   	push   %eax
 3fb:	0f b6 45 d3          	movzbl -0x2d(%ebp),%eax
 3ff:	50                   	push   %eax
 400:	ff 75 dc             	push   -0x24(%ebp)
 403:	68 e6 02 00 00       	push   $0x2e6
 408:	e8 fc ff ff ff       	call   409 <nvme_controller_setup+0x409>
 40d:	83 c4 10             	add    $0x10,%esp
 410:	8b 45 e0             	mov    -0x20(%ebp),%eax
 413:	e8 fc ff ff ff       	call   414 <nvme_controller_setup+0x414>
 418:	ff 45 d8             	incl   -0x28(%ebp)
 41b:	8b 45 d8             	mov    -0x28(%ebp),%eax
 41e:	39 43 30             	cmp    %eax,0x30(%ebx)
 421:	0f 86 a7 01 00 00    	jbe    5ce <nvme_controller_setup+0x5ce>
 427:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 42a:	8a 40 4d             	mov    0x4d(%eax),%al
 42d:	88 45 d2             	mov    %al,-0x2e(%ebp)
 430:	8b 45 d8             	mov    -0x28(%ebp),%eax
 433:	40                   	inc    %eax
 434:	89 45 dc             	mov    %eax,-0x24(%ebp)
 437:	89 c1                	mov    %eax,%ecx
 439:	31 d2                	xor    %edx,%edx
 43b:	89 d8                	mov    %ebx,%eax
 43d:	e8 fc ff ff ff       	call   43e <nvme_controller_setup+0x43e>
 442:	89 45 e0             	mov    %eax,-0x20(%ebp)
 445:	85 c0                	test   %eax,%eax
 447:	75 98                	jne    3e1 <nvme_controller_setup+0x3e1>
 449:	ff 75 dc             	push   -0x24(%ebp)
 44c:	68 c0 02 00 00       	push   $0x2c0
 451:	eb 15                	jmp    468 <nvme_controller_setup+0x468>
 453:	8b 45 e0             	mov    -0x20(%ebp),%eax
 456:	8b 40 04             	mov    0x4(%eax),%eax
 459:	8b 7d e0             	mov    -0x20(%ebp),%edi
 45c:	0b 07                	or     (%edi),%eax
 45e:	75 12                	jne    472 <nvme_controller_setup+0x472>
 460:	ff 75 dc             	push   -0x24(%ebp)
 463:	68 36 03 00 00       	push   $0x336
 468:	e8 fc ff ff ff       	call   469 <nvme_controller_setup+0x469>
 46d:	e9 55 01 00 00       	jmp    5c7 <nvme_controller_setup+0x5c7>
 472:	b9 10 00 00 00       	mov    $0x10,%ecx
 477:	ba c4 00 00 00       	mov    $0xc4,%edx
 47c:	b8 00 00 00 00       	mov    $0x0,%eax
 481:	e8 fc ff ff ff       	call   482 <nvme_controller_setup+0x482>
 486:	89 c6                	mov    %eax,%esi
 488:	85 c0                	test   %eax,%eax
 48a:	75 14                	jne    4a0 <nvme_controller_setup+0x4a0>
 48c:	ba 00 00 00 00       	mov    $0x0,%edx
 491:	b8 06 01 00 00       	mov    $0x106,%eax
 496:	e8 fc ff ff ff       	call   497 <nvme_controller_setup+0x497>
 49b:	e9 70 ff ff ff       	jmp    410 <nvme_controller_setup+0x410>
 4a0:	b9 c4 00 00 00       	mov    $0xc4,%ecx
 4a5:	31 d2                	xor    %edx,%edx
 4a7:	e8 fc ff ff ff       	call   4a8 <nvme_controller_setup+0x4a8>
 4ac:	89 5e 24             	mov    %ebx,0x24(%esi)
 4af:	8b 45 dc             	mov    -0x24(%ebp),%eax
 4b2:	89 46 28             	mov    %eax,0x28(%esi)
 4b5:	8b 45 e0             	mov    -0x20(%ebp),%eax
 4b8:	8b 50 04             	mov    0x4(%eax),%edx
 4bb:	8b 00                	mov    (%eax),%eax
 4bd:	89 45 c8             	mov    %eax,-0x38(%ebp)
 4c0:	89 55 cc             	mov    %edx,-0x34(%ebp)
 4c3:	89 46 2c             	mov    %eax,0x2c(%esi)
 4c6:	89 56 30             	mov    %edx,0x30(%esi)
 4c9:	0f b6 45 d3          	movzbl -0x2d(%ebp),%eax
 4cd:	6b c0 06             	imul   $0x6,%eax,%eax
 4d0:	03 45 e0             	add    -0x20(%ebp),%eax
 4d3:	0f b6 b8 82 00 00 00 	movzbl 0x82(%eax),%edi
 4da:	ba 01 00 00 00       	mov    $0x1,%edx
 4df:	89 f9                	mov    %edi,%ecx
 4e1:	d3 e2                	shl    %cl,%edx
 4e3:	89 56 34             	mov    %edx,0x34(%esi)
 4e6:	0f b7 80 80 00 00 00 	movzwl 0x80(%eax),%eax
 4ed:	89 46 38             	mov    %eax,0x38(%esi)
 4f0:	81 fa 00 10 00 00    	cmp    $0x1000,%edx
 4f6:	76 1b                	jbe    513 <nvme_controller_setup+0x513>
 4f8:	ba 00 00 00 00       	mov    $0x0,%edx
 4fd:	b8 16 01 00 00       	mov    $0x116,%eax
 502:	e8 fc ff ff ff       	call   503 <nvme_controller_setup+0x503>
 507:	89 f0                	mov    %esi,%eax
 509:	e8 fc ff ff ff       	call   50a <nvme_controller_setup+0x50a>
 50e:	e9 fd fe ff ff       	jmp    410 <nvme_controller_setup+0x410>
 513:	8b 45 d8             	mov    -0x28(%ebp),%eax
 516:	89 46 14             	mov    %eax,0x14(%esi)
 519:	c6 46 18 00          	movb   $0x0,0x18(%esi)
 51d:	c6 06 91             	movb   $0x91,(%esi)
 520:	66 89 56 1a          	mov    %dx,0x1a(%esi)
 524:	8b 45 c8             	mov    -0x38(%ebp),%eax
 527:	8b 55 cc             	mov    -0x34(%ebp),%edx
 52a:	89 46 0c             	mov    %eax,0xc(%esi)
 52d:	89 56 10             	mov    %edx,0x10(%esi)
 530:	80 7d d2 00          	cmpb   $0x0,-0x2e(%ebp)
 534:	74 24                	je     55a <nvme_controller_setup+0x55a>
 536:	b8 00 10 00 00       	mov    $0x1000,%eax
 53b:	8a 4d d2             	mov    -0x2e(%ebp),%cl
 53e:	d3 e0                	shl    %cl,%eax
 540:	89 f9                	mov    %edi,%ecx
 542:	d3 e8                	shr    %cl,%eax
 544:	89 46 3c             	mov    %eax,0x3c(%esi)
 547:	50                   	push   %eax
 548:	ff 75 dc             	push   -0x24(%ebp)
 54b:	68 4f 03 00 00       	push   $0x34f
 550:	e8 fc ff ff ff       	call   551 <nvme_controller_setup+0x551>
 555:	83 c4 0c             	add    $0xc,%esp
 558:	eb 07                	jmp    561 <nvme_controller_setup+0x561>
 55a:	c7 46 3c ff ff ff ff 	movl   $0xffffffff,0x3c(%esi)
 561:	ba 00 10 00 00       	mov    $0x1000,%edx
 566:	b8 00 00 00 00       	mov    $0x0,%eax
 56b:	e8 fc ff ff ff       	call   56c <nvme_controller_setup+0x56c>
 570:	89 46 40             	mov    %eax,0x40(%esi)
 573:	8b 4e 34             	mov    0x34(%esi),%ecx
 576:	8b 46 2c             	mov    0x2c(%esi),%eax
 579:	8b 56 30             	mov    0x30(%esi),%edx
 57c:	ff 76 38             	push   0x38(%esi)
 57f:	51                   	push   %ecx
 580:	52                   	push   %edx
 581:	50                   	push   %eax
 582:	89 d7                	mov    %edx,%edi
 584:	0f af f9             	imul   %ecx,%edi
 587:	f7 e1                	mul    %ecx
 589:	01 fa                	add    %edi,%edx
 58b:	0f ac d0 14          	shrd   $0x14,%edx,%eax
 58f:	c1 ea 14             	shr    $0x14,%edx
 592:	52                   	push   %edx
 593:	50                   	push   %eax
 594:	ff 75 dc             	push   -0x24(%ebp)
 597:	68 78 03 00 00       	push   $0x378
 59c:	6a 50                	push   $0x50
 59e:	e8 fc ff ff ff       	call   59f <nvme_controller_setup+0x59f>
 5a3:	83 c4 24             	add    $0x24,%esp
 5a6:	50                   	push   %eax
 5a7:	89 45 dc             	mov    %eax,-0x24(%ebp)
 5aa:	68 b6 03 00 00       	push   $0x3b6
 5af:	e8 fc ff ff ff       	call   5b0 <nvme_controller_setup+0x5b0>
 5b4:	8b 03                	mov    (%ebx),%eax
 5b6:	e8 fc ff ff ff       	call   5b7 <nvme_controller_setup+0x5b7>
 5bb:	89 c1                	mov    %eax,%ecx
 5bd:	8b 55 dc             	mov    -0x24(%ebp),%edx
 5c0:	89 f0                	mov    %esi,%eax
 5c2:	e8 fc ff ff ff       	call   5c3 <nvme_controller_setup+0x5c3>
 5c7:	5a                   	pop    %edx
 5c8:	59                   	pop    %ecx
 5c9:	e9 42 fe ff ff       	jmp    410 <nvme_controller_setup+0x410>
 5ce:	68 ba 03 00 00       	push   $0x3ba
 5d3:	eb 2a                	jmp    5ff <nvme_controller_setup+0x5ff>
 5d5:	8b 43 14             	mov    0x14(%ebx),%eax
 5d8:	e8 fc ff ff ff       	call   5d9 <nvme_controller_setup+0x5d9>
 5dd:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
 5e4:	8b 43 28             	mov    0x28(%ebx),%eax
 5e7:	e8 fc ff ff ff       	call   5e8 <nvme_controller_setup+0x5e8>
 5ec:	c7 43 28 00 00 00 00 	movl   $0x0,0x28(%ebx)
 5f3:	89 d8                	mov    %ebx,%eax
 5f5:	e8 fc ff ff ff       	call   5f6 <nvme_controller_setup+0x5f6>
 5fa:	68 d9 03 00 00       	push   $0x3d9
 5ff:	e8 fc ff ff ff       	call   600 <nvme_controller_setup+0x600>
 604:	58                   	pop    %eax
 605:	8d 65 f4             	lea    -0xc(%ebp),%esp
 608:	5b                   	pop    %ebx
 609:	5e                   	pop    %esi
 60a:	5f                   	pop    %edi
 60b:	5d                   	pop    %ebp
 60c:	c3                   	ret    

Disassembly of section .text.nvme_process_op:

00000000 <nvme_process_op>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 28             	sub    $0x28,%esp
   7:	89 c5                	mov    %eax,%ebp
   9:	8b 58 04             	mov    0x4(%eax),%ebx
   c:	0f b6 40 08          	movzbl 0x8(%eax),%eax
  10:	88 44 24 11          	mov    %al,0x11(%esp)
  14:	83 e8 02             	sub    $0x2,%eax
  17:	83 f8 01             	cmp    $0x1,%eax
  1a:	0f 87 3c 02 00 00    	ja     25c <nvme_process_op+0x25c>
  20:	31 c0                	xor    %eax,%eax
  22:	80 7c 24 11 03       	cmpb   $0x3,0x11(%esp)
  27:	0f 94 c0             	sete   %al
  2a:	89 44 24 18          	mov    %eax,0x18(%esp)
  2e:	b8 00 10 00 00       	mov    $0x1000,%eax
  33:	31 d2                	xor    %edx,%edx
  35:	f7 73 34             	divl   0x34(%ebx)
  38:	89 44 24 1c          	mov    %eax,0x1c(%esp)
  3c:	c7 44 24 14 02 04 00 	movl   $0x402,0x14(%esp)
  43:	00 
  44:	80 7c 24 11 03       	cmpb   $0x3,0x11(%esp)
  49:	75 08                	jne    53 <nvme_process_op+0x53>
  4b:	c7 44 24 14 fc 03 00 	movl   $0x3fc,0x14(%esp)
  52:	00 
  53:	66 c7 44 24 02 00 00 	movw   $0x0,0x2(%esp)
  5a:	31 c0                	xor    %eax,%eax
  5c:	66 8b 55 0a          	mov    0xa(%ebp),%dx
  60:	85 c0                	test   %eax,%eax
  62:	0f 85 02 02 00 00    	jne    26a <nvme_process_op+0x26a>
  68:	66 3b 54 24 02       	cmp    0x2(%esp),%dx
  6d:	0f 86 f7 01 00 00    	jbe    26a <nvme_process_op+0x26a>
  73:	66 2b 54 24 02       	sub    0x2(%esp),%dx
  78:	66 89 54 24 08       	mov    %dx,0x8(%esp)
  7d:	8b 43 34             	mov    0x34(%ebx),%eax
  80:	89 44 24 0c          	mov    %eax,0xc(%esp)
  84:	0f b7 44 24 02       	movzwl 0x2(%esp),%eax
  89:	0f af 44 24 0c       	imul   0xc(%esp),%eax
  8e:	03 45 00             	add    0x0(%ebp),%eax
  91:	89 44 24 04          	mov    %eax,0x4(%esp)
  95:	8b 43 3c             	mov    0x3c(%ebx),%eax
  98:	0f b7 d2             	movzwl %dx,%edx
  9b:	8b 7c 24 08          	mov    0x8(%esp),%edi
  9f:	66 89 7c 24 12       	mov    %di,0x12(%esp)
  a4:	39 c2                	cmp    %eax,%edx
  a6:	76 05                	jbe    ad <nvme_process_op+0xad>
  a8:	66 89 44 24 12       	mov    %ax,0x12(%esp)
  ad:	c7 43 44 00 00 00 00 	movl   $0x0,0x44(%ebx)
  b4:	0f b7 74 24 12       	movzwl 0x12(%esp),%esi
  b9:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
  bd:	0f af ce             	imul   %esi,%ecx
  c0:	8b 44 24 04          	mov    0x4(%esp),%eax
  c4:	25 ff 0f 00 00       	and    $0xfff,%eax
  c9:	8d 14 01             	lea    (%ecx,%eax,1),%edx
  cc:	81 fa 00 10 00 00    	cmp    $0x1000,%edx
  d2:	77 09                	ja     dd <nvme_process_op+0xdd>
  d4:	8b 44 24 04          	mov    0x4(%esp),%eax
  d8:	89 43 48             	mov    %eax,0x48(%ebx)
  db:	eb 7d                	jmp    15a <nvme_process_op+0x15a>
  dd:	85 c0                	test   %eax,%eax
  df:	0f 85 c3 00 00 00    	jne    1a8 <nvme_process_op+0x1a8>
  e5:	8b 44 24 0c          	mov    0xc(%esp),%eax
  e9:	31 d2                	xor    %edx,%edx
  eb:	83 c0 ff             	add    $0xffffffff,%eax
  ee:	83 d2 ff             	adc    $0xffffffff,%edx
  f1:	89 44 24 20          	mov    %eax,0x20(%esp)
  f5:	89 54 24 24          	mov    %edx,0x24(%esp)
  f9:	89 cf                	mov    %ecx,%edi
  fb:	c1 ff 1f             	sar    $0x1f,%edi
  fe:	8b 44 24 20          	mov    0x20(%esp),%eax
 102:	21 c8                	and    %ecx,%eax
 104:	8b 54 24 24          	mov    0x24(%esp),%edx
 108:	21 fa                	and    %edi,%edx
 10a:	09 c2                	or     %eax,%edx
 10c:	0f 85 96 00 00 00    	jne    1a8 <nvme_process_op+0x1a8>
 112:	8b 44 24 04          	mov    0x4(%esp),%eax
 116:	ba 01 00 00 00       	mov    $0x1,%edx
 11b:	01 c1                	add    %eax,%ecx
 11d:	89 4c 24 20          	mov    %ecx,0x20(%esp)
 121:	8b 4c 24 20          	mov    0x20(%esp),%ecx
 125:	29 c1                	sub    %eax,%ecx
 127:	85 c9                	test   %ecx,%ecx
 129:	7e 2a                	jle    155 <nvme_process_op+0x155>
 12b:	85 d2                	test   %edx,%edx
 12d:	74 05                	je     134 <nvme_process_op+0x134>
 12f:	89 43 48             	mov    %eax,0x48(%ebx)
 132:	eb 18                	jmp    14c <nvme_process_op+0x14c>
 134:	31 ff                	xor    %edi,%edi
 136:	8b 53 44             	mov    0x44(%ebx),%edx
 139:	83 fa 0e             	cmp    $0xe,%edx
 13c:	77 6a                	ja     1a8 <nvme_process_op+0x1a8>
 13e:	8d 4a 01             	lea    0x1(%edx),%ecx
 141:	89 4b 44             	mov    %ecx,0x44(%ebx)
 144:	89 44 d3 4c          	mov    %eax,0x4c(%ebx,%edx,8)
 148:	89 7c d3 50          	mov    %edi,0x50(%ebx,%edx,8)
 14c:	05 00 10 00 00       	add    $0x1000,%eax
 151:	31 d2                	xor    %edx,%edx
 153:	eb cc                	jmp    121 <nvme_process_op+0x121>
 155:	0f b7 74 24 12       	movzwl 0x12(%esp),%esi
 15a:	85 f6                	test   %esi,%esi
 15c:	74 4a                	je     1a8 <nvme_process_op+0x1a8>
 15e:	66 89 74 24 12       	mov    %si,0x12(%esp)
 163:	0f b7 54 24 02       	movzwl 0x2(%esp),%edx
 168:	31 c9                	xor    %ecx,%ecx
 16a:	03 55 0c             	add    0xc(%ebp),%edx
 16d:	13 4d 10             	adc    0x10(%ebp),%ecx
 170:	ff 74 24 18          	push   0x18(%esp)
 174:	56                   	push   %esi
 175:	ff 73 48             	push   0x48(%ebx)
 178:	89 d8                	mov    %ebx,%eax
 17a:	e8 fc ff ff ff       	call   17b <nvme_process_op+0x17b>
 17f:	50                   	push   %eax
 180:	89 44 24 14          	mov    %eax,0x14(%esp)
 184:	56                   	push   %esi
 185:	ff 75 10             	push   0x10(%ebp)
 188:	ff 75 0c             	push   0xc(%ebp)
 18b:	ff 74 24 30          	push   0x30(%esp)
 18f:	ff 73 28             	push   0x28(%ebx)
 192:	68 07 04 00 00       	push   $0x407
 197:	e8 fc ff ff ff       	call   198 <nvme_process_op+0x198>
 19c:	83 c4 28             	add    $0x28,%esp
 19f:	8b 44 24 04          	mov    0x4(%esp),%eax
 1a3:	e9 a5 00 00 00       	jmp    24d <nvme_process_op+0x24d>
 1a8:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 1ac:	66 89 44 24 12       	mov    %ax,0x12(%esp)
 1b1:	66 3b 44 24 08       	cmp    0x8(%esp),%ax
 1b6:	76 09                	jbe    1c1 <nvme_process_op+0x1c1>
 1b8:	8b 44 24 08          	mov    0x8(%esp),%eax
 1bc:	66 89 44 24 12       	mov    %ax,0x12(%esp)
 1c1:	80 7c 24 11 03       	cmpb   $0x3,0x11(%esp)
 1c6:	0f b7 44 24 12       	movzwl 0x12(%esp),%eax
 1cb:	89 44 24 08          	mov    %eax,0x8(%esp)
 1cf:	75 10                	jne    1e1 <nvme_process_op+0x1e1>
 1d1:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
 1d5:	0f af c8             	imul   %eax,%ecx
 1d8:	8b 7b 40             	mov    0x40(%ebx),%edi
 1db:	8b 74 24 04          	mov    0x4(%esp),%esi
 1df:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 1e1:	0f b7 74 24 02       	movzwl 0x2(%esp),%esi
 1e6:	31 ff                	xor    %edi,%edi
 1e8:	89 f0                	mov    %esi,%eax
 1ea:	89 fa                	mov    %edi,%edx
 1ec:	03 45 0c             	add    0xc(%ebp),%eax
 1ef:	13 55 10             	adc    0x10(%ebp),%edx
 1f2:	ff 74 24 18          	push   0x18(%esp)
 1f6:	ff 74 24 0c          	push   0xc(%esp)
 1fa:	ff 73 40             	push   0x40(%ebx)
 1fd:	89 d1                	mov    %edx,%ecx
 1ff:	89 c2                	mov    %eax,%edx
 201:	89 d8                	mov    %ebx,%eax
 203:	e8 fc ff ff ff       	call   204 <nvme_process_op+0x204>
 208:	50                   	push   %eax
 209:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 20d:	ff 74 24 18          	push   0x18(%esp)
 211:	03 75 0c             	add    0xc(%ebp),%esi
 214:	13 7d 10             	adc    0x10(%ebp),%edi
 217:	57                   	push   %edi
 218:	56                   	push   %esi
 219:	ff 74 24 30          	push   0x30(%esp)
 21d:	ff 73 28             	push   0x28(%ebx)
 220:	68 07 04 00 00       	push   $0x407
 225:	e8 fc ff ff ff       	call   226 <nvme_process_op+0x226>
 22a:	83 c4 28             	add    $0x28,%esp
 22d:	80 7c 24 11 03       	cmpb   $0x3,0x11(%esp)
 232:	8b 44 24 0c          	mov    0xc(%esp),%eax
 236:	74 15                	je     24d <nvme_process_op+0x24d>
 238:	85 c0                	test   %eax,%eax
 23a:	75 11                	jne    24d <nvme_process_op+0x24d>
 23c:	8b 4c 24 08          	mov    0x8(%esp),%ecx
 240:	0f af 4b 34          	imul   0x34(%ebx),%ecx
 244:	8b 73 40             	mov    0x40(%ebx),%esi
 247:	8b 7c 24 04          	mov    0x4(%esp),%edi
 24b:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 24d:	66 8b 74 24 12       	mov    0x12(%esp),%si
 252:	66 01 74 24 02       	add    %si,0x2(%esp)
 257:	e9 00 fe ff ff       	jmp    5c <nvme_process_op+0x5c>
 25c:	89 e8                	mov    %ebp,%eax
 25e:	83 c4 28             	add    $0x28,%esp
 261:	5b                   	pop    %ebx
 262:	5e                   	pop    %esi
 263:	5f                   	pop    %edi
 264:	5d                   	pop    %ebp
 265:	e9 fc ff ff ff       	jmp    266 <nvme_process_op+0x266>
 26a:	83 c4 28             	add    $0x28,%esp
 26d:	5b                   	pop    %ebx
 26e:	5e                   	pop    %esi
 26f:	5f                   	pop    %edi
 270:	5d                   	pop    %ebp
 271:	c3                   	ret    

Disassembly of section .text.nvme_setup:

00000000 <nvme_setup>:
   0:	53                   	push   %ebx
   1:	68 21 04 00 00       	push   $0x421
   6:	e8 fc ff ff ff       	call   7 <nvme_setup+0x7>
   b:	a1 00 00 00 00       	mov    0x0,%eax
  10:	8d 58 fc             	lea    -0x4(%eax),%ebx
  13:	59                   	pop    %ecx
  14:	83 fb fc             	cmp    $0xfffffffc,%ebx
  17:	74 33                	je     4c <nvme_setup+0x4c>
  19:	66 81 7b 14 08 01    	cmpw   $0x108,0x14(%ebx)
  1f:	75 23                	jne    44 <nvme_setup+0x44>
  21:	0f b6 43 16          	movzbl 0x16(%ebx),%eax
  25:	3c 02                	cmp    $0x2,%al
  27:	74 0f                	je     38 <nvme_setup+0x38>
  29:	50                   	push   %eax
  2a:	68 2c 04 00 00       	push   $0x42c
  2f:	e8 fc ff ff ff       	call   30 <nvme_setup+0x30>
  34:	58                   	pop    %eax
  35:	5a                   	pop    %edx
  36:	eb 0c                	jmp    44 <nvme_setup+0x44>
  38:	89 da                	mov    %ebx,%edx
  3a:	b8 00 00 00 00       	mov    $0x0,%eax
  3f:	e8 fc ff ff ff       	call   40 <nvme_setup+0x40>
  44:	8b 5b 04             	mov    0x4(%ebx),%ebx
  47:	83 eb 04             	sub    $0x4,%ebx
  4a:	eb c8                	jmp    14 <nvme_setup+0x14>
  4c:	5b                   	pop    %ebx
  4d:	c3                   	ret    
