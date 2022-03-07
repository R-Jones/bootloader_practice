
./sercon.o:     file format elf32-i386


Disassembly of section .text.sercon_cursor_pos_set:

00000000 <sercon_cursor_pos_set>:
   0:	80 3d 00 00 00 00 00 	cmpb   $0x0,0x0
   7:	75 0e                	jne    17 <sercon_cursor_pos_set+0x17>
   9:	c1 e0 08             	shl    $0x8,%eax
   c:	0f b6 d2             	movzbl %dl,%edx
   f:	09 d0                	or     %edx,%eax
  11:	66 a3 50 04 00 00    	mov    %ax,0x450
  17:	c3                   	ret    

Disassembly of section .text.sercon_lazy_lf:

00000000 <sercon_lazy_lf>:
   0:	0f b6 15 51 04 00 00 	movzbl 0x451,%edx
   7:	42                   	inc    %edx
   8:	0f b6 05 84 04 00 00 	movzbl 0x484,%eax
   f:	8d 48 01             	lea    0x1(%eax),%ecx
  12:	38 ca                	cmp    %cl,%dl
  14:	72 13                	jb     29 <sercon_lazy_lf+0x29>
  16:	8a 15 00 00 00 00    	mov    0x0,%dl
  1c:	84 d2                	test   %dl,%dl
  1e:	74 0c                	je     2c <sercon_lazy_lf+0x2c>
  20:	4a                   	dec    %edx
  21:	88 15 00 00 00 00    	mov    %dl,0x0
  27:	eb 03                	jmp    2c <sercon_lazy_lf+0x2c>
  29:	0f b6 c2             	movzbl %dl,%eax
  2c:	0f b6 15 50 04 00 00 	movzbl 0x450,%edx
  33:	e9 fc ff ff ff       	jmp    34 <sercon_lazy_lf+0x34>

Disassembly of section .text.shiftbuf:

00000000 <shiftbuf>:
   0:	0f b6 0d 00 00 00 00 	movzbl 0x0,%ecx
   7:	29 c1                	sub    %eax,%ecx
   9:	88 0d 00 00 00 00    	mov    %cl,0x0
   f:	31 d2                	xor    %edx,%edx
  11:	39 ca                	cmp    %ecx,%edx
  13:	7c 01                	jl     16 <shiftbuf+0x16>
  15:	c3                   	ret    
  16:	53                   	push   %ebx
  17:	8a 9c 10 00 00 00 00 	mov    0x0(%eax,%edx,1),%bl
  1e:	88 9a 00 00 00 00    	mov    %bl,0x0(%edx)
  24:	42                   	inc    %edx
  25:	39 ca                	cmp    %ecx,%edx
  27:	7c ee                	jl     17 <shiftbuf+0x17>
  29:	5b                   	pop    %ebx
  2a:	c3                   	ret    

Disassembly of section .text.sercon_putchar:

00000000 <sercon_putchar>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	89 c6                	mov    %eax,%esi
   5:	66 8b 3d 00 00 00 00 	mov    0x0,%di
   c:	b8 0a 00 00 00       	mov    $0xa,%eax
  11:	e8 fc ff ff ff       	call   12 <sercon_putchar+0x12>
  16:	89 c3                	mov    %eax,%ebx
  18:	8d 57 05             	lea    0x5(%edi),%edx
  1b:	ec                   	in     (%dx),%al
  1c:	83 e0 60             	and    $0x60,%eax
  1f:	3c 60                	cmp    $0x60,%al
  21:	75 07                	jne    2a <sercon_putchar+0x2a>
  23:	89 f0                	mov    %esi,%eax
  25:	89 fa                	mov    %edi,%edx
  27:	ee                   	out    %al,(%dx)
  28:	eb 12                	jmp    3c <sercon_putchar+0x3c>
  2a:	89 d8                	mov    %ebx,%eax
  2c:	e8 fc ff ff ff       	call   2d <sercon_putchar+0x2d>
  31:	85 c0                	test   %eax,%eax
  33:	75 07                	jne    3c <sercon_putchar+0x3c>
  35:	e8 fc ff ff ff       	call   36 <sercon_putchar+0x36>
  3a:	eb dc                	jmp    18 <sercon_putchar+0x18>
  3c:	5b                   	pop    %ebx
  3d:	5e                   	pop    %esi
  3e:	5f                   	pop    %edi
  3f:	c3                   	ret    

Disassembly of section .text.sercon_term_clear_screen:

00000000 <sercon_term_clear_screen>:
   0:	b8 1b 00 00 00       	mov    $0x1b,%eax
   5:	e8 fc ff ff ff       	call   6 <sercon_term_clear_screen+0x6>
   a:	b8 5b 00 00 00       	mov    $0x5b,%eax
   f:	e8 fc ff ff ff       	call   10 <sercon_term_clear_screen+0x10>
  14:	b8 32 00 00 00       	mov    $0x32,%eax
  19:	e8 fc ff ff ff       	call   1a <sercon_term_clear_screen+0x1a>
  1e:	b8 4a 00 00 00       	mov    $0x4a,%eax
  23:	e9 fc ff ff ff       	jmp    24 <sercon_term_clear_screen+0x24>

Disassembly of section .text.sercon_term_cursor_goto:

00000000 <sercon_term_cursor_goto>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	8d 70 01             	lea    0x1(%eax),%esi
   5:	8d 5a 01             	lea    0x1(%edx),%ebx
   8:	b8 1b 00 00 00       	mov    $0x1b,%eax
   d:	e8 fc ff ff ff       	call   e <sercon_term_cursor_goto+0xe>
  12:	b8 5b 00 00 00       	mov    $0x5b,%eax
  17:	e8 fc ff ff ff       	call   18 <sercon_term_cursor_goto+0x18>
  1c:	b2 0a                	mov    $0xa,%dl
  1e:	89 f0                	mov    %esi,%eax
  20:	0f b6 f0             	movzbl %al,%esi
  23:	89 f0                	mov    %esi,%eax
  25:	f6 f2                	div    %dl
  27:	89 c6                	mov    %eax,%esi
  29:	8d 46 30             	lea    0x30(%esi),%eax
  2c:	0f b6 c0             	movzbl %al,%eax
  2f:	e8 fc ff ff ff       	call   30 <sercon_term_cursor_goto+0x30>
  34:	89 f0                	mov    %esi,%eax
  36:	88 e0                	mov    %ah,%al
  38:	83 c0 30             	add    $0x30,%eax
  3b:	0f b6 c0             	movzbl %al,%eax
  3e:	e8 fc ff ff ff       	call   3f <sercon_term_cursor_goto+0x3f>
  43:	b8 3b 00 00 00       	mov    $0x3b,%eax
  48:	e8 fc ff ff ff       	call   49 <sercon_term_cursor_goto+0x49>
  4d:	0f b6 db             	movzbl %bl,%ebx
  50:	89 d8                	mov    %ebx,%eax
  52:	b2 0a                	mov    $0xa,%dl
  54:	f6 f2                	div    %dl
  56:	89 c3                	mov    %eax,%ebx
  58:	8d 43 30             	lea    0x30(%ebx),%eax
  5b:	0f b6 c0             	movzbl %al,%eax
  5e:	e8 fc ff ff ff       	call   5f <sercon_term_cursor_goto+0x5f>
  63:	88 f8                	mov    %bh,%al
  65:	83 c0 30             	add    $0x30,%eax
  68:	0f b6 c0             	movzbl %al,%eax
  6b:	e8 fc ff ff ff       	call   6c <sercon_term_cursor_goto+0x6c>
  70:	b8 48 00 00 00       	mov    $0x48,%eax
  75:	5b                   	pop    %ebx
  76:	5e                   	pop    %esi
  77:	e9 fc ff ff ff       	jmp    78 <sercon_term_cursor_goto+0x78>

Disassembly of section .text.sercon_print_utf8:

00000000 <sercon_print_utf8>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	0f b6 c0             	movzbl %al,%eax
   5:	e8 fc ff ff ff       	call   6 <sercon_print_utf8+0x6>
   a:	66 83 f8 7e          	cmp    $0x7e,%ax
   e:	77 05                	ja     15 <sercon_print_utf8+0x15>
  10:	0f b7 c0             	movzwl %ax,%eax
  13:	eb 3c                	jmp    51 <sercon_print_utf8+0x51>
  15:	89 c3                	mov    %eax,%ebx
  17:	66 c1 eb 06          	shr    $0x6,%bx
  1b:	89 c6                	mov    %eax,%esi
  1d:	83 e6 3f             	and    $0x3f,%esi
  20:	81 ce 80 00 00 00    	or     $0x80,%esi
  26:	66 3d fe 07          	cmp    $0x7fe,%ax
  2a:	77 08                	ja     34 <sercon_print_utf8+0x34>
  2c:	83 cb c0             	or     $0xffffffc0,%ebx
  2f:	0f b6 c3             	movzbl %bl,%eax
  32:	eb 16                	jmp    4a <sercon_print_utf8+0x4a>
  34:	66 c1 e8 0c          	shr    $0xc,%ax
  38:	83 c8 e0             	or     $0xffffffe0,%eax
  3b:	0f b6 c0             	movzbl %al,%eax
  3e:	e8 fc ff ff ff       	call   3f <sercon_print_utf8+0x3f>
  43:	89 d8                	mov    %ebx,%eax
  45:	83 e0 3f             	and    $0x3f,%eax
  48:	0c 80                	or     $0x80,%al
  4a:	e8 fc ff ff ff       	call   4b <sercon_print_utf8+0x4b>
  4f:	89 f0                	mov    %esi,%eax
  51:	5b                   	pop    %ebx
  52:	5e                   	pop    %esi
  53:	e9 fc ff ff ff       	jmp    54 <sercon_print_utf8+0x54>

Disassembly of section .text.sercon_set_attr:

00000000 <sercon_set_attr>:
   0:	38 05 00 00 00 00    	cmp    %al,0x0
   6:	0f 84 b4 00 00 00    	je     c0 <sercon_set_attr+0xc0>
   c:	56                   	push   %esi
   d:	53                   	push   %ebx
   e:	51                   	push   %ecx
   f:	a2 00 00 00 00       	mov    %al,0x0
  14:	89 c6                	mov    %eax,%esi
  16:	83 e6 08             	and    $0x8,%esi
  19:	88 c3                	mov    %al,%bl
  1b:	c0 eb 04             	shr    $0x4,%bl
  1e:	83 e3 07             	and    $0x7,%ebx
  21:	83 e0 07             	and    $0x7,%eax
  24:	88 44 24 03          	mov    %al,0x3(%esp)
  28:	b8 1b 00 00 00       	mov    $0x1b,%eax
  2d:	e8 fc ff ff ff       	call   2e <sercon_set_attr+0x2e>
  32:	b8 5b 00 00 00       	mov    $0x5b,%eax
  37:	e8 fc ff ff ff       	call   38 <sercon_set_attr+0x38>
  3c:	b8 30 00 00 00       	mov    $0x30,%eax
  41:	e8 fc ff ff ff       	call   42 <sercon_set_attr+0x42>
  46:	80 7c 24 03 07       	cmpb   $0x7,0x3(%esp)
  4b:	74 25                	je     72 <sercon_set_attr+0x72>
  4d:	b8 3b 00 00 00       	mov    $0x3b,%eax
  52:	e8 fc ff ff ff       	call   53 <sercon_set_attr+0x53>
  57:	b8 33 00 00 00       	mov    $0x33,%eax
  5c:	e8 fc ff ff ff       	call   5d <sercon_set_attr+0x5d>
  61:	0f b6 44 24 03       	movzbl 0x3(%esp),%eax
  66:	0f b6 80 00 00 00 00 	movzbl 0x0(%eax),%eax
  6d:	e8 fc ff ff ff       	call   6e <sercon_set_attr+0x6e>
  72:	84 db                	test   %bl,%bl
  74:	74 23                	je     99 <sercon_set_attr+0x99>
  76:	b8 3b 00 00 00       	mov    $0x3b,%eax
  7b:	e8 fc ff ff ff       	call   7c <sercon_set_attr+0x7c>
  80:	b8 34 00 00 00       	mov    $0x34,%eax
  85:	e8 fc ff ff ff       	call   86 <sercon_set_attr+0x86>
  8a:	0f b6 c3             	movzbl %bl,%eax
  8d:	0f b6 80 00 00 00 00 	movzbl 0x0(%eax),%eax
  94:	e8 fc ff ff ff       	call   95 <sercon_set_attr+0x95>
  99:	89 f0                	mov    %esi,%eax
  9b:	84 c0                	test   %al,%al
  9d:	74 14                	je     b3 <sercon_set_attr+0xb3>
  9f:	b8 3b 00 00 00       	mov    $0x3b,%eax
  a4:	e8 fc ff ff ff       	call   a5 <sercon_set_attr+0xa5>
  a9:	b8 31 00 00 00       	mov    $0x31,%eax
  ae:	e8 fc ff ff ff       	call   af <sercon_set_attr+0xaf>
  b3:	b8 6d 00 00 00       	mov    $0x6d,%eax
  b8:	5a                   	pop    %edx
  b9:	5b                   	pop    %ebx
  ba:	5e                   	pop    %esi
  bb:	e9 fc ff ff ff       	jmp    bc <sercon_set_attr+0xbc>
  c0:	c3                   	ret    

Disassembly of section .text.sercon_lazy_flush:

00000000 <sercon_lazy_flush>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	8a 1d 00 00 00 00    	mov    0x0,%bl
   9:	84 db                	test   %bl,%bl
   b:	74 1a                	je     27 <sercon_lazy_flush+0x27>
   d:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
  14:	e8 fc ff ff ff       	call   15 <sercon_lazy_flush+0x15>
  19:	0f b6 c3             	movzbl %bl,%eax
  1c:	e8 fc ff ff ff       	call   1d <sercon_lazy_flush+0x1d>
  21:	fe 05 00 00 00 00    	incb   0x0
  27:	8b 1d 50 04 00 00    	mov    0x450,%ebx
  2d:	89 de                	mov    %ebx,%esi
  2f:	66 c1 ee 08          	shr    $0x8,%si
  33:	89 f7                	mov    %esi,%edi
  35:	89 f0                	mov    %esi,%eax
  37:	3a 05 00 00 00 00    	cmp    0x0,%al
  3d:	75 0a                	jne    49 <sercon_lazy_flush+0x49>
  3f:	3a 1d 00 00 00 00    	cmp    0x0,%bl
  45:	75 04                	jne    4b <sercon_lazy_flush+0x4b>
  47:	eb 66                	jmp    af <sercon_lazy_flush+0xaf>
  49:	72 04                	jb     4f <sercon_lazy_flush+0x4f>
  4b:	84 db                	test   %bl,%bl
  4d:	74 1a                	je     69 <sercon_lazy_flush+0x69>
  4f:	0f b6 d3             	movzbl %bl,%edx
  52:	0f b7 c6             	movzwl %si,%eax
  55:	e8 fc ff ff ff       	call   56 <sercon_lazy_flush+0x56>
  5a:	89 f0                	mov    %esi,%eax
  5c:	a2 00 00 00 00       	mov    %al,0x0
  61:	88 1d 00 00 00 00    	mov    %bl,0x0
  67:	eb 46                	jmp    af <sercon_lazy_flush+0xaf>
  69:	80 3d 00 00 00 00 00 	cmpb   $0x0,0x0
  70:	74 11                	je     83 <sercon_lazy_flush+0x83>
  72:	b8 0d 00 00 00       	mov    $0xd,%eax
  77:	e8 fc ff ff ff       	call   78 <sercon_lazy_flush+0x78>
  7c:	c6 05 00 00 00 00 00 	movb   $0x0,0x0
  83:	a0 00 00 00 00       	mov    0x0,%al
  88:	89 f9                	mov    %edi,%ecx
  8a:	38 c1                	cmp    %al,%cl
  8c:	76 12                	jbe    a0 <sercon_lazy_flush+0xa0>
  8e:	b8 0a 00 00 00       	mov    $0xa,%eax
  93:	e8 fc ff ff ff       	call   94 <sercon_lazy_flush+0x94>
  98:	fe 05 00 00 00 00    	incb   0x0
  9e:	eb e3                	jmp    83 <sercon_lazy_flush+0x83>
  a0:	89 f1                	mov    %esi,%ecx
  a2:	38 c1                	cmp    %al,%cl
  a4:	75 a9                	jne    4f <sercon_lazy_flush+0x4f>
  a6:	80 3d 00 00 00 00 00 	cmpb   $0x0,0x0
  ad:	75 a0                	jne    4f <sercon_lazy_flush+0x4f>
  af:	c6 05 00 00 00 00 07 	movb   $0x7,0x0
  b6:	c6 05 00 00 00 00 00 	movb   $0x0,0x0
  bd:	5b                   	pop    %ebx
  be:	5e                   	pop    %esi
  bf:	5f                   	pop    %edi
  c0:	c3                   	ret    

Disassembly of section .text.sercon_lazy_putchar:

00000000 <sercon_lazy_putchar>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	89 c7                	mov    %eax,%edi
   5:	89 d3                	mov    %edx,%ebx
   7:	89 ce                	mov    %ecx,%esi
   9:	a1 50 04 00 00       	mov    0x450,%eax
   e:	3a 25 00 00 00 00    	cmp    0x0,%ah
  14:	75 08                	jne    1e <sercon_lazy_putchar+0x1e>
  16:	38 05 00 00 00 00    	cmp    %al,0x0
  1c:	74 05                	je     23 <sercon_lazy_putchar+0x23>
  1e:	e8 fc ff ff ff       	call   1f <sercon_lazy_putchar+0x1f>
  23:	89 f8                	mov    %edi,%eax
  25:	a2 00 00 00 00       	mov    %al,0x0
  2a:	89 f0                	mov    %esi,%eax
  2c:	84 c0                	test   %al,%al
  2e:	74 31                	je     61 <sercon_lazy_putchar+0x61>
  30:	a1 50 04 00 00       	mov    0x450,%eax
  35:	8d 50 01             	lea    0x1(%eax),%edx
  38:	66 c1 e8 08          	shr    $0x8,%ax
  3c:	0f b7 c0             	movzwl %ax,%eax
  3f:	3a 15 4a 04 00 00    	cmp    0x44a,%dl
  45:	72 0f                	jb     56 <sercon_lazy_putchar+0x56>
  47:	31 d2                	xor    %edx,%edx
  49:	e8 fc ff ff ff       	call   4a <sercon_lazy_putchar+0x4a>
  4e:	5b                   	pop    %ebx
  4f:	5e                   	pop    %esi
  50:	5f                   	pop    %edi
  51:	e9 fc ff ff ff       	jmp    52 <sercon_lazy_putchar+0x52>
  56:	0f b6 d2             	movzbl %dl,%edx
  59:	5b                   	pop    %ebx
  5a:	5e                   	pop    %esi
  5b:	5f                   	pop    %edi
  5c:	e9 fc ff ff ff       	jmp    5d <sercon_lazy_putchar+0x5d>
  61:	88 1d 00 00 00 00    	mov    %bl,0x0
  67:	5b                   	pop    %ebx
  68:	5e                   	pop    %esi
  69:	5f                   	pop    %edi
  6a:	c3                   	ret    

Disassembly of section .text.handle_sercon:

00000000 <handle_sercon>:
   0:	66 83 3d 00 00 00 00 	cmpw   $0x0,0x0
   7:	00 
   8:	0f 84 27 03 00 00    	je     335 <handle_sercon+0x335>
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	52                   	push   %edx
  11:	89 c3                	mov    %eax,%ebx
  13:	0f b6 48 1d          	movzbl 0x1d(%eax),%ecx
  17:	80 f9 0f             	cmp    $0xf,%cl
  1a:	77 28                	ja     44 <handle_sercon+0x44>
  1c:	b8 0e 81 00 00       	mov    $0x810e,%eax
  21:	d3 e8                	shr    %cl,%eax
  23:	a8 01                	test   $0x1,%al
  25:	74 0d                	je     34 <handle_sercon+0x34>
  27:	80 3d 00 00 00 00 00 	cmpb   $0x0,0x0
  2e:	0f 85 fd 02 00 00    	jne    331 <handle_sercon+0x331>
  34:	80 f9 0f             	cmp    $0xf,%cl
  37:	0f 87 e0 02 00 00    	ja     31d <handle_sercon+0x31d>
  3d:	ff 24 8d 00 00 00 00 	jmp    *0x0(,%ecx,4)
  44:	80 f9 4f             	cmp    $0x4f,%cl
  47:	0f 84 b0 02 00 00    	je     2fd <handle_sercon+0x2fd>
  4d:	e9 cb 02 00 00       	jmp    31d <handle_sercon+0x31d>
  52:	8a 53 1c             	mov    0x1c(%ebx),%dl
  55:	80 3d 00 00 00 00 00 	cmpb   $0x0,0x0
  5c:	75 40                	jne    9e <handle_sercon+0x9e>
  5e:	88 d1                	mov    %dl,%cl
  60:	83 e1 7f             	and    $0x7f,%ecx
  63:	88 d0                	mov    %dl,%al
  65:	83 e0 7a             	and    $0x7a,%eax
  68:	3c 01                	cmp    $0x1,%al
  6a:	19 c0                	sbb    %eax,%eax
  6c:	83 e0 d8             	and    $0xffffffd8,%eax
  6f:	83 c0 50             	add    $0x50,%eax
  72:	c6 43 1c 30          	movb   $0x30,0x1c(%ebx)
  76:	66 c7 05 50 04 00 00 	movw   $0x0,0x450
  7d:	00 00 
  7f:	88 0d 49 04 00 00    	mov    %cl,0x449
  85:	0f b6 c0             	movzbl %al,%eax
  88:	66 a3 4a 04 00 00    	mov    %ax,0x44a
  8e:	c6 05 84 04 00 00 18 	movb   $0x18,0x484
  95:	66 c7 05 60 04 00 00 	movw   $0x7,0x460
  9c:	07 00 
  9e:	f6 c2 78             	test   $0x78,%dl
  a1:	88 54 24 03          	mov    %dl,0x3(%esp)
  a5:	0f 94 05 00 00 00 00 	sete   0x0
  ac:	c6 05 00 00 00 00 00 	movb   $0x0,0x0
  b3:	c6 05 00 00 00 00 00 	movb   $0x0,0x0
  ba:	c6 05 00 00 00 00 00 	movb   $0x0,0x0
  c1:	b8 1b 00 00 00       	mov    $0x1b,%eax
  c6:	e8 fc ff ff ff       	call   c7 <handle_sercon+0xc7>
  cb:	b8 63 00 00 00       	mov    $0x63,%eax
  d0:	e8 fc ff ff ff       	call   d1 <handle_sercon+0xd1>
  d5:	b8 1b 00 00 00       	mov    $0x1b,%eax
  da:	e8 fc ff ff ff       	call   db <handle_sercon+0xdb>
  df:	b8 5b 00 00 00       	mov    $0x5b,%eax
  e4:	e8 fc ff ff ff       	call   e5 <handle_sercon+0xe5>
  e9:	b8 3f 00 00 00       	mov    $0x3f,%eax
  ee:	e8 fc ff ff ff       	call   ef <handle_sercon+0xef>
  f3:	b8 37 00 00 00       	mov    $0x37,%eax
  f8:	e8 fc ff ff ff       	call   f9 <handle_sercon+0xf9>
  fd:	b8 6c 00 00 00       	mov    $0x6c,%eax
 102:	e8 fc ff ff ff       	call   103 <handle_sercon+0x103>
 107:	8a 54 24 03          	mov    0x3(%esp),%dl
 10b:	84 d2                	test   %dl,%dl
 10d:	0f 88 1e 02 00 00    	js     331 <handle_sercon+0x331>
 113:	e9 8e 00 00 00       	jmp    1a6 <handle_sercon+0x1a6>
 118:	66 8b 43 18          	mov    0x18(%ebx),%ax
 11c:	66 a3 60 04 00 00    	mov    %ax,0x460
 122:	e9 0a 02 00 00       	jmp    331 <handle_sercon+0x331>
 127:	0f b6 53 14          	movzbl 0x14(%ebx),%edx
 12b:	0f b6 43 15          	movzbl 0x15(%ebx),%eax
 12f:	e9 97 01 00 00       	jmp    2cb <handle_sercon+0x2cb>
 134:	a1 60 04 00 00       	mov    0x460,%eax
 139:	66 89 43 18          	mov    %ax,0x18(%ebx)
 13d:	0f b6 05 51 04 00 00 	movzbl 0x451,%eax
 144:	88 43 15             	mov    %al,0x15(%ebx)
 147:	a1 50 04 00 00       	mov    0x450,%eax
 14c:	88 43 14             	mov    %al,0x14(%ebx)
 14f:	e9 dd 01 00 00       	jmp    331 <handle_sercon+0x331>
 154:	e8 fc ff ff ff       	call   155 <handle_sercon+0x155>
 159:	80 7b 1c 00          	cmpb   $0x0,0x1c(%ebx)
 15d:	75 4f                	jne    1ae <handle_sercon+0x1ae>
 15f:	80 7b 19 00          	cmpb   $0x0,0x19(%ebx)
 163:	0f 85 c8 01 00 00    	jne    331 <handle_sercon+0x331>
 169:	80 7b 18 00          	cmpb   $0x0,0x18(%ebx)
 16d:	0f 85 be 01 00 00    	jne    331 <handle_sercon+0x331>
 173:	0f b6 53 15          	movzbl 0x15(%ebx),%edx
 177:	a0 84 04 00 00       	mov    0x484,%al
 17c:	40                   	inc    %eax
 17d:	0f b6 c0             	movzbl %al,%eax
 180:	48                   	dec    %eax
 181:	39 c2                	cmp    %eax,%edx
 183:	0f 85 a8 01 00 00    	jne    331 <handle_sercon+0x331>
 189:	0f b6 53 14          	movzbl 0x14(%ebx),%edx
 18d:	0f b6 05 4a 04 00 00 	movzbl 0x44a,%eax
 194:	48                   	dec    %eax
 195:	39 c2                	cmp    %eax,%edx
 197:	0f 85 94 01 00 00    	jne    331 <handle_sercon+0x331>
 19d:	0f b6 43 11          	movzbl 0x11(%ebx),%eax
 1a1:	e8 fc ff ff ff       	call   1a2 <handle_sercon+0x1a2>
 1a6:	58                   	pop    %eax
 1a7:	5b                   	pop    %ebx
 1a8:	5e                   	pop    %esi
 1a9:	e9 fc ff ff ff       	jmp    1aa <handle_sercon+0x1aa>
 1ae:	b8 0d 00 00 00       	mov    $0xd,%eax
 1b3:	e8 fc ff ff ff       	call   1b4 <handle_sercon+0x1b4>
 1b8:	b8 0a 00 00 00       	mov    $0xa,%eax
 1bd:	e9 c2 00 00 00       	jmp    284 <handle_sercon+0x284>
 1c2:	c6 43 1d 07          	movb   $0x7,0x1d(%ebx)
 1c6:	c6 43 11 20          	movb   $0x20,0x11(%ebx)
 1ca:	e9 62 01 00 00       	jmp    331 <handle_sercon+0x331>
 1cf:	66 8b 73 18          	mov    0x18(%ebx),%si
 1d3:	0f b6 43 1c          	movzbl 0x1c(%ebx),%eax
 1d7:	66 83 fe 01          	cmp    $0x1,%si
 1db:	75 0b                	jne    1e8 <handle_sercon+0x1e8>
 1dd:	0f b6 53 10          	movzbl 0x10(%ebx),%edx
 1e1:	31 c9                	xor    %ecx,%ecx
 1e3:	e9 fa 00 00 00       	jmp    2e2 <handle_sercon+0x2e2>
 1e8:	3c 20                	cmp    $0x20,%al
 1ea:	75 3a                	jne    226 <handle_sercon+0x226>
 1ec:	a0 84 04 00 00       	mov    0x484,%al
 1f1:	40                   	inc    %eax
 1f2:	0f b6 c0             	movzbl %al,%eax
 1f5:	0f b6 15 4a 04 00 00 	movzbl 0x44a,%edx
 1fc:	0f af c2             	imul   %edx,%eax
 1ff:	0f b7 d6             	movzwl %si,%edx
 202:	39 d0                	cmp    %edx,%eax
 204:	75 20                	jne    226 <handle_sercon+0x226>
 206:	a1 50 04 00 00       	mov    0x450,%eax
 20b:	89 c1                	mov    %eax,%ecx
 20d:	66 c1 e9 08          	shr    $0x8,%cx
 211:	75 13                	jne    226 <handle_sercon+0x226>
 213:	66 85 c0             	test   %ax,%ax
 216:	75 0e                	jne    226 <handle_sercon+0x226>
 218:	e8 fc ff ff ff       	call   219 <handle_sercon+0x219>
 21d:	0f b6 43 10          	movzbl 0x10(%ebx),%eax
 221:	e9 7b ff ff ff       	jmp    1a1 <handle_sercon+0x1a1>
 226:	e8 fc ff ff ff       	call   227 <handle_sercon+0x227>
 22b:	0f b6 43 10          	movzbl 0x10(%ebx),%eax
 22f:	e8 fc ff ff ff       	call   230 <handle_sercon+0x230>
 234:	66 85 f6             	test   %si,%si
 237:	74 0c                	je     245 <handle_sercon+0x245>
 239:	0f b6 43 1c          	movzbl 0x1c(%ebx),%eax
 23d:	e8 fc ff ff ff       	call   23e <handle_sercon+0x23e>
 242:	4e                   	dec    %esi
 243:	eb ef                	jmp    234 <handle_sercon+0x234>
 245:	a1 50 04 00 00       	mov    0x450,%eax
 24a:	0f b6 d0             	movzbl %al,%edx
 24d:	66 c1 e8 08          	shr    $0x8,%ax
 251:	0f b7 c0             	movzwl %ax,%eax
 254:	5e                   	pop    %esi
 255:	5b                   	pop    %ebx
 256:	5e                   	pop    %esi
 257:	e9 fc ff ff ff       	jmp    258 <handle_sercon+0x258>
 25c:	0f b6 43 1c          	movzbl 0x1c(%ebx),%eax
 260:	3c 0a                	cmp    $0xa,%al
 262:	74 6f                	je     2d3 <handle_sercon+0x2d3>
 264:	77 0a                	ja     270 <handle_sercon+0x270>
 266:	3c 07                	cmp    $0x7,%al
 268:	74 15                	je     27f <handle_sercon+0x27f>
 26a:	3c 08                	cmp    $0x8,%al
 26c:	74 1e                	je     28c <handle_sercon+0x28c>
 26e:	eb 6b                	jmp    2db <handle_sercon+0x2db>
 270:	3c 0d                	cmp    $0xd,%al
 272:	75 67                	jne    2db <handle_sercon+0x2db>
 274:	0f b6 05 51 04 00 00 	movzbl 0x451,%eax
 27b:	31 d2                	xor    %edx,%edx
 27d:	eb 4c                	jmp    2cb <handle_sercon+0x2cb>
 27f:	b8 07 00 00 00       	mov    $0x7,%eax
 284:	5b                   	pop    %ebx
 285:	5b                   	pop    %ebx
 286:	5e                   	pop    %esi
 287:	e9 fc ff ff ff       	jmp    288 <handle_sercon+0x288>
 28c:	e8 fc ff ff ff       	call   28d <handle_sercon+0x28d>
 291:	8b 1d 50 04 00 00    	mov    0x450,%ebx
 297:	84 db                	test   %bl,%bl
 299:	0f 84 92 00 00 00    	je     331 <handle_sercon+0x331>
 29f:	b8 08 00 00 00       	mov    $0x8,%eax
 2a4:	e8 fc ff ff ff       	call   2a5 <handle_sercon+0x2a5>
 2a9:	8d 4b ff             	lea    -0x1(%ebx),%ecx
 2ac:	0f b6 05 51 04 00 00 	movzbl 0x451,%eax
 2b3:	89 c3                	mov    %eax,%ebx
 2b5:	0f b6 d1             	movzbl %cl,%edx
 2b8:	e8 fc ff ff ff       	call   2b9 <handle_sercon+0x2b9>
 2bd:	88 1d 00 00 00 00    	mov    %bl,0x0
 2c3:	88 0d 00 00 00 00    	mov    %cl,0x0
 2c9:	eb 66                	jmp    331 <handle_sercon+0x331>
 2cb:	59                   	pop    %ecx
 2cc:	5b                   	pop    %ebx
 2cd:	5e                   	pop    %esi
 2ce:	e9 fc ff ff ff       	jmp    2cf <handle_sercon+0x2cf>
 2d3:	58                   	pop    %eax
 2d4:	5b                   	pop    %ebx
 2d5:	5e                   	pop    %esi
 2d6:	e9 fc ff ff ff       	jmp    2d7 <handle_sercon+0x2d7>
 2db:	b9 01 00 00 00       	mov    $0x1,%ecx
 2e0:	31 d2                	xor    %edx,%edx
 2e2:	5e                   	pop    %esi
 2e3:	5b                   	pop    %ebx
 2e4:	5e                   	pop    %esi
 2e5:	e9 fc ff ff ff       	jmp    2e6 <handle_sercon+0x2e6>
 2ea:	a0 49 04 00 00       	mov    0x449,%al
 2ef:	88 43 1c             	mov    %al,0x1c(%ebx)
 2f2:	66 a1 4a 04 00 00    	mov    0x44a,%ax
 2f8:	88 43 1d             	mov    %al,0x1d(%ebx)
 2fb:	eb 34                	jmp    331 <handle_sercon+0x331>
 2fd:	80 3d 00 00 00 00 00 	cmpb   $0x0,0x0
 304:	75 08                	jne    30e <handle_sercon+0x30e>
 306:	66 c7 40 1c 00 01    	movw   $0x100,0x1c(%eax)
 30c:	eb 23                	jmp    331 <handle_sercon+0x331>
 30e:	80 78 1c 02          	cmpb   $0x2,0x1c(%eax)
 312:	75 1d                	jne    331 <handle_sercon+0x331>
 314:	c6 05 00 00 00 00 00 	movb   $0x0,0x0
 31b:	eb 14                	jmp    331 <handle_sercon+0x331>
 31d:	b9 00 00 00 00       	mov    $0x0,%ecx
 322:	ba da 01 00 00       	mov    $0x1da,%edx
 327:	89 d8                	mov    %ebx,%eax
 329:	5b                   	pop    %ebx
 32a:	5b                   	pop    %ebx
 32b:	5e                   	pop    %esi
 32c:	e9 fc ff ff ff       	jmp    32d <handle_sercon+0x32d>
 331:	58                   	pop    %eax
 332:	5b                   	pop    %ebx
 333:	5e                   	pop    %esi
 334:	c3                   	ret    
 335:	c3                   	ret    

Disassembly of section .text.sercon_setup:

00000000 <sercon_setup>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	31 d2                	xor    %edx,%edx
   6:	31 c9                	xor    %ecx,%ecx
   8:	b8 00 00 00 00       	mov    $0x0,%eax
   d:	e8 fc ff ff ff       	call   e <sercon_setup+0xe>
  12:	66 85 c0             	test   %ax,%ax
  15:	0f 84 a8 00 00 00    	je     c3 <sercon_setup+0xc3>
  1b:	89 c3                	mov    %eax,%ebx
  1d:	0f b7 c0             	movzwl %ax,%eax
  20:	50                   	push   %eax
  21:	68 10 00 00 00       	push   $0x10
  26:	e8 fc ff ff ff       	call   27 <sercon_setup+0x27>
  2b:	0f b7 15 40 00 00 00 	movzwl 0x40,%edx
  32:	89 d7                	mov    %edx,%edi
  34:	0f b7 0d 42 00 00 00 	movzwl 0x42,%ecx
  3b:	89 ce                	mov    %ecx,%esi
  3d:	bd 00 00 00 00       	mov    $0x0,%ebp
  42:	89 c8                	mov    %ecx,%eax
  44:	c1 e0 10             	shl    $0x10,%eax
  47:	09 c2                	or     %eax,%edx
  49:	0f b7 c5             	movzwl %bp,%eax
  4c:	0d 00 00 00 f0       	or     $0xf0000000,%eax
  51:	83 c4 08             	add    $0x8,%esp
  54:	39 c2                	cmp    %eax,%edx
  56:	74 29                	je     81 <sercon_setup+0x81>
  58:	0f b7 c7             	movzwl %di,%eax
  5b:	50                   	push   %eax
  5c:	51                   	push   %ecx
  5d:	68 2b 00 00 00       	push   $0x2b
  62:	e8 fc ff ff ff       	call   63 <sercon_setup+0x63>
  67:	66 89 3d 00 00 00 00 	mov    %di,0x0
  6e:	66 89 35 02 00 00 00 	mov    %si,0x2
  75:	c6 05 00 00 00 00 01 	movb   $0x1,0x0
  7c:	83 c4 0c             	add    $0xc,%esp
  7f:	eb 1b                	jmp    9c <sercon_setup+0x9c>
  81:	68 61 00 00 00       	push   $0x61
  86:	e8 fc ff ff ff       	call   87 <sercon_setup+0x87>
  8b:	66 89 2d 00 00 00 00 	mov    %bp,0x0
  92:	66 c7 05 02 00 00 00 	movw   $0xf000,0x2
  99:	00 f0 
  9b:	58                   	pop    %eax
  9c:	b8 00 00 00 00       	mov    $0x0,%eax
  a1:	66 a3 40 00 00 00    	mov    %ax,0x40
  a7:	66 c7 05 42 00 00 00 	movw   $0xf000,0x42
  ae:	00 f0 
  b0:	66 89 1d 00 00 00 00 	mov    %bx,0x0
  b7:	8d 53 03             	lea    0x3(%ebx),%edx
  ba:	b0 03                	mov    $0x3,%al
  bc:	ee                   	out    %al,(%dx)
  bd:	8d 53 02             	lea    0x2(%ebx),%edx
  c0:	b0 01                	mov    $0x1,%al
  c2:	ee                   	out    %al,(%dx)
  c3:	5b                   	pop    %ebx
  c4:	5e                   	pop    %esi
  c5:	5f                   	pop    %edi
  c6:	5d                   	pop    %ebp
  c7:	c3                   	ret    

Disassembly of section .text.sercon_check_event:

00000000 <sercon_check_event>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 08             	sub    $0x8,%esp
   7:	66 8b 1d 00 00 00 00 	mov    0x0,%bx
   e:	66 85 db             	test   %bx,%bx
  11:	0f 84 fc 00 00 00    	je     113 <sercon_check_event+0x113>
  17:	8d 7b 05             	lea    0x5(%ebx),%edi
  1a:	89 fa                	mov    %edi,%edx
  1c:	ec                   	in     (%dx),%al
  1d:	fe c0                	inc    %al
  1f:	0f 84 ee 00 00 00    	je     113 <sercon_check_event+0x113>
  25:	e8 fc ff ff ff       	call   26 <sercon_check_event+0x26>
  2a:	a0 00 00 00 00       	mov    0x0,%al
  2f:	88 44 24 03          	mov    %al,0x3(%esp)
  33:	31 f6                	xor    %esi,%esi
  35:	31 ed                	xor    %ebp,%ebp
  37:	8a 44 24 03          	mov    0x3(%esp),%al
  3b:	8d 4c 05 00          	lea    0x0(%ebp,%eax,1),%ecx
  3f:	89 fa                	mov    %edi,%edx
  41:	ec                   	in     (%dx),%al
  42:	a8 01                	test   $0x1,%al
  44:	74 19                	je     5f <sercon_check_event+0x5f>
  46:	89 da                	mov    %ebx,%edx
  48:	ec                   	in     (%dx),%al
  49:	80 f9 0f             	cmp    $0xf,%cl
  4c:	77 f1                	ja     3f <sercon_check_event+0x3f>
  4e:	0f b6 c9             	movzbl %cl,%ecx
  51:	88 81 00 00 00 00    	mov    %al,0x0(%ecx)
  57:	45                   	inc    %ebp
  58:	be 01 00 00 00       	mov    $0x1,%esi
  5d:	eb d8                	jmp    37 <sercon_check_event+0x37>
  5f:	89 f0                	mov    %esi,%eax
  61:	84 c0                	test   %al,%al
  63:	74 06                	je     6b <sercon_check_event+0x6b>
  65:	88 0d 00 00 00 00    	mov    %cl,0x0
  6b:	8a 0d 00 00 00 00    	mov    0x0,%cl
  71:	84 c9                	test   %cl,%cl
  73:	0f 84 9a 00 00 00    	je     113 <sercon_check_event+0x113>
  79:	a0 00 00 00 00       	mov    0x0,%al
  7e:	88 44 24 03          	mov    %al,0x3(%esp)
  82:	80 f9 01             	cmp    $0x1,%cl
  85:	74 41                	je     c8 <sercon_check_event+0xc8>
  87:	3c 1b                	cmp    $0x1b,%al
  89:	75 4a                	jne    d5 <sercon_check_event+0xd5>
  8b:	31 db                	xor    %ebx,%ebx
  8d:	8a 14 dd 04 00 00 00 	mov    0x4(,%ebx,8),%dl
  94:	38 d1                	cmp    %dl,%cl
  96:	76 2a                	jbe    c2 <sercon_check_event+0xc2>
  98:	0f b6 c2             	movzbl %dl,%eax
  9b:	89 44 24 04          	mov    %eax,0x4(%esp)
  9f:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
  a6:	31 c0                	xor    %eax,%eax
  a8:	39 44 24 04          	cmp    %eax,0x4(%esp)
  ac:	7e 45                	jle    f3 <sercon_check_event+0xf3>
  ae:	0f be bc 06 00 00 00 	movsbl 0x0(%esi,%eax,1),%edi
  b5:	00 
  b6:	40                   	inc    %eax
  b7:	0f b6 90 00 00 00 00 	movzbl 0x0(%eax),%edx
  be:	39 d7                	cmp    %edx,%edi
  c0:	74 e6                	je     a8 <sercon_check_event+0xa8>
  c2:	43                   	inc    %ebx
  c3:	83 fb 16             	cmp    $0x16,%ebx
  c6:	75 c5                	jne    8d <sercon_check_event+0x8d>
  c8:	89 e8                	mov    %ebp,%eax
  ca:	84 c0                	test   %al,%al
  cc:	74 07                	je     d5 <sercon_check_event+0xd5>
  ce:	80 7c 24 03 1b       	cmpb   $0x1b,0x3(%esp)
  d3:	74 3e                	je     113 <sercon_check_event+0x113>
  d5:	0f b6 44 24 03       	movzbl 0x3(%esp),%eax
  da:	e8 fc ff ff ff       	call   db <sercon_check_event+0xdb>
  df:	66 85 c0             	test   %ax,%ax
  e2:	74 08                	je     ec <sercon_check_event+0xec>
  e4:	0f b7 c0             	movzwl %ax,%eax
  e7:	e8 fc ff ff ff       	call   e8 <sercon_check_event+0xe8>
  ec:	b8 01 00 00 00       	mov    $0x1,%eax
  f1:	eb 16                	jmp    109 <sercon_check_event+0x109>
  f3:	0f b7 04 dd 06 00 00 	movzwl 0x6(,%ebx,8),%eax
  fa:	00 
  fb:	e8 fc ff ff ff       	call   fc <sercon_check_event+0xfc>
 100:	0f b6 04 dd 04 00 00 	movzbl 0x4(,%ebx,8),%eax
 107:	00 
 108:	40                   	inc    %eax
 109:	e8 fc ff ff ff       	call   10a <sercon_check_event+0x10a>
 10e:	e9 58 ff ff ff       	jmp    6b <sercon_check_event+0x6b>
 113:	83 c4 08             	add    $0x8,%esp
 116:	5b                   	pop    %ebx
 117:	5e                   	pop    %esi
 118:	5f                   	pop    %edi
 119:	5d                   	pop    %ebp
 11a:	c3                   	ret    
