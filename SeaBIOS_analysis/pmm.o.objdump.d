
./pmm.o:     file format elf32-i386


Disassembly of section .text.init.src/pmm.c.133:

00000000 <handle_pmm>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 0c             	sub    $0xc,%esp
   7:	89 c7                	mov    %eax,%edi
   9:	0f b7 00             	movzwl (%eax),%eax
   c:	89 c6                	mov    %eax,%esi
   e:	50                   	push   %eax
   f:	68 00 00 00 00       	push   $0x0
  14:	e8 fc ff ff ff       	call   15 <handle_pmm+0x15>
  19:	5d                   	pop    %ebp
  1a:	58                   	pop    %eax
  1b:	66 83 fe 01          	cmp    $0x1,%si
  1f:	0f 84 74 01 00 00    	je     199 <handle_pmm+0x199>
  25:	66 83 fe 02          	cmp    $0x2,%si
  29:	0f 84 96 01 00 00    	je     1c5 <handle_pmm+0x1c5>
  2f:	83 cb ff             	or     $0xffffffff,%ebx
  32:	66 85 f6             	test   %si,%si
  35:	0f 85 ae 01 00 00    	jne    1e9 <handle_pmm+0x1e9>
  3b:	8b 5f 02             	mov    0x2(%edi),%ebx
  3e:	8b 77 06             	mov    0x6(%edi),%esi
  41:	0f b7 47 0a          	movzwl 0xa(%edi),%eax
  45:	89 c7                	mov    %eax,%edi
  47:	50                   	push   %eax
  48:	56                   	push   %esi
  49:	53                   	push   %ebx
  4a:	68 12 00 00 00       	push   $0x12
  4f:	e8 fc ff ff ff       	call   50 <handle_pmm+0x50>
  54:	83 c4 10             	add    $0x10,%esp
  57:	89 f8                	mov    %edi,%eax
  59:	66 83 e0 08          	and    $0x8,%ax
  5d:	66 89 04 24          	mov    %ax,(%esp)
  61:	74 0c                	je     6f <handle_pmm+0x6f>
  63:	bd 00 00 00 00       	mov    $0x0,%ebp
  68:	b8 00 00 00 00       	mov    $0x0,%eax
  6d:	eb 0a                	jmp    79 <handle_pmm+0x79>
  6f:	bd 00 00 00 00       	mov    $0x0,%ebp
  74:	b8 00 00 00 00       	mov    $0x0,%eax
  79:	85 db                	test   %ebx,%ebx
  7b:	75 44                	jne    c1 <handle_pmm+0xc1>
  7d:	83 e7 03             	and    $0x3,%edi
  80:	66 83 ff 02          	cmp    $0x2,%di
  84:	74 10                	je     96 <handle_pmm+0x96>
  86:	66 83 ff 03          	cmp    $0x3,%di
  8a:	74 18                	je     a4 <handle_pmm+0xa4>
  8c:	66 4f                	dec    %di
  8e:	0f 85 55 01 00 00    	jne    1e9 <handle_pmm+0x1e9>
  94:	eb 02                	jmp    98 <handle_pmm+0x98>
  96:	89 e8                	mov    %ebp,%eax
  98:	83 c4 0c             	add    $0xc,%esp
  9b:	5b                   	pop    %ebx
  9c:	5e                   	pop    %esi
  9d:	5f                   	pop    %edi
  9e:	5d                   	pop    %ebp
  9f:	e9 fc ff ff ff       	jmp    a0 <handle_pmm+0xa0>
  a4:	e8 fc ff ff ff       	call   a5 <handle_pmm+0xa5>
  a9:	89 c3                	mov    %eax,%ebx
  ab:	89 e8                	mov    %ebp,%eax
  ad:	e8 fc ff ff ff       	call   ae <handle_pmm+0xae>
  b2:	39 c3                	cmp    %eax,%ebx
  b4:	0f 83 2f 01 00 00    	jae    1e9 <handle_pmm+0x1e9>
  ba:	89 c3                	mov    %eax,%ebx
  bc:	e9 28 01 00 00       	jmp    1e9 <handle_pmm+0x1e9>
  c1:	89 da                	mov    %ebx,%edx
  c3:	c1 e2 04             	shl    $0x4,%edx
  c6:	85 d2                	test   %edx,%edx
  c8:	7f 07                	jg     d1 <handle_pmm+0xd1>
  ca:	31 db                	xor    %ebx,%ebx
  cc:	e9 18 01 00 00       	jmp    1e9 <handle_pmm+0x1e9>
  d1:	b9 10 00 00 00       	mov    $0x10,%ecx
  d6:	f7 c7 04 00 00 00    	test   $0x4,%edi
  dc:	74 16                	je     f4 <handle_pmm+0xf4>
  de:	0f bc ca             	bsf    %edx,%ecx
  e1:	bb 01 00 00 00       	mov    $0x1,%ebx
  e6:	d3 e3                	shl    %cl,%ebx
  e8:	89 d9                	mov    %ebx,%ecx
  ea:	83 fb 10             	cmp    $0x10,%ebx
  ed:	73 05                	jae    f4 <handle_pmm+0xf4>
  ef:	b9 10 00 00 00       	mov    $0x10,%ecx
  f4:	83 e7 03             	and    $0x3,%edi
  f7:	66 83 ff 02          	cmp    $0x2,%di
  fb:	74 12                	je     10f <handle_pmm+0x10f>
  fd:	66 83 ff 03          	cmp    $0x3,%di
 101:	74 5c                	je     15f <handle_pmm+0x15f>
 103:	31 db                	xor    %ebx,%ebx
 105:	66 4f                	dec    %di
 107:	0f 85 dc 00 00 00    	jne    1e9 <handle_pmm+0x1e9>
 10d:	eb 6b                	jmp    17a <handle_pmm+0x17a>
 10f:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 113:	89 54 24 04          	mov    %edx,0x4(%esp)
 117:	89 e8                	mov    %ebp,%eax
 119:	e8 fc ff ff ff       	call   11a <handle_pmm+0x11a>
 11e:	89 c3                	mov    %eax,%ebx
 120:	85 c0                	test   %eax,%eax
 122:	75 65                	jne    189 <handle_pmm+0x189>
 124:	66 83 3c 24 00       	cmpw   $0x0,(%esp)
 129:	8b 54 24 04          	mov    0x4(%esp),%edx
 12d:	8b 4c 24 08          	mov    0x8(%esp),%ecx
 131:	74 97                	je     ca <handle_pmm+0xca>
 133:	89 14 24             	mov    %edx,(%esp)
 136:	b8 00 00 00 00       	mov    $0x0,%eax
 13b:	e8 fc ff ff ff       	call   13c <handle_pmm+0x13c>
 140:	89 c3                	mov    %eax,%ebx
 142:	85 c0                	test   %eax,%eax
 144:	8b 14 24             	mov    (%esp),%edx
 147:	74 81                	je     ca <handle_pmm+0xca>
 149:	6a 02                	push   $0x2
 14b:	89 d0                	mov    %edx,%eax
 14d:	31 d2                	xor    %edx,%edx
 14f:	52                   	push   %edx
 150:	50                   	push   %eax
 151:	89 d8                	mov    %ebx,%eax
 153:	31 d2                	xor    %edx,%edx
 155:	e8 fc ff ff ff       	call   156 <handle_pmm+0x156>
 15a:	83 c4 0c             	add    $0xc,%esp
 15d:	eb 2a                	jmp    189 <handle_pmm+0x189>
 15f:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 163:	89 14 24             	mov    %edx,(%esp)
 166:	e8 fc ff ff ff       	call   167 <handle_pmm+0x167>
 16b:	89 c3                	mov    %eax,%ebx
 16d:	85 c0                	test   %eax,%eax
 16f:	8b 14 24             	mov    (%esp),%edx
 172:	8b 4c 24 04          	mov    0x4(%esp),%ecx
 176:	75 11                	jne    189 <handle_pmm+0x189>
 178:	89 e8                	mov    %ebp,%eax
 17a:	e8 fc ff ff ff       	call   17b <handle_pmm+0x17b>
 17f:	89 c3                	mov    %eax,%ebx
 181:	85 c0                	test   %eax,%eax
 183:	0f 84 41 ff ff ff    	je     ca <handle_pmm+0xca>
 189:	83 fe ff             	cmp    $0xffffffff,%esi
 18c:	74 5b                	je     1e9 <handle_pmm+0x1e9>
 18e:	89 f2                	mov    %esi,%edx
 190:	89 d8                	mov    %ebx,%eax
 192:	e8 fc ff ff ff       	call   193 <handle_pmm+0x193>
 197:	eb 50                	jmp    1e9 <handle_pmm+0x1e9>
 199:	8b 47 02             	mov    0x2(%edi),%eax
 19c:	50                   	push   %eax
 19d:	89 44 24 04          	mov    %eax,0x4(%esp)
 1a1:	68 37 00 00 00       	push   $0x37
 1a6:	e8 fc ff ff ff       	call   1a7 <handle_pmm+0x1a7>
 1ab:	5b                   	pop    %ebx
 1ac:	5e                   	pop    %esi
 1ad:	8b 04 24             	mov    (%esp),%eax
 1b0:	83 f8 ff             	cmp    $0xffffffff,%eax
 1b3:	0f 84 11 ff ff ff    	je     ca <handle_pmm+0xca>
 1b9:	83 c4 0c             	add    $0xc,%esp
 1bc:	5b                   	pop    %ebx
 1bd:	5e                   	pop    %esi
 1be:	5f                   	pop    %edi
 1bf:	5d                   	pop    %ebp
 1c0:	e9 fc ff ff ff       	jmp    1c1 <handle_pmm+0x1c1>
 1c5:	8b 47 02             	mov    0x2(%edi),%eax
 1c8:	50                   	push   %eax
 1c9:	89 44 24 04          	mov    %eax,0x4(%esp)
 1cd:	68 49 00 00 00       	push   $0x49
 1d2:	e8 fc ff ff ff       	call   1d3 <handle_pmm+0x1d3>
 1d7:	8b 44 24 08          	mov    0x8(%esp),%eax
 1db:	e8 fc ff ff ff       	call   1dc <handle_pmm+0x1dc>
 1e0:	5a                   	pop    %edx
 1e1:	59                   	pop    %ecx
 1e2:	31 db                	xor    %ebx,%ebx
 1e4:	85 c0                	test   %eax,%eax
 1e6:	0f 95 c3             	setne  %bl
 1e9:	89 d8                	mov    %ebx,%eax
 1eb:	83 c4 0c             	add    $0xc,%esp
 1ee:	5b                   	pop    %ebx
 1ef:	5e                   	pop    %esi
 1f0:	5f                   	pop    %edi
 1f1:	5d                   	pop    %ebp
 1f2:	c3                   	ret    

Disassembly of section .text.pmm_init:

00000000 <pmm_init>:
   0:	68 5b 00 00 00       	push   $0x5b
   5:	e8 fc ff ff ff       	call   6 <pmm_init+0x6>
   a:	b8 00 00 00 00       	mov    $0x0,%eax
   f:	66 a3 07 00 00 00    	mov    %ax,0x7
  15:	66 c7 05 09 00 00 00 	movw   $0xf000,0x9
  1c:	00 f0 
  1e:	ba 10 00 00 00       	mov    $0x10,%edx
  23:	b8 00 00 00 00       	mov    $0x0,%eax
  28:	e8 fc ff ff ff       	call   29 <pmm_init+0x29>
  2d:	28 05 06 00 00 00    	sub    %al,0x6
  33:	58                   	pop    %eax
  34:	c3                   	ret    

Disassembly of section .text.pmm_prepboot:

00000000 <pmm_prepboot>:
   0:	68 65 00 00 00       	push   $0x65
   5:	e8 fc ff ff ff       	call   6 <pmm_prepboot+0x6>
   a:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
  11:	00 00 00 
  14:	c7 05 07 00 00 00 00 	movl   $0x0,0x7
  1b:	00 00 00 
  1e:	58                   	pop    %eax
  1f:	c3                   	ret    
