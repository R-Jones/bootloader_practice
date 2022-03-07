
./dma.o:     file format elf32-i386


Disassembly of section .text.dma_floppy:

00000000 <dma_floppy>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	53                   	push   %ebx
   5:	89 c6                	mov    %eax,%esi
   7:	8d 5a ff             	lea    -0x1(%edx),%ebx
   a:	c1 e8 10             	shr    $0x10,%eax
   d:	89 04 24             	mov    %eax,(%esp)
  10:	0f b7 eb             	movzwl %bx,%ebp
  13:	8d 44 35 00          	lea    0x0(%ebp,%esi,1),%eax
  17:	c1 e8 10             	shr    $0x10,%eax
  1a:	39 04 24             	cmp    %eax,(%esp)
  1d:	0f 85 c4 00 00 00    	jne    e7 <dma_floppy+0xe7>
  23:	83 f9 01             	cmp    $0x1,%ecx
  26:	19 ff                	sbb    %edi,%edi
  28:	83 e7 fc             	and    $0xfffffffc,%edi
  2b:	83 c7 4a             	add    $0x4a,%edi
  2e:	68 00 00 00 00       	push   $0x0
  33:	e8 fc ff ff ff       	call   34 <dma_floppy+0x34>
  38:	6a 0a                	push   $0xa
  3a:	68 2b 00 00 00       	push   $0x2b
  3f:	e8 fc ff ff ff       	call   40 <dma_floppy+0x40>
  44:	68 00 00 00 00       	push   $0x0
  49:	e8 fc ff ff ff       	call   4a <dma_floppy+0x4a>
  4e:	b0 06                	mov    $0x6,%al
  50:	e6 0a                	out    %al,$0xa
  52:	6a 0a                	push   $0xa
  54:	68 39 00 00 00       	push   $0x39
  59:	e8 fc ff ff ff       	call   5a <dma_floppy+0x5a>
  5e:	31 c0                	xor    %eax,%eax
  60:	e6 0c                	out    %al,$0xc
  62:	6a 0c                	push   $0xc
  64:	68 4c 00 00 00       	push   $0x4c
  69:	e8 fc ff ff ff       	call   6a <dma_floppy+0x6a>
  6e:	89 f0                	mov    %esi,%eax
  70:	e6 04                	out    %al,$0x4
  72:	83 c4 20             	add    $0x20,%esp
  75:	6a 04                	push   $0x4
  77:	56                   	push   %esi
  78:	68 5f 00 00 00       	push   $0x5f
  7d:	e8 fc ff ff ff       	call   7e <dma_floppy+0x7e>
  82:	c1 ee 08             	shr    $0x8,%esi
  85:	89 f0                	mov    %esi,%eax
  87:	e6 04                	out    %al,$0x4
  89:	6a 04                	push   $0x4
  8b:	56                   	push   %esi
  8c:	68 5f 00 00 00       	push   $0x5f
  91:	e8 fc ff ff ff       	call   92 <dma_floppy+0x92>
  96:	31 c0                	xor    %eax,%eax
  98:	e6 0c                	out    %al,$0xc
  9a:	6a 0c                	push   $0xc
  9c:	68 4c 00 00 00       	push   $0x4c
  a1:	e8 fc ff ff ff       	call   a2 <dma_floppy+0xa2>
  a6:	88 d8                	mov    %bl,%al
  a8:	e6 05                	out    %al,$0x5
  aa:	83 c4 20             	add    $0x20,%esp
  ad:	6a 05                	push   $0x5
  af:	55                   	push   %ebp
  b0:	68 5f 00 00 00       	push   $0x5f
  b5:	e8 fc ff ff ff       	call   b6 <dma_floppy+0xb6>
  ba:	89 d8                	mov    %ebx,%eax
  bc:	66 c1 e8 08          	shr    $0x8,%ax
  c0:	e6 05                	out    %al,$0x5
  c2:	6a 05                	push   $0x5
  c4:	0f b7 c0             	movzwl %ax,%eax
  c7:	50                   	push   %eax
  c8:	68 5f 00 00 00       	push   $0x5f
  cd:	e8 fc ff ff ff       	call   ce <dma_floppy+0xce>
  d2:	89 f8                	mov    %edi,%eax
  d4:	e6 0b                	out    %al,$0xb
  d6:	8a 44 24 18          	mov    0x18(%esp),%al
  da:	e6 81                	out    %al,$0x81
  dc:	b0 02                	mov    $0x2,%al
  de:	e6 0a                	out    %al,$0xa
  e0:	83 c4 18             	add    $0x18,%esp
  e3:	31 c0                	xor    %eax,%eax
  e5:	eb 03                	jmp    ea <dma_floppy+0xea>
  e7:	83 c8 ff             	or     $0xffffffff,%eax
  ea:	5a                   	pop    %edx
  eb:	5b                   	pop    %ebx
  ec:	5e                   	pop    %esi
  ed:	5f                   	pop    %edi
  ee:	5d                   	pop    %ebp
  ef:	c3                   	ret    

Disassembly of section .text.dma_setup:

00000000 <dma_setup>:
   0:	31 d2                	xor    %edx,%edx
   2:	88 d0                	mov    %dl,%al
   4:	e6 0d                	out    %al,$0xd
   6:	e6 da                	out    %al,$0xda
   8:	b0 c0                	mov    $0xc0,%al
   a:	e6 d6                	out    %al,$0xd6
   c:	88 d0                	mov    %dl,%al
   e:	e6 d4                	out    %al,$0xd4
  10:	c3                   	ret    
