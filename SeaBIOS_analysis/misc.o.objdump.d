
./misc.o:     file format elf32-i386


Disassembly of section .text.in_post:

00000000 <in_post>:
   0:	31 c0                	xor    %eax,%eax
   2:	83 3d 00 00 00 00 01 	cmpl   $0x1,0x0
   9:	0f 94 c0             	sete   %al
   c:	c3                   	ret    

Disassembly of section .text.handle_12:

00000000 <handle_12>:
   0:	53                   	push   %ebx
   1:	89 c3                	mov    %eax,%ebx
   3:	ba 00 00 00 00       	mov    $0x0,%edx
   8:	e8 fc ff ff ff       	call   9 <handle_12+0x9>
   d:	66 a1 13 04 00 00    	mov    0x413,%ax
  13:	66 89 43 1c          	mov    %ax,0x1c(%ebx)
  17:	5b                   	pop    %ebx
  18:	c3                   	ret    

Disassembly of section .text.handle_11:

00000000 <handle_11>:
   0:	53                   	push   %ebx
   1:	89 c3                	mov    %eax,%ebx
   3:	ba 00 00 00 00       	mov    $0x0,%edx
   8:	e8 fc ff ff ff       	call   9 <handle_11+0x9>
   d:	a1 10 04 00 00       	mov    0x410,%eax
  12:	66 89 43 1c          	mov    %ax,0x1c(%ebx)
  16:	5b                   	pop    %ebx
  17:	c3                   	ret    

Disassembly of section .text.handle_05:

00000000 <handle_05>:
   0:	ba 00 00 00 00       	mov    $0x0,%edx
   5:	e9 fc ff ff ff       	jmp    6 <handle_05+0x6>

Disassembly of section .text.handle_02:

00000000 <handle_02>:
   0:	b8 00 00 00 00       	mov    $0x0,%eax
   5:	e9 fc ff ff ff       	jmp    6 <handle_02+0x6>

Disassembly of section .text.mathcp_setup:

00000000 <mathcp_setup>:
   0:	68 00 00 00 00       	push   $0x0
   5:	e8 fc ff ff ff       	call   6 <mathcp_setup+0x6>
   a:	66 83 0d 10 04 00 00 	orw    $0x2,0x410
  11:	02 
  12:	ba 00 00 00 00       	mov    $0x0,%edx
  17:	0f b7 d2             	movzwl %dx,%edx
  1a:	81 ca 00 00 00 f0    	or     $0xf0000000,%edx
  20:	58                   	pop    %eax
  21:	b8 0d 00 00 00       	mov    $0xd,%eax
  26:	e9 fc ff ff ff       	jmp    27 <mathcp_setup+0x27>

Disassembly of section .text.handle_75:

00000000 <handle_75>:
   0:	83 ec 28             	sub    $0x28,%esp
   3:	b8 00 00 00 00       	mov    $0x0,%eax
   8:	e8 fc ff ff ff       	call   9 <handle_75+0x9>
   d:	31 c0                	xor    %eax,%eax
   f:	e6 f0                	out    %al,$0xf0
  11:	b0 20                	mov    $0x20,%al
  13:	e6 a0                	out    %al,$0xa0
  15:	e6 20                	out    %al,$0x20
  17:	b9 26 00 00 00       	mov    $0x26,%ecx
  1c:	31 d2                	xor    %edx,%edx
  1e:	8d 44 24 02          	lea    0x2(%esp),%eax
  22:	e8 fc ff ff ff       	call   23 <handle_75+0x23>
  27:	66 c7 44 24 26 00 02 	movw   $0x200,0x26(%esp)
  2e:	ba 00 00 00 00       	mov    $0x0,%edx
  33:	0f b7 d2             	movzwl %dx,%edx
  36:	8d 44 24 02          	lea    0x2(%esp),%eax
  3a:	e8 fc ff ff ff       	call   3b <handle_75+0x3b>
  3f:	83 c4 28             	add    $0x28,%esp
  42:	c3                   	ret    
