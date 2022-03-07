
./pic.o:     file format elf32-i386


Disassembly of section .text.pic_irqmask_read:

00000000 <pic_irqmask_read>:
   0:	e4 21                	in     $0x21,%al
   2:	0f b6 d0             	movzbl %al,%edx
   5:	e4 a1                	in     $0xa1,%al
   7:	c1 e0 08             	shl    $0x8,%eax
   a:	09 d0                	or     %edx,%eax
   c:	c3                   	ret    

Disassembly of section .text.pic_irqmask_write:

00000000 <pic_irqmask_write>:
   0:	e6 21                	out    %al,$0x21
   2:	66 c1 e8 08          	shr    $0x8,%ax
   6:	e6 a1                	out    %al,$0xa1
   8:	c3                   	ret    

Disassembly of section .text.pic_irqmask_mask:

00000000 <pic_irqmask_mask>:
   0:	53                   	push   %ebx
   1:	89 c1                	mov    %eax,%ecx
   3:	e4 21                	in     $0x21,%al
   5:	88 cb                	mov    %cl,%bl
   7:	f7 d3                	not    %ebx
   9:	21 d8                	and    %ebx,%eax
   b:	09 d0                	or     %edx,%eax
   d:	e6 21                	out    %al,$0x21
   f:	e4 a1                	in     $0xa1,%al
  11:	66 c1 e9 08          	shr    $0x8,%cx
  15:	f7 d1                	not    %ecx
  17:	21 c1                	and    %eax,%ecx
  19:	66 c1 ea 08          	shr    $0x8,%dx
  1d:	88 c8                	mov    %cl,%al
  1f:	09 d0                	or     %edx,%eax
  21:	e6 a1                	out    %al,$0xa1
  23:	5b                   	pop    %ebx
  24:	c3                   	ret    

Disassembly of section .text.pic_reset:

00000000 <pic_reset>:
   0:	88 c1                	mov    %al,%cl
   2:	b0 11                	mov    $0x11,%al
   4:	e6 20                	out    %al,$0x20
   6:	e6 a0                	out    %al,$0xa0
   8:	88 c8                	mov    %cl,%al
   a:	e6 21                	out    %al,$0x21
   c:	88 d0                	mov    %dl,%al
   e:	e6 a1                	out    %al,$0xa1
  10:	b0 04                	mov    $0x4,%al
  12:	e6 21                	out    %al,$0x21
  14:	b0 02                	mov    $0x2,%al
  16:	e6 a1                	out    %al,$0xa1
  18:	b0 01                	mov    $0x1,%al
  1a:	e6 21                	out    %al,$0x21
  1c:	e6 a1                	out    %al,$0xa1
  1e:	b0 fb                	mov    $0xfb,%al
  20:	e6 21                	out    %al,$0x21
  22:	b0 ff                	mov    $0xff,%al
  24:	e6 a1                	out    %al,$0xa1
  26:	c3                   	ret    

Disassembly of section .text.pic_setup:

00000000 <pic_setup>:
   0:	68 00 00 00 00       	push   $0x0
   5:	e8 fc ff ff ff       	call   6 <pic_setup+0x6>
   a:	58                   	pop    %eax
   b:	ba 70 00 00 00       	mov    $0x70,%edx
  10:	b8 08 00 00 00       	mov    $0x8,%eax
  15:	e9 fc ff ff ff       	jmp    16 <pic_setup+0x16>

Disassembly of section .text.enable_hwirq:

00000000 <enable_hwirq>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 c3                	mov    %eax,%ebx
   4:	89 d6                	mov    %edx,%esi
   6:	b8 01 00 00 00       	mov    $0x1,%eax
   b:	88 d9                	mov    %bl,%cl
   d:	d3 e0                	shl    %cl,%eax
   f:	0f b7 c0             	movzwl %ax,%eax
  12:	31 d2                	xor    %edx,%edx
  14:	e8 fc ff ff ff       	call   15 <enable_hwirq+0x15>
  19:	8d 43 08             	lea    0x8(%ebx),%eax
  1c:	83 fb 07             	cmp    $0x7,%ebx
  1f:	7e 03                	jle    24 <enable_hwirq+0x24>
  21:	8d 43 68             	lea    0x68(%ebx),%eax
  24:	89 34 85 00 00 00 00 	mov    %esi,0x0(,%eax,4)
  2b:	5b                   	pop    %ebx
  2c:	5e                   	pop    %esi
  2d:	c3                   	ret    

Disassembly of section .text.handle_hwpic1:

00000000 <handle_hwpic1>:
   0:	b0 0b                	mov    $0xb,%al
   2:	e6 20                	out    %al,$0x20
   4:	e4 20                	in     $0x20,%al
   6:	0f b6 c0             	movzbl %al,%eax
   9:	50                   	push   %eax
   a:	68 0a 00 00 00       	push   $0xa
   f:	e8 fc ff ff ff       	call   10 <handle_hwpic1+0x10>
  14:	b0 20                	mov    $0x20,%al
  16:	e6 20                	out    %al,$0x20
  18:	58                   	pop    %eax
  19:	5a                   	pop    %edx
  1a:	c3                   	ret    

Disassembly of section .text.handle_hwpic2:

00000000 <handle_hwpic2>:
   0:	b0 0b                	mov    $0xb,%al
   2:	e6 a0                	out    %al,$0xa0
   4:	e4 a0                	in     $0xa0,%al
   6:	0f b6 c0             	movzbl %al,%eax
   9:	50                   	push   %eax
   a:	68 20 00 00 00       	push   $0x20
   f:	e8 fc ff ff ff       	call   10 <handle_hwpic2+0x10>
  14:	b0 20                	mov    $0x20,%al
  16:	e6 a0                	out    %al,$0xa0
  18:	e6 20                	out    %al,$0x20
  1a:	58                   	pop    %eax
  1b:	5a                   	pop    %edx
  1c:	c3                   	ret    
