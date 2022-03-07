
./mtrr.o:     file format elf32-i386


Disassembly of section .text.mtrr_setup:

00000000 <mtrr_setup>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 1c             	sub    $0x1c,%esp
   7:	8d 44 24 10          	lea    0x10(%esp),%eax
   b:	50                   	push   %eax
   c:	8d 44 24 0c          	lea    0xc(%esp),%eax
  10:	50                   	push   %eax
  11:	8d 4c 24 0c          	lea    0xc(%esp),%ecx
  15:	8d 54 24 08          	lea    0x8(%esp),%edx
  19:	b8 01 00 00 00       	mov    $0x1,%eax
  1e:	e8 fc ff ff ff       	call   1f <mtrr_setup+0x1f>
  23:	8b 44 24 18          	mov    0x18(%esp),%eax
  27:	25 20 10 00 00       	and    $0x1020,%eax
  2c:	5f                   	pop    %edi
  2d:	5d                   	pop    %ebp
  2e:	3d 20 10 00 00       	cmp    $0x1020,%eax
  33:	0f 85 e7 01 00 00    	jne    220 <mtrr_setup+0x220>
  39:	68 00 00 00 00       	push   $0x0
  3e:	e8 fc ff ff ff       	call   3f <mtrr_setup+0x3f>
  43:	b9 fe 00 00 00       	mov    $0xfe,%ecx
  48:	0f 32                	rdmsr  
  4a:	0f b6 f8             	movzbl %al,%edi
  4d:	5e                   	pop    %esi
  4e:	0f ba e0 08          	bt     $0x8,%eax
  52:	0f 83 c8 01 00 00    	jae    220 <mtrr_setup+0x220>
  58:	85 ff                	test   %edi,%edi
  5a:	0f 84 c0 01 00 00    	je     220 <mtrr_setup+0x220>
  60:	31 d2                	xor    %edx,%edx
  62:	31 c9                	xor    %ecx,%ecx
  64:	b8 ff 02 00 00       	mov    $0x2ff,%eax
  69:	e8 fc ff ff ff       	call   6a <mtrr_setup+0x6a>
  6e:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
  75:	00 
  76:	c7 44 24 18 00 00 00 	movl   $0x0,0x18(%esp)
  7d:	00 
  7e:	8b 15 00 00 00 00    	mov    0x0,%edx
  84:	31 c0                	xor    %eax,%eax
  86:	40                   	inc    %eax
  87:	89 c1                	mov    %eax,%ecx
  89:	c1 e1 10             	shl    $0x10,%ecx
  8c:	39 ca                	cmp    %ecx,%edx
  8e:	72 05                	jb     95 <mtrr_setup+0x95>
  90:	c6 44 04 13 06       	movb   $0x6,0x13(%esp,%eax,1)
  95:	83 f8 08             	cmp    $0x8,%eax
  98:	75 ec                	jne    86 <mtrr_setup+0x86>
  9a:	8b 54 24 14          	mov    0x14(%esp),%edx
  9e:	8b 4c 24 18          	mov    0x18(%esp),%ecx
  a2:	b8 50 02 00 00       	mov    $0x250,%eax
  a7:	e8 fc ff ff ff       	call   a8 <mtrr_setup+0xa8>
  ac:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
  b3:	00 
  b4:	c7 44 24 18 00 00 00 	movl   $0x0,0x18(%esp)
  bb:	00 
  bc:	8b 0d 00 00 00 00    	mov    0x0,%ecx
  c2:	8d 54 24 14          	lea    0x14(%esp),%edx
  c6:	b8 00 40 08 00       	mov    $0x84000,%eax
  cb:	39 c8                	cmp    %ecx,%eax
  cd:	77 03                	ja     d2 <mtrr_setup+0xd2>
  cf:	c6 02 06             	movb   $0x6,(%edx)
  d2:	05 00 40 00 00       	add    $0x4000,%eax
  d7:	42                   	inc    %edx
  d8:	3d 00 40 0a 00       	cmp    $0xa4000,%eax
  dd:	75 ec                	jne    cb <mtrr_setup+0xcb>
  df:	8b 54 24 14          	mov    0x14(%esp),%edx
  e3:	8b 4c 24 18          	mov    0x18(%esp),%ecx
  e7:	b8 58 02 00 00       	mov    $0x258,%eax
  ec:	e8 fc ff ff ff       	call   ed <mtrr_setup+0xed>
  f1:	31 d2                	xor    %edx,%edx
  f3:	31 c9                	xor    %ecx,%ecx
  f5:	b8 59 02 00 00       	mov    $0x259,%eax
  fa:	e8 fc ff ff ff       	call   fb <mtrr_setup+0xfb>
  ff:	bb c0 00 00 00       	mov    $0xc0,%ebx
 104:	be 68 02 00 00       	mov    $0x268,%esi
 109:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
 110:	00 
 111:	c7 44 24 18 00 00 00 	movl   $0x0,0x18(%esp)
 118:	00 
 119:	8b 0d 00 00 00 00    	mov    0x0,%ecx
 11f:	31 c0                	xor    %eax,%eax
 121:	40                   	inc    %eax
 122:	8d 14 03             	lea    (%ebx,%eax,1),%edx
 125:	c1 e2 0c             	shl    $0xc,%edx
 128:	39 d1                	cmp    %edx,%ecx
 12a:	72 05                	jb     131 <mtrr_setup+0x131>
 12c:	c6 44 04 13 05       	movb   $0x5,0x13(%esp,%eax,1)
 131:	83 f8 08             	cmp    $0x8,%eax
 134:	75 eb                	jne    121 <mtrr_setup+0x121>
 136:	8b 54 24 14          	mov    0x14(%esp),%edx
 13a:	8b 4c 24 18          	mov    0x18(%esp),%ecx
 13e:	89 f0                	mov    %esi,%eax
 140:	e8 fc ff ff ff       	call   141 <mtrr_setup+0x141>
 145:	46                   	inc    %esi
 146:	83 c3 08             	add    $0x8,%ebx
 149:	81 fb 00 01 00 00    	cmp    $0x100,%ebx
 14f:	75 b8                	jne    109 <mtrr_setup+0x109>
 151:	8d 6c 24 0c          	lea    0xc(%esp),%ebp
 155:	55                   	push   %ebp
 156:	8d 74 24 0c          	lea    0xc(%esp),%esi
 15a:	56                   	push   %esi
 15b:	8d 4c 24 0c          	lea    0xc(%esp),%ecx
 15f:	8d 54 24 08          	lea    0x8(%esp),%edx
 163:	b8 00 00 00 80       	mov    $0x80000000,%eax
 168:	e8 fc ff ff ff       	call   169 <mtrr_setup+0x169>
 16d:	59                   	pop    %ecx
 16e:	5b                   	pop    %ebx
 16f:	bb 24 00 00 00       	mov    $0x24,%ebx
 174:	81 3c 24 07 00 00 80 	cmpl   $0x80000007,(%esp)
 17b:	76 1b                	jbe    198 <mtrr_setup+0x198>
 17d:	55                   	push   %ebp
 17e:	56                   	push   %esi
 17f:	8d 4c 24 0c          	lea    0xc(%esp),%ecx
 183:	8d 54 24 08          	lea    0x8(%esp),%edx
 187:	b8 08 00 00 80       	mov    $0x80000008,%eax
 18c:	e8 fc ff ff ff       	call   18d <mtrr_setup+0x18d>
 191:	0f b6 5c 24 08       	movzbl 0x8(%esp),%ebx
 196:	58                   	pop    %eax
 197:	5a                   	pop    %edx
 198:	31 f6                	xor    %esi,%esi
 19a:	8d 2c 36             	lea    (%esi,%esi,1),%ebp
 19d:	8d 85 00 02 00 00    	lea    0x200(%ebp),%eax
 1a3:	31 d2                	xor    %edx,%edx
 1a5:	31 c9                	xor    %ecx,%ecx
 1a7:	e8 fc ff ff ff       	call   1a8 <mtrr_setup+0x1a8>
 1ac:	8d 85 01 02 00 00    	lea    0x201(%ebp),%eax
 1b2:	31 d2                	xor    %edx,%edx
 1b4:	31 c9                	xor    %ecx,%ecx
 1b6:	e8 fc ff ff ff       	call   1b7 <mtrr_setup+0x1b7>
 1bb:	46                   	inc    %esi
 1bc:	39 f7                	cmp    %esi,%edi
 1be:	7f da                	jg     19a <mtrr_setup+0x19a>
 1c0:	8b 15 00 00 00 00    	mov    0x0,%edx
 1c6:	8b 0d 04 00 00 00    	mov    0x4,%ecx
 1cc:	b8 00 02 00 00       	mov    $0x200,%eax
 1d1:	e8 fc ff ff ff       	call   1d2 <mtrr_setup+0x1d2>
 1d6:	8b 3d 04 00 00 00    	mov    0x4,%edi
 1dc:	4f                   	dec    %edi
 1dd:	88 d9                	mov    %bl,%cl
 1df:	83 c8 ff             	or     $0xffffffff,%eax
 1e2:	89 c2                	mov    %eax,%edx
 1e4:	0f a5 c2             	shld   %cl,%eax,%edx
 1e7:	d3 e0                	shl    %cl,%eax
 1e9:	f6 c1 20             	test   $0x20,%cl
 1ec:	74 04                	je     1f2 <mtrr_setup+0x1f2>
 1ee:	89 c2                	mov    %eax,%edx
 1f0:	31 c0                	xor    %eax,%eax
 1f2:	f7 d0                	not    %eax
 1f4:	89 d1                	mov    %edx,%ecx
 1f6:	f7 d1                	not    %ecx
 1f8:	23 05 00 00 00 00    	and    0x0,%eax
 1fe:	89 c2                	mov    %eax,%edx
 200:	21 f9                	and    %edi,%ecx
 202:	80 ce 08             	or     $0x8,%dh
 205:	b8 01 02 00 00       	mov    $0x201,%eax
 20a:	e8 fc ff ff ff       	call   20b <mtrr_setup+0x20b>
 20f:	ba 06 0c 00 00       	mov    $0xc06,%edx
 214:	31 c9                	xor    %ecx,%ecx
 216:	b8 ff 02 00 00       	mov    $0x2ff,%eax
 21b:	e8 fc ff ff ff       	call   21c <mtrr_setup+0x21c>
 220:	83 c4 1c             	add    $0x1c,%esp
 223:	5b                   	pop    %ebx
 224:	5e                   	pop    %esi
 225:	5f                   	pop    %edi
 226:	5d                   	pop    %ebp
 227:	c3                   	ret    
