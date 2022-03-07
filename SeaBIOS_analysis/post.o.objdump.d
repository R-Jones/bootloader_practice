
./post.o:     file format elf32-i386


Disassembly of section .text.interface_init:

00000000 <interface_init>:
   0:	e8 fc ff ff ff       	call   1 <interface_init+0x1>
   5:	e8 fc ff ff ff       	call   6 <interface_init+0x6>
   a:	e8 fc ff ff ff       	call   b <interface_init+0xb>
   f:	e8 fc ff ff ff       	call   10 <interface_init+0x10>
  14:	68 00 00 00 00       	push   $0x0
  19:	e8 fc ff ff ff       	call   1a <interface_init+0x1a>
  1e:	58                   	pop    %eax
  1f:	31 c0                	xor    %eax,%eax
  21:	ba 00 00 00 00       	mov    $0x0,%edx
  26:	66 89 10             	mov    %dx,(%eax)
  29:	66 c7 40 02 00 f0    	movw   $0xf000,0x2(%eax)
  2f:	83 c0 04             	add    $0x4,%eax
  32:	3d 00 04 00 00       	cmp    $0x400,%eax
  37:	75 ed                	jne    26 <interface_init+0x26>
  39:	b8 20 00 00 00       	mov    $0x20,%eax
  3e:	ba 00 00 00 00       	mov    $0x0,%edx
  43:	66 89 10             	mov    %dx,(%eax)
  46:	66 c7 40 02 00 f0    	movw   $0xf000,0x2(%eax)
  4c:	83 c0 04             	add    $0x4,%eax
  4f:	83 f8 40             	cmp    $0x40,%eax
  52:	75 ef                	jne    43 <interface_init+0x43>
  54:	b8 c0 01 00 00       	mov    $0x1c0,%eax
  59:	ba 00 00 00 00       	mov    $0x0,%edx
  5e:	66 89 10             	mov    %dx,(%eax)
  61:	66 c7 40 02 00 f0    	movw   $0xf000,0x2(%eax)
  67:	83 c0 04             	add    $0x4,%eax
  6a:	3d e0 01 00 00       	cmp    $0x1e0,%eax
  6f:	75 ed                	jne    5e <interface_init+0x5e>
  71:	b8 00 00 00 00       	mov    $0x0,%eax
  76:	66 a3 08 00 00 00    	mov    %ax,0x8
  7c:	66 c7 05 0a 00 00 00 	movw   $0xf000,0xa
  83:	00 f0 
  85:	b8 00 00 00 00       	mov    $0x0,%eax
  8a:	66 a3 14 00 00 00    	mov    %ax,0x14
  90:	66 c7 05 16 00 00 00 	movw   $0xf000,0x16
  97:	00 f0 
  99:	b8 00 00 00 00       	mov    $0x0,%eax
  9e:	66 a3 40 00 00 00    	mov    %ax,0x40
  a4:	66 c7 05 42 00 00 00 	movw   $0xf000,0x42
  ab:	00 f0 
  ad:	b8 00 00 00 00       	mov    $0x0,%eax
  b2:	66 a3 44 00 00 00    	mov    %ax,0x44
  b8:	66 c7 05 46 00 00 00 	movw   $0xf000,0x46
  bf:	00 f0 
  c1:	b8 00 00 00 00       	mov    $0x0,%eax
  c6:	66 a3 48 00 00 00    	mov    %ax,0x48
  cc:	66 c7 05 4a 00 00 00 	movw   $0xf000,0x4a
  d3:	00 f0 
  d5:	b8 00 00 00 00       	mov    $0x0,%eax
  da:	66 a3 4c 00 00 00    	mov    %ax,0x4c
  e0:	66 c7 05 4e 00 00 00 	movw   $0xf000,0x4e
  e7:	00 f0 
  e9:	b8 00 00 00 00       	mov    $0x0,%eax
  ee:	66 a3 50 00 00 00    	mov    %ax,0x50
  f4:	66 c7 05 52 00 00 00 	movw   $0xf000,0x52
  fb:	00 f0 
  fd:	b8 00 00 00 00       	mov    $0x0,%eax
 102:	66 a3 54 00 00 00    	mov    %ax,0x54
 108:	66 c7 05 56 00 00 00 	movw   $0xf000,0x56
 10f:	00 f0 
 111:	b8 00 00 00 00       	mov    $0x0,%eax
 116:	66 a3 58 00 00 00    	mov    %ax,0x58
 11c:	66 c7 05 5a 00 00 00 	movw   $0xf000,0x5a
 123:	00 f0 
 125:	b8 00 00 00 00       	mov    $0x0,%eax
 12a:	66 a3 5c 00 00 00    	mov    %ax,0x5c
 130:	66 c7 05 5e 00 00 00 	movw   $0xf000,0x5e
 137:	00 f0 
 139:	b8 00 00 00 00       	mov    $0x0,%eax
 13e:	66 a3 60 00 00 00    	mov    %ax,0x60
 144:	66 c7 05 62 00 00 00 	movw   $0xf000,0x62
 14b:	00 f0 
 14d:	b8 00 00 00 00       	mov    $0x0,%eax
 152:	66 a3 64 00 00 00    	mov    %ax,0x64
 158:	66 c7 05 66 00 00 00 	movw   $0xf000,0x66
 15f:	00 f0 
 161:	b8 00 00 00 00       	mov    $0x0,%eax
 166:	66 a3 68 00 00 00    	mov    %ax,0x68
 16c:	66 c7 05 6a 00 00 00 	movw   $0xf000,0x6a
 173:	00 f0 
 175:	b8 00 00 00 00       	mov    $0x0,%eax
 17a:	66 a3 00 01 00 00    	mov    %ax,0x100
 180:	66 c7 05 02 01 00 00 	movw   $0xf000,0x102
 187:	00 f0 
 189:	b8 80 01 00 00       	mov    $0x180,%eax
 18e:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 194:	83 c0 04             	add    $0x4,%eax
 197:	3d 9c 01 00 00       	cmp    $0x19c,%eax
 19c:	75 f0                	jne    18e <interface_init+0x18e>
 19e:	c7 05 e4 01 00 00 00 	movl   $0x0,0x1e4
 1a5:	00 00 00 
 1a8:	68 0a 00 00 00       	push   $0xa
 1ad:	e8 fc ff ff ff       	call   1ae <interface_init+0x1ae>
 1b2:	b9 00 01 00 00       	mov    $0x100,%ecx
 1b7:	31 d2                	xor    %edx,%edx
 1b9:	b8 00 04 00 00       	mov    $0x400,%eax
 1be:	e8 fc ff ff ff       	call   1bf <interface_init+0x1bf>
 1c3:	66 c7 05 0e 04 00 00 	movw   $0x9fc0,0x40e
 1ca:	c0 9f 
 1cc:	66 c7 05 13 04 00 00 	movw   $0x27f,0x413
 1d3:	7f 02 
 1d5:	b9 21 01 00 00       	mov    $0x121,%ecx
 1da:	31 d2                	xor    %edx,%edx
 1dc:	b8 00 fc 09 00       	mov    $0x9fc00,%eax
 1e1:	e8 fc ff ff ff       	call   1e2 <interface_init+0x1e2>
 1e6:	c6 05 00 fc 09 00 01 	movb   $0x1,0x9fc00
 1ed:	6a 02                	push   $0x2
 1ef:	6a 00                	push   $0x0
 1f1:	68 00 04 00 00       	push   $0x400
 1f6:	b8 00 fc 09 00       	mov    $0x9fc00,%eax
 1fb:	31 d2                	xor    %edx,%edx
 1fd:	e8 fc ff ff ff       	call   1fe <interface_init+0x1fe>
 202:	b8 00 08 00 00       	mov    $0x800,%eax
 207:	2d 00 00 00 00       	sub    $0x0,%eax
 20c:	a3 00 00 00 00       	mov    %eax,0x0
 211:	e8 fc ff ff ff       	call   212 <interface_init+0x212>
 216:	e8 fc ff ff ff       	call   217 <interface_init+0x217>
 21b:	e8 fc ff ff ff       	call   21c <interface_init+0x21c>
 220:	e8 fc ff ff ff       	call   221 <interface_init+0x221>
 225:	e8 fc ff ff ff       	call   226 <interface_init+0x226>
 22a:	83 c4 10             	add    $0x10,%esp
 22d:	e9 fc ff ff ff       	jmp    22e <interface_init+0x22e>

Disassembly of section .text.device_hardware_setup:

00000000 <device_hardware_setup>:
   0:	e8 fc ff ff ff       	call   1 <device_hardware_setup+0x1>
   5:	e8 fc ff ff ff       	call   6 <device_hardware_setup+0x6>
   a:	e8 fc ff ff ff       	call   b <device_hardware_setup+0xb>
   f:	e8 fc ff ff ff       	call   10 <device_hardware_setup+0x10>
  14:	e8 fc ff ff ff       	call   15 <device_hardware_setup+0x15>
  19:	e9 fc ff ff ff       	jmp    1a <device_hardware_setup+0x1a>

Disassembly of section .text.prepareboot:

00000000 <prepareboot>:
   0:	e8 fc ff ff ff       	call   1 <prepareboot+0x1>
   5:	e8 fc ff ff ff       	call   6 <prepareboot+0x6>
   a:	e8 fc ff ff ff       	call   b <prepareboot+0xb>
   f:	e8 fc ff ff ff       	call   10 <prepareboot+0x10>
  14:	e8 fc ff ff ff       	call   15 <prepareboot+0x15>
  19:	e8 fc ff ff ff       	call   1a <prepareboot+0x1a>
  1e:	c7 05 00 00 00 00 02 	movl   $0x2,0x0
  25:	00 00 00 
  28:	ba 00 00 01 00       	mov    $0x10000,%edx
  2d:	b8 00 00 0f 00       	mov    $0xf0000,%eax
  32:	e8 fc ff ff ff       	call   33 <prepareboot+0x33>
  37:	28 05 00 00 00 00    	sub    %al,0x0
  3d:	c3                   	ret    

Disassembly of section .text.runtime.src/post.c.182:

00000000 <startBoot>:
   0:	83 ec 28             	sub    $0x28,%esp
   3:	b9 00 90 08 00       	mov    $0x89000,%ecx
   8:	31 d2                	xor    %edx,%edx
   a:	b8 00 70 00 00       	mov    $0x7000,%eax
   f:	e8 fc ff ff ff       	call   10 <startBoot+0x10>
  14:	68 14 00 00 00       	push   $0x14
  19:	e8 fc ff ff ff       	call   1a <startBoot+0x1a>
  1e:	b9 26 00 00 00       	mov    $0x26,%ecx
  23:	31 d2                	xor    %edx,%edx
  25:	8d 44 24 06          	lea    0x6(%esp),%eax
  29:	e8 fc ff ff ff       	call   2a <startBoot+0x2a>
  2e:	66 c7 44 24 2a 00 02 	movw   $0x200,0x2a(%esp)
  35:	ba 00 00 00 00       	mov    $0x0,%edx
  3a:	0f b7 d2             	movzwl %dx,%edx
  3d:	8d 44 24 06          	lea    0x6(%esp),%eax
  41:	e8 fc ff ff ff       	call   42 <startBoot+0x42>
  46:	83 c4 2c             	add    $0x2c,%esp
  49:	c3                   	ret    

Disassembly of section .text.maininit:

00000000 <maininit>:
   0:	e8 fc ff ff ff       	call   1 <maininit+0x1>
   5:	e8 fc ff ff ff       	call   6 <maininit+0x6>
   a:	e8 fc ff ff ff       	call   b <maininit+0xb>
   f:	e8 fc ff ff ff       	call   10 <maininit+0x10>
  14:	e8 fc ff ff ff       	call   15 <maininit+0x15>
  19:	e8 fc ff ff ff       	call   1a <maininit+0x1a>
  1e:	e8 fc ff ff ff       	call   1f <maininit+0x1f>
  23:	e8 fc ff ff ff       	call   24 <maininit+0x24>
  28:	e8 fc ff ff ff       	call   29 <maininit+0x29>
  2d:	e8 fc ff ff ff       	call   2e <maininit+0x2e>
  32:	e8 fc ff ff ff       	call   33 <maininit+0x33>
  37:	85 c0                	test   %eax,%eax
  39:	74 05                	je     40 <maininit+0x40>
  3b:	e8 fc ff ff ff       	call   3c <maininit+0x3c>
  40:	e8 fc ff ff ff       	call   41 <maininit+0x41>
  45:	e8 fc ff ff ff       	call   46 <maininit+0x46>
  4a:	e8 fc ff ff ff       	call   4b <maininit+0x4b>
  4f:	e8 fc ff ff ff       	call   50 <maininit+0x50>
  54:	85 c0                	test   %eax,%eax
  56:	75 0a                	jne    62 <maininit+0x62>
  58:	e8 fc ff ff ff       	call   59 <maininit+0x59>
  5d:	e8 fc ff ff ff       	call   5e <maininit+0x5e>
  62:	e8 fc ff ff ff       	call   63 <maininit+0x63>
  67:	e8 fc ff ff ff       	call   68 <maininit+0x68>
  6c:	e8 fc ff ff ff       	call   6d <maininit+0x6d>
  71:	e8 fc ff ff ff       	call   72 <maininit+0x72>
  76:	e8 fc ff ff ff       	call   77 <maininit+0x77>
  7b:	e9 fc ff ff ff       	jmp    7c <maininit+0x7c>

Disassembly of section .text.reloc_preinit:

00000000 <reloc_preinit>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 08             	sub    $0x8,%esp
   7:	89 c5                	mov    %eax,%ebp
   9:	89 14 24             	mov    %edx,(%esp)
   c:	bb 00 00 00 00       	mov    $0x0,%ebx
  11:	81 eb 00 00 00 00    	sub    $0x0,%ebx
  17:	b9 00 00 00 00       	mov    $0x0,%ecx
  1c:	89 da                	mov    %ebx,%edx
  1e:	b8 00 00 00 00       	mov    $0x0,%eax
  23:	e8 fc ff ff ff       	call   24 <reloc_preinit+0x24>
  28:	85 c0                	test   %eax,%eax
  2a:	75 1f                	jne    4b <reloc_preinit+0x4b>
  2c:	b9 00 00 00 00       	mov    $0x0,%ecx
  31:	89 da                	mov    %ebx,%edx
  33:	b8 00 00 00 00       	mov    $0x0,%eax
  38:	e8 fc ff ff ff       	call   39 <reloc_preinit+0x39>
  3d:	85 c0                	test   %eax,%eax
  3f:	75 0a                	jne    4b <reloc_preinit+0x4b>
  41:	68 23 00 00 00       	push   $0x23
  46:	e8 fc ff ff ff       	call   47 <reloc_preinit+0x47>
  4b:	53                   	push   %ebx
  4c:	50                   	push   %eax
  4d:	89 44 24 0c          	mov    %eax,0xc(%esp)
  51:	68 00 00 00 00       	push   $0x0
  56:	68 42 00 00 00       	push   $0x42
  5b:	e8 fc ff ff ff       	call   5c <reloc_preinit+0x5c>
  60:	be 00 00 00 00       	mov    $0x0,%esi
  65:	8b 44 24 14          	mov    0x14(%esp),%eax
  69:	89 c7                	mov    %eax,%edi
  6b:	89 d9                	mov    %ebx,%ecx
  6d:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  6f:	89 c2                	mov    %eax,%edx
  71:	81 ea 00 00 00 00    	sub    $0x0,%edx
  77:	83 c4 10             	add    $0x10,%esp
  7a:	b9 00 00 00 00       	mov    $0x0,%ecx
  7f:	81 f9 00 00 00 00    	cmp    $0x0,%ecx
  85:	73 0b                	jae    92 <reloc_preinit+0x92>
  87:	8b 19                	mov    (%ecx),%ebx
  89:	01 c3                	add    %eax,%ebx
  8b:	01 13                	add    %edx,(%ebx)
  8d:	83 c1 04             	add    $0x4,%ecx
  90:	eb ed                	jmp    7f <reloc_preinit+0x7f>
  92:	bb 00 00 00 00       	mov    $0x0,%ebx
  97:	29 c3                	sub    %eax,%ebx
  99:	b9 00 00 00 00       	mov    $0x0,%ecx
  9e:	81 f9 00 00 00 00    	cmp    $0x0,%ecx
  a4:	73 0b                	jae    b1 <reloc_preinit+0xb1>
  a6:	8b 31                	mov    (%ecx),%esi
  a8:	01 c6                	add    %eax,%esi
  aa:	01 1e                	add    %ebx,(%esi)
  ac:	83 c1 04             	add    $0x4,%ecx
  af:	eb ed                	jmp    9e <reloc_preinit+0x9e>
  b1:	b8 00 00 00 00       	mov    $0x0,%eax
  b6:	3d 00 00 00 00       	cmp    $0x0,%eax
  bb:	73 0d                	jae    ca <reloc_preinit+0xca>
  bd:	8b 08                	mov    (%eax),%ecx
  bf:	01 91 00 00 00 00    	add    %edx,0x0(%ecx)
  c5:	83 c0 04             	add    $0x4,%eax
  c8:	eb ec                	jmp    b6 <reloc_preinit+0xb6>
  ca:	81 fd 00 00 00 00    	cmp    $0x0,%ebp
  d0:	72 0f                	jb     e1 <reloc_preinit+0xe1>
  d2:	81 fd 00 00 00 00    	cmp    $0x0,%ebp
  d8:	0f 92 c0             	setb   %al
  db:	01 ea                	add    %ebp,%edx
  dd:	84 c0                	test   %al,%al
  df:	75 02                	jne    e3 <reloc_preinit+0xe3>
  e1:	89 ea                	mov    %ebp,%edx
  e3:	8b 04 24             	mov    (%esp),%eax
  e6:	ff d2                	call   *%edx

Disassembly of section .text.code_mutable_preinit:

00000000 <code_mutable_preinit>:
   0:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
   7:	75 16                	jne    1f <code_mutable_preinit+0x1f>
   9:	31 d2                	xor    %edx,%edx
   b:	b8 0f 00 00 00       	mov    $0xf,%eax
  10:	e8 fc ff ff ff       	call   11 <code_mutable_preinit+0x11>
  15:	c7 05 00 00 00 00 01 	movl   $0x1,0x0
  1c:	00 00 00 
  1f:	c3                   	ret    

Disassembly of section .text.init.src/post.c.303:

00000000 <dopost>:
   0:	e8 fc ff ff ff       	call   1 <dopost+0x1>
   5:	e8 fc ff ff ff       	call   6 <dopost+0x6>
   a:	e8 fc ff ff ff       	call   b <dopost+0xb>
   f:	e8 fc ff ff ff       	call   10 <dopost+0x10>
  14:	31 d2                	xor    %edx,%edx
  16:	b8 00 00 00 00       	mov    $0x0,%eax
  1b:	e8 fc ff ff ff       	call   1c <dopost+0x1c>

Disassembly of section .text.runtime.src/post.c.320:

00000000 <handle_post>:
   0:	e8 fc ff ff ff       	call   1 <handle_post+0x1>
   5:	e8 fc ff ff ff       	call   6 <handle_post+0x6>
   a:	e8 fc ff ff ff       	call   b <handle_post+0xb>
   f:	e8 fc ff ff ff       	call   10 <handle_post+0x10>
  14:	e8 fc ff ff ff       	call   15 <handle_post+0x15>
