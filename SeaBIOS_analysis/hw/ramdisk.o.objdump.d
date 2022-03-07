
./ramdisk.o:     file format elf32-i386


Disassembly of section .text.ramdisk_copy:

00000000 <ramdisk_copy>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	57                   	push   %edi
   4:	56                   	push   %esi
   5:	53                   	push   %ebx
   6:	83 e4 f8             	and    $0xfffffff8,%esp
   9:	83 ec 68             	sub    $0x68,%esp
   c:	89 c3                	mov    %eax,%ebx
   e:	89 54 24 04          	mov    %edx,0x4(%esp)
  12:	8b 00                	mov    (%eax),%eax
  14:	31 d2                	xor    %edx,%edx
  16:	89 c6                	mov    %eax,%esi
  18:	81 e6 00 00 00 ff    	and    $0xff000000,%esi
  1e:	0f a4 c2 10          	shld   $0x10,%eax,%edx
  22:	c1 e0 10             	shl    $0x10,%eax
  25:	89 44 24 08          	mov    %eax,0x8(%esp)
  29:	89 54 24 0c          	mov    %edx,0xc(%esp)
  2d:	0f b6 54 24 0c       	movzbl 0xc(%esp),%edx
  32:	09 f2                	or     %esi,%edx
  34:	8b 74 24 08          	mov    0x8(%esp),%esi
  38:	81 ce ff ff 00 00    	or     $0xffff,%esi
  3e:	89 d7                	mov    %edx,%edi
  40:	81 cf 00 93 0f 00    	or     $0xf9300,%edi
  46:	8b 43 0c             	mov    0xc(%ebx),%eax
  49:	c1 e0 09             	shl    $0x9,%eax
  4c:	8b 4b 04             	mov    0x4(%ebx),%ecx
  4f:	03 41 14             	add    0x14(%ecx),%eax
  52:	89 c1                	mov    %eax,%ecx
  54:	31 d2                	xor    %edx,%edx
  56:	81 e1 00 00 00 ff    	and    $0xff000000,%ecx
  5c:	0f a4 c2 10          	shld   $0x10,%eax,%edx
  60:	c1 e0 10             	shl    $0x10,%eax
  63:	89 44 24 08          	mov    %eax,0x8(%esp)
  67:	89 54 24 0c          	mov    %edx,0xc(%esp)
  6b:	0f b6 54 24 0c       	movzbl 0xc(%esp),%edx
  70:	09 ca                	or     %ecx,%edx
  72:	8b 44 24 08          	mov    0x8(%esp),%eax
  76:	0d ff ff 00 00       	or     $0xffff,%eax
  7b:	81 ca 00 93 0f 00    	or     $0xf9300,%edx
  81:	83 7c 24 04 00       	cmpl   $0x0,0x4(%esp)
  86:	74 10                	je     98 <ramdisk_copy+0x98>
  88:	89 f1                	mov    %esi,%ecx
  8a:	89 7c 24 08          	mov    %edi,0x8(%esp)
  8e:	89 c6                	mov    %eax,%esi
  90:	89 d7                	mov    %edx,%edi
  92:	89 c8                	mov    %ecx,%eax
  94:	8b 54 24 08          	mov    0x8(%esp),%edx
  98:	89 44 24 48          	mov    %eax,0x48(%esp)
  9c:	89 54 24 4c          	mov    %edx,0x4c(%esp)
  a0:	89 74 24 50          	mov    %esi,0x50(%esp)
  a4:	89 7c 24 54          	mov    %edi,0x54(%esp)
  a8:	b9 26 00 00 00       	mov    $0x26,%ecx
  ad:	31 d2                	xor    %edx,%edx
  af:	8d 44 24 12          	lea    0x12(%esp),%eax
  b3:	e8 fc ff ff ff       	call   b4 <ramdisk_copy+0xb4>
  b8:	66 c7 44 24 36 01 02 	movw   $0x201,0x36(%esp)
  bf:	c6 44 24 2f 87       	movb   $0x87,0x2f(%esp)
  c4:	66 c7 44 24 14 00 00 	movw   $0x0,0x14(%esp)
  cb:	8d 44 24 38          	lea    0x38(%esp),%eax
  cf:	66 89 44 24 1a       	mov    %ax,0x1a(%esp)
  d4:	66 8b 43 0a          	mov    0xa(%ebx),%ax
  d8:	c1 e0 08             	shl    $0x8,%eax
  db:	66 89 44 24 2a       	mov    %ax,0x2a(%esp)
  e0:	ba 00 00 00 00       	mov    $0x0,%edx
  e5:	0f b7 d2             	movzwl %dx,%edx
  e8:	8d 44 24 12          	lea    0x12(%esp),%eax
  ec:	e8 fc ff ff ff       	call   ed <ramdisk_copy+0xed>
  f1:	66 8b 44 24 36       	mov    0x36(%esp),%ax
  f6:	c1 e0 1f             	shl    $0x1f,%eax
  f9:	c1 f8 1f             	sar    $0x1f,%eax
  fc:	83 e0 0c             	and    $0xc,%eax
  ff:	8d 65 f4             	lea    -0xc(%ebp),%esp
 102:	5b                   	pop    %ebx
 103:	5e                   	pop    %esi
 104:	5f                   	pop    %edi
 105:	5d                   	pop    %ebp
 106:	c3                   	ret    

Disassembly of section .text.ramdisk_setup:

00000000 <ramdisk_setup>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	56                   	push   %esi
   5:	31 d2                	xor    %edx,%edx
   7:	b8 00 00 00 00       	mov    $0x0,%eax
   c:	e8 fc ff ff ff       	call   d <ramdisk_setup+0xd>
  11:	85 c0                	test   %eax,%eax
  13:	0f 84 d0 00 00 00    	je     e9 <ramdisk_setup+0xe9>
  19:	89 c3                	mov    %eax,%ebx
  1b:	8d 68 04             	lea    0x4(%eax),%ebp
  1e:	8b b8 84 00 00 00    	mov    0x84(%eax),%edi
  24:	57                   	push   %edi
  25:	55                   	push   %ebp
  26:	68 0b 00 00 00       	push   $0xb
  2b:	e8 fc ff ff ff       	call   2c <ramdisk_setup+0x2c>
  30:	89 f8                	mov    %edi,%eax
  32:	e8 fc ff ff ff       	call   33 <ramdisk_setup+0x33>
  37:	89 44 24 0c          	mov    %eax,0xc(%esp)
  3b:	83 c4 0c             	add    $0xc,%esp
  3e:	85 c0                	test   %eax,%eax
  40:	79 10                	jns    52 <ramdisk_setup+0x52>
  42:	68 2c 00 00 00       	push   $0x2c
  47:	e8 fc ff ff ff       	call   48 <ramdisk_setup+0x48>
  4c:	5b                   	pop    %ebx
  4d:	e9 97 00 00 00       	jmp    e9 <ramdisk_setup+0xe9>
  52:	b9 00 10 00 00       	mov    $0x1000,%ecx
  57:	89 fa                	mov    %edi,%edx
  59:	b8 00 00 00 00       	mov    $0x0,%eax
  5e:	e8 fc ff ff ff       	call   5f <ramdisk_setup+0x5f>
  63:	89 c6                	mov    %eax,%esi
  65:	85 c0                	test   %eax,%eax
  67:	75 14                	jne    7d <ramdisk_setup+0x7d>
  69:	ba 00 00 00 00       	mov    $0x0,%edx
  6e:	b8 2a 00 00 00       	mov    $0x2a,%eax
  73:	59                   	pop    %ecx
  74:	5b                   	pop    %ebx
  75:	5e                   	pop    %esi
  76:	5f                   	pop    %edi
  77:	5d                   	pop    %ebp
  78:	e9 fc ff ff ff       	jmp    79 <ramdisk_setup+0x79>
  7d:	6a 02                	push   $0x2
  7f:	31 d2                	xor    %edx,%edx
  81:	52                   	push   %edx
  82:	57                   	push   %edi
  83:	31 d2                	xor    %edx,%edx
  85:	e8 fc ff ff ff       	call   86 <ramdisk_setup+0x86>
  8a:	89 f9                	mov    %edi,%ecx
  8c:	89 f2                	mov    %esi,%edx
  8e:	89 d8                	mov    %ebx,%eax
  90:	ff 93 88 00 00 00    	call   *0x88(%ebx)
  96:	83 c4 0c             	add    $0xc,%esp
  99:	85 c0                	test   %eax,%eax
  9b:	78 4c                	js     e9 <ramdisk_setup+0xe9>
  9d:	8b 14 24             	mov    (%esp),%edx
  a0:	89 f0                	mov    %esi,%eax
  a2:	e8 fc ff ff ff       	call   a3 <ramdisk_setup+0xa3>
  a7:	89 c7                	mov    %eax,%edi
  a9:	85 c0                	test   %eax,%eax
  ab:	74 3c                	je     e9 <ramdisk_setup+0xe9>
  ad:	c6 00 30             	movb   $0x30,(%eax)
  b0:	56                   	push   %esi
  b1:	55                   	push   %ebp
  b2:	68 53 00 00 00       	push   $0x53
  b7:	e8 fc ff ff ff       	call   b8 <ramdisk_setup+0xb8>
  bc:	83 c3 0e             	add    $0xe,%ebx
  bf:	53                   	push   %ebx
  c0:	68 71 00 00 00       	push   $0x71
  c5:	6a 50                	push   $0x50
  c7:	e8 fc ff ff ff       	call   c8 <ramdisk_setup+0xc8>
  cc:	89 c3                	mov    %eax,%ebx
  ce:	31 d2                	xor    %edx,%edx
  d0:	89 e8                	mov    %ebp,%eax
  d2:	e8 fc ff ff ff       	call   d3 <ramdisk_setup+0xd3>
  d7:	89 c1                	mov    %eax,%ecx
  d9:	89 da                	mov    %ebx,%edx
  db:	89 f8                	mov    %edi,%eax
  dd:	83 c4 1c             	add    $0x1c,%esp
  e0:	5b                   	pop    %ebx
  e1:	5e                   	pop    %esi
  e2:	5f                   	pop    %edi
  e3:	5d                   	pop    %ebp
  e4:	e9 fc ff ff ff       	jmp    e5 <ramdisk_setup+0xe5>
  e9:	58                   	pop    %eax
  ea:	5b                   	pop    %ebx
  eb:	5e                   	pop    %esi
  ec:	5f                   	pop    %edi
  ed:	5d                   	pop    %ebp
  ee:	c3                   	ret    

Disassembly of section .text.ramdisk_process_op:

00000000 <ramdisk_process_op>:
   0:	8a 50 08             	mov    0x8(%eax),%dl
   3:	80 fa 02             	cmp    $0x2,%dl
   6:	74 0c                	je     14 <ramdisk_process_op+0x14>
   8:	80 fa 03             	cmp    $0x3,%dl
   b:	75 0e                	jne    1b <ramdisk_process_op+0x1b>
   d:	ba 01 00 00 00       	mov    $0x1,%edx
  12:	eb 02                	jmp    16 <ramdisk_process_op+0x16>
  14:	31 d2                	xor    %edx,%edx
  16:	e9 fc ff ff ff       	jmp    17 <ramdisk_process_op+0x17>
  1b:	e9 fc ff ff ff       	jmp    1c <ramdisk_process_op+0x1c>
