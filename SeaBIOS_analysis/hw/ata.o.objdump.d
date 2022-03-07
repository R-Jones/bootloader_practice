
./ata.o:     file format elf32-i386


Disassembly of section .text.found_compatibleahci:

00000000 <found_compatibleahci>:
   0:	c3                   	ret    

Disassembly of section .text.powerup_await_non_bsy:

00000000 <powerup_await_non_bsy>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	53                   	push   %ebx
   4:	89 c3                	mov    %eax,%ebx
   6:	89 c7                	mov    %eax,%edi
   8:	31 f6                	xor    %esi,%esi
   a:	8d 57 07             	lea    0x7(%edi),%edx
   d:	ec                   	in     (%dx),%al
   e:	84 c0                	test   %al,%al
  10:	79 43                	jns    55 <powerup_await_non_bsy+0x55>
  12:	09 c6                	or     %eax,%esi
  14:	89 f0                	mov    %esi,%eax
  16:	fe c0                	inc    %al
  18:	75 12                	jne    2c <powerup_await_non_bsy+0x2c>
  1a:	68 00 00 00 00       	push   $0x0
  1f:	e8 fc ff ff ff       	call   20 <powerup_await_non_bsy+0x20>
  24:	59                   	pop    %ecx
  25:	b8 ff 00 00 00       	mov    $0xff,%eax
  2a:	eb 45                	jmp    71 <powerup_await_non_bsy+0x71>
  2c:	a1 00 00 00 00       	mov    0x0,%eax
  31:	e8 fc ff ff ff       	call   32 <powerup_await_non_bsy+0x32>
  36:	85 c0                	test   %eax,%eax
  38:	74 14                	je     4e <powerup_await_non_bsy+0x4e>
  3a:	ba 00 00 00 00       	mov    $0x0,%edx
  3f:	b8 48 03 00 00       	mov    $0x348,%eax
  44:	e8 fc ff ff ff       	call   45 <powerup_await_non_bsy+0x45>
  49:	83 c8 ff             	or     $0xffffffff,%eax
  4c:	eb 23                	jmp    71 <powerup_await_non_bsy+0x71>
  4e:	e8 fc ff ff ff       	call   4f <powerup_await_non_bsy+0x4f>
  53:	eb b5                	jmp    a <powerup_await_non_bsy+0xa>
  55:	0f b6 c0             	movzbl %al,%eax
  58:	50                   	push   %eax
  59:	89 44 24 04          	mov    %eax,0x4(%esp)
  5d:	0f b7 db             	movzwl %bx,%ebx
  60:	53                   	push   %ebx
  61:	68 16 00 00 00       	push   $0x16
  66:	e8 fc ff ff ff       	call   67 <powerup_await_non_bsy+0x67>
  6b:	83 c4 0c             	add    $0xc,%esp
  6e:	8b 04 24             	mov    (%esp),%eax
  71:	5a                   	pop    %edx
  72:	5b                   	pop    %ebx
  73:	5e                   	pop    %esi
  74:	5f                   	pop    %edi
  75:	c3                   	ret    

Disassembly of section .text.init_controller.constprop.0:

00000000 <init_controller.constprop.0>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	53                   	push   %ebx
   5:	89 c3                	mov    %eax,%ebx
   7:	89 14 24             	mov    %edx,(%esp)
   a:	89 ce                	mov    %ecx,%esi
   c:	8b 7c 24 18          	mov    0x18(%esp),%edi
  10:	8b 6c 24 1c          	mov    0x1c(%esp),%ebp
  14:	b9 10 00 00 00       	mov    $0x10,%ecx
  19:	ba 14 00 00 00       	mov    $0x14,%edx
  1e:	b8 00 00 00 00       	mov    $0x0,%eax
  23:	e8 fc ff ff ff       	call   24 <init_controller.constprop.0+0x24>
  28:	85 c0                	test   %eax,%eax
  2a:	75 14                	jne    40 <init_controller.constprop.0+0x40>
  2c:	ba 00 00 00 00       	mov    $0x0,%edx
  31:	b8 a6 03 00 00       	mov    $0x3a6,%eax
  36:	59                   	pop    %ecx
  37:	5b                   	pop    %ebx
  38:	5e                   	pop    %esi
  39:	5f                   	pop    %edi
  3a:	5d                   	pop    %ebp
  3b:	e9 fc ff ff ff       	jmp    3c <init_controller.constprop.0+0x3c>
  40:	89 c2                	mov    %eax,%edx
  42:	a1 00 00 00 00       	mov    0x0,%eax
  47:	8d 48 01             	lea    0x1(%eax),%ecx
  4a:	89 0d 00 00 00 00    	mov    %ecx,0x0
  50:	88 42 08             	mov    %al,0x8(%edx)
  53:	8a 04 24             	mov    (%esp),%al
  56:	88 42 07             	mov    %al,0x7(%edx)
  59:	89 f0                	mov    %esi,%eax
  5b:	88 42 06             	mov    %al,0x6(%edx)
  5e:	83 c8 ff             	or     $0xffffffff,%eax
  61:	85 db                	test   %ebx,%ebx
  63:	74 03                	je     68 <init_controller.constprop.0+0x68>
  65:	0f b7 03             	movzwl (%ebx),%eax
  68:	89 42 0c             	mov    %eax,0xc(%edx)
  6b:	89 5a 10             	mov    %ebx,0x10(%edx)
  6e:	66 89 3a             	mov    %di,(%edx)
  71:	66 89 6a 02          	mov    %bp,0x2(%edx)
  75:	66 c7 42 04 00 00    	movw   $0x0,0x4(%edx)
  7b:	89 14 24             	mov    %edx,(%esp)
  7e:	50                   	push   %eax
  7f:	56                   	push   %esi
  80:	6a 00                	push   $0x0
  82:	55                   	push   %ebp
  83:	57                   	push   %edi
  84:	51                   	push   %ecx
  85:	68 2f 00 00 00       	push   $0x2f
  8a:	e8 fc ff ff ff       	call   8b <init_controller.constprop.0+0x8b>
  8f:	8b 54 24 1c          	mov    0x1c(%esp),%edx
  93:	b8 00 00 00 00       	mov    $0x0,%eax
  98:	83 c4 20             	add    $0x20,%esp
  9b:	5b                   	pop    %ebx
  9c:	5e                   	pop    %esi
  9d:	5f                   	pop    %edi
  9e:	5d                   	pop    %ebp
  9f:	e9 fc ff ff ff       	jmp    a0 <init_controller.constprop.0+0xa0>

Disassembly of section .text.found_genericata:

00000000 <found_genericata>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 c3                	mov    %eax,%ebx
   6:	0f b6 78 16          	movzbl 0x16(%eax),%edi
   a:	0f b7 00             	movzwl (%eax),%eax
   d:	ba 3c 00 00 00       	mov    $0x3c,%edx
  12:	e8 fc ff ff ff       	call   13 <found_genericata+0x13>
  17:	89 c5                	mov    %eax,%ebp
  19:	f7 c7 01 00 00 00    	test   $0x1,%edi
  1f:	74 2d                	je     4e <found_genericata+0x4e>
  21:	ba 10 00 00 00       	mov    $0x10,%edx
  26:	89 d8                	mov    %ebx,%eax
  28:	e8 fc ff ff ff       	call   29 <found_genericata+0x29>
  2d:	0f b7 f0             	movzwl %ax,%esi
  30:	ba 14 00 00 00       	mov    $0x14,%edx
  35:	89 d8                	mov    %ebx,%eax
  37:	e8 fc ff ff ff       	call   38 <found_genericata+0x38>
  3c:	0f b7 c0             	movzwl %ax,%eax
  3f:	85 c0                	test   %eax,%eax
  41:	74 78                	je     bb <found_genericata+0xbb>
  43:	89 ea                	mov    %ebp,%edx
  45:	0f b6 ca             	movzbl %dl,%ecx
  48:	85 f6                	test   %esi,%esi
  4a:	75 11                	jne    5d <found_genericata+0x5d>
  4c:	eb 6d                	jmp    bb <found_genericata+0xbb>
  4e:	b9 0e 00 00 00       	mov    $0xe,%ecx
  53:	b8 f4 03 00 00       	mov    $0x3f4,%eax
  58:	be f0 01 00 00       	mov    $0x1f0,%esi
  5d:	50                   	push   %eax
  5e:	56                   	push   %esi
  5f:	31 d2                	xor    %edx,%edx
  61:	89 d8                	mov    %ebx,%eax
  63:	e8 fc ff ff ff       	call   64 <found_genericata+0x64>
  68:	59                   	pop    %ecx
  69:	5e                   	pop    %esi
  6a:	83 e7 04             	and    $0x4,%edi
  6d:	74 2d                	je     9c <found_genericata+0x9c>
  6f:	ba 18 00 00 00       	mov    $0x18,%edx
  74:	89 d8                	mov    %ebx,%eax
  76:	e8 fc ff ff ff       	call   77 <found_genericata+0x77>
  7b:	0f b7 f0             	movzwl %ax,%esi
  7e:	ba 1c 00 00 00       	mov    $0x1c,%edx
  83:	89 d8                	mov    %ebx,%eax
  85:	e8 fc ff ff ff       	call   86 <found_genericata+0x86>
  8a:	0f b7 c0             	movzwl %ax,%eax
  8d:	85 f6                	test   %esi,%esi
  8f:	74 2a                	je     bb <found_genericata+0xbb>
  91:	85 c0                	test   %eax,%eax
  93:	74 26                	je     bb <found_genericata+0xbb>
  95:	89 e9                	mov    %ebp,%ecx
  97:	0f b6 c9             	movzbl %cl,%ecx
  9a:	eb 0f                	jmp    ab <found_genericata+0xab>
  9c:	b9 0f 00 00 00       	mov    $0xf,%ecx
  a1:	b8 74 03 00 00       	mov    $0x374,%eax
  a6:	be 70 01 00 00       	mov    $0x170,%esi
  ab:	50                   	push   %eax
  ac:	56                   	push   %esi
  ad:	ba 01 00 00 00       	mov    $0x1,%edx
  b2:	89 d8                	mov    %ebx,%eax
  b4:	e8 fc ff ff ff       	call   b5 <found_genericata+0xb5>
  b9:	58                   	pop    %eax
  ba:	5a                   	pop    %edx
  bb:	5b                   	pop    %ebx
  bc:	5e                   	pop    %esi
  bd:	5f                   	pop    %edi
  be:	5d                   	pop    %ebp
  bf:	c3                   	ret    

Disassembly of section .text.await_ide.constprop.0:

00000000 <await_ide.constprop.0>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 c6                	mov    %eax,%esi
   6:	89 d7                	mov    %edx,%edi
   8:	89 cd                	mov    %ecx,%ebp
   a:	b8 00 7d 00 00       	mov    $0x7d00,%eax
   f:	e8 fc ff ff ff       	call   10 <await_ide.constprop.0+0x10>
  14:	89 c3                	mov    %eax,%ebx
  16:	8d 55 07             	lea    0x7(%ebp),%edx
  19:	ec                   	in     (%dx),%al
  1a:	89 f2                	mov    %esi,%edx
  1c:	21 c2                	and    %eax,%edx
  1e:	89 f9                	mov    %edi,%ecx
  20:	38 ca                	cmp    %cl,%dl
  22:	75 05                	jne    29 <await_ide.constprop.0+0x29>
  24:	0f b6 c0             	movzbl %al,%eax
  27:	eb 26                	jmp    4f <await_ide.constprop.0+0x4f>
  29:	89 d8                	mov    %ebx,%eax
  2b:	e8 fc ff ff ff       	call   2c <await_ide.constprop.0+0x2c>
  30:	85 c0                	test   %eax,%eax
  32:	74 14                	je     48 <await_ide.constprop.0+0x48>
  34:	ba 00 00 00 00       	mov    $0x0,%edx
  39:	b8 2b 00 00 00       	mov    $0x2b,%eax
  3e:	e8 fc ff ff ff       	call   3f <await_ide.constprop.0+0x3f>
  43:	83 c8 ff             	or     $0xffffffff,%eax
  46:	eb 07                	jmp    4f <await_ide.constprop.0+0x4f>
  48:	e8 fc ff ff ff       	call   49 <await_ide.constprop.0+0x49>
  4d:	eb c7                	jmp    16 <await_ide.constprop.0+0x16>
  4f:	5b                   	pop    %ebx
  50:	5e                   	pop    %esi
  51:	5f                   	pop    %edi
  52:	5d                   	pop    %ebp
  53:	c3                   	ret    

Disassembly of section .text.await_not_bsy:

00000000 <await_not_bsy>:
   0:	0f b7 c8             	movzwl %ax,%ecx
   3:	31 d2                	xor    %edx,%edx
   5:	b8 80 00 00 00       	mov    $0x80,%eax
   a:	e9 fc ff ff ff       	jmp    b <await_not_bsy+0xb>

Disassembly of section .text.send_cmd:

00000000 <send_cmd>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 08             	sub    $0x8,%esp
   7:	89 d6                	mov    %edx,%esi
   9:	8a 58 28             	mov    0x28(%eax),%bl
   c:	8b 40 24             	mov    0x24(%eax),%eax
   f:	0f b7 38             	movzwl (%eax),%edi
  12:	89 f8                	mov    %edi,%eax
  14:	e8 fc ff ff ff       	call   15 <send_cmd+0x15>
  19:	85 c0                	test   %eax,%eax
  1b:	0f 88 be 00 00 00    	js     df <send_cmd+0xdf>
  21:	89 fd                	mov    %edi,%ebp
  23:	8a 4e 05             	mov    0x5(%esi),%cl
  26:	83 e1 4f             	and    $0x4f,%ecx
  29:	80 fb 01             	cmp    $0x1,%bl
  2c:	19 c0                	sbb    %eax,%eax
  2e:	83 e0 f0             	and    $0xfffffff0,%eax
  31:	83 e8 50             	sub    $0x50,%eax
  34:	09 c1                	or     %eax,%ecx
  36:	8d 57 06             	lea    0x6(%edi),%edx
  39:	ec                   	in     (%dx),%al
  3a:	88 c3                	mov    %al,%bl
  3c:	88 c8                	mov    %cl,%al
  3e:	ee                   	out    %al,(%dx)
  3f:	31 d9                	xor    %ebx,%ecx
  41:	80 e1 10             	and    $0x10,%cl
  44:	75 55                	jne    9b <send_cmd+0x9b>
  46:	8a 4e 06             	mov    0x6(%esi),%cl
  49:	8d 45 01             	lea    0x1(%ebp),%eax
  4c:	66 89 44 24 02       	mov    %ax,0x2(%esp)
  51:	8d 7d 02             	lea    0x2(%ebp),%edi
  54:	8d 5d 03             	lea    0x3(%ebp),%ebx
  57:	8d 45 04             	lea    0x4(%ebp),%eax
  5a:	66 89 44 24 04       	mov    %ax,0x4(%esp)
  5f:	8d 45 05             	lea    0x5(%ebp),%eax
  62:	66 89 44 24 06       	mov    %ax,0x6(%esp)
  67:	89 c8                	mov    %ecx,%eax
  69:	25 ee 00 00 00       	and    $0xee,%eax
  6e:	83 f8 24             	cmp    $0x24,%eax
  71:	75 3f                	jne    b2 <send_cmd+0xb2>
  73:	8a 46 07             	mov    0x7(%esi),%al
  76:	66 8b 54 24 02       	mov    0x2(%esp),%dx
  7b:	ee                   	out    %al,(%dx)
  7c:	8a 46 08             	mov    0x8(%esi),%al
  7f:	89 fa                	mov    %edi,%edx
  81:	ee                   	out    %al,(%dx)
  82:	8a 46 09             	mov    0x9(%esi),%al
  85:	89 da                	mov    %ebx,%edx
  87:	ee                   	out    %al,(%dx)
  88:	8a 46 0a             	mov    0xa(%esi),%al
  8b:	8b 54 24 04          	mov    0x4(%esp),%edx
  8f:	ee                   	out    %al,(%dx)
  90:	8a 46 0b             	mov    0xb(%esi),%al
  93:	66 8b 54 24 06       	mov    0x6(%esp),%dx
  98:	ee                   	out    %al,(%dx)
  99:	eb 17                	jmp    b2 <send_cmd+0xb2>
  9b:	b8 90 01 00 00       	mov    $0x190,%eax
  a0:	e8 fc ff ff ff       	call   a1 <send_cmd+0xa1>
  a5:	89 f8                	mov    %edi,%eax
  a7:	e8 fc ff ff ff       	call   a8 <send_cmd+0xa8>
  ac:	85 c0                	test   %eax,%eax
  ae:	79 96                	jns    46 <send_cmd+0x46>
  b0:	eb 2d                	jmp    df <send_cmd+0xdf>
  b2:	8a 06                	mov    (%esi),%al
  b4:	66 8b 54 24 02       	mov    0x2(%esp),%dx
  b9:	ee                   	out    %al,(%dx)
  ba:	8a 46 01             	mov    0x1(%esi),%al
  bd:	89 fa                	mov    %edi,%edx
  bf:	ee                   	out    %al,(%dx)
  c0:	8a 46 02             	mov    0x2(%esi),%al
  c3:	89 da                	mov    %ebx,%edx
  c5:	ee                   	out    %al,(%dx)
  c6:	8a 46 03             	mov    0x3(%esi),%al
  c9:	8b 54 24 04          	mov    0x4(%esp),%edx
  cd:	ee                   	out    %al,(%dx)
  ce:	8a 46 04             	mov    0x4(%esi),%al
  d1:	66 8b 54 24 06       	mov    0x6(%esp),%dx
  d6:	ee                   	out    %al,(%dx)
  d7:	8d 55 07             	lea    0x7(%ebp),%edx
  da:	88 c8                	mov    %cl,%al
  dc:	ee                   	out    %al,(%dx)
  dd:	31 c0                	xor    %eax,%eax
  df:	83 c4 08             	add    $0x8,%esp
  e2:	5b                   	pop    %ebx
  e3:	5e                   	pop    %esi
  e4:	5f                   	pop    %edi
  e5:	5d                   	pop    %ebp
  e6:	c3                   	ret    

Disassembly of section .text.ata_pio_transfer.constprop.0:

00000000 <ata_pio_transfer.constprop.0>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 10             	sub    $0x10,%esp
   7:	89 c3                	mov    %eax,%ebx
   9:	89 14 24             	mov    %edx,(%esp)
   c:	ff 30                	push   (%eax)
   e:	52                   	push   %edx
   f:	0f b7 40 0a          	movzwl 0xa(%eax),%eax
  13:	50                   	push   %eax
  14:	6a 00                	push   $0x0
  16:	ff 73 04             	push   0x4(%ebx)
  19:	68 5e 00 00 00       	push   $0x5e
  1e:	e8 fc ff ff ff       	call   1f <ata_pio_transfer.constprop.0+0x1f>
  23:	8b 43 04             	mov    0x4(%ebx),%eax
  26:	8b 40 24             	mov    0x24(%eax),%eax
  29:	66 8b 38             	mov    (%eax),%di
  2c:	66 89 7c 24 1c       	mov    %di,0x1c(%esp)
  31:	66 8b 40 02          	mov    0x2(%eax),%ax
  35:	66 89 44 24 1e       	mov    %ax,0x1e(%esp)
  3a:	0f b7 73 0a          	movzwl 0xa(%ebx),%esi
  3e:	8b 2b                	mov    (%ebx),%ebp
  40:	b9 02 00 00 00       	mov    $0x2,%ecx
  45:	8b 44 24 18          	mov    0x18(%esp),%eax
  49:	99                   	cltd   
  4a:	f7 f9                	idiv   %ecx
  4c:	89 44 24 20          	mov    %eax,0x20(%esp)
  50:	83 c4 18             	add    $0x18,%esp
  53:	0f b7 c7             	movzwl %di,%eax
  56:	89 44 24 0c          	mov    %eax,0xc(%esp)
  5a:	55                   	push   %ebp
  5b:	ff 73 04             	push   0x4(%ebx)
  5e:	68 95 00 00 00       	push   $0x95
  63:	e8 fc ff ff ff       	call   64 <ata_pio_transfer.constprop.0+0x64>
  68:	8b 4c 24 14          	mov    0x14(%esp),%ecx
  6c:	89 ef                	mov    %ebp,%edi
  6e:	8b 54 24 10          	mov    0x10(%esp),%edx
  72:	66 f3 6d             	rep insw (%dx),%es:(%edi)
  75:	03 6c 24 0c          	add    0xc(%esp),%ebp
  79:	66 8b 44 24 12       	mov    0x12(%esp),%ax
  7e:	8d 50 02             	lea    0x2(%eax),%edx
  81:	ec                   	in     (%dx),%al
  82:	8b 44 24 18          	mov    0x18(%esp),%eax
  86:	e8 fc ff ff ff       	call   87 <ata_pio_transfer.constprop.0+0x87>
  8b:	83 c4 0c             	add    $0xc,%esp
  8e:	85 c0                	test   %eax,%eax
  90:	79 06                	jns    98 <ata_pio_transfer.constprop.0+0x98>
  92:	66 29 73 0a          	sub    %si,0xa(%ebx)
  96:	eb 3b                	jmp    d3 <ata_pio_transfer.constprop.0+0xd3>
  98:	25 89 00 00 00       	and    $0x89,%eax
  9d:	4e                   	dec    %esi
  9e:	74 1d                	je     bd <ata_pio_transfer.constprop.0+0xbd>
  a0:	83 f8 08             	cmp    $0x8,%eax
  a3:	74 b5                	je     5a <ata_pio_transfer.constprop.0+0x5a>
  a5:	50                   	push   %eax
  a6:	68 b0 00 00 00       	push   $0xb0
  ab:	e8 fc ff ff ff       	call   ac <ata_pio_transfer.constprop.0+0xac>
  b0:	66 29 73 0a          	sub    %si,0xa(%ebx)
  b4:	59                   	pop    %ecx
  b5:	5b                   	pop    %ebx
  b6:	b8 fa ff ff ff       	mov    $0xfffffffa,%eax
  bb:	eb 16                	jmp    d3 <ata_pio_transfer.constprop.0+0xd3>
  bd:	85 c0                	test   %eax,%eax
  bf:	74 12                	je     d3 <ata_pio_transfer.constprop.0+0xd3>
  c1:	50                   	push   %eax
  c2:	68 e4 00 00 00       	push   $0xe4
  c7:	e8 fc ff ff ff       	call   c8 <ata_pio_transfer.constprop.0+0xc8>
  cc:	58                   	pop    %eax
  cd:	5a                   	pop    %edx
  ce:	b8 f9 ff ff ff       	mov    $0xfffffff9,%eax
  d3:	83 c4 10             	add    $0x10,%esp
  d6:	5b                   	pop    %ebx
  d7:	5e                   	pop    %esi
  d8:	5f                   	pop    %edi
  d9:	5d                   	pop    %ebp
  da:	c3                   	ret    

Disassembly of section .text.init_atadrive:

00000000 <init_atadrive>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	89 c7                	mov    %eax,%edi
   5:	89 d6                	mov    %edx,%esi
   7:	b9 10 00 00 00       	mov    $0x10,%ecx
   c:	ba 2c 00 00 00       	mov    $0x2c,%edx
  11:	b8 00 00 00 00       	mov    $0x0,%eax
  16:	e8 fc ff ff ff       	call   17 <init_atadrive+0x17>
  1b:	89 c3                	mov    %eax,%ebx
  1d:	85 c0                	test   %eax,%eax
  1f:	75 11                	jne    32 <init_atadrive+0x32>
  21:	ba 00 00 00 00       	mov    $0x0,%edx
  26:	b8 cc 02 00 00       	mov    $0x2cc,%eax
  2b:	e8 fc ff ff ff       	call   2c <init_atadrive+0x2c>
  30:	eb 30                	jmp    62 <init_atadrive+0x62>
  32:	b9 2c 00 00 00       	mov    $0x2c,%ecx
  37:	31 d2                	xor    %edx,%edx
  39:	e8 fc ff ff ff       	call   3a <init_atadrive+0x3a>
  3e:	8b 47 24             	mov    0x24(%edi),%eax
  41:	89 43 24             	mov    %eax,0x24(%ebx)
  44:	8a 57 28             	mov    0x28(%edi),%dl
  47:	88 53 28             	mov    %dl,0x28(%ebx)
  4a:	0f b6 40 08          	movzbl 0x8(%eax),%eax
  4e:	01 c0                	add    %eax,%eax
  50:	0f b6 57 28          	movzbl 0x28(%edi),%edx
  54:	01 d0                	add    %edx,%eax
  56:	89 43 14             	mov    %eax,0x14(%ebx)
  59:	0f b7 06             	movzwl (%esi),%eax
  5c:	c0 e8 07             	shr    $0x7,%al
  5f:	88 43 18             	mov    %al,0x18(%ebx)
  62:	89 d8                	mov    %ebx,%eax
  64:	5b                   	pop    %ebx
  65:	5e                   	pop    %esi
  66:	5f                   	pop    %edi
  67:	c3                   	ret    

Disassembly of section .text.ata_reset:

00000000 <ata_reset>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 08             	sub    $0x8,%esp
   7:	89 c6                	mov    %eax,%esi
   9:	8b 40 24             	mov    0x24(%eax),%eax
   c:	8a 4e 28             	mov    0x28(%esi),%cl
   f:	88 4c 24 07          	mov    %cl,0x7(%esp)
  13:	0f b7 38             	movzwl (%eax),%edi
  16:	66 8b 58 02          	mov    0x2(%eax),%bx
  1a:	56                   	push   %esi
  1b:	68 16 01 00 00       	push   $0x116
  20:	e8 fc ff ff ff       	call   21 <ata_reset+0x21>
  25:	8d 43 02             	lea    0x2(%ebx),%eax
  28:	66 89 44 24 0a       	mov    %ax,0xa(%esp)
  2d:	b0 0e                	mov    $0xe,%al
  2f:	66 8b 54 24 0a       	mov    0xa(%esp),%dx
  34:	ee                   	out    %al,(%dx)
  35:	b8 05 00 00 00       	mov    $0x5,%eax
  3a:	e8 fc ff ff ff       	call   3b <ata_reset+0x3b>
  3f:	b0 0a                	mov    $0xa,%al
  41:	66 8b 54 24 0a       	mov    0xa(%esp),%dx
  46:	ee                   	out    %al,(%dx)
  47:	b8 02 00 00 00       	mov    $0x2,%eax
  4c:	e8 fc ff ff ff       	call   4d <ata_reset+0x4d>
  51:	89 f8                	mov    %edi,%eax
  53:	e8 fc ff ff ff       	call   54 <ata_reset+0x54>
  58:	89 c3                	mov    %eax,%ebx
  5a:	59                   	pop    %ecx
  5b:	5d                   	pop    %ebp
  5c:	85 c0                	test   %eax,%eax
  5e:	78 7e                	js     de <ata_reset+0xde>
  60:	8d 47 06             	lea    0x6(%edi),%eax
  63:	66 89 44 24 04       	mov    %ax,0x4(%esp)
  68:	8a 4c 24 07          	mov    0x7(%esp),%cl
  6c:	84 c9                	test   %cl,%cl
  6e:	74 4f                	je     bf <ata_reset+0xbf>
  70:	b8 00 7d 00 00       	mov    $0x7d00,%eax
  75:	e8 fc ff ff ff       	call   76 <ata_reset+0x76>
  7a:	89 c5                	mov    %eax,%ebp
  7c:	b0 b0                	mov    $0xb0,%al
  7e:	8b 54 24 04          	mov    0x4(%esp),%edx
  82:	ee                   	out    %al,(%dx)
  83:	b8 90 01 00 00       	mov    $0x190,%eax
  88:	e8 fc ff ff ff       	call   89 <ata_reset+0x89>
  8d:	89 f8                	mov    %edi,%eax
  8f:	e8 fc ff ff ff       	call   90 <ata_reset+0x90>
  94:	89 c3                	mov    %eax,%ebx
  96:	85 c0                	test   %eax,%eax
  98:	78 44                	js     de <ata_reset+0xde>
  9a:	8b 54 24 04          	mov    0x4(%esp),%edx
  9e:	ec                   	in     (%dx),%al
  9f:	3c b0                	cmp    $0xb0,%al
  a1:	74 23                	je     c6 <ata_reset+0xc6>
  a3:	89 e8                	mov    %ebp,%eax
  a5:	e8 fc ff ff ff       	call   a6 <ata_reset+0xa6>
  aa:	85 c0                	test   %eax,%eax
  ac:	74 ce                	je     7c <ata_reset+0x7c>
  ae:	ba 00 00 00 00       	mov    $0x0,%edx
  b3:	b8 72 00 00 00       	mov    $0x72,%eax
  b8:	e8 fc ff ff ff       	call   b9 <ata_reset+0xb9>
  bd:	eb 1f                	jmp    de <ata_reset+0xde>
  bf:	b0 a0                	mov    $0xa0,%al
  c1:	8b 54 24 04          	mov    0x4(%esp),%edx
  c5:	ee                   	out    %al,(%dx)
  c6:	80 3e 20             	cmpb   $0x20,(%esi)
  c9:	75 13                	jne    de <ata_reset+0xde>
  cb:	89 f9                	mov    %edi,%ecx
  cd:	ba 40 00 00 00       	mov    $0x40,%edx
  d2:	b8 40 00 00 00       	mov    $0x40,%eax
  d7:	e8 fc ff ff ff       	call   d8 <ata_reset+0xd8>
  dc:	89 c3                	mov    %eax,%ebx
  de:	b0 08                	mov    $0x8,%al
  e0:	66 8b 54 24 02       	mov    0x2(%esp),%dx
  e5:	ee                   	out    %al,(%dx)
  e6:	53                   	push   %ebx
  e7:	68 2a 01 00 00       	push   $0x12a
  ec:	e8 fc ff ff ff       	call   ed <ata_reset+0xed>
  f1:	83 c4 10             	add    $0x10,%esp
  f4:	5b                   	pop    %ebx
  f5:	5e                   	pop    %esi
  f6:	5f                   	pop    %edi
  f7:	5d                   	pop    %ebp
  f8:	c3                   	ret    

Disassembly of section .text.ata_wait_data:

00000000 <ata_wait_data>:
   0:	53                   	push   %ebx
   1:	89 c3                	mov    %eax,%ebx
   3:	b8 90 01 00 00       	mov    $0x190,%eax
   8:	e8 fc ff ff ff       	call   9 <ata_wait_data+0x9>
   d:	0f b7 c3             	movzwl %bx,%eax
  10:	e8 fc ff ff ff       	call   11 <ata_wait_data+0x11>
  15:	89 c1                	mov    %eax,%ecx
  17:	85 c0                	test   %eax,%eax
  19:	78 3b                	js     56 <ata_wait_data+0x56>
  1b:	a8 01                	test   $0x1,%al
  1d:	74 1d                	je     3c <ata_wait_data+0x3c>
  1f:	8d 53 01             	lea    0x1(%ebx),%edx
  22:	ec                   	in     (%dx),%al
  23:	0f b6 c0             	movzbl %al,%eax
  26:	50                   	push   %eax
  27:	51                   	push   %ecx
  28:	68 44 01 00 00       	push   $0x144
  2d:	e8 fc ff ff ff       	call   2e <ata_wait_data+0x2e>
  32:	83 c4 0c             	add    $0xc,%esp
  35:	b9 fc ff ff ff       	mov    $0xfffffffc,%ecx
  3a:	eb 1a                	jmp    56 <ata_wait_data+0x56>
  3c:	a8 08                	test   $0x8,%al
  3e:	75 14                	jne    54 <ata_wait_data+0x54>
  40:	50                   	push   %eax
  41:	68 72 01 00 00       	push   $0x172
  46:	e8 fc ff ff ff       	call   47 <ata_wait_data+0x47>
  4b:	58                   	pop    %eax
  4c:	5a                   	pop    %edx
  4d:	b9 fb ff ff ff       	mov    $0xfffffffb,%ecx
  52:	eb 02                	jmp    56 <ata_wait_data+0x56>
  54:	31 c9                	xor    %ecx,%ecx
  56:	89 c8                	mov    %ecx,%eax
  58:	5b                   	pop    %ebx
  59:	c3                   	ret    

Disassembly of section .text.send_ata_identity:

00000000 <send_ata_identity>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	83 ec 20             	sub    $0x20,%esp
   6:	89 c7                	mov    %eax,%edi
   8:	89 d3                	mov    %edx,%ebx
   a:	89 ce                	mov    %ecx,%esi
   c:	b9 00 02 00 00       	mov    $0x200,%ecx
  11:	31 d2                	xor    %edx,%edx
  13:	89 d8                	mov    %ebx,%eax
  15:	e8 fc ff ff ff       	call   16 <send_ata_identity+0x16>
  1a:	b9 14 00 00 00       	mov    $0x14,%ecx
  1f:	31 d2                	xor    %edx,%edx
  21:	8d 44 24 0c          	lea    0xc(%esp),%eax
  25:	e8 fc ff ff ff       	call   26 <send_ata_identity+0x26>
  2a:	89 7c 24 10          	mov    %edi,0x10(%esp)
  2e:	66 c7 44 24 16 01 00 	movw   $0x1,0x16(%esp)
  35:	c7 44 24 18 01 00 00 	movl   $0x1,0x18(%esp)
  3c:	00 
  3d:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%esp)
  44:	00 
  45:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
  49:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4e:	31 d2                	xor    %edx,%edx
  50:	89 e0                	mov    %esp,%eax
  52:	e8 fc ff ff ff       	call   53 <send_ata_identity+0x53>
  57:	89 f0                	mov    %esi,%eax
  59:	88 44 24 06          	mov    %al,0x6(%esp)
  5d:	8b 4c 24 10          	mov    0x10(%esp),%ecx
  61:	8b 41 24             	mov    0x24(%ecx),%eax
  64:	66 8b 30             	mov    (%eax),%si
  67:	66 8b 58 02          	mov    0x2(%eax),%bx
  6b:	83 c3 02             	add    $0x2,%ebx
  6e:	b0 0a                	mov    $0xa,%al
  70:	89 da                	mov    %ebx,%edx
  72:	ee                   	out    %al,(%dx)
  73:	89 e2                	mov    %esp,%edx
  75:	89 c8                	mov    %ecx,%eax
  77:	e8 fc ff ff ff       	call   78 <send_ata_identity+0x78>
  7c:	89 c1                	mov    %eax,%ecx
  7e:	85 c0                	test   %eax,%eax
  80:	75 1e                	jne    a0 <send_ata_identity+0xa0>
  82:	0f b7 c6             	movzwl %si,%eax
  85:	e8 fc ff ff ff       	call   86 <send_ata_identity+0x86>
  8a:	89 c1                	mov    %eax,%ecx
  8c:	85 c0                	test   %eax,%eax
  8e:	75 10                	jne    a0 <send_ata_identity+0xa0>
  90:	ba 00 02 00 00       	mov    $0x200,%edx
  95:	8d 44 24 0c          	lea    0xc(%esp),%eax
  99:	e8 fc ff ff ff       	call   9a <send_ata_identity+0x9a>
  9e:	89 c1                	mov    %eax,%ecx
  a0:	b0 08                	mov    $0x8,%al
  a2:	89 da                	mov    %ebx,%edx
  a4:	ee                   	out    %al,(%dx)
  a5:	89 c8                	mov    %ecx,%eax
  a7:	83 c4 20             	add    $0x20,%esp
  aa:	5b                   	pop    %ebx
  ab:	5e                   	pop    %esi
  ac:	5f                   	pop    %edi
  ad:	c3                   	ret    

Disassembly of section .text.ata_cmd_nondata:

00000000 <ata_cmd_nondata>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	89 c1                	mov    %eax,%ecx
   5:	89 d7                	mov    %edx,%edi
   7:	8b 40 24             	mov    0x24(%eax),%eax
   a:	66 8b 30             	mov    (%eax),%si
   d:	66 8b 58 02          	mov    0x2(%eax),%bx
  11:	83 c3 02             	add    $0x2,%ebx
  14:	b0 0a                	mov    $0xa,%al
  16:	89 da                	mov    %ebx,%edx
  18:	ee                   	out    %al,(%dx)
  19:	89 fa                	mov    %edi,%edx
  1b:	89 c8                	mov    %ecx,%eax
  1d:	e8 fc ff ff ff       	call   1e <ata_cmd_nondata+0x1e>
  22:	89 c1                	mov    %eax,%ecx
  24:	85 c0                	test   %eax,%eax
  26:	75 4f                	jne    77 <ata_cmd_nondata+0x77>
  28:	b8 90 01 00 00       	mov    $0x190,%eax
  2d:	e8 fc ff ff ff       	call   2e <ata_cmd_nondata+0x2e>
  32:	0f b7 c6             	movzwl %si,%eax
  35:	e8 fc ff ff ff       	call   36 <ata_cmd_nondata+0x36>
  3a:	89 c1                	mov    %eax,%ecx
  3c:	85 c0                	test   %eax,%eax
  3e:	78 37                	js     77 <ata_cmd_nondata+0x77>
  40:	a8 01                	test   $0x1,%al
  42:	74 1d                	je     61 <ata_cmd_nondata+0x61>
  44:	8d 56 01             	lea    0x1(%esi),%edx
  47:	ec                   	in     (%dx),%al
  48:	0f b6 c0             	movzbl %al,%eax
  4b:	50                   	push   %eax
  4c:	51                   	push   %ecx
  4d:	68 98 01 00 00       	push   $0x198
  52:	e8 fc ff ff ff       	call   53 <ata_cmd_nondata+0x53>
  57:	83 c4 0c             	add    $0xc,%esp
  5a:	b9 fc ff ff ff       	mov    $0xfffffffc,%ecx
  5f:	eb 16                	jmp    77 <ata_cmd_nondata+0x77>
  61:	a8 08                	test   $0x8,%al
  63:	74 12                	je     77 <ata_cmd_nondata+0x77>
  65:	50                   	push   %eax
  66:	68 c9 01 00 00       	push   $0x1c9
  6b:	e8 fc ff ff ff       	call   6c <ata_cmd_nondata+0x6c>
  70:	58                   	pop    %eax
  71:	5a                   	pop    %edx
  72:	b9 fb ff ff ff       	mov    $0xfffffffb,%ecx
  77:	b0 08                	mov    $0x8,%al
  79:	89 da                	mov    %ebx,%edx
  7b:	ee                   	out    %al,(%dx)
  7c:	89 c8                	mov    %ecx,%eax
  7e:	5b                   	pop    %ebx
  7f:	5e                   	pop    %esi
  80:	5f                   	pop    %edi
  81:	c3                   	ret    

Disassembly of section .text.ata_process_op:

00000000 <ata_process_op>:
   0:	8b 48 04             	mov    0x4(%eax),%ecx
   3:	8a 50 08             	mov    0x8(%eax),%dl
   6:	80 fa 03             	cmp    $0x3,%dl
   9:	77 13                	ja     1e <ata_process_op+0x1e>
   b:	80 fa 01             	cmp    $0x1,%dl
   e:	77 2f                	ja     3f <ata_process_op+0x3f>
  10:	84 d2                	test   %dl,%dl
  12:	75 30                	jne    44 <ata_process_op+0x44>
  14:	89 c8                	mov    %ecx,%eax
  16:	e8 fc ff ff ff       	call   17 <ata_process_op+0x17>
  1b:	31 c0                	xor    %eax,%eax
  1d:	c3                   	ret    
  1e:	80 fa 10             	cmp    $0x10,%dl
  21:	75 21                	jne    44 <ata_process_op+0x44>
  23:	8b 41 24             	mov    0x24(%ecx),%eax
  26:	66 8b 10             	mov    (%eax),%dx
  29:	83 c2 07             	add    $0x7,%edx
  2c:	ec                   	in     (%dx),%al
  2d:	83 e0 c0             	and    $0xffffffc0,%eax
  30:	3c 40                	cmp    $0x40,%al
  32:	0f 94 c0             	sete   %al
  35:	0f b6 c0             	movzbl %al,%eax
  38:	48                   	dec    %eax
  39:	25 aa 00 00 00       	and    $0xaa,%eax
  3e:	c3                   	ret    
  3f:	e8 fc ff ff ff       	call   40 <ata_process_op+0x40>
  44:	e9 fc ff ff ff       	jmp    45 <ata_process_op+0x45>

Disassembly of section .text.ata_atapi_process_op:

00000000 <ata_atapi_process_op>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 1c             	sub    $0x1c,%esp
   7:	89 c3                	mov    %eax,%ebx
   9:	8a 40 08             	mov    0x8(%eax),%al
   c:	83 e8 03             	sub    $0x3,%eax
   f:	b9 03 00 00 00       	mov    $0x3,%ecx
  14:	a8 fd                	test   $0xfd,%al
  16:	0f 84 1f 01 00 00    	je     13b <ata_atapi_process_op+0x13b>
  1c:	b9 0c 00 00 00       	mov    $0xc,%ecx
  21:	8d 54 24 04          	lea    0x4(%esp),%edx
  25:	89 d8                	mov    %ebx,%eax
  27:	e8 fc ff ff ff       	call   28 <ata_atapi_process_op+0x28>
  2c:	89 c7                	mov    %eax,%edi
  2e:	85 c0                	test   %eax,%eax
  30:	79 0e                	jns    40 <ata_atapi_process_op+0x40>
  32:	89 d8                	mov    %ebx,%eax
  34:	e8 fc ff ff ff       	call   35 <ata_atapi_process_op+0x35>
  39:	89 c1                	mov    %eax,%ecx
  3b:	e9 fb 00 00 00       	jmp    13b <ata_atapi_process_op+0x13b>
  40:	8b 6b 04             	mov    0x4(%ebx),%ebp
  43:	8b 45 24             	mov    0x24(%ebp),%eax
  46:	66 8b 30             	mov    (%eax),%si
  49:	66 89 74 24 02       	mov    %si,0x2(%esp)
  4e:	66 8b 70 02          	mov    0x2(%eax),%si
  52:	b9 0c 00 00 00       	mov    $0xc,%ecx
  57:	31 d2                	xor    %edx,%edx
  59:	8d 44 24 10          	lea    0x10(%esp),%eax
  5d:	e8 fc ff ff ff       	call   5e <ata_atapi_process_op+0x5e>
  62:	66 89 7c 24 13       	mov    %di,0x13(%esp)
  67:	c6 44 24 16 a0       	movb   $0xa0,0x16(%esp)
  6c:	8d 46 02             	lea    0x2(%esi),%eax
  6f:	66 89 04 24          	mov    %ax,(%esp)
  73:	b0 0a                	mov    $0xa,%al
  75:	8b 14 24             	mov    (%esp),%edx
  78:	ee                   	out    %al,(%dx)
  79:	8d 54 24 10          	lea    0x10(%esp),%edx
  7d:	89 e8                	mov    %ebp,%eax
  7f:	e8 fc ff ff ff       	call   80 <ata_atapi_process_op+0x80>
  84:	89 c1                	mov    %eax,%ecx
  86:	85 c0                	test   %eax,%eax
  88:	0f 85 9e 00 00 00    	jne    12c <ata_atapi_process_op+0x12c>
  8e:	0f b7 6c 24 02       	movzwl 0x2(%esp),%ebp
  93:	89 e8                	mov    %ebp,%eax
  95:	e8 fc ff ff ff       	call   96 <ata_atapi_process_op+0x96>
  9a:	89 c1                	mov    %eax,%ecx
  9c:	85 c0                	test   %eax,%eax
  9e:	0f 85 88 00 00 00    	jne    12c <ata_atapi_process_op+0x12c>
  a4:	b9 06 00 00 00       	mov    $0x6,%ecx
  a9:	8d 74 24 04          	lea    0x4(%esp),%esi
  ad:	66 8b 54 24 02       	mov    0x2(%esp),%dx
  b2:	26 66 f3 6f          	rep outsw %es:(%esi),(%dx)
  b6:	8b 14 24             	mov    (%esp),%edx
  b9:	ec                   	in     (%dx),%al
  ba:	89 e8                	mov    %ebp,%eax
  bc:	e8 fc ff ff ff       	call   bd <ata_atapi_process_op+0xbd>
  c1:	89 c1                	mov    %eax,%ecx
  c3:	85 c0                	test   %eax,%eax
  c5:	78 65                	js     12c <ata_atapi_process_op+0x12c>
  c7:	a8 01                	test   $0x1,%al
  c9:	74 2e                	je     f9 <ata_atapi_process_op+0xf9>
  cb:	66 8b 54 24 02       	mov    0x2(%esp),%dx
  d0:	42                   	inc    %edx
  d1:	ec                   	in     (%dx),%al
  d2:	3c 20                	cmp    $0x20,%al
  d4:	75 08                	jne    de <ata_atapi_process_op+0xde>
  d6:	b0 08                	mov    $0x8,%al
  d8:	8b 14 24             	mov    (%esp),%edx
  db:	ee                   	out    %al,(%dx)
  dc:	eb 58                	jmp    136 <ata_atapi_process_op+0x136>
  de:	0f b6 c0             	movzbl %al,%eax
  e1:	50                   	push   %eax
  e2:	51                   	push   %ecx
  e3:	68 ee 01 00 00       	push   $0x1ee
  e8:	e8 fc ff ff ff       	call   e9 <ata_atapi_process_op+0xe9>
  ed:	b0 08                	mov    $0x8,%al
  ef:	8b 54 24 0c          	mov    0xc(%esp),%edx
  f3:	ee                   	out    %al,(%dx)
  f4:	83 c4 0c             	add    $0xc,%esp
  f7:	eb 3d                	jmp    136 <ata_atapi_process_op+0x136>
  f9:	85 ff                	test   %edi,%edi
  fb:	75 0a                	jne    107 <ata_atapi_process_op+0x107>
  fd:	b0 08                	mov    $0x8,%al
  ff:	8b 14 24             	mov    (%esp),%edx
 102:	ee                   	out    %al,(%dx)
 103:	31 c9                	xor    %ecx,%ecx
 105:	eb 34                	jmp    13b <ata_atapi_process_op+0x13b>
 107:	a8 08                	test   $0x8,%al
 109:	75 16                	jne    121 <ata_atapi_process_op+0x121>
 10b:	50                   	push   %eax
 10c:	68 22 02 00 00       	push   $0x222
 111:	e8 fc ff ff ff       	call   112 <ata_atapi_process_op+0x112>
 116:	b0 08                	mov    $0x8,%al
 118:	8b 54 24 08          	mov    0x8(%esp),%edx
 11c:	ee                   	out    %al,(%dx)
 11d:	58                   	pop    %eax
 11e:	5a                   	pop    %edx
 11f:	eb 15                	jmp    136 <ata_atapi_process_op+0x136>
 121:	89 fa                	mov    %edi,%edx
 123:	89 d8                	mov    %ebx,%eax
 125:	e8 fc ff ff ff       	call   126 <ata_atapi_process_op+0x126>
 12a:	89 c1                	mov    %eax,%ecx
 12c:	b0 08                	mov    $0x8,%al
 12e:	8b 14 24             	mov    (%esp),%edx
 131:	ee                   	out    %al,(%dx)
 132:	85 c9                	test   %ecx,%ecx
 134:	74 05                	je     13b <ata_atapi_process_op+0x13b>
 136:	b9 0c 00 00 00       	mov    $0xc,%ecx
 13b:	89 c8                	mov    %ecx,%eax
 13d:	83 c4 1c             	add    $0x1c,%esp
 140:	5b                   	pop    %ebx
 141:	5e                   	pop    %esi
 142:	5f                   	pop    %edi
 143:	5d                   	pop    %ebp
 144:	c3                   	ret    

Disassembly of section .text.ata_extract_version:

00000000 <ata_extract_version>:
   0:	53                   	push   %ebx
   1:	b9 0f 00 00 00       	mov    $0xf,%ecx
   6:	0f b7 90 a0 00 00 00 	movzwl 0xa0(%eax),%edx
   d:	0f b6 c1             	movzbl %cl,%eax
  10:	89 d3                	mov    %edx,%ebx
  12:	d3 fb                	sar    %cl,%ebx
  14:	80 e3 01             	and    $0x1,%bl
  17:	75 05                	jne    1e <ata_extract_version+0x1e>
  19:	49                   	dec    %ecx
  1a:	75 f1                	jne    d <ata_extract_version+0xd>
  1c:	31 c0                	xor    %eax,%eax
  1e:	5b                   	pop    %ebx
  1f:	c3                   	ret    

Disassembly of section .text.ata_extract_model:

00000000 <ata_extract_model>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	89 c3                	mov    %eax,%ebx
   5:	89 d7                	mov    %edx,%edi
   7:	d1 ef                	shr    %edi
   9:	31 c0                	xor    %eax,%eax
   b:	39 c7                	cmp    %eax,%edi
   d:	74 10                	je     1f <ata_extract_model+0x1f>
   f:	66 8b 74 41 36       	mov    0x36(%ecx,%eax,2),%si
  14:	66 c1 c6 08          	rol    $0x8,%si
  18:	66 89 34 43          	mov    %si,(%ebx,%eax,2)
  1c:	40                   	inc    %eax
  1d:	eb ec                	jmp    b <ata_extract_model+0xb>
  1f:	c6 04 13 00          	movb   $0x0,(%ebx,%edx,1)
  23:	89 d8                	mov    %ebx,%eax
  25:	e8 fc ff ff ff       	call   26 <ata_extract_model+0x26>
  2a:	89 d8                	mov    %ebx,%eax
  2c:	5b                   	pop    %ebx
  2d:	5e                   	pop    %esi
  2e:	5f                   	pop    %edi
  2f:	c3                   	ret    

Disassembly of section .text.ata_detect:

00000000 <ata_detect>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	81 ec 70 02 00 00    	sub    $0x270,%esp
   a:	89 44 24 0c          	mov    %eax,0xc(%esp)
   e:	b9 2c 00 00 00       	mov    $0x2c,%ecx
  13:	31 d2                	xor    %edx,%edx
  15:	8d 44 24 44          	lea    0x44(%esp),%eax
  19:	e8 fc ff ff ff       	call   1a <ata_detect+0x1a>
  1e:	8b 44 24 0c          	mov    0xc(%esp),%eax
  22:	89 44 24 68          	mov    %eax,0x68(%esp)
  26:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  2d:	31 ff                	xor    %edi,%edi
  2f:	8b 44 24 0c          	mov    0xc(%esp),%eax
  33:	0f b7 00             	movzwl (%eax),%eax
  36:	89 c6                	mov    %eax,%esi
  38:	89 44 24 10          	mov    %eax,0x10(%esp)
  3c:	e8 fc ff ff ff       	call   3d <ata_detect+0x3d>
  41:	85 c0                	test   %eax,%eax
  43:	0f 88 44 03 00 00    	js     38d <ata_detect+0x38d>
  49:	83 3c 24 01          	cmpl   $0x1,(%esp)
  4d:	19 db                	sbb    %ebx,%ebx
  4f:	83 e3 f0             	and    $0xfffffff0,%ebx
  52:	83 eb 50             	sub    $0x50,%ebx
  55:	8d 56 06             	lea    0x6(%esi),%edx
  58:	88 d8                	mov    %bl,%al
  5a:	ee                   	out    %al,(%dx)
  5b:	89 54 24 04          	mov    %edx,0x4(%esp)
  5f:	b8 90 01 00 00       	mov    $0x190,%eax
  64:	e8 fc ff ff ff       	call   65 <ata_detect+0x65>
  69:	0f b7 c6             	movzwl %si,%eax
  6c:	e8 fc ff ff ff       	call   6d <ata_detect+0x6d>
  71:	85 c0                	test   %eax,%eax
  73:	0f 88 14 03 00 00    	js     38d <ata_detect+0x38d>
  79:	88 d8                	mov    %bl,%al
  7b:	8b 54 24 04          	mov    0x4(%esp),%edx
  7f:	ee                   	out    %al,(%dx)
  80:	ec                   	in     (%dx),%al
  81:	88 44 24 04          	mov    %al,0x4(%esp)
  85:	8d 6e 02             	lea    0x2(%esi),%ebp
  88:	b0 55                	mov    $0x55,%al
  8a:	89 ea                	mov    %ebp,%edx
  8c:	ee                   	out    %al,(%dx)
  8d:	8d 4e 03             	lea    0x3(%esi),%ecx
  90:	b0 aa                	mov    $0xaa,%al
  92:	89 ca                	mov    %ecx,%edx
  94:	ee                   	out    %al,(%dx)
  95:	89 ea                	mov    %ebp,%edx
  97:	ec                   	in     (%dx),%al
  98:	88 44 24 16          	mov    %al,0x16(%esp)
  9c:	89 ca                	mov    %ecx,%edx
  9e:	ec                   	in     (%dx),%al
  9f:	0f b6 54 24 04       	movzbl 0x4(%esp),%edx
  a4:	52                   	push   %edx
  a5:	0f b6 d0             	movzbl %al,%edx
  a8:	88 44 24 1b          	mov    %al,0x1b(%esp)
  ac:	52                   	push   %edx
  ad:	0f b6 54 24 1e       	movzbl 0x1e(%esp),%edx
  b2:	52                   	push   %edx
  b3:	ff 74 24 0c          	push   0xc(%esp)
  b7:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  bb:	0f b6 50 08          	movzbl 0x8(%eax),%edx
  bf:	52                   	push   %edx
  c0:	68 5c 02 00 00       	push   $0x25c
  c5:	e8 fc ff ff ff       	call   c6 <ata_detect+0xc6>
  ca:	83 c4 18             	add    $0x18,%esp
  cd:	80 7c 24 16 55       	cmpb   $0x55,0x16(%esp)
  d2:	0f 95 c2             	setne  %dl
  d5:	8a 44 24 17          	mov    0x17(%esp),%al
  d9:	3c aa                	cmp    $0xaa,%al
  db:	0f 95 c0             	setne  %al
  de:	08 c2                	or     %al,%dl
  e0:	0f 85 a7 02 00 00    	jne    38d <ata_detect+0x38d>
  e6:	3a 5c 24 04          	cmp    0x4(%esp),%bl
  ea:	0f 85 9d 02 00 00    	jne    38d <ata_detect+0x38d>
  f0:	8a 04 24             	mov    (%esp),%al
  f3:	88 44 24 6c          	mov    %al,0x6c(%esp)
  f7:	85 ff                	test   %edi,%edi
  f9:	75 09                	jne    104 <ata_detect+0x104>
  fb:	8d 44 24 44          	lea    0x44(%esp),%eax
  ff:	e8 fc ff ff ff       	call   100 <ata_detect+0x100>
 104:	b9 a1 00 00 00       	mov    $0xa1,%ecx
 109:	8d 54 24 70          	lea    0x70(%esp),%edx
 10d:	8d 44 24 44          	lea    0x44(%esp),%eax
 111:	e8 fc ff ff ff       	call   112 <ata_detect+0x112>
 116:	85 c0                	test   %eax,%eax
 118:	74 11                	je     12b <ata_detect+0x12b>
 11a:	8d 56 07             	lea    0x7(%esi),%edx
 11d:	ec                   	in     (%dx),%al
 11e:	84 c0                	test   %al,%al
 120:	0f 84 04 01 00 00    	je     22a <ata_detect+0x22a>
 126:	e9 d2 00 00 00       	jmp    1fd <ata_detect+0x1fd>
 12b:	8d 54 24 70          	lea    0x70(%esp),%edx
 12f:	8d 44 24 44          	lea    0x44(%esp),%eax
 133:	e8 fc ff ff ff       	call   134 <ata_detect+0x134>
 138:	89 c3                	mov    %eax,%ebx
 13a:	85 c0                	test   %eax,%eax
 13c:	74 dc                	je     11a <ata_detect+0x11a>
 13e:	c6 00 21             	movb   $0x21,(%eax)
 141:	66 c7 40 1a 00 08    	movw   $0x800,0x1a(%eax)
 147:	c7 40 0c ff ff ff ff 	movl   $0xffffffff,0xc(%eax)
 14e:	c7 40 10 ff ff ff ff 	movl   $0xffffffff,0x10(%eax)
 155:	0f b6 7c 24 71       	movzbl 0x71(%esp),%edi
 15a:	83 e7 1f             	and    $0x1f,%edi
 15d:	bd 4e 02 00 00       	mov    $0x24e,%ebp
 162:	66 83 ff 05          	cmp    $0x5,%di
 166:	74 05                	je     16d <ata_detect+0x16d>
 168:	bd 55 02 00 00       	mov    $0x255,%ebp
 16d:	8d 44 24 70          	lea    0x70(%esp),%eax
 171:	e8 fc ff ff ff       	call   172 <ata_detect+0x172>
 176:	89 c6                	mov    %eax,%esi
 178:	8d 4c 24 70          	lea    0x70(%esp),%ecx
 17c:	ba 28 00 00 00       	mov    $0x28,%edx
 181:	8d 44 24 1b          	lea    0x1b(%esp),%eax
 185:	e8 fc ff ff ff       	call   186 <ata_detect+0x186>
 18a:	55                   	push   %ebp
 18b:	56                   	push   %esi
 18c:	50                   	push   %eax
 18d:	0f b6 43 28          	movzbl 0x28(%ebx),%eax
 191:	50                   	push   %eax
 192:	8b 43 24             	mov    0x24(%ebx),%eax
 195:	0f b6 40 08          	movzbl 0x8(%eax),%eax
 199:	50                   	push   %eax
 19a:	68 84 02 00 00       	push   $0x284
 19f:	6a 50                	push   $0x50
 1a1:	e8 fc ff ff ff       	call   1a2 <ata_detect+0x1a2>
 1a6:	89 c6                	mov    %eax,%esi
 1a8:	50                   	push   %eax
 1a9:	68 a6 02 00 00       	push   $0x2a6
 1ae:	e8 fc ff ff ff       	call   1af <ata_detect+0x1af>
 1b3:	83 c4 24             	add    $0x24,%esp
 1b6:	66 83 ff 05          	cmp    $0x5,%di
 1ba:	0f 85 9f 01 00 00    	jne    35f <ata_detect+0x35f>
 1c0:	8b 43 24             	mov    0x24(%ebx),%eax
 1c3:	0f b6 4b 28          	movzbl 0x28(%ebx),%ecx
 1c7:	0f b6 50 07          	movzbl 0x7(%eax),%edx
 1cb:	8b 40 10             	mov    0x10(%eax),%eax
 1ce:	e8 fc ff ff ff       	call   1cf <ata_detect+0x1cf>
 1d3:	89 c7                	mov    %eax,%edi
 1d5:	8b 43 24             	mov    0x24(%ebx),%eax
 1d8:	0f b6 4b 28          	movzbl 0x28(%ebx),%ecx
 1dc:	0f b6 50 07          	movzbl 0x7(%eax),%edx
 1e0:	8b 40 10             	mov    0x10(%eax),%eax
 1e3:	8d 6b 02             	lea    0x2(%ebx),%ebp
 1e6:	55                   	push   %ebp
 1e7:	e8 fc ff ff ff       	call   1e8 <ata_detect+0x1e8>
 1ec:	89 f9                	mov    %edi,%ecx
 1ee:	89 f2                	mov    %esi,%edx
 1f0:	89 d8                	mov    %ebx,%eax
 1f2:	e8 fc ff ff ff       	call   1f3 <ata_detect+0x1f3>
 1f7:	59                   	pop    %ecx
 1f8:	e9 62 01 00 00       	jmp    35f <ata_detect+0x35f>
 1fd:	8b 4c 24 10          	mov    0x10(%esp),%ecx
 201:	ba 40 00 00 00       	mov    $0x40,%edx
 206:	b8 40 00 00 00       	mov    $0x40,%eax
 20b:	e8 fc ff ff ff       	call   20c <ata_detect+0x20c>
 210:	85 c0                	test   %eax,%eax
 212:	78 16                	js     22a <ata_detect+0x22a>
 214:	b9 ec 00 00 00       	mov    $0xec,%ecx
 219:	8d 54 24 70          	lea    0x70(%esp),%edx
 21d:	8d 44 24 44          	lea    0x44(%esp),%eax
 221:	e8 fc ff ff ff       	call   222 <ata_detect+0x222>
 226:	85 c0                	test   %eax,%eax
 228:	74 0a                	je     234 <ata_detect+0x234>
 22a:	bf 01 00 00 00       	mov    $0x1,%edi
 22f:	e9 59 01 00 00       	jmp    38d <ata_detect+0x38d>
 234:	8d 54 24 70          	lea    0x70(%esp),%edx
 238:	8d 44 24 44          	lea    0x44(%esp),%eax
 23c:	e8 fc ff ff ff       	call   23d <ata_detect+0x23d>
 241:	89 c3                	mov    %eax,%ebx
 243:	85 c0                	test   %eax,%eax
 245:	74 e3                	je     22a <ata_detect+0x22a>
 247:	c6 00 20             	movb   $0x20,(%eax)
 24a:	66 c7 40 1a 00 02    	movw   $0x200,0x1a(%eax)
 250:	66 8b 44 24 72       	mov    0x72(%esp),%ax
 255:	66 89 43 1e          	mov    %ax,0x1e(%ebx)
 259:	66 8b 44 24 76       	mov    0x76(%esp),%ax
 25e:	66 89 43 1c          	mov    %ax,0x1c(%ebx)
 262:	8b 44 24 7c          	mov    0x7c(%esp),%eax
 266:	66 89 43 20          	mov    %ax,0x20(%ebx)
 26a:	f6 84 24 17 01 00 00 	testb  $0x4,0x117(%esp)
 271:	04 
 272:	74 10                	je     284 <ata_detect+0x284>
 274:	8b 84 24 38 01 00 00 	mov    0x138(%esp),%eax
 27b:	8b 94 24 3c 01 00 00 	mov    0x13c(%esp),%edx
 282:	eb 09                	jmp    28d <ata_detect+0x28d>
 284:	8b 84 24 e8 00 00 00 	mov    0xe8(%esp),%eax
 28b:	31 d2                	xor    %edx,%edx
 28d:	89 43 0c             	mov    %eax,0xc(%ebx)
 290:	89 53 10             	mov    %edx,0x10(%ebx)
 293:	89 c6                	mov    %eax,%esi
 295:	89 d7                	mov    %edx,%edi
 297:	0f ac fe 0b          	shrd   $0xb,%edi,%esi
 29b:	c1 ef 0b             	shr    $0xb,%edi
 29e:	89 74 24 04          	mov    %esi,0x4(%esp)
 2a2:	89 7c 24 08          	mov    %edi,0x8(%esp)
 2a6:	b9 ff ff 00 00       	mov    $0xffff,%ecx
 2ab:	3b 4c 24 04          	cmp    0x4(%esp),%ecx
 2af:	b9 00 00 00 00       	mov    $0x0,%ecx
 2b4:	1b 4c 24 08          	sbb    0x8(%esp),%ecx
 2b8:	bd 4d 00 00 00       	mov    $0x4d,%ebp
 2bd:	73 14                	jae    2d3 <ata_detect+0x2d3>
 2bf:	0f ac d0 15          	shrd   $0x15,%edx,%eax
 2c3:	c1 ea 15             	shr    $0x15,%edx
 2c6:	89 44 24 04          	mov    %eax,0x4(%esp)
 2ca:	89 54 24 08          	mov    %edx,0x8(%esp)
 2ce:	bd 47 00 00 00       	mov    $0x47,%ebp
 2d3:	8d 44 24 70          	lea    0x70(%esp),%eax
 2d7:	e8 fc ff ff ff       	call   2d8 <ata_detect+0x2d8>
 2dc:	89 c7                	mov    %eax,%edi
 2de:	8d 4c 24 70          	lea    0x70(%esp),%ecx
 2e2:	ba 28 00 00 00       	mov    $0x28,%edx
 2e7:	8d 44 24 1b          	lea    0x1b(%esp),%eax
 2eb:	e8 fc ff ff ff       	call   2ec <ata_detect+0x2ec>
 2f0:	89 e9                	mov    %ebp,%ecx
 2f2:	0f be e9             	movsbl %cl,%ebp
 2f5:	55                   	push   %ebp
 2f6:	ff 74 24 08          	push   0x8(%esp)
 2fa:	57                   	push   %edi
 2fb:	50                   	push   %eax
 2fc:	0f b6 43 28          	movzbl 0x28(%ebx),%eax
 300:	50                   	push   %eax
 301:	8b 43 24             	mov    0x24(%ebx),%eax
 304:	0f b6 40 08          	movzbl 0x8(%eax),%eax
 308:	50                   	push   %eax
 309:	68 aa 02 00 00       	push   $0x2aa
 30e:	6a 50                	push   $0x50
 310:	e8 fc ff ff ff       	call   311 <ata_detect+0x311>
 315:	89 c6                	mov    %eax,%esi
 317:	83 c4 20             	add    $0x20,%esp
 31a:	50                   	push   %eax
 31b:	68 a6 02 00 00       	push   $0x2a6
 320:	e8 fc ff ff ff       	call   321 <ata_detect+0x321>
 325:	8b 43 24             	mov    0x24(%ebx),%eax
 328:	0f b6 4b 28          	movzbl 0x28(%ebx),%ecx
 32c:	0f b6 50 07          	movzbl 0x7(%eax),%edx
 330:	8b 40 10             	mov    0x10(%eax),%eax
 333:	e8 fc ff ff ff       	call   334 <ata_detect+0x334>
 338:	89 c7                	mov    %eax,%edi
 33a:	8b 43 24             	mov    0x24(%ebx),%eax
 33d:	0f b6 4b 28          	movzbl 0x28(%ebx),%ecx
 341:	0f b6 50 07          	movzbl 0x7(%eax),%edx
 345:	8b 40 10             	mov    0x10(%eax),%eax
 348:	8d 6b 02             	lea    0x2(%ebx),%ebp
 34b:	55                   	push   %ebp
 34c:	e8 fc ff ff ff       	call   34d <ata_detect+0x34d>
 351:	89 f9                	mov    %edi,%ecx
 353:	89 f2                	mov    %esi,%edx
 355:	89 d8                	mov    %ebx,%eax
 357:	e8 fc ff ff ff       	call   358 <ata_detect+0x358>
 35c:	83 c4 0c             	add    $0xc,%esp
 35f:	0f b7 84 24 2a 01 00 	movzwl 0x12a(%esp),%eax
 366:	00 
 367:	89 c3                	mov    %eax,%ebx
 369:	50                   	push   %eax
 36a:	68 d6 02 00 00       	push   $0x2d6
 36f:	e8 fc ff ff ff       	call   370 <ata_detect+0x370>
 374:	58                   	pop    %eax
 375:	5a                   	pop    %edx
 376:	bf 01 00 00 00       	mov    $0x1,%edi
 37b:	83 3c 24 00          	cmpl   $0x0,(%esp)
 37f:	75 0c                	jne    38d <ata_detect+0x38d>
 381:	66 81 e3 61 df       	and    $0xdf61,%bx
 386:	66 81 fb 41 40       	cmp    $0x4041,%bx
 38b:	eb 04                	jmp    391 <ata_detect+0x391>
 38d:	83 3c 24 01          	cmpl   $0x1,(%esp)
 391:	74 0c                	je     39f <ata_detect+0x39f>
 393:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 39a:	e9 90 fc ff ff       	jmp    2f <ata_detect+0x2f>
 39f:	81 c4 70 02 00 00    	add    $0x270,%esp
 3a5:	5b                   	pop    %ebx
 3a6:	5e                   	pop    %esi
 3a7:	5f                   	pop    %edi
 3a8:	5d                   	pop    %ebp
 3a9:	c3                   	ret    

Disassembly of section .text.ata_setup:

00000000 <ata_setup>:
   0:	53                   	push   %ebx
   1:	68 f3 02 00 00       	push   $0x2f3
   6:	e8 fc ff ff ff       	call   7 <ata_setup+0x7>
   b:	b8 00 7d 00 00       	mov    $0x7d00,%eax
  10:	e8 fc ff ff ff       	call   11 <ata_setup+0x11>
  15:	a3 00 00 00 00       	mov    %eax,0x0
  1a:	a1 00 00 00 00       	mov    0x0,%eax
  1f:	5a                   	pop    %edx
  20:	8d 58 fc             	lea    -0x4(%eax),%ebx
  23:	85 c0                	test   %eax,%eax
  25:	75 36                	jne    5d <ata_setup+0x5d>
  27:	68 f4 03 00 00       	push   $0x3f4
  2c:	68 f0 01 00 00       	push   $0x1f0
  31:	b9 0e 00 00 00       	mov    $0xe,%ecx
  36:	31 d2                	xor    %edx,%edx
  38:	e8 fc ff ff ff       	call   39 <ata_setup+0x39>
  3d:	68 74 03 00 00       	push   $0x374
  42:	68 70 01 00 00       	push   $0x170
  47:	b9 0f 00 00 00       	mov    $0xf,%ecx
  4c:	ba 01 00 00 00       	mov    $0x1,%edx
  51:	31 c0                	xor    %eax,%eax
  53:	e8 fc ff ff ff       	call   54 <ata_setup+0x54>
  58:	83 c4 10             	add    $0x10,%esp
  5b:	eb 1b                	jmp    78 <ata_setup+0x78>
  5d:	83 fb fc             	cmp    $0xfffffffc,%ebx
  60:	74 16                	je     78 <ata_setup+0x78>
  62:	31 c9                	xor    %ecx,%ecx
  64:	89 da                	mov    %ebx,%edx
  66:	b8 00 00 00 00       	mov    $0x0,%eax
  6b:	e8 fc ff ff ff       	call   6c <ata_setup+0x6c>
  70:	8b 5b 04             	mov    0x4(%ebx),%ebx
  73:	83 eb 04             	sub    $0x4,%ebx
  76:	eb e5                	jmp    5d <ata_setup+0x5d>
  78:	c6 05 76 04 00 00 c0 	movb   $0xc0,0x476
  7f:	ba 00 00 00 00       	mov    $0x0,%edx
  84:	0f b7 d2             	movzwl %dx,%edx
  87:	81 ca 00 00 00 f0    	or     $0xf0000000,%edx
  8d:	b8 0e 00 00 00       	mov    $0xe,%eax
  92:	5b                   	pop    %ebx
  93:	e9 fc ff ff ff       	jmp    94 <ata_setup+0x94>
