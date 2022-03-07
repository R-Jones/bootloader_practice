
./xen.o:     file format elf32-i386


Disassembly of section .text.xen_preinit:

00000000 <xen_preinit>:
   0:	53                   	push   %ebx
   1:	83 ec 20             	sub    $0x20,%esp
   4:	bb 00 00 00 40       	mov    $0x40000000,%ebx
   9:	8d 44 24 0c          	lea    0xc(%esp),%eax
   d:	50                   	push   %eax
   e:	8d 44 24 0c          	lea    0xc(%esp),%eax
  12:	50                   	push   %eax
  13:	8d 4c 24 0c          	lea    0xc(%esp),%ecx
  17:	8d 54 24 08          	lea    0x8(%esp),%edx
  1b:	89 d8                	mov    %ebx,%eax
  1d:	e8 fc ff ff ff       	call   1e <xen_preinit+0x1e>
  22:	8b 44 24 0c          	mov    0xc(%esp),%eax
  26:	89 44 24 1b          	mov    %eax,0x1b(%esp)
  2a:	8b 44 24 10          	mov    0x10(%esp),%eax
  2e:	89 44 24 1f          	mov    %eax,0x1f(%esp)
  32:	8b 44 24 14          	mov    0x14(%esp),%eax
  36:	89 44 24 23          	mov    %eax,0x23(%esp)
  3a:	c6 44 24 27 00       	movb   $0x0,0x27(%esp)
  3f:	53                   	push   %ebx
  40:	8d 44 24 1f          	lea    0x1f(%esp),%eax
  44:	50                   	push   %eax
  45:	68 00 00 00 00       	push   $0x0
  4a:	e8 fc ff ff ff       	call   4b <xen_preinit+0x4b>
  4f:	ba 27 00 00 00       	mov    $0x27,%edx
  54:	8d 44 24 27          	lea    0x27(%esp),%eax
  58:	e8 fc ff ff ff       	call   59 <xen_preinit+0x59>
  5d:	83 c4 14             	add    $0x14,%esp
  60:	85 c0                	test   %eax,%eax
  62:	75 41                	jne    a5 <xen_preinit+0xa5>
  64:	e8 fc ff ff ff       	call   65 <xen_preinit+0x65>
  69:	66 c7 05 00 00 00 00 	movw   $0xe9,0x0
  70:	e9 00 
  72:	e8 fc ff ff ff       	call   73 <xen_preinit+0x73>
  77:	53                   	push   %ebx
  78:	68 34 00 00 00       	push   $0x34
  7d:	e8 fc ff ff ff       	call   7e <xen_preinit+0x7e>
  82:	8b 44 24 08          	mov    0x8(%esp),%eax
  86:	89 c2                	mov    %eax,%edx
  88:	29 da                	sub    %ebx,%edx
  8a:	59                   	pop    %ecx
  8b:	59                   	pop    %ecx
  8c:	83 fa 01             	cmp    $0x1,%edx
  8f:	77 0c                	ja     9d <xen_preinit+0x9d>
  91:	53                   	push   %ebx
  92:	50                   	push   %eax
  93:	68 5b 00 00 00       	push   $0x5b
  98:	e8 fc ff ff ff       	call   99 <xen_preinit+0x99>
  9d:	89 1d 00 00 00 00    	mov    %ebx,0x0
  a3:	eb 28                	jmp    cd <xen_preinit+0xcd>
  a5:	81 c3 00 01 00 00    	add    $0x100,%ebx
  ab:	81 fb 00 00 01 40    	cmp    $0x40010000,%ebx
  b1:	0f 85 52 ff ff ff    	jne    9 <xen_preinit+0x9>
  b7:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
  be:	75 0d                	jne    cd <xen_preinit+0xcd>
  c0:	68 8d 00 00 00       	push   $0x8d
  c5:	e8 fc ff ff ff       	call   c6 <xen_preinit+0xc6>
  ca:	58                   	pop    %eax
  cb:	eb 0a                	jmp    d7 <xen_preinit+0xd7>
  cd:	c7 05 00 00 00 00 03 	movl   $0x3,0x0
  d4:	00 00 00 
  d7:	83 c4 20             	add    $0x20,%esp
  da:	5b                   	pop    %ebx
  db:	c3                   	ret    

Disassembly of section .text.xen_hypercall_setup:

00000000 <xen_hypercall_setup>:
   0:	f6 05 00 00 00 00 02 	testb  $0x2,0x0
   7:	0f 84 d1 00 00 00    	je     de <xen_hypercall_setup+0xde>
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	83 ec 20             	sub    $0x20,%esp
  13:	a1 00 00 00 00       	mov    0x0,%eax
  18:	83 c0 02             	add    $0x2,%eax
  1b:	8d 74 24 0c          	lea    0xc(%esp),%esi
  1f:	56                   	push   %esi
  20:	8d 54 24 0c          	lea    0xc(%esp),%edx
  24:	52                   	push   %edx
  25:	8d 4c 24 0c          	lea    0xc(%esp),%ecx
  29:	8d 54 24 08          	lea    0x8(%esp),%edx
  2d:	e8 fc ff ff ff       	call   2e <xen_hypercall_setup+0x2e>
  32:	8b 54 24 08          	mov    0x8(%esp),%edx
  36:	c1 e2 0c             	shl    $0xc,%edx
  39:	b9 00 10 00 00       	mov    $0x1000,%ecx
  3e:	b8 00 00 00 00       	mov    $0x0,%eax
  43:	e8 fc ff ff ff       	call   44 <xen_hypercall_setup+0x44>
  48:	a3 00 00 00 00       	mov    %eax,0x0
  4d:	59                   	pop    %ecx
  4e:	5b                   	pop    %ebx
  4f:	85 c0                	test   %eax,%eax
  51:	75 0a                	jne    5d <xen_hypercall_setup+0x5d>
  53:	68 a7 00 00 00       	push   $0xa7
  58:	e8 fc ff ff ff       	call   59 <xen_hypercall_setup+0x59>
  5d:	50                   	push   %eax
  5e:	68 ce 00 00 00       	push   $0xce
  63:	e8 fc ff ff ff       	call   64 <xen_hypercall_setup+0x64>
  68:	8b 1d 00 00 00 00    	mov    0x0,%ebx
  6e:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
  72:	69 7c 24 08 01 10 00 	imul   $0x1001,0x8(%esp),%edi
  79:	00 
  7a:	01 df                	add    %ebx,%edi
  7c:	58                   	pop    %eax
  7d:	5a                   	pop    %edx
  7e:	39 df                	cmp    %ebx,%edi
  80:	74 0e                	je     90 <xen_hypercall_setup+0x90>
  82:	89 d8                	mov    %ebx,%eax
  84:	31 d2                	xor    %edx,%edx
  86:	0f 30                	wrmsr  
  88:	81 c3 01 10 00 00    	add    $0x1001,%ebx
  8e:	eb ee                	jmp    7e <xen_hypercall_setup+0x7e>
  90:	a1 00 00 00 00       	mov    0x0,%eax
  95:	40                   	inc    %eax
  96:	56                   	push   %esi
  97:	8d 54 24 0c          	lea    0xc(%esp),%edx
  9b:	52                   	push   %edx
  9c:	8d 4c 24 0c          	lea    0xc(%esp),%ecx
  a0:	8d 54 24 08          	lea    0x8(%esp),%edx
  a4:	e8 fc ff ff ff       	call   a5 <xen_hypercall_setup+0xa5>
  a9:	a1 00 00 00 00       	mov    0x0,%eax
  ae:	05 20 02 00 00       	add    $0x220,%eax
  b3:	8d 54 24 18          	lea    0x18(%esp),%edx
  b7:	bb 01 00 00 00       	mov    $0x1,%ebx
  bc:	89 d1                	mov    %edx,%ecx
  be:	ff d0                	call   *%eax
  c0:	8b 44 24 08          	mov    0x8(%esp),%eax
  c4:	52                   	push   %edx
  c5:	0f b7 d0             	movzwl %ax,%edx
  c8:	52                   	push   %edx
  c9:	c1 e8 10             	shr    $0x10,%eax
  cc:	50                   	push   %eax
  cd:	68 f3 00 00 00       	push   $0xf3
  d2:	e8 fc ff ff ff       	call   d3 <xen_hypercall_setup+0xd3>
  d7:	83 c4 38             	add    $0x38,%esp
  da:	5b                   	pop    %ebx
  db:	5e                   	pop    %esi
  dc:	5f                   	pop    %edi
  dd:	c3                   	ret    
  de:	c3                   	ret    

Disassembly of section .text.xen_biostable_setup:

00000000 <xen_biostable_setup>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	8b 35 10 10 00 00    	mov    0x1010,%esi
   8:	68 0a 01 00 00       	push   $0x10a
   d:	e8 fc ff ff ff       	call   e <xen_biostable_setup+0xe>
  12:	58                   	pop    %eax
  13:	31 db                	xor    %ebx,%ebx
  15:	39 1d 14 10 00 00    	cmp    %ebx,0x1014
  1b:	76 0b                	jbe    28 <xen_biostable_setup+0x28>
  1d:	8b 04 9e             	mov    (%esi,%ebx,4),%eax
  20:	e8 fc ff ff ff       	call   21 <xen_biostable_setup+0x21>
  25:	43                   	inc    %ebx
  26:	eb ed                	jmp    15 <xen_biostable_setup+0x15>
  28:	5b                   	pop    %ebx
  29:	5e                   	pop    %esi
  2a:	e9 fc ff ff ff       	jmp    2b <xen_biostable_setup+0x2b>

Disassembly of section .text.xen_ramsize_preinit:

00000000 <xen_ramsize_preinit>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	8b 35 18 10 00 00    	mov    0x1018,%esi
   8:	b9 0e 00 00 00       	mov    $0xe,%ecx
   d:	ba 24 01 00 00       	mov    $0x124,%edx
  12:	b8 00 10 00 00       	mov    $0x1000,%eax
  17:	e8 fc ff ff ff       	call   18 <xen_ramsize_preinit+0x18>
  1c:	85 c0                	test   %eax,%eax
  1e:	74 07                	je     27 <xen_ramsize_preinit+0x27>
  20:	68 32 01 00 00       	push   $0x132
  25:	eb 11                	jmp    38 <xen_ramsize_preinit+0x38>
  27:	0f b6 15 0e 10 00 00 	movzbl 0x100e,%edx
  2e:	80 fa 1f             	cmp    $0x1f,%dl
  31:	77 0a                	ja     3d <xen_ramsize_preinit+0x3d>
  33:	68 4a 01 00 00       	push   $0x14a
  38:	e8 fc ff ff ff       	call   39 <xen_ramsize_preinit+0x39>
  3d:	89 c3                	mov    %eax,%ebx
  3f:	b8 00 10 00 00       	mov    $0x1000,%eax
  44:	e8 fc ff ff ff       	call   45 <xen_ramsize_preinit+0x45>
  49:	84 c0                	test   %al,%al
  4b:	74 07                	je     54 <xen_ramsize_preinit+0x54>
  4d:	68 5f 01 00 00       	push   $0x15f
  52:	eb e4                	jmp    38 <xen_ramsize_preinit+0x38>
  54:	68 76 01 00 00       	push   $0x176
  59:	e8 fc ff ff ff       	call   5a <xen_ramsize_preinit+0x5a>
  5e:	58                   	pop    %eax
  5f:	39 1d 1c 10 00 00    	cmp    %ebx,0x101c
  65:	76 1e                	jbe    85 <xen_ramsize_preinit+0x85>
  67:	6b cb 14             	imul   $0x14,%ebx,%ecx
  6a:	01 f1                	add    %esi,%ecx
  6c:	8b 01                	mov    (%ecx),%eax
  6e:	8b 51 04             	mov    0x4(%ecx),%edx
  71:	ff 71 10             	push   0x10(%ecx)
  74:	ff 71 0c             	push   0xc(%ecx)
  77:	ff 71 08             	push   0x8(%ecx)
  7a:	e8 fc ff ff ff       	call   7b <xen_ramsize_preinit+0x7b>
  7f:	43                   	inc    %ebx
  80:	83 c4 0c             	add    $0xc,%esp
  83:	eb da                	jmp    5f <xen_ramsize_preinit+0x5f>
  85:	5b                   	pop    %ebx
  86:	5e                   	pop    %esi
  87:	c3                   	ret    
