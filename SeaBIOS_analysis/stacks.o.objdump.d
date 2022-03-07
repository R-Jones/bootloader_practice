
./stacks.o:     file format elf32-i386


Disassembly of section .text.switch_next:

00000000 <switch_next>:
   0:	8b 50 04             	mov    0x4(%eax),%edx
   3:	8d 4a fc             	lea    -0x4(%edx),%ecx
   6:	39 c8                	cmp    %ecx,%eax
   8:	74 13                	je     1d <switch_next+0x1d>
   a:	57                   	push   %edi
   b:	56                   	push   %esi
   c:	53                   	push   %ebx
   d:	68 19 00 00 00       	push   $0x19
  12:	55                   	push   %ebp
  13:	89 20                	mov    %esp,(%eax)
  15:	8b 21                	mov    (%ecx),%esp
  17:	5d                   	pop    %ebp
  18:	c3                   	ret    
  19:	5b                   	pop    %ebx
  1a:	5e                   	pop    %esi
  1b:	5f                   	pop    %edi
  1c:	c3                   	ret    
  1d:	c3                   	ret    

Disassembly of section .text.call16:

00000000 <call16>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 c6                	mov    %eax,%esi
   6:	89 e0                	mov    %esp,%eax
   8:	3d 00 00 10 00       	cmp    $0x100000,%eax
   d:	76 0a                	jbe    19 <call16+0x19>
   f:	68 00 00 00 00       	push   $0x0
  14:	e8 fc ff ff ff       	call   15 <call16+0x15>
  19:	89 d3                	mov    %edx,%ebx
  1b:	a0 00 00 00 00       	mov    0x0,%al
  20:	8d b9 00 00 f1 ff    	lea    -0xf0000(%ecx),%edi
  26:	3c 02                	cmp    $0x2,%al
  28:	75 38                	jne    62 <call16+0x62>
  2a:	52                   	push   %edx
  2b:	56                   	push   %esi
  2c:	57                   	push   %edi
  2d:	68 1b 00 00 00       	push   $0x1b
  32:	e8 fc ff ff ff       	call   33 <call16+0x33>
  37:	0f b7 2d 04 00 00 00 	movzwl 0x4,%ebp
  3e:	c1 e5 04             	shl    $0x4,%ebp
  41:	89 da                	mov    %ebx,%edx
  43:	29 ec                	sub    %ebp,%esp
  45:	b8 b5 00 00 00       	mov    $0xb5,%eax
  4a:	b9 78 56 00 00       	mov    $0x5678,%ecx
  4f:	bb 00 00 f1 ff       	mov    $0xfff10000,%ebx
  54:	e6 b2                	out    %al,$0xb2
  56:	f3 90                	pause  
  58:	f4                   	hlt    
  59:	01 ec                	add    %ebp,%esp
  5b:	83 c4 10             	add    $0x10,%esp
  5e:	89 f0                	mov    %esi,%eax
  60:	eb 2d                	jmp    8f <call16+0x8f>
  62:	fe c8                	dec    %al
  64:	75 07                	jne    6d <call16+0x6d>
  66:	b9 00 00 00 00       	mov    $0x0,%ecx
  6b:	eb 0e                	jmp    7b <call16+0x7b>
  6d:	e8 fc ff ff ff       	call   6e <call16+0x6e>
  72:	85 c0                	test   %eax,%eax
  74:	75 f0                	jne    66 <call16+0x66>
  76:	b9 00 00 00 00       	mov    $0x0,%ecx
  7b:	0f b7 15 04 00 00 00 	movzwl 0x4,%edx
  82:	89 f0                	mov    %esi,%eax
  84:	89 d6                	mov    %edx,%esi
  86:	ba 00 00 f1 ff       	mov    $0xfff10000,%edx
  8b:	ff e1                	jmp    *%ecx
  8d:	01 f4                	add    %esi,%esp
  8f:	5b                   	pop    %ebx
  90:	5e                   	pop    %esi
  91:	5f                   	pop    %edi
  92:	5d                   	pop    %ebp
  93:	c3                   	ret    

Disassembly of section .text.32fseg.src/stacks.c.215:

00000000 <.text.32fseg.src/stacks.c.215>:
   0:	66 89 f0             	mov    %si,%ax
   3:	66 89 f9             	mov    %di,%cx
   6:	66 e8 fc ff          	callw  6 <.text.32fseg.src/stacks.c.215+0x6>
   a:	ff                   	(bad)  
   b:	ff 66 89             	jmp    *-0x77(%esi)
   e:	c6                   	(bad)  
   f:	66 b8 b5 00          	mov    $0xb5,%ax
  13:	00 00                	add    %al,(%eax)
  15:	66 b9 34 12          	mov    $0x1234,%cx
  19:	00 00                	add    %al,(%eax)
  1b:	66 bb 59 00          	mov    $0x59,%bx
  1f:	00 00                	add    %al,(%eax)
  21:	e6 b2                	out    %al,$0xb2
  23:	f3 90                	pause  
  25:	f4                   	hlt    

Disassembly of section .text.32fseg.src/stacks.c.300:

00000000 <.text.32fseg.src/stacks.c.300>:
   0:	66 89 f1             	mov    %si,%cx
   3:	66 c1 e6 04          	shl    $0x4,%si
   7:	8e d1                	mov    %ecx,%ss
   9:	66 29 f4             	sub    %si,%sp
   c:	8e d9                	mov    %ecx,%ds
   e:	66 89 da             	mov    %bx,%dx
  11:	66 89 f9             	mov    %di,%cx
  14:	66 e8 fc ff          	callw  14 <.text.32fseg.src/stacks.c.300+0x14>
  18:	ff                   	(bad)  
  19:	ff 66 ba             	jmp    *-0x46(%esi)
  1c:	8d 00                	lea    (%eax),%eax
  1e:	00 00                	add    %al,(%eax)
  20:	e9                   	.byte 0xe9
  21:	fe                   	(bad)  
  22:	ff                   	.byte 0xff

Disassembly of section .text.call16_override:

00000000 <call16_override>:
   0:	53                   	push   %ebx
   1:	89 c3                	mov    %eax,%ebx
   3:	89 e0                	mov    %esp,%eax
   5:	3d 00 70 00 00       	cmp    $0x7000,%eax
   a:	76 0a                	jbe    16 <call16_override+0x16>
   c:	68 30 00 00 00       	push   $0x30
  11:	e8 fc ff ff ff       	call   12 <call16_override+0x12>
  16:	b9 18 00 00 00       	mov    $0x18,%ecx
  1b:	31 d2                	xor    %edx,%edx
  1d:	b8 00 00 00 00       	mov    $0x0,%eax
  22:	e8 fc ff ff ff       	call   23 <call16_override+0x23>
  27:	85 db                	test   %ebx,%ebx
  29:	74 07                	je     32 <call16_override+0x32>
  2b:	c6 05 00 00 00 00 01 	movb   $0x1,0x0
  32:	c6 05 02 00 00 00 01 	movb   $0x1,0x2
  39:	5b                   	pop    %ebx
  3a:	c3                   	ret    

Disassembly of section .text.__end_thread:

00000000 <__end_thread>:
   0:	52                   	push   %edx
   1:	8b 50 04             	mov    0x4(%eax),%edx
   4:	8b 48 08             	mov    0x8(%eax),%ecx
   7:	89 11                	mov    %edx,(%ecx)
   9:	85 d2                	test   %edx,%edx
   b:	74 03                	je     10 <__end_thread+0x10>
   d:	89 4a 04             	mov    %ecx,0x4(%edx)
  10:	50                   	push   %eax
  11:	89 44 24 04          	mov    %eax,0x4(%esp)
  15:	68 54 00 00 00       	push   $0x54
  1a:	e8 fc ff ff ff       	call   1b <__end_thread+0x1b>
  1f:	8b 44 24 08          	mov    0x8(%esp),%eax
  23:	e8 fc ff ff ff       	call   24 <__end_thread+0x24>
  28:	59                   	pop    %ecx
  29:	58                   	pop    %eax
  2a:	81 3d 04 00 00 00 04 	cmpl   $0x4,0x4
  31:	00 00 00 
  34:	75 0b                	jne    41 <__end_thread+0x41>
  36:	68 67 00 00 00       	push   $0x67
  3b:	e8 fc ff ff ff       	call   3c <__end_thread+0x3c>
  40:	5a                   	pop    %edx
  41:	58                   	pop    %eax
  42:	c3                   	ret    

Disassembly of section .text.call16_helper:

00000000 <call16_helper>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	83 ec 08             	sub    $0x8,%esp
   6:	89 c6                	mov    %eax,%esi
   8:	8a 1d 00 00 00 00    	mov    0x0,%bl
   e:	c6 05 00 00 00 00 00 	movb   $0x0,0x0
  15:	66 c7 05 04 00 00 00 	movw   $0x0,0x4
  1c:	00 00 
  1e:	80 fb 02             	cmp    $0x2,%bl
  21:	74 47                	je     6a <call16_helper+0x6a>
  23:	80 3d 02 00 00 00 00 	cmpb   $0x0,0x2
  2a:	75 0b                	jne    37 <call16_helper+0x37>
  2c:	e4 92                	in     $0x92,%al
  2e:	a8 02                	test   $0x2,%al
  30:	74 05                	je     37 <call16_helper+0x37>
  32:	83 f0 02             	xor    $0x2,%eax
  35:	e6 92                	out    %al,$0x92
  37:	a1 10 00 00 00       	mov    0x10,%eax
  3c:	66 89 44 24 02       	mov    %ax,0x2(%esp)
  41:	a1 12 00 00 00       	mov    0x12,%eax
  46:	89 44 24 04          	mov    %eax,0x4(%esp)
  4a:	0f 01 54 24 02       	lgdtl  0x2(%esp)
  4f:	8b 3d 0c 00 00 00    	mov    0xc,%edi
  55:	81 e7 00 00 00 60    	and    $0x60000000,%edi
  5b:	74 0d                	je     6a <call16_helper+0x6a>
  5d:	0f 20 c0             	mov    %cr0,%eax
  60:	25 ff ff ff 9f       	and    $0x9fffffff,%eax
  65:	09 f8                	or     %edi,%eax
  67:	0f 22 c0             	mov    %eax,%cr0
  6a:	a0 01 00 00 00       	mov    0x1,%al
  6f:	84 c0                	test   %al,%al
  71:	78 04                	js     77 <call16_helper+0x77>
  73:	e6 70                	out    %al,$0x70
  75:	e4 71                	in     $0x71,%al
  77:	89 f0                	mov    %esi,%eax
  79:	ff d1                	call   *%ecx
  7b:	89 c1                	mov    %eax,%ecx
  7d:	80 fb 02             	cmp    $0x2,%bl
  80:	74 48                	je     ca <call16_helper+0xca>
  82:	0f 20 c0             	mov    %cr0,%eax
  85:	a8 01                	test   $0x1,%al
  87:	75 65                	jne    ee <call16_helper+0xee>
  89:	a3 0c 00 00 00       	mov    %eax,0xc
  8e:	c7 05 06 00 00 00 00 	movl   $0x0,0x6
  95:	00 00 00 
  98:	0f 01 44 24 02       	sgdtl  0x2(%esp)
  9d:	66 8b 44 24 02       	mov    0x2(%esp),%ax
  a2:	66 a3 10 00 00 00    	mov    %ax,0x10
  a8:	8b 44 24 04          	mov    0x4(%esp),%eax
  ac:	a3 12 00 00 00       	mov    %eax,0x12
  b1:	e4 92                	in     $0x92,%al
  b3:	88 c2                	mov    %al,%dl
  b5:	83 e2 02             	and    $0x2,%edx
  b8:	84 d2                	test   %dl,%dl
  ba:	0f 95 c2             	setne  %dl
  bd:	75 05                	jne    c4 <call16_helper+0xc4>
  bf:	83 f0 02             	xor    $0x2,%eax
  c2:	e6 92                	out    %al,$0x92
  c4:	88 15 02 00 00 00    	mov    %dl,0x2
  ca:	66 c7 05 04 00 00 00 	movw   $0x0,0x4
  d1:	00 00 
  d3:	e4 70                	in     $0x70,%al
  d5:	88 c2                	mov    %al,%dl
  d7:	84 c0                	test   %al,%al
  d9:	78 07                	js     e2 <call16_helper+0xe2>
  db:	83 c8 80             	or     $0xffffff80,%eax
  de:	e6 70                	out    %al,$0x70
  e0:	e4 71                	in     $0x71,%al
  e2:	88 15 01 00 00 00    	mov    %dl,0x1
  e8:	88 1d 00 00 00 00    	mov    %bl,0x0
  ee:	89 c8                	mov    %ecx,%eax
  f0:	83 c4 08             	add    $0x8,%esp
  f3:	5b                   	pop    %ebx
  f4:	5e                   	pop    %esi
  f5:	5f                   	pop    %edi
  f6:	c3                   	ret    

Disassembly of section .text.__call32:

00000000 <__call32>:
   0:	e8 fc ff ff ff       	call   1 <__call32+0x1>

Disassembly of section .text.on_extra_stack:

00000000 <on_extra_stack>:
   0:	31 c0                	xor    %eax,%eax
   2:	c3                   	ret    

Disassembly of section .text.__stack_hop:

00000000 <__stack_hop>:
   0:	e8 fc ff ff ff       	call   1 <__stack_hop+0x1>

Disassembly of section .text.__stack_hop_back:

00000000 <__stack_hop_back>:
   0:	e9 fc ff ff ff       	jmp    1 <__stack_hop_back+0x1>

Disassembly of section .text._farcall16:

00000000 <_farcall16>:
   0:	0f b7 d2             	movzwl %dx,%edx
   3:	b9 00 00 00 00       	mov    $0x0,%ecx
   8:	e9 fc ff ff ff       	jmp    9 <_farcall16+0x9>

Disassembly of section .text.farcall16:

00000000 <farcall16>:
   0:	53                   	push   %ebx
   1:	89 c3                	mov    %eax,%ebx
   3:	31 c0                	xor    %eax,%eax
   5:	e8 fc ff ff ff       	call   6 <farcall16+0x6>
   a:	31 d2                	xor    %edx,%edx
   c:	89 d8                	mov    %ebx,%eax
   e:	5b                   	pop    %ebx
   f:	e9 fc ff ff ff       	jmp    10 <farcall16+0x10>

Disassembly of section .text.farcall16big:

00000000 <farcall16big>:
   0:	53                   	push   %ebx
   1:	89 c3                	mov    %eax,%ebx
   3:	b8 01 00 00 00       	mov    $0x1,%eax
   8:	e8 fc ff ff ff       	call   9 <farcall16big+0x9>
   d:	31 d2                	xor    %edx,%edx
   f:	89 d8                	mov    %ebx,%eax
  11:	5b                   	pop    %ebx
  12:	e9 fc ff ff ff       	jmp    13 <farcall16big+0x13>

Disassembly of section .text.__call16_int:

00000000 <__call16_int>:
   0:	66 89 50 20          	mov    %dx,0x20(%eax)
   4:	66 c7 40 22 00 f0    	movw   $0xf000,0x22(%eax)
   a:	0f b7 15 04 00 00 00 	movzwl 0x4,%edx
  11:	89 d1                	mov    %edx,%ecx
  13:	c1 e1 04             	shl    $0x4,%ecx
  16:	29 c8                	sub    %ecx,%eax
  18:	e9 fc ff ff ff       	jmp    19 <__call16_int+0x19>

Disassembly of section .text.reset:

00000000 <reset>:
   0:	b9 00 00 00 00       	mov    $0x0,%ecx
   5:	31 d2                	xor    %edx,%edx
   7:	31 c0                	xor    %eax,%eax
   9:	e8 fc ff ff ff       	call   a <reset+0xa>
   e:	e8 fc ff ff ff       	call   f <reset+0xf>

Disassembly of section .text.getCurThread:

00000000 <getCurThread>:
   0:	89 e2                	mov    %esp,%edx
   2:	b8 00 00 00 00       	mov    $0x0,%eax
   7:	81 fa 00 00 10 00    	cmp    $0x100000,%edx
   d:	76 07                	jbe    16 <getCurThread+0x16>
   f:	89 d0                	mov    %edx,%eax
  11:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  16:	c3                   	ret    

Disassembly of section .text.thread_setup:

00000000 <thread_setup>:
   0:	c6 05 00 00 00 00 01 	movb   $0x1,0x0
   7:	b8 01 00 00 00       	mov    $0x1,%eax
   c:	e8 fc ff ff ff       	call   d <thread_setup+0xd>
  11:	ba 01 00 00 00       	mov    $0x1,%edx
  16:	31 c9                	xor    %ecx,%ecx
  18:	b8 7e 00 00 00       	mov    $0x7e,%eax
  1d:	e8 fc ff ff ff       	call   1e <thread_setup+0x1e>
  22:	a2 00 00 00 00       	mov    %al,0x0
  27:	c3                   	ret    

Disassembly of section .text.threads_during_optionroms:

00000000 <threads_during_optionroms>:
   0:	31 c0                	xor    %eax,%eax
   2:	80 3d 00 00 00 00 02 	cmpb   $0x2,0x0
   9:	75 0d                	jne    18 <threads_during_optionroms+0x18>
   b:	e8 fc ff ff ff       	call   c <threads_during_optionroms+0xc>
  10:	85 c0                	test   %eax,%eax
  12:	0f 95 c0             	setne  %al
  15:	0f b6 c0             	movzbl %al,%eax
  18:	c3                   	ret    

Disassembly of section .text.check_irqs:

00000000 <check_irqs>:
   0:	80 3d 00 00 00 00 00 	cmpb   $0x0,0x0
   7:	75 03                	jne    c <check_irqs+0xc>
   9:	f3 90                	pause  
   b:	c3                   	ret    
   c:	b9 00 00 00 00       	mov    $0x0,%ecx
  11:	31 d2                	xor    %edx,%edx
  13:	31 c0                	xor    %eax,%eax
  15:	e9 fc ff ff ff       	jmp    16 <check_irqs+0x16>

Disassembly of section .text.run_thread:

00000000 <run_thread>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 c7                	mov    %eax,%edi
   6:	89 d6                	mov    %edx,%esi
   8:	80 3d 00 00 00 00 00 	cmpb   $0x0,0x0
   f:	0f 84 87 00 00 00    	je     9c <run_thread+0x9c>
  15:	b9 00 10 00 00       	mov    $0x1000,%ecx
  1a:	ba 00 10 00 00       	mov    $0x1000,%edx
  1f:	b8 00 00 00 00       	mov    $0x0,%eax
  24:	e8 fc ff ff ff       	call   25 <run_thread+0x25>
  29:	89 c3                	mov    %eax,%ebx
  2b:	85 c0                	test   %eax,%eax
  2d:	74 6d                	je     9c <run_thread+0x9c>
  2f:	50                   	push   %eax
  30:	68 8a 00 00 00       	push   $0x8a
  35:	e8 fc ff ff ff       	call   36 <run_thread+0x36>
  3a:	8d 83 00 10 00 00    	lea    0x1000(%ebx),%eax
  40:	89 03                	mov    %eax,(%ebx)
  42:	e8 fc ff ff ff       	call   43 <run_thread+0x43>
  47:	89 c5                	mov    %eax,%ebp
  49:	8d 53 04             	lea    0x4(%ebx),%edx
  4c:	8b 40 04             	mov    0x4(%eax),%eax
  4f:	8d 4d 04             	lea    0x4(%ebp),%ecx
  52:	89 4b 08             	mov    %ecx,0x8(%ebx)
  55:	89 43 04             	mov    %eax,0x4(%ebx)
  58:	59                   	pop    %ecx
  59:	59                   	pop    %ecx
  5a:	85 c0                	test   %eax,%eax
  5c:	74 03                	je     61 <run_thread+0x61>
  5e:	89 50 04             	mov    %edx,0x4(%eax)
  61:	89 55 04             	mov    %edx,0x4(%ebp)
  64:	89 f0                	mov    %esi,%eax
  66:	89 f9                	mov    %edi,%ecx
  68:	89 ea                	mov    %ebp,%edx
  6a:	68 8b 00 00 00       	push   $0x8b
  6f:	55                   	push   %ebp
  70:	89 22                	mov    %esp,(%edx)
  72:	8b 23                	mov    (%ebx),%esp
  74:	ff d1                	call   *%ecx
  76:	89 d8                	mov    %ebx,%eax
  78:	8b 5b 04             	mov    0x4(%ebx),%ebx
  7b:	8b 25 00 00 00 00    	mov    0x0,%esp
  81:	e8 fc ff ff ff       	call   82 <run_thread+0x82>
  86:	8b 63 fc             	mov    -0x4(%ebx),%esp
  89:	5d                   	pop    %ebp
  8a:	c3                   	ret    
  8b:	81 fd 00 00 00 00    	cmp    $0x0,%ebp
  91:	75 13                	jne    a6 <run_thread+0xa6>
  93:	5b                   	pop    %ebx
  94:	5e                   	pop    %esi
  95:	5f                   	pop    %edi
  96:	5d                   	pop    %ebp
  97:	e9 fc ff ff ff       	jmp    98 <run_thread+0x98>
  9c:	89 f0                	mov    %esi,%eax
  9e:	89 f9                	mov    %edi,%ecx
  a0:	5b                   	pop    %ebx
  a1:	5e                   	pop    %esi
  a2:	5f                   	pop    %edi
  a3:	5d                   	pop    %ebp
  a4:	ff e1                	jmp    *%ecx
  a6:	5b                   	pop    %ebx
  a7:	5e                   	pop    %esi
  a8:	5f                   	pop    %edi
  a9:	5d                   	pop    %ebp
  aa:	c3                   	ret    

Disassembly of section .text.yield:

00000000 <yield>:
   0:	53                   	push   %ebx
   1:	e8 fc ff ff ff       	call   2 <yield+0x2>
   6:	89 c3                	mov    %eax,%ebx
   8:	e8 fc ff ff ff       	call   9 <yield+0x9>
   d:	81 fb 00 00 00 00    	cmp    $0x0,%ebx
  13:	75 06                	jne    1b <yield+0x1b>
  15:	5b                   	pop    %ebx
  16:	e9 fc ff ff ff       	jmp    17 <yield+0x17>
  1b:	5b                   	pop    %ebx
  1c:	c3                   	ret    

Disassembly of section .text.wait_irq:

00000000 <wait_irq>:
   0:	b9 00 00 00 00       	mov    $0x0,%ecx
   5:	31 d2                	xor    %edx,%edx
   7:	31 c0                	xor    %eax,%eax
   9:	e9 fc ff ff ff       	jmp    a <wait_irq+0xa>

Disassembly of section .text.yield_toirq:

00000000 <yield_toirq>:
   0:	81 3d 04 00 00 00 04 	cmpl   $0x4,0x4
   7:	00 00 00 
   a:	75 09                	jne    15 <yield_toirq+0x15>
   c:	80 3d 00 00 00 00 00 	cmpb   $0x0,0x0
  13:	75 05                	jne    1a <yield_toirq+0x1a>
  15:	e9 fc ff ff ff       	jmp    16 <yield_toirq+0x16>
  1a:	e9 fc ff ff ff       	jmp    1b <yield_toirq+0x1b>

Disassembly of section .text.wait_threads:

00000000 <wait_threads>:
   0:	81 3d 04 00 00 00 04 	cmpl   $0x4,0x4
   7:	00 00 00 
   a:	74 07                	je     13 <wait_threads+0x13>
   c:	e8 fc ff ff ff       	call   d <wait_threads+0xd>
  11:	eb ed                	jmp    0 <wait_threads>
  13:	c3                   	ret    

Disassembly of section .text.mutex_lock:

00000000 <mutex_lock>:
   0:	53                   	push   %ebx
   1:	89 c3                	mov    %eax,%ebx
   3:	83 3b 00             	cmpl   $0x0,(%ebx)
   6:	74 07                	je     f <mutex_lock+0xf>
   8:	e8 fc ff ff ff       	call   9 <mutex_lock+0x9>
   d:	eb f4                	jmp    3 <mutex_lock+0x3>
   f:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
  15:	5b                   	pop    %ebx
  16:	c3                   	ret    

Disassembly of section .text.mutex_unlock:

00000000 <mutex_unlock>:
   0:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   6:	c3                   	ret    

Disassembly of section .text.start_preempt:

00000000 <start_preempt>:
   0:	e8 fc ff ff ff       	call   1 <start_preempt+0x1>
   5:	85 c0                	test   %eax,%eax
   7:	74 19                	je     22 <start_preempt+0x22>
   9:	c7 05 00 00 00 00 01 	movl   $0x1,0x0
  10:	00 00 00 
  13:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
  1a:	00 00 00 
  1d:	e9 fc ff ff ff       	jmp    1e <start_preempt+0x1e>
  22:	c3                   	ret    

Disassembly of section .text.finish_preempt:

00000000 <finish_preempt>:
   0:	e8 fc ff ff ff       	call   1 <finish_preempt+0x1>
   5:	85 c0                	test   %eax,%eax
   7:	74 21                	je     2a <finish_preempt+0x2a>
   9:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
  10:	00 00 00 
  13:	e8 fc ff ff ff       	call   14 <finish_preempt+0x14>
  18:	ff 35 00 00 00 00    	push   0x0
  1e:	68 9f 00 00 00       	push   $0x9f
  23:	e8 fc ff ff ff       	call   24 <finish_preempt+0x24>
  28:	58                   	pop    %eax
  29:	5a                   	pop    %edx
  2a:	e9 fc ff ff ff       	jmp    2b <finish_preempt+0x2b>

Disassembly of section .text.wait_preempt:

00000000 <wait_preempt>:
   0:	a1 00 00 00 00       	mov    0x0,%eax
   5:	85 c0                	test   %eax,%eax
   7:	74 1f                	je     28 <wait_preempt+0x28>
   9:	89 e2                	mov    %esp,%edx
   b:	31 c0                	xor    %eax,%eax
   d:	81 fa ff ff 0f 00    	cmp    $0xfffff,%edx
  13:	76 13                	jbe    28 <wait_preempt+0x28>
  15:	e8 fc ff ff ff       	call   16 <wait_preempt+0x16>
  1a:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
  21:	75 f2                	jne    15 <wait_preempt+0x15>
  23:	b8 01 00 00 00       	mov    $0x1,%eax
  28:	c3                   	ret    

Disassembly of section .text.init.src/stacks.c.737:

00000000 <yield_preempt>:
   0:	ff 05 00 00 00 00    	incl   0x0
   6:	b8 00 00 00 00       	mov    $0x0,%eax
   b:	e9 fc ff ff ff       	jmp    c <yield_preempt+0xc>

Disassembly of section .text.check_preempt:

00000000 <check_preempt>:
   0:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
   7:	74 11                	je     1a <check_preempt+0x1a>
   9:	81 3d 04 00 00 00 04 	cmpl   $0x4,0x4
  10:	00 00 00 
  13:	74 05                	je     1a <check_preempt+0x1a>
  15:	e8 fc ff ff ff       	call   16 <check_preempt+0x16>
  1a:	c3                   	ret    

Disassembly of section .text.runtime.src/stacks.c.762:

00000000 <call32_params_helper>:
   0:	53                   	push   %ebx
   1:	89 c3                	mov    %eax,%ebx
   3:	8b 48 0c             	mov    0xc(%eax),%ecx
   6:	8b 50 08             	mov    0x8(%eax),%edx
   9:	8b 40 04             	mov    0x4(%eax),%eax
   c:	ff 13                	call   *(%ebx)
   e:	5b                   	pop    %ebx
   f:	c3                   	ret    

Disassembly of section .text.__call32_params:

00000000 <__call32_params>:
   0:	e8 fc ff ff ff       	call   1 <__call32_params+0x1>
