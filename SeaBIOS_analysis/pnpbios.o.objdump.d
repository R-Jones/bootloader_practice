
./pnpbios.o:     file format elf32-i386


Disassembly of section .text.handle_pnp:

00000000 <handle_pnp>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 c3                	mov    %eax,%ebx
   4:	0f b7 00             	movzwl (%eax),%eax
   7:	89 c6                	mov    %eax,%esi
   9:	50                   	push   %eax
   a:	68 00 00 00 00       	push   $0x0
   f:	e8 fc ff ff ff       	call   10 <handle_pnp+0x10>
  14:	58                   	pop    %eax
  15:	5a                   	pop    %edx
  16:	b8 82 00 00 00       	mov    $0x82,%eax
  1b:	66 83 fe 60          	cmp    $0x60,%si
  1f:	75 13                	jne    34 <handle_pnp+0x34>
  21:	0f b7 43 04          	movzwl 0x4(%ebx),%eax
  25:	c1 e0 04             	shl    $0x4,%eax
  28:	0f b7 53 02          	movzwl 0x2(%ebx),%edx
  2c:	66 c7 04 10 01 01    	movw   $0x101,(%eax,%edx,1)
  32:	31 c0                	xor    %eax,%eax
  34:	5b                   	pop    %ebx
  35:	5e                   	pop    %esi
  36:	c3                   	ret    

Disassembly of section .text.get_pnp_offset:

00000000 <get_pnp_offset>:
   0:	b8 00 00 00 00       	mov    $0x0,%eax
   5:	c3                   	ret    

Disassembly of section .text.pnp_init:

00000000 <pnp_init>:
   0:	68 12 00 00 00       	push   $0x12
   5:	e8 fc ff ff ff       	call   6 <pnp_init+0x6>
   a:	b8 00 00 00 00       	mov    $0x0,%eax
   f:	66 a3 0d 00 00 00    	mov    %ax,0xd
  15:	b8 00 00 00 00       	mov    $0x0,%eax
  1a:	66 a3 11 00 00 00    	mov    %ax,0x11
  20:	ba 21 00 00 00       	mov    $0x21,%edx
  25:	b8 00 00 00 00       	mov    $0x0,%eax
  2a:	e8 fc ff ff ff       	call   2b <pnp_init+0x2b>
  2f:	28 05 08 00 00 00    	sub    %al,0x8
  35:	58                   	pop    %eax
  36:	c3                   	ret    
