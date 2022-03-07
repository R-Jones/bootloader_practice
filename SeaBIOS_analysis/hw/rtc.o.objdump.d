
./rtc.o:     file format elf32-i386


Disassembly of section .text.rtc_read:

00000000 <rtc_read>:
   0:	83 c8 80             	or     $0xffffff80,%eax
   3:	e6 70                	out    %al,$0x70
   5:	e4 71                	in     $0x71,%al
   7:	c3                   	ret    

Disassembly of section .text.rtc_write:

00000000 <rtc_write>:
   0:	83 c8 80             	or     $0xffffff80,%eax
   3:	e6 70                	out    %al,$0x70
   5:	88 d0                	mov    %dl,%al
   7:	e6 71                	out    %al,$0x71
   9:	c3                   	ret    

Disassembly of section .text.rtc_mask:

00000000 <rtc_mask>:
   0:	83 c8 80             	or     $0xffffff80,%eax
   3:	e6 70                	out    %al,$0x70
   5:	e4 71                	in     $0x71,%al
   7:	f7 d2                	not    %edx
   9:	21 c2                	and    %eax,%edx
   b:	88 d0                	mov    %dl,%al
   d:	09 c8                	or     %ecx,%eax
   f:	e6 71                	out    %al,$0x71
  11:	c3                   	ret    

Disassembly of section .text.rtc_updating:

00000000 <rtc_updating>:
   0:	b0 8a                	mov    $0x8a,%al
   2:	e6 70                	out    %al,$0x70
   4:	e4 71                	in     $0x71,%al
   6:	84 c0                	test   %al,%al
   8:	79 32                	jns    3c <rtc_updating+0x3c>
   a:	53                   	push   %ebx
   b:	b8 0f 00 00 00       	mov    $0xf,%eax
  10:	e8 fc ff ff ff       	call   11 <rtc_updating+0x11>
  15:	89 c3                	mov    %eax,%ebx
  17:	b0 8a                	mov    $0x8a,%al
  19:	e6 70                	out    %al,$0x70
  1b:	e4 71                	in     $0x71,%al
  1d:	84 c0                	test   %al,%al
  1f:	79 12                	jns    33 <rtc_updating+0x33>
  21:	89 d8                	mov    %ebx,%eax
  23:	e8 fc ff ff ff       	call   24 <rtc_updating+0x24>
  28:	85 c0                	test   %eax,%eax
  2a:	75 0b                	jne    37 <rtc_updating+0x37>
  2c:	e8 fc ff ff ff       	call   2d <rtc_updating+0x2d>
  31:	eb e4                	jmp    17 <rtc_updating+0x17>
  33:	31 c0                	xor    %eax,%eax
  35:	eb 03                	jmp    3a <rtc_updating+0x3a>
  37:	83 c8 ff             	or     $0xffffffff,%eax
  3a:	5b                   	pop    %ebx
  3b:	c3                   	ret    
  3c:	31 c0                	xor    %eax,%eax
  3e:	c3                   	ret    

Disassembly of section .text.rtc_setup:

00000000 <rtc_setup>:
   0:	b0 8a                	mov    $0x8a,%al
   2:	e6 70                	out    %al,$0x70
   4:	b0 26                	mov    $0x26,%al
   6:	e6 71                	out    %al,$0x71
   8:	b9 02 00 00 00       	mov    $0x2,%ecx
   d:	ba fe 00 00 00       	mov    $0xfe,%edx
  12:	b8 0b 00 00 00       	mov    $0xb,%eax
  17:	e8 fc ff ff ff       	call   18 <rtc_setup+0x18>
  1c:	b0 8c                	mov    $0x8c,%al
  1e:	e6 70                	out    %al,$0x70
  20:	e4 71                	in     $0x71,%al
  22:	b0 8d                	mov    $0x8d,%al
  24:	e6 70                	out    %al,$0x70
  26:	e4 71                	in     $0x71,%al
  28:	c3                   	ret    

Disassembly of section .text.rtc_use:

00000000 <rtc_use>:
   0:	a1 00 00 00 00       	mov    0x0,%eax
   5:	8d 50 01             	lea    0x1(%eax),%edx
   8:	89 15 00 00 00 00    	mov    %edx,0x0
   e:	85 c0                	test   %eax,%eax
  10:	75 11                	jne    23 <rtc_use+0x23>
  12:	b9 40 00 00 00       	mov    $0x40,%ecx
  17:	31 d2                	xor    %edx,%edx
  19:	b8 0b 00 00 00       	mov    $0xb,%eax
  1e:	e9 fc ff ff ff       	jmp    1f <rtc_use+0x1f>
  23:	c3                   	ret    

Disassembly of section .text.rtc_release:

00000000 <rtc_release>:
   0:	a1 00 00 00 00       	mov    0x0,%eax
   5:	8d 50 ff             	lea    -0x1(%eax),%edx
   8:	89 15 00 00 00 00    	mov    %edx,0x0
   e:	48                   	dec    %eax
   f:	75 11                	jne    22 <rtc_release+0x22>
  11:	31 c9                	xor    %ecx,%ecx
  13:	ba 40 00 00 00       	mov    $0x40,%edx
  18:	b8 0b 00 00 00       	mov    $0xb,%eax
  1d:	e9 fc ff ff ff       	jmp    1e <rtc_release+0x1e>
  22:	c3                   	ret    
