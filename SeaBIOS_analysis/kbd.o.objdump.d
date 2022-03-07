
./kbd.o:     file format elf32-i386


Disassembly of section .text.kbd_set_flag:

00000000 <kbd_set_flag>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	89 c6                	mov    %eax,%esi
   5:	89 d3                	mov    %edx,%ebx
   7:	89 ca                	mov    %ecx,%edx
   9:	8b 7c 24 10          	mov    0x10(%esp),%edi
   d:	66 a1 17 04 00 00    	mov    0x417,%ax
  13:	8a 0d 96 04 00 00    	mov    0x496,%cl
  19:	85 f6                	test   %esi,%esi
  1b:	74 0a                	je     27 <kbd_set_flag+0x27>
  1d:	f7 d3                	not    %ebx
  1f:	21 d8                	and    %ebx,%eax
  21:	f7 d2                	not    %edx
  23:	21 d1                	and    %edx,%ecx
  25:	eb 06                	jmp    2d <kbd_set_flag+0x2d>
  27:	31 f8                	xor    %edi,%eax
  29:	09 d8                	or     %ebx,%eax
  2b:	09 d1                	or     %edx,%ecx
  2d:	66 a3 17 04 00 00    	mov    %ax,0x417
  33:	88 0d 96 04 00 00    	mov    %cl,0x496
  39:	5b                   	pop    %ebx
  3a:	5e                   	pop    %esi
  3b:	5f                   	pop    %edi
  3c:	c3                   	ret    

Disassembly of section .text.kbd_command:

00000000 <kbd_command>:
   0:	53                   	push   %ebx
   1:	51                   	push   %ecx
   2:	89 c3                	mov    %eax,%ebx
   4:	89 14 24             	mov    %edx,(%esp)
   7:	e8 fc ff ff ff       	call   8 <kbd_command+0x8>
   c:	85 c0                	test   %eax,%eax
   e:	8b 14 24             	mov    (%esp),%edx
  11:	89 d8                	mov    %ebx,%eax
  13:	74 07                	je     1c <kbd_command+0x1c>
  15:	5b                   	pop    %ebx
  16:	5b                   	pop    %ebx
  17:	e9 fc ff ff ff       	jmp    18 <kbd_command+0x18>
  1c:	59                   	pop    %ecx
  1d:	5b                   	pop    %ebx
  1e:	e9 fc ff ff ff       	jmp    1f <kbd_command+0x1f>

Disassembly of section .text.set_leds:

00000000 <set_leds>:
   0:	53                   	push   %ebx
   1:	52                   	push   %edx
   2:	66 a1 17 04 00 00    	mov    0x417,%ax
   8:	66 c1 e8 04          	shr    $0x4,%ax
   c:	83 e0 07             	and    $0x7,%eax
   f:	88 44 24 03          	mov    %al,0x3(%esp)
  13:	8a 1d 97 04 00 00    	mov    0x497,%bl
  19:	88 da                	mov    %bl,%dl
  1b:	83 e2 07             	and    $0x7,%edx
  1e:	38 d0                	cmp    %dl,%al
  20:	74 1f                	je     41 <set_leds+0x41>
  22:	8d 54 24 03          	lea    0x3(%esp),%edx
  26:	b8 ed 10 00 00       	mov    $0x10ed,%eax
  2b:	e8 fc ff ff ff       	call   2c <set_leds+0x2c>
  30:	85 c0                	test   %eax,%eax
  32:	75 0d                	jne    41 <set_leds+0x41>
  34:	83 e3 f8             	and    $0xfffffff8,%ebx
  37:	0a 5c 24 03          	or     0x3(%esp),%bl
  3b:	88 1d 97 04 00 00    	mov    %bl,0x497
  41:	58                   	pop    %eax
  42:	5b                   	pop    %ebx
  43:	c3                   	ret    

Disassembly of section .text.handle_160a:

00000000 <handle_160a>:
   0:	53                   	push   %ebx
   1:	52                   	push   %edx
   2:	89 c3                	mov    %eax,%ebx
   4:	8d 54 24 02          	lea    0x2(%esp),%edx
   8:	b8 f2 02 00 00       	mov    $0x2f2,%eax
   d:	e8 fc ff ff ff       	call   e <handle_160a+0xe>
  12:	89 c2                	mov    %eax,%edx
  14:	31 c0                	xor    %eax,%eax
  16:	85 d2                	test   %edx,%edx
  18:	75 05                	jne    1f <handle_160a+0x1f>
  1a:	66 8b 44 24 02       	mov    0x2(%esp),%ax
  1f:	66 89 43 10          	mov    %ax,0x10(%ebx)
  23:	58                   	pop    %eax
  24:	5b                   	pop    %ebx
  25:	c3                   	ret    

Disassembly of section .text.dequeue_key:

00000000 <dequeue_key>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 c7                	mov    %eax,%edi
   6:	89 d3                	mov    %edx,%ebx
   8:	89 ce                	mov    %ecx,%esi
   a:	e8 fc ff ff ff       	call   b <dequeue_key+0xb>
   f:	66 8b 15 1a 04 00 00 	mov    0x41a,%dx
  16:	66 3b 15 1c 04 00 00 	cmp    0x41c,%dx
  1d:	75 12                	jne    31 <dequeue_key+0x31>
  1f:	85 db                	test   %ebx,%ebx
  21:	75 07                	jne    2a <dequeue_key+0x2a>
  23:	66 83 4f 24 40       	orw    $0x40,0x24(%edi)
  28:	eb 7c                	jmp    a6 <dequeue_key+0xa6>
  2a:	e8 fc ff ff ff       	call   2b <dequeue_key+0x2b>
  2f:	eb de                	jmp    f <dequeue_key+0xf>
  31:	0f b7 c2             	movzwl %dx,%eax
  34:	66 8b 80 00 04 00 00 	mov    0x400(%eax),%ax
  3b:	89 c5                	mov    %eax,%ebp
  3d:	85 f6                	test   %esi,%esi
  3f:	75 23                	jne    64 <dequeue_key+0x64>
  41:	3c e0                	cmp    $0xe0,%al
  43:	75 09                	jne    4e <dequeue_key+0x4e>
  45:	89 c1                	mov    %eax,%ecx
  47:	66 81 e1 00 ff       	and    $0xff00,%cx
  4c:	75 26                	jne    74 <dequeue_key+0x74>
  4e:	66 3d 0a e0          	cmp    $0xe00a,%ax
  52:	74 06                	je     5a <dequeue_key+0x5a>
  54:	66 3d 0d e0          	cmp    $0xe00d,%ax
  58:	75 04                	jne    5e <dequeue_key+0x5e>
  5a:	b4 1c                	mov    $0x1c,%ah
  5c:	eb 06                	jmp    64 <dequeue_key+0x64>
  5e:	66 3d 2f e0          	cmp    $0xe02f,%ax
  62:	74 14                	je     78 <dequeue_key+0x78>
  64:	89 e9                	mov    %ebp,%ecx
  66:	80 f9 f0             	cmp    $0xf0,%cl
  69:	75 12                	jne    7d <dequeue_key+0x7d>
  6b:	89 c1                	mov    %eax,%ecx
  6d:	66 81 e1 00 ff       	and    $0xff00,%cx
  72:	74 09                	je     7d <dequeue_key+0x7d>
  74:	89 c8                	mov    %ecx,%eax
  76:	eb 05                	jmp    7d <dequeue_key+0x7d>
  78:	b8 2f 35 00 00       	mov    $0x352f,%eax
  7d:	66 89 47 1c          	mov    %ax,0x1c(%edi)
  81:	85 db                	test   %ebx,%ebx
  83:	75 07                	jne    8c <dequeue_key+0x8c>
  85:	66 83 67 24 bf       	andw   $0xffbf,0x24(%edi)
  8a:	eb 1a                	jmp    a6 <dequeue_key+0xa6>
  8c:	8b 0d 80 04 00 00    	mov    0x480,%ecx
  92:	8d 42 02             	lea    0x2(%edx),%eax
  95:	66 39 05 82 04 00 00 	cmp    %ax,0x482
  9c:	77 02                	ja     a0 <dequeue_key+0xa0>
  9e:	89 c8                	mov    %ecx,%eax
  a0:	66 a3 1a 04 00 00    	mov    %ax,0x41a
  a6:	5b                   	pop    %ebx
  a7:	5e                   	pop    %esi
  a8:	5f                   	pop    %edi
  a9:	5d                   	pop    %ebp
  aa:	c3                   	ret    

Disassembly of section .text.kbd_init:

00000000 <kbd_init>:
   0:	68 00 00 00 00       	push   $0x0
   5:	e8 fc ff ff ff       	call   6 <kbd_init+0x6>
   a:	c6 05 96 04 00 00 10 	movb   $0x10,0x496
  11:	66 c7 05 1a 04 00 00 	movw   $0x1e,0x41a
  18:	1e 00 
  1a:	66 c7 05 1c 04 00 00 	movw   $0x1e,0x41c
  21:	1e 00 
  23:	66 c7 05 80 04 00 00 	movw   $0x1e,0x480
  2a:	1e 00 
  2c:	66 c7 05 82 04 00 00 	movw   $0x3e,0x482
  33:	3e 00 
  35:	58                   	pop    %eax
  36:	c3                   	ret    

Disassembly of section .text.enqueue_key:

00000000 <enqueue_key>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	8b 1d 80 04 00 00    	mov    0x480,%ebx
   8:	66 8b 35 1a 04 00 00 	mov    0x41a,%si
   f:	0f b7 0d 1c 04 00 00 	movzwl 0x41c,%ecx
  16:	8d 51 02             	lea    0x2(%ecx),%edx
  19:	66 39 15 82 04 00 00 	cmp    %dx,0x482
  20:	77 02                	ja     24 <enqueue_key+0x24>
  22:	89 da                	mov    %ebx,%edx
  24:	31 db                	xor    %ebx,%ebx
  26:	66 39 f2             	cmp    %si,%dx
  29:	74 10                	je     3b <enqueue_key+0x3b>
  2b:	66 89 81 00 04 00 00 	mov    %ax,0x400(%ecx)
  32:	66 89 15 1c 04 00 00 	mov    %dx,0x41c
  39:	b3 01                	mov    $0x1,%bl
  3b:	88 d8                	mov    %bl,%al
  3d:	5b                   	pop    %ebx
  3e:	5e                   	pop    %esi
  3f:	c3                   	ret    

Disassembly of section .text.handle_16:

00000000 <handle_16>:
   0:	53                   	push   %ebx
   1:	89 c3                	mov    %eax,%ebx
   3:	ba 00 00 00 00       	mov    $0x0,%edx
   8:	e8 fc ff ff ff       	call   9 <handle_16+0x9>
   d:	e8 fc ff ff ff       	call   e <handle_16+0xe>
  12:	0f b6 43 1d          	movzbl 0x1d(%ebx),%eax
  16:	3c 12                	cmp    $0x12,%al
  18:	77 07                	ja     21 <handle_16+0x21>
  1a:	ff 24 85 00 00 00 00 	jmp    *0x0(,%eax,4)
  21:	3c 92                	cmp    $0x92,%al
  23:	0f 84 8c 00 00 00    	je     b5 <handle_16+0xb5>
  29:	3c a2                	cmp    $0xa2,%al
  2b:	0f 84 a8 00 00 00    	je     d9 <handle_16+0xd9>
  31:	3c 6f                	cmp    $0x6f,%al
  33:	0f 84 82 00 00 00    	je     bb <handle_16+0xbb>
  39:	e9 89 00 00 00       	jmp    c7 <handle_16+0xc7>
  3e:	31 c9                	xor    %ecx,%ecx
  40:	eb 40                	jmp    82 <handle_16+0x82>
  42:	31 c9                	xor    %ecx,%ecx
  44:	31 d2                	xor    %edx,%edx
  46:	89 d8                	mov    %ebx,%eax
  48:	5b                   	pop    %ebx
  49:	e9 fc ff ff ff       	jmp    4a <handle_16+0x4a>
  4e:	e8 fc ff ff ff       	call   4f <handle_16+0x4f>
  53:	66 a1 17 04 00 00    	mov    0x417,%ax
  59:	88 43 1c             	mov    %al,0x1c(%ebx)
  5c:	eb 7b                	jmp    d9 <handle_16+0xd9>
  5e:	0f b7 43 18          	movzwl 0x18(%ebx),%eax
  62:	e8 fc ff ff ff       	call   63 <handle_16+0x63>
  67:	84 c0                	test   %al,%al
  69:	0f 94 43 1c          	sete   0x1c(%ebx)
  6d:	eb 6a                	jmp    d9 <handle_16+0xd9>
  6f:	c6 43 1c 30          	movb   $0x30,0x1c(%ebx)
  73:	eb 64                	jmp    d9 <handle_16+0xd9>
  75:	89 d8                	mov    %ebx,%eax
  77:	5b                   	pop    %ebx
  78:	e9 fc ff ff ff       	jmp    79 <handle_16+0x79>
  7d:	b9 01 00 00 00       	mov    $0x1,%ecx
  82:	ba 01 00 00 00       	mov    $0x1,%edx
  87:	eb bd                	jmp    46 <handle_16+0x46>
  89:	b9 01 00 00 00       	mov    $0x1,%ecx
  8e:	eb b4                	jmp    44 <handle_16+0x44>
  90:	e8 fc ff ff ff       	call   91 <handle_16+0x91>
  95:	0f b6 05 96 04 00 00 	movzbl 0x496,%eax
  9c:	c1 e0 08             	shl    $0x8,%eax
  9f:	66 25 00 0c          	and    $0xc00,%ax
  a3:	66 8b 15 17 04 00 00 	mov    0x417,%dx
  aa:	80 e6 f3             	and    $0xf3,%dh
  ad:	09 d0                	or     %edx,%eax
  af:	66 89 43 1c          	mov    %ax,0x1c(%ebx)
  b3:	eb 24                	jmp    d9 <handle_16+0xd9>
  b5:	c6 43 1d 80          	movb   $0x80,0x1d(%ebx)
  b9:	eb 1e                	jmp    d9 <handle_16+0xd9>
  bb:	80 7b 1c 08          	cmpb   $0x8,0x1c(%ebx)
  bf:	75 18                	jne    d9 <handle_16+0xd9>
  c1:	c6 43 1d 02          	movb   $0x2,0x1d(%ebx)
  c5:	eb 12                	jmp    d9 <handle_16+0xd9>
  c7:	b9 00 00 00 00       	mov    $0x0,%ecx
  cc:	ba e0 00 00 00       	mov    $0xe0,%edx
  d1:	89 d8                	mov    %ebx,%eax
  d3:	5b                   	pop    %ebx
  d4:	e9 fc ff ff ff       	jmp    d5 <handle_16+0xd5>
  d9:	5b                   	pop    %ebx
  da:	c3                   	ret    

Disassembly of section .text.ascii_to_keycode:

00000000 <ascii_to_keycode>:
   0:	53                   	push   %ebx
   1:	31 d2                	xor    %edx,%edx
   3:	0f b6 c8             	movzbl %al,%ecx
   6:	8b 04 d5 00 00 00 00 	mov    0x0(,%edx,8),%eax
   d:	0f b6 d8             	movzbl %al,%ebx
  10:	66 39 cb             	cmp    %cx,%bx
  13:	74 27                	je     3c <ascii_to_keycode+0x3c>
  15:	66 8b 04 d5 02 00 00 	mov    0x2(,%edx,8),%ax
  1c:	00 
  1d:	0f b6 d8             	movzbl %al,%ebx
  20:	66 39 d9             	cmp    %bx,%cx
  23:	74 17                	je     3c <ascii_to_keycode+0x3c>
  25:	8b 04 d5 04 00 00 00 	mov    0x4(,%edx,8),%eax
  2c:	0f b6 d8             	movzbl %al,%ebx
  2f:	66 39 d9             	cmp    %bx,%cx
  32:	74 08                	je     3c <ascii_to_keycode+0x3c>
  34:	42                   	inc    %edx
  35:	83 fa 59             	cmp    $0x59,%edx
  38:	75 cc                	jne    6 <ascii_to_keycode+0x6>
  3a:	31 c0                	xor    %eax,%eax
  3c:	5b                   	pop    %ebx
  3d:	c3                   	ret    

Disassembly of section .text.process_key:

00000000 <process_key>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 30             	sub    $0x30,%esp
   7:	89 c3                	mov    %eax,%ebx
   9:	b9 26 00 00 00       	mov    $0x26,%ecx
   e:	31 d2                	xor    %edx,%edx
  10:	8d 44 24 0a          	lea    0xa(%esp),%eax
  14:	e8 fc ff ff ff       	call   15 <process_key+0x15>
  19:	0f b6 db             	movzbl %bl,%ebx
  1c:	80 cf 4f             	or     $0x4f,%bh
  1f:	89 5c 24 26          	mov    %ebx,0x26(%esp)
  23:	66 c7 44 24 2e 01 02 	movw   $0x201,0x2e(%esp)
  2a:	bd 00 00 00 00       	mov    $0x0,%ebp
  2f:	0f b7 c5             	movzwl %bp,%eax
  32:	89 04 24             	mov    %eax,(%esp)
  35:	89 c2                	mov    %eax,%edx
  37:	8d 44 24 0a          	lea    0xa(%esp),%eax
  3b:	e8 fc ff ff ff       	call   3c <process_key+0x3c>
  40:	f6 44 24 2e 01       	testb  $0x1,0x2e(%esp)
  45:	0f 84 08 03 00 00    	je     353 <process_key+0x353>
  4b:	8b 44 24 26          	mov    0x26(%esp),%eax
  4f:	0f b6 35 96 04 00 00 	movzbl 0x496,%esi
  56:	8d 50 20             	lea    0x20(%eax),%edx
  59:	80 fa 01             	cmp    $0x1,%dl
  5c:	77 12                	ja     70 <process_key+0x70>
  5e:	3c e0                	cmp    $0xe0,%al
  60:	0f 94 c0             	sete   %al
  63:	40                   	inc    %eax
  64:	09 f0                	or     %esi,%eax
  66:	a2 96 04 00 00       	mov    %al,0x496
  6b:	e9 e3 02 00 00       	jmp    353 <process_key+0x353>
  70:	89 c7                	mov    %eax,%edi
  72:	81 e7 80 00 00 00    	and    $0x80,%edi
  78:	88 c3                	mov    %al,%bl
  7a:	83 e3 7f             	and    $0x7f,%ebx
  7d:	f7 c6 03 00 00 00    	test   $0x3,%esi
  83:	74 1c                	je     a1 <process_key+0xa1>
  85:	80 fb 1d             	cmp    $0x1d,%bl
  88:	75 0c                	jne    96 <process_key+0x96>
  8a:	f7 c6 01 00 00 00    	test   $0x1,%esi
  90:	0f 85 bd 02 00 00    	jne    353 <process_key+0x353>
  96:	89 f2                	mov    %esi,%edx
  98:	83 e2 fc             	and    $0xfffffffc,%edx
  9b:	88 15 96 04 00 00    	mov    %dl,0x496
  a1:	0f b6 eb             	movzbl %bl,%ebp
  a4:	80 fb 46             	cmp    $0x46,%bl
  a7:	77 2e                	ja     d7 <process_key+0xd7>
  a9:	80 fb 35             	cmp    $0x35,%bl
  ac:	77 13                	ja     c1 <process_key+0xc1>
  ae:	80 fb 1d             	cmp    $0x1d,%bl
  b1:	0f 84 9b 00 00 00    	je     152 <process_key+0x152>
  b7:	80 fb 2a             	cmp    $0x2a,%bl
  ba:	74 63                	je     11f <process_key+0x11f>
  bc:	e9 a6 01 00 00       	jmp    267 <process_key+0x267>
  c1:	8d 53 ca             	lea    -0x36(%ebx),%edx
  c4:	80 fa 10             	cmp    $0x10,%dl
  c7:	0f 87 9a 01 00 00    	ja     267 <process_key+0x267>
  cd:	0f b6 d2             	movzbl %dl,%edx
  d0:	ff 24 95 00 00 00 00 	jmp    *0x0(,%edx,4)
  d7:	80 fb 53             	cmp    $0x53,%bl
  da:	0f 84 5f 01 00 00    	je     23f <process_key+0x23f>
  e0:	80 fb 54             	cmp    $0x54,%bl
  e3:	0f 85 7e 01 00 00    	jne    267 <process_key+0x267>
  e9:	b9 26 00 00 00       	mov    $0x26,%ecx
  ee:	31 d2                	xor    %edx,%edx
  f0:	8d 44 24 0a          	lea    0xa(%esp),%eax
  f4:	e8 fc ff ff ff       	call   f5 <process_key+0xf5>
  f9:	c6 44 24 27 85       	movb   $0x85,0x27(%esp)
  fe:	85 ff                	test   %edi,%edi
 100:	0f 95 44 24 26       	setne  0x26(%esp)
 105:	66 c7 44 24 2e 00 02 	movw   $0x200,0x2e(%esp)
 10c:	8b 14 24             	mov    (%esp),%edx
 10f:	e9 1d 01 00 00       	jmp    231 <process_key+0x231>
 114:	6a 40                	push   $0x40
 116:	31 c9                	xor    %ecx,%ecx
 118:	ba 00 40 00 00       	mov    $0x4000,%edx
 11d:	eb 12                	jmp    131 <process_key+0x131>
 11f:	83 e6 02             	and    $0x2,%esi
 122:	0f 85 2b 02 00 00    	jne    353 <process_key+0x353>
 128:	6a 00                	push   $0x0
 12a:	31 c9                	xor    %ecx,%ecx
 12c:	ba 02 00 00 00       	mov    $0x2,%edx
 131:	89 f8                	mov    %edi,%eax
 133:	e8 fc ff ff ff       	call   134 <process_key+0x134>
 138:	59                   	pop    %ecx
 139:	e9 15 02 00 00       	jmp    353 <process_key+0x353>
 13e:	83 e6 02             	and    $0x2,%esi
 141:	0f 85 0c 02 00 00    	jne    353 <process_key+0x353>
 147:	6a 00                	push   $0x0
 149:	31 c9                	xor    %ecx,%ecx
 14b:	ba 01 00 00 00       	mov    $0x1,%edx
 150:	eb df                	jmp    131 <process_key+0x131>
 152:	83 e6 02             	and    $0x2,%esi
 155:	74 0e                	je     165 <process_key+0x165>
 157:	6a 00                	push   $0x0
 159:	b9 04 00 00 00       	mov    $0x4,%ecx
 15e:	ba 04 00 00 00       	mov    $0x4,%edx
 163:	eb cc                	jmp    131 <process_key+0x131>
 165:	6a 00                	push   $0x0
 167:	31 c9                	xor    %ecx,%ecx
 169:	ba 04 01 00 00       	mov    $0x104,%edx
 16e:	eb c1                	jmp    131 <process_key+0x131>
 170:	83 e6 02             	and    $0x2,%esi
 173:	74 0e                	je     183 <process_key+0x183>
 175:	6a 00                	push   $0x0
 177:	b9 08 00 00 00       	mov    $0x8,%ecx
 17c:	ba 08 00 00 00       	mov    $0x8,%edx
 181:	eb ae                	jmp    131 <process_key+0x131>
 183:	6a 00                	push   $0x0
 185:	31 c9                	xor    %ecx,%ecx
 187:	ba 08 02 00 00       	mov    $0x208,%edx
 18c:	eb a3                	jmp    131 <process_key+0x131>
 18e:	83 e6 01             	and    $0x1,%esi
 191:	0f 85 bc 01 00 00    	jne    353 <process_key+0x353>
 197:	6a 20                	push   $0x20
 199:	31 c9                	xor    %ecx,%ecx
 19b:	ba 00 20 00 00       	mov    $0x2000,%edx
 1a0:	eb 8f                	jmp    131 <process_key+0x131>
 1a2:	83 e6 02             	and    $0x2,%esi
 1a5:	74 4d                	je     1f4 <process_key+0x1f4>
 1a7:	84 c0                	test   %al,%al
 1a9:	0f 89 a4 01 00 00    	jns    353 <process_key+0x353>
 1af:	0f b7 05 80 04 00 00 	movzwl 0x480,%eax
 1b6:	66 a3 1a 04 00 00    	mov    %ax,0x41a
 1bc:	8d 50 02             	lea    0x2(%eax),%edx
 1bf:	66 89 15 1c 04 00 00 	mov    %dx,0x41c
 1c6:	66 c7 80 00 04 00 00 	movw   $0x0,0x400(%eax)
 1cd:	00 00 
 1cf:	c6 05 71 04 00 00 80 	movb   $0x80,0x471
 1d6:	b9 26 00 00 00       	mov    $0x26,%ecx
 1db:	31 d2                	xor    %edx,%edx
 1dd:	8d 44 24 0a          	lea    0xa(%esp),%eax
 1e1:	e8 fc ff ff ff       	call   1e2 <process_key+0x1e2>
 1e6:	66 c7 44 24 2e 00 02 	movw   $0x200,0x2e(%esp)
 1ed:	ba 00 00 00 00       	mov    $0x0,%edx
 1f2:	eb 3a                	jmp    22e <process_key+0x22e>
 1f4:	6a 10                	push   $0x10
 1f6:	31 c9                	xor    %ecx,%ecx
 1f8:	ba 00 10 00 00       	mov    $0x1000,%edx
 1fd:	e9 2f ff ff ff       	jmp    131 <process_key+0x131>
 202:	f7 c6 02 00 00 00    	test   $0x2,%esi
 208:	74 7e                	je     288 <process_key+0x288>
 20a:	84 c0                	test   %al,%al
 20c:	0f 88 41 01 00 00    	js     353 <process_key+0x353>
 212:	b9 26 00 00 00       	mov    $0x26,%ecx
 217:	31 d2                	xor    %edx,%edx
 219:	8d 44 24 0a          	lea    0xa(%esp),%eax
 21d:	e8 fc ff ff ff       	call   21e <process_key+0x21e>
 222:	66 c7 44 24 2e 00 02 	movw   $0x200,0x2e(%esp)
 229:	ba 00 00 00 00       	mov    $0x0,%edx
 22e:	0f b7 d2             	movzwl %dx,%edx
 231:	8d 44 24 0a          	lea    0xa(%esp),%eax
 235:	e8 fc ff ff ff       	call   236 <process_key+0x236>
 23a:	e9 14 01 00 00       	jmp    353 <process_key+0x353>
 23f:	66 8b 15 17 04 00 00 	mov    0x417,%dx
 246:	83 e2 0c             	and    $0xc,%edx
 249:	66 83 fa 0c          	cmp    $0xc,%dx
 24d:	75 39                	jne    288 <process_key+0x288>
 24f:	84 c0                	test   %al,%al
 251:	0f 88 fc 00 00 00    	js     353 <process_key+0x353>
 257:	66 c7 05 72 04 00 00 	movw   $0x1234,0x472
 25e:	34 12 
 260:	e8 fc ff ff ff       	call   261 <process_key+0x261>
 265:	eb 29                	jmp    290 <process_key+0x290>
 267:	84 c0                	test   %al,%al
 269:	0f 88 e4 00 00 00    	js     353 <process_key+0x353>
 26f:	8d 43 ff             	lea    -0x1(%ebx),%eax
 272:	3c 57                	cmp    $0x57,%al
 274:	76 1a                	jbe    290 <process_key+0x290>
 276:	55                   	push   %ebp
 277:	68 0f 00 00 00       	push   $0xf
 27c:	e8 fc ff ff ff       	call   27d <process_key+0x27d>
 281:	58                   	pop    %eax
 282:	5a                   	pop    %edx
 283:	e9 cb 00 00 00       	jmp    353 <process_key+0x353>
 288:	84 c0                	test   %al,%al
 28a:	0f 88 c3 00 00 00    	js     353 <process_key+0x353>
 290:	8d 14 ed 00 00 00 00 	lea    0x0(,%ebp,8),%edx
 297:	89 f0                	mov    %esi,%eax
 299:	24 02                	and    $0x2,%al
 29b:	88 44 24 05          	mov    %al,0x5(%esp)
 29f:	74 19                	je     2ba <process_key+0x2ba>
 2a1:	80 fb 35             	cmp    $0x35,%bl
 2a4:	74 05                	je     2ab <process_key+0x2ab>
 2a6:	80 fb 1c             	cmp    $0x1c,%bl
 2a9:	75 0f                	jne    2ba <process_key+0x2ba>
 2ab:	ba 00 00 00 00       	mov    $0x0,%edx
 2b0:	80 fb 1c             	cmp    $0x1c,%bl
 2b3:	74 05                	je     2ba <process_key+0x2ba>
 2b5:	ba 00 00 00 00       	mov    $0x0,%edx
 2ba:	66 8b 35 17 04 00 00 	mov    0x417,%si
 2c1:	8d 43 b9             	lea    -0x47(%ebx),%eax
 2c4:	3c 0c                	cmp    $0xc,%al
 2c6:	0f 96 04 24          	setbe  (%esp)
 2ca:	89 f0                	mov    %esi,%eax
 2cc:	66 83 e0 08          	and    $0x8,%ax
 2d0:	66 89 44 24 06       	mov    %ax,0x6(%esp)
 2d5:	74 06                	je     2dd <process_key+0x2dd>
 2d7:	66 8b 42 06          	mov    0x6(%edx),%ax
 2db:	eb 43                	jmp    320 <process_key+0x320>
 2dd:	f7 c6 04 00 00 00    	test   $0x4,%esi
 2e3:	74 05                	je     2ea <process_key+0x2ea>
 2e5:	8b 42 04             	mov    0x4(%edx),%eax
 2e8:	eb 36                	jmp    320 <process_key+0x320>
 2ea:	89 f7                	mov    %esi,%edi
 2ec:	83 e7 03             	and    $0x3,%edi
 2ef:	8b 02                	mov    (%edx),%eax
 2f1:	89 c5                	mov    %eax,%ebp
 2f3:	f7 c6 20 00 00 00    	test   $0x20,%esi
 2f9:	74 06                	je     301 <process_key+0x301>
 2fb:	80 3c 24 00          	cmpb   $0x0,(%esp)
 2ff:	75 0f                	jne    310 <process_key+0x310>
 301:	83 ed 61             	sub    $0x61,%ebp
 304:	89 e9                	mov    %ebp,%ecx
 306:	80 f9 19             	cmp    $0x19,%cl
 309:	77 0c                	ja     317 <process_key+0x317>
 30b:	83 e6 40             	and    $0x40,%esi
 30e:	74 07                	je     317 <process_key+0x317>
 310:	66 85 ff             	test   %di,%di
 313:	74 07                	je     31c <process_key+0x31c>
 315:	eb 09                	jmp    320 <process_key+0x320>
 317:	66 85 ff             	test   %di,%di
 31a:	74 04                	je     320 <process_key+0x320>
 31c:	66 8b 42 02          	mov    0x2(%edx),%ax
 320:	80 7c 24 05 00       	cmpb   $0x0,0x5(%esp)
 325:	74 18                	je     33f <process_key+0x33f>
 327:	80 3c 24 00          	cmpb   $0x0,(%esp)
 32b:	74 12                	je     33f <process_key+0x33f>
 32d:	b0 e0                	mov    $0xe0,%al
 32f:	66 83 7c 24 06 00    	cmpw   $0x0,0x6(%esp)
 335:	74 0d                	je     344 <process_key+0x344>
 337:	8d 43 50             	lea    0x50(%ebx),%eax
 33a:	c1 e0 08             	shl    $0x8,%eax
 33d:	eb 05                	jmp    344 <process_key+0x344>
 33f:	66 85 c0             	test   %ax,%ax
 342:	74 0f                	je     353 <process_key+0x353>
 344:	0f b7 c0             	movzwl %ax,%eax
 347:	83 c4 30             	add    $0x30,%esp
 34a:	5b                   	pop    %ebx
 34b:	5e                   	pop    %esi
 34c:	5f                   	pop    %edi
 34d:	5d                   	pop    %ebp
 34e:	e9 fc ff ff ff       	jmp    34f <process_key+0x34f>
 353:	83 c4 30             	add    $0x30,%esp
 356:	5b                   	pop    %ebx
 357:	5e                   	pop    %esi
 358:	5f                   	pop    %edi
 359:	5d                   	pop    %ebp
 35a:	c3                   	ret    
