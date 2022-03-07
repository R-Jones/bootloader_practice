
./bmp.o:     file format elf32-i386


Disassembly of section .text.bmp_alloc:

00000000 <bmp_alloc>:
   0:	b9 10 00 00 00       	mov    $0x10,%ecx
   5:	ba 14 00 00 00       	mov    $0x14,%edx
   a:	b8 00 00 00 00       	mov    $0x0,%eax
   f:	e9 fc ff ff ff       	jmp    10 <bmp_alloc+0x10>

Disassembly of section .text.bmp_decode:

00000000 <bmp_decode>:
   0:	83 f9 35             	cmp    $0x35,%ecx
   3:	7e 3a                	jle    3f <bmp_decode+0x3f>
   5:	53                   	push   %ebx
   6:	89 c3                	mov    %eax,%ebx
   8:	89 d0                	mov    %edx,%eax
   a:	ba 02 00 00 00       	mov    $0x2,%edx
   f:	66 81 38 42 4d       	cmpw   $0x4d42,(%eax)
  14:	75 2f                	jne    45 <bmp_decode+0x45>
  16:	ba 03 00 00 00       	mov    $0x3,%edx
  1b:	3b 48 02             	cmp    0x2(%eax),%ecx
  1e:	75 25                	jne    45 <bmp_decode+0x45>
  20:	8b 50 0a             	mov    0xa(%eax),%edx
  23:	01 c2                	add    %eax,%edx
  25:	89 53 04             	mov    %edx,0x4(%ebx)
  28:	8b 50 12             	mov    0x12(%eax),%edx
  2b:	89 53 08             	mov    %edx,0x8(%ebx)
  2e:	8b 50 16             	mov    0x16(%eax),%edx
  31:	89 53 0c             	mov    %edx,0xc(%ebx)
  34:	0f b7 40 1c          	movzwl 0x1c(%eax),%eax
  38:	89 43 10             	mov    %eax,0x10(%ebx)
  3b:	31 d2                	xor    %edx,%edx
  3d:	eb 06                	jmp    45 <bmp_decode+0x45>
  3f:	b8 01 00 00 00       	mov    $0x1,%eax
  44:	c3                   	ret    
  45:	89 d0                	mov    %edx,%eax
  47:	5b                   	pop    %ebx
  48:	c3                   	ret    

Disassembly of section .text.bmp_get_info:

00000000 <bmp_get_info>:
   0:	53                   	push   %ebx
   1:	8b 58 08             	mov    0x8(%eax),%ebx
   4:	89 1a                	mov    %ebx,(%edx)
   6:	8b 50 0c             	mov    0xc(%eax),%edx
   9:	89 11                	mov    %edx,(%ecx)
   b:	8b 50 10             	mov    0x10(%eax),%edx
   e:	8b 44 24 08          	mov    0x8(%esp),%eax
  12:	89 10                	mov    %edx,(%eax)
  14:	5b                   	pop    %ebx
  15:	c3                   	ret    

Disassembly of section .text.bmp_show:

00000000 <bmp_show>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 ce                	mov    %ecx,%esi
   6:	8b 48 04             	mov    0x4(%eax),%ecx
   9:	39 d1                	cmp    %edx,%ecx
   b:	75 04                	jne    11 <bmp_show+0x11>
   d:	31 d2                	xor    %edx,%edx
   f:	eb 46                	jmp    57 <bmp_show+0x57>
  11:	89 d3                	mov    %edx,%ebx
  13:	8b 40 10             	mov    0x10(%eax),%eax
  16:	ba 01 00 00 00       	mov    $0x1,%edx
  1b:	3b 44 24 18          	cmp    0x18(%esp),%eax
  1f:	75 36                	jne    57 <bmp_show+0x57>
  21:	a8 07                	test   $0x7,%al
  23:	75 32                	jne    57 <bmp_show+0x57>
  25:	bf 08 00 00 00       	mov    $0x8,%edi
  2a:	99                   	cltd   
  2b:	f7 ff                	idiv   %edi
  2d:	0f af c6             	imul   %esi,%eax
  30:	89 da                	mov    %ebx,%edx
  32:	8b 74 24 14          	mov    0x14(%esp),%esi
  36:	8d 5e ff             	lea    -0x1(%esi),%ebx
  39:	0f af d8             	imul   %eax,%ebx
  3c:	01 cb                	add    %ecx,%ebx
  3e:	31 ed                	xor    %ebp,%ebp
  40:	39 6c 24 14          	cmp    %ebp,0x14(%esp)
  44:	7e c7                	jle    d <bmp_show+0xd>
  46:	89 d7                	mov    %edx,%edi
  48:	89 de                	mov    %ebx,%esi
  4a:	89 c1                	mov    %eax,%ecx
  4c:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  4e:	45                   	inc    %ebp
  4f:	03 54 24 1c          	add    0x1c(%esp),%edx
  53:	29 c3                	sub    %eax,%ebx
  55:	eb e9                	jmp    40 <bmp_show+0x40>
  57:	89 d0                	mov    %edx,%eax
  59:	5b                   	pop    %ebx
  5a:	5e                   	pop    %esi
  5b:	5f                   	pop    %edi
  5c:	5d                   	pop    %ebp
  5d:	c3                   	ret    
