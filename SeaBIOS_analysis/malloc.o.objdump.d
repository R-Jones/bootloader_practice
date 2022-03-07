
./malloc.o:     file format elf32-i386


Disassembly of section .text.alloc_find:

00000000 <alloc_find>:
   0:	89 c1                	mov    %eax,%ecx
   2:	31 d2                	xor    %edx,%edx
   4:	8b 04 95 00 00 00 00 	mov    0x0(,%edx,4),%eax
   b:	8b 00                	mov    (%eax),%eax
   d:	85 c0                	test   %eax,%eax
   f:	74 07                	je     18 <alloc_find+0x18>
  11:	39 48 08             	cmp    %ecx,0x8(%eax)
  14:	75 f5                	jne    b <alloc_find+0xb>
  16:	eb 06                	jmp    1e <alloc_find+0x1e>
  18:	42                   	inc    %edx
  19:	83 fa 05             	cmp    $0x5,%edx
  1c:	75 e6                	jne    4 <alloc_find+0x4>
  1e:	c3                   	ret    

Disassembly of section .text.calcRamSize:

00000000 <calcRamSize>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	8b 0d 00 00 00 00    	mov    0x0,%ecx
   8:	8d 59 ff             	lea    -0x1(%ecx),%ebx
   b:	6b c9 14             	imul   $0x14,%ecx,%ecx
   e:	81 c1 00 00 00 00    	add    $0x0,%ecx
  14:	85 db                	test   %ebx,%ebx
  16:	78 20                	js     38 <calcRamSize+0x38>
  18:	8b 41 f4             	mov    -0xc(%ecx),%eax
  1b:	8b 51 f8             	mov    -0x8(%ecx),%edx
  1e:	03 41 ec             	add    -0x14(%ecx),%eax
  21:	13 51 f0             	adc    -0x10(%ecx),%edx
  24:	83 fa 00             	cmp    $0x0,%edx
  27:	77 09                	ja     32 <calcRamSize+0x32>
  29:	8b 71 fc             	mov    -0x4(%ecx),%esi
  2c:	83 e6 fd             	and    $0xfffffffd,%esi
  2f:	4e                   	dec    %esi
  30:	74 08                	je     3a <calcRamSize+0x3a>
  32:	4b                   	dec    %ebx
  33:	83 e9 14             	sub    $0x14,%ecx
  36:	eb dc                	jmp    14 <calcRamSize+0x14>
  38:	31 c0                	xor    %eax,%eax
  3a:	3d 00 00 10 00       	cmp    $0x100000,%eax
  3f:	73 05                	jae    46 <calcRamSize+0x46>
  41:	b8 00 00 10 00       	mov    $0x100000,%eax
  46:	a3 00 00 00 00       	mov    %eax,0x0
  4b:	5b                   	pop    %ebx
  4c:	5e                   	pop    %esi
  4d:	c3                   	ret    

Disassembly of section .text.alloc_new.isra.0:

00000000 <alloc_new.isra.0>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 d3                	mov    %edx,%ebx
   6:	89 ce                	mov    %ecx,%esi
   8:	8b 4c 24 14          	mov    0x14(%esp),%ecx
   c:	f7 de                	neg    %esi
   e:	85 c0                	test   %eax,%eax
  10:	74 3c                	je     4e <alloc_new.isra.0+0x4e>
  12:	8b 78 0c             	mov    0xc(%eax),%edi
  15:	89 fa                	mov    %edi,%edx
  17:	29 da                	sub    %ebx,%edx
  19:	21 f2                	and    %esi,%edx
  1b:	8b 68 10             	mov    0x10(%eax),%ebp
  1e:	03 68 08             	add    0x8(%eax),%ebp
  21:	39 d5                	cmp    %edx,%ebp
  23:	77 25                	ja     4a <alloc_new.isra.0+0x4a>
  25:	39 d7                	cmp    %edx,%edi
  27:	72 21                	jb     4a <alloc_new.isra.0+0x4a>
  29:	89 51 08             	mov    %edx,0x8(%ecx)
  2c:	89 79 0c             	mov    %edi,0xc(%ecx)
  2f:	89 59 10             	mov    %ebx,0x10(%ecx)
  32:	89 50 0c             	mov    %edx,0xc(%eax)
  35:	8b 40 04             	mov    0x4(%eax),%eax
  38:	8b 18                	mov    (%eax),%ebx
  3a:	89 41 04             	mov    %eax,0x4(%ecx)
  3d:	89 19                	mov    %ebx,(%ecx)
  3f:	85 db                	test   %ebx,%ebx
  41:	74 03                	je     46 <alloc_new.isra.0+0x46>
  43:	89 4b 04             	mov    %ecx,0x4(%ebx)
  46:	89 08                	mov    %ecx,(%eax)
  48:	eb 06                	jmp    50 <alloc_new.isra.0+0x50>
  4a:	8b 00                	mov    (%eax),%eax
  4c:	eb c0                	jmp    e <alloc_new.isra.0+0xe>
  4e:	31 d2                	xor    %edx,%edx
  50:	89 d0                	mov    %edx,%eax
  52:	5b                   	pop    %ebx
  53:	5e                   	pop    %esi
  54:	5f                   	pop    %edi
  55:	5d                   	pop    %ebp
  56:	c3                   	ret    

Disassembly of section .text.alloc_free:

00000000 <alloc_free>:
   0:	8b 10                	mov    (%eax),%edx
   2:	85 d2                	test   %edx,%edx
   4:	74 0e                	je     14 <alloc_free+0x14>
   6:	8b 48 08             	mov    0x8(%eax),%ecx
   9:	39 4a 0c             	cmp    %ecx,0xc(%edx)
   c:	75 06                	jne    14 <alloc_free+0x14>
   e:	8b 48 0c             	mov    0xc(%eax),%ecx
  11:	89 4a 0c             	mov    %ecx,0xc(%edx)
  14:	8b 40 04             	mov    0x4(%eax),%eax
  17:	89 10                	mov    %edx,(%eax)
  19:	85 d2                	test   %edx,%edx
  1b:	74 03                	je     20 <alloc_free+0x20>
  1d:	89 42 04             	mov    %eax,0x4(%edx)
  20:	c3                   	ret    

Disassembly of section .text.alloc_new_detail:

00000000 <alloc_new_detail>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	89 c3                	mov    %eax,%ebx
   5:	50                   	push   %eax
   6:	b9 10 00 00 00       	mov    $0x10,%ecx
   b:	ba 2c 00 00 00       	mov    $0x2c,%edx
  10:	a1 00 00 00 00       	mov    0x0,%eax
  15:	e8 fc ff ff ff       	call   16 <alloc_new_detail+0x16>
  1a:	59                   	pop    %ecx
  1b:	85 c0                	test   %eax,%eax
  1d:	75 2d                	jne    4c <alloc_new_detail+0x4c>
  1f:	53                   	push   %ebx
  20:	b9 10 00 00 00       	mov    $0x10,%ecx
  25:	ba 2c 00 00 00       	mov    $0x2c,%edx
  2a:	a1 00 00 00 00       	mov    0x0,%eax
  2f:	e8 fc ff ff ff       	call   30 <alloc_new_detail+0x30>
  34:	5a                   	pop    %edx
  35:	85 c0                	test   %eax,%eax
  37:	75 13                	jne    4c <alloc_new_detail+0x4c>
  39:	ba 00 00 00 00       	mov    $0x0,%edx
  3e:	b8 52 00 00 00       	mov    $0x52,%eax
  43:	e8 fc ff ff ff       	call   44 <alloc_new_detail+0x44>
  48:	31 d2                	xor    %edx,%edx
  4a:	eb 38                	jmp    84 <alloc_new_detail+0x84>
  4c:	89 c2                	mov    %eax,%edx
  4e:	b9 0b 00 00 00       	mov    $0xb,%ecx
  53:	89 c7                	mov    %eax,%edi
  55:	89 de                	mov    %ebx,%esi
  57:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  59:	8b 0b                	mov    (%ebx),%ecx
  5b:	89 08                	mov    %ecx,(%eax)
  5d:	85 c9                	test   %ecx,%ecx
  5f:	74 03                	je     64 <alloc_new_detail+0x64>
  61:	89 41 04             	mov    %eax,0x4(%ecx)
  64:	8b 4b 04             	mov    0x4(%ebx),%ecx
  67:	89 48 04             	mov    %ecx,0x4(%eax)
  6a:	89 01                	mov    %eax,(%ecx)
  6c:	8d 70 14             	lea    0x14(%eax),%esi
  6f:	8b 4b 14             	mov    0x14(%ebx),%ecx
  72:	89 48 14             	mov    %ecx,0x14(%eax)
  75:	85 c9                	test   %ecx,%ecx
  77:	74 03                	je     7c <alloc_new_detail+0x7c>
  79:	89 71 04             	mov    %esi,0x4(%ecx)
  7c:	8b 4b 18             	mov    0x18(%ebx),%ecx
  7f:	89 48 18             	mov    %ecx,0x18(%eax)
  82:	89 31                	mov    %esi,(%ecx)
  84:	89 d0                	mov    %edx,%eax
  86:	5b                   	pop    %ebx
  87:	5e                   	pop    %esi
  88:	5f                   	pop    %edi
  89:	c3                   	ret    

Disassembly of section .text.alloc_add:

00000000 <alloc_add>:
   0:	53                   	push   %ebx
   1:	83 ec 2c             	sub    $0x2c,%esp
   4:	8b 18                	mov    (%eax),%ebx
   6:	85 db                	test   %ebx,%ebx
   8:	75 2f                	jne    39 <alloc_add+0x39>
   a:	c7 44 24 28 ff ff ff 	movl   $0xffffffff,0x28(%esp)
  11:	ff 
  12:	89 54 24 1c          	mov    %edx,0x1c(%esp)
  16:	89 4c 24 20          	mov    %ecx,0x20(%esp)
  1a:	c7 44 24 24 00 00 00 	movl   $0x0,0x24(%esp)
  21:	00 
  22:	8b 10                	mov    (%eax),%edx
  24:	89 44 24 18          	mov    %eax,0x18(%esp)
  28:	89 54 24 14          	mov    %edx,0x14(%esp)
  2c:	85 d2                	test   %edx,%edx
  2e:	8d 4c 24 14          	lea    0x14(%esp),%ecx
  32:	74 10                	je     44 <alloc_add+0x44>
  34:	89 4a 04             	mov    %ecx,0x4(%edx)
  37:	eb 0b                	jmp    44 <alloc_add+0x44>
  39:	39 53 08             	cmp    %edx,0x8(%ebx)
  3c:	72 cc                	jb     a <alloc_add+0xa>
  3e:	89 d8                	mov    %ebx,%eax
  40:	8b 1b                	mov    (%ebx),%ebx
  42:	eb c2                	jmp    6 <alloc_add+0x6>
  44:	89 08                	mov    %ecx,(%eax)
  46:	89 e0                	mov    %esp,%eax
  48:	e8 fc ff ff ff       	call   49 <alloc_add+0x49>
  4d:	85 c0                	test   %eax,%eax
  4f:	75 11                	jne    62 <alloc_add+0x62>
  51:	8b 44 24 14          	mov    0x14(%esp),%eax
  55:	8b 54 24 18          	mov    0x18(%esp),%edx
  59:	89 02                	mov    %eax,(%edx)
  5b:	85 c0                	test   %eax,%eax
  5d:	74 03                	je     62 <alloc_add+0x62>
  5f:	89 50 04             	mov    %edx,0x4(%eax)
  62:	83 c4 2c             	add    $0x2c,%esp
  65:	5b                   	pop    %ebx
  66:	c3                   	ret    

Disassembly of section .text.malloc_palloc:

00000000 <malloc_palloc>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 2c             	sub    $0x2c,%esp
   7:	89 d3                	mov    %edx,%ebx
   9:	85 d2                	test   %edx,%edx
   b:	74 4b                	je     58 <malloc_palloc+0x58>
   d:	89 c6                	mov    %eax,%esi
   f:	89 cf                	mov    %ecx,%edi
  11:	c7 44 24 28 ff ff ff 	movl   $0xffffffff,0x28(%esp)
  18:	ff 
  19:	8d 44 24 14          	lea    0x14(%esp),%eax
  1d:	50                   	push   %eax
  1e:	8b 06                	mov    (%esi),%eax
  20:	e8 fc ff ff ff       	call   21 <malloc_palloc+0x21>
  25:	89 c5                	mov    %eax,%ebp
  27:	58                   	pop    %eax
  28:	85 ed                	test   %ebp,%ebp
  2a:	74 2a                	je     56 <malloc_palloc+0x56>
  2c:	89 e0                	mov    %esp,%eax
  2e:	e8 fc ff ff ff       	call   2f <malloc_palloc+0x2f>
  33:	85 c0                	test   %eax,%eax
  35:	75 0d                	jne    44 <malloc_palloc+0x44>
  37:	8d 44 24 14          	lea    0x14(%esp),%eax
  3b:	e8 fc ff ff ff       	call   3c <malloc_palloc+0x3c>
  40:	31 ed                	xor    %ebp,%ebp
  42:	eb 12                	jmp    56 <malloc_palloc+0x56>
  44:	50                   	push   %eax
  45:	55                   	push   %ebp
  46:	57                   	push   %edi
  47:	53                   	push   %ebx
  48:	56                   	push   %esi
  49:	68 00 00 00 00       	push   $0x0
  4e:	e8 fc ff ff ff       	call   4f <malloc_palloc+0x4f>
  53:	83 c4 18             	add    $0x18,%esp
  56:	89 eb                	mov    %ebp,%ebx
  58:	89 d8                	mov    %ebx,%eax
  5a:	83 c4 2c             	add    $0x2c,%esp
  5d:	5b                   	pop    %ebx
  5e:	5e                   	pop    %esi
  5f:	5f                   	pop    %edi
  60:	5d                   	pop    %ebp
  61:	c3                   	ret    

Disassembly of section .text._malloc:

00000000 <_malloc>:
   0:	e9 fc ff ff ff       	jmp    1 <_malloc+0x1>

Disassembly of section .text.malloc_pfree:

00000000 <malloc_pfree>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	51                   	push   %ecx
   3:	89 c3                	mov    %eax,%ebx
   5:	e8 fc ff ff ff       	call   6 <malloc_pfree+0x6>
   a:	83 ca ff             	or     $0xffffffff,%edx
   d:	85 c0                	test   %eax,%eax
   f:	74 31                	je     42 <malloc_pfree+0x42>
  11:	39 d8                	cmp    %ebx,%eax
  13:	74 2d                	je     42 <malloc_pfree+0x42>
  15:	83 78 10 00          	cmpl   $0x0,0x10(%eax)
  19:	74 27                	je     42 <malloc_pfree+0x42>
  1b:	8d 70 ec             	lea    -0x14(%eax),%esi
  1e:	89 04 24             	mov    %eax,(%esp)
  21:	56                   	push   %esi
  22:	53                   	push   %ebx
  23:	68 38 00 00 00       	push   $0x38
  28:	e8 fc ff ff ff       	call   29 <malloc_pfree+0x29>
  2d:	8b 44 24 0c          	mov    0xc(%esp),%eax
  31:	e8 fc ff ff ff       	call   32 <malloc_pfree+0x32>
  36:	89 f0                	mov    %esi,%eax
  38:	e8 fc ff ff ff       	call   39 <malloc_pfree+0x39>
  3d:	83 c4 0c             	add    $0xc,%esp
  40:	31 d2                	xor    %edx,%edx
  42:	89 d0                	mov    %edx,%eax
  44:	5a                   	pop    %edx
  45:	5b                   	pop    %ebx
  46:	5e                   	pop    %esi
  47:	c3                   	ret    

Disassembly of section .text.free:

00000000 <free>:
   0:	85 c0                	test   %eax,%eax
   2:	74 18                	je     1c <free+0x1c>
   4:	e8 fc ff ff ff       	call   5 <free+0x5>
   9:	85 c0                	test   %eax,%eax
   b:	74 0f                	je     1c <free+0x1c>
   d:	ba 00 00 00 00       	mov    $0x0,%edx
  12:	b8 26 01 00 00       	mov    $0x126,%eax
  17:	e9 fc ff ff ff       	jmp    18 <free+0x18>
  1c:	c3                   	ret    

Disassembly of section .text.malloc_getspace:

00000000 <malloc_getspace>:
   0:	89 c1                	mov    %eax,%ecx
   2:	8b 10                	mov    (%eax),%edx
   4:	31 c0                	xor    %eax,%eax
   6:	85 d2                	test   %edx,%edx
   8:	75 1d                	jne    27 <malloc_getspace+0x27>
   a:	81 f9 00 00 00 00    	cmp    $0x0,%ecx
  10:	74 08                	je     1a <malloc_getspace+0x1a>
  12:	81 f9 00 00 00 00    	cmp    $0x0,%ecx
  18:	75 0c                	jne    26 <malloc_getspace+0x26>
  1a:	83 f8 30             	cmp    $0x30,%eax
  1d:	76 04                	jbe    23 <malloc_getspace+0x23>
  1f:	83 e8 30             	sub    $0x30,%eax
  22:	c3                   	ret    
  23:	31 c0                	xor    %eax,%eax
  25:	c3                   	ret    
  26:	c3                   	ret    
  27:	56                   	push   %esi
  28:	53                   	push   %ebx
  29:	8b 72 10             	mov    0x10(%edx),%esi
  2c:	03 72 08             	add    0x8(%edx),%esi
  2f:	8b 5a 0c             	mov    0xc(%edx),%ebx
  32:	29 f3                	sub    %esi,%ebx
  34:	39 d8                	cmp    %ebx,%eax
  36:	73 02                	jae    3a <malloc_getspace+0x3a>
  38:	89 d8                	mov    %ebx,%eax
  3a:	8b 12                	mov    (%edx),%edx
  3c:	85 d2                	test   %edx,%edx
  3e:	75 e9                	jne    29 <malloc_getspace+0x29>
  40:	81 f9 00 00 00 00    	cmp    $0x0,%ecx
  46:	74 08                	je     50 <malloc_getspace+0x50>
  48:	81 f9 00 00 00 00    	cmp    $0x0,%ecx
  4e:	75 0c                	jne    5c <malloc_getspace+0x5c>
  50:	83 f8 30             	cmp    $0x30,%eax
  53:	76 05                	jbe    5a <malloc_getspace+0x5a>
  55:	83 e8 30             	sub    $0x30,%eax
  58:	eb 02                	jmp    5c <malloc_getspace+0x5c>
  5a:	31 c0                	xor    %eax,%eax
  5c:	5b                   	pop    %ebx
  5d:	5e                   	pop    %esi
  5e:	c3                   	ret    

Disassembly of section .text.malloc_sethandle:

00000000 <malloc_sethandle>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 c3                	mov    %eax,%ebx
   4:	89 d6                	mov    %edx,%esi
   6:	e8 fc ff ff ff       	call   7 <malloc_sethandle+0x7>
   b:	85 c0                	test   %eax,%eax
   d:	74 0d                	je     1c <malloc_sethandle+0x1c>
   f:	39 d8                	cmp    %ebx,%eax
  11:	74 09                	je     1c <malloc_sethandle+0x1c>
  13:	83 78 10 00          	cmpl   $0x0,0x10(%eax)
  17:	74 03                	je     1c <malloc_sethandle+0x1c>
  19:	89 70 14             	mov    %esi,0x14(%eax)
  1c:	5b                   	pop    %ebx
  1d:	5e                   	pop    %esi
  1e:	c3                   	ret    

Disassembly of section .text.malloc_findhandle:

00000000 <malloc_findhandle>:
   0:	31 c9                	xor    %ecx,%ecx
   2:	8b 14 8d 00 00 00 00 	mov    0x0(,%ecx,4),%edx
   9:	8b 12                	mov    (%edx),%edx
   b:	85 d2                	test   %edx,%edx
   d:	74 0e                	je     1d <malloc_findhandle+0x1d>
   f:	3b 52 08             	cmp    0x8(%edx),%edx
  12:	75 f5                	jne    9 <malloc_findhandle+0x9>
  14:	39 42 28             	cmp    %eax,0x28(%edx)
  17:	75 f0                	jne    9 <malloc_findhandle+0x9>
  19:	8b 42 1c             	mov    0x1c(%edx),%eax
  1c:	c3                   	ret    
  1d:	41                   	inc    %ecx
  1e:	83 f9 05             	cmp    $0x5,%ecx
  21:	75 df                	jne    2 <malloc_findhandle+0x2>
  23:	31 c0                	xor    %eax,%eax
  25:	c3                   	ret    

Disassembly of section .text.rom_get_max:

00000000 <rom_get_max>:
   0:	a1 00 00 00 00       	mov    0x0,%eax
   5:	8b 40 0c             	mov    0xc(%eax),%eax
   8:	83 e8 10             	sub    $0x10,%eax
   b:	25 00 f8 ff ff       	and    $0xfffff800,%eax
  10:	c3                   	ret    

Disassembly of section .text.rom_get_last:

00000000 <rom_get_last>:
   0:	a1 00 00 00 00       	mov    0x0,%eax
   5:	c3                   	ret    

Disassembly of section .text.rom_reserve:

00000000 <rom_reserve>:
   0:	53                   	push   %ebx
   1:	8b 15 00 00 00 00    	mov    0x0,%edx
   7:	8d 8c 02 ff 07 00 00 	lea    0x7ff(%edx,%eax,1),%ecx
   e:	81 e1 00 f8 ff ff    	and    $0xfffff800,%ecx
  14:	e8 fc ff ff ff       	call   15 <rom_reserve+0x15>
  19:	39 c8                	cmp    %ecx,%eax
  1b:	72 1b                	jb     38 <rom_reserve+0x38>
  1d:	8b 1d 00 00 00 00    	mov    0x0,%ebx
  23:	b8 00 00 00 00       	mov    $0x0,%eax
  28:	39 c8                	cmp    %ecx,%eax
  2a:	73 02                	jae    2e <rom_reserve+0x2e>
  2c:	89 c8                	mov    %ecx,%eax
  2e:	83 c0 10             	add    $0x10,%eax
  31:	89 43 08             	mov    %eax,0x8(%ebx)
  34:	89 d0                	mov    %edx,%eax
  36:	eb 02                	jmp    3a <rom_reserve+0x3a>
  38:	31 c0                	xor    %eax,%eax
  3a:	5b                   	pop    %ebx
  3b:	c3                   	ret    

Disassembly of section .text.rom_confirm:

00000000 <rom_confirm>:
   0:	53                   	push   %ebx
   1:	89 c3                	mov    %eax,%ebx
   3:	e8 fc ff ff ff       	call   4 <rom_confirm+0x4>
   8:	85 c0                	test   %eax,%eax
   a:	75 14                	jne    20 <rom_confirm+0x20>
   c:	ba 00 00 00 00       	mov    $0x0,%edx
  11:	b8 90 01 00 00       	mov    $0x190,%eax
  16:	e8 fc ff ff ff       	call   17 <rom_confirm+0x17>
  1b:	83 c8 ff             	or     $0xffffffff,%eax
  1e:	eb 18                	jmp    38 <rom_confirm+0x38>
  20:	a1 00 00 00 00       	mov    0x0,%eax
  25:	8d 84 03 ff 07 00 00 	lea    0x7ff(%ebx,%eax,1),%eax
  2c:	25 00 f8 ff ff       	and    $0xfffff800,%eax
  31:	a3 00 00 00 00       	mov    %eax,0x0
  36:	31 c0                	xor    %eax,%eax
  38:	5b                   	pop    %ebx
  39:	c3                   	ret    

Disassembly of section .text.malloc_preinit:

00000000 <malloc_preinit>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 08             	sub    $0x8,%esp
   7:	68 52 00 00 00       	push   $0x52
   c:	e8 fc ff ff ff       	call   d <malloc_preinit+0xd>
  11:	6a 00                	push   $0x0
  13:	68 00 00 05 00       	push   $0x50000
  18:	b8 00 00 0a 00       	mov    $0xa0000,%eax
  1d:	31 d2                	xor    %edx,%edx
  1f:	e8 fc ff ff ff       	call   20 <malloc_preinit+0x20>
  24:	6a 02                	push   $0x2
  26:	6a 00                	push   $0x0
  28:	68 00 00 01 00       	push   $0x10000
  2d:	b8 00 00 0f 00       	mov    $0xf0000,%eax
  32:	31 d2                	xor    %edx,%edx
  34:	e8 fc ff ff ff       	call   35 <malloc_preinit+0x35>
  39:	a1 00 00 00 00       	mov    0x0,%eax
  3e:	8d 70 ff             	lea    -0x1(%eax),%esi
  41:	83 c4 18             	add    $0x18,%esp
  44:	31 db                	xor    %ebx,%ebx
  46:	85 f6                	test   %esi,%esi
  48:	78 39                	js     83 <malloc_preinit+0x83>
  4a:	6b ce 14             	imul   $0x14,%esi,%ecx
  4d:	8b 81 00 00 00 00    	mov    0x0(%ecx),%eax
  53:	8b 91 04 00 00 00    	mov    0x4(%ecx),%edx
  59:	89 c7                	mov    %eax,%edi
  5b:	89 d5                	mov    %edx,%ebp
  5d:	03 b9 08 00 00 00    	add    0x8(%ecx),%edi
  63:	13 a9 0c 00 00 00    	adc    0xc(%ecx),%ebp
  69:	89 3c 24             	mov    %edi,(%esp)
  6c:	89 6c 24 04          	mov    %ebp,0x4(%esp)
  70:	bf ff ff 0f 00       	mov    $0xfffff,%edi
  75:	3b 3c 24             	cmp    (%esp),%edi
  78:	bf 00 00 00 00       	mov    $0x0,%edi
  7d:	1b 7c 24 04          	sbb    0x4(%esp),%edi
  81:	72 41                	jb     c4 <malloc_preinit+0xc4>
  83:	b9 00 00 09 00       	mov    $0x90000,%ecx
  88:	ba 00 70 00 00       	mov    $0x7000,%edx
  8d:	b8 00 00 00 00       	mov    $0x0,%eax
  92:	e8 fc ff ff ff       	call   93 <malloc_preinit+0x93>
  97:	85 db                	test   %ebx,%ebx
  99:	74 67                	je     102 <malloc_preinit+0x102>
  9b:	8d 8b 00 00 04 00    	lea    0x40000(%ebx),%ecx
  a1:	89 da                	mov    %ebx,%edx
  a3:	b8 00 00 00 00       	mov    $0x0,%eax
  a8:	e8 fc ff ff ff       	call   a9 <malloc_preinit+0xa9>
  ad:	89 d8                	mov    %ebx,%eax
  af:	31 d2                	xor    %edx,%edx
  b1:	6a 02                	push   $0x2
  b3:	6a 00                	push   $0x0
  b5:	68 00 00 04 00       	push   $0x40000
  ba:	e8 fc ff ff ff       	call   bb <malloc_preinit+0xbb>
  bf:	83 c4 0c             	add    $0xc,%esp
  c2:	eb 3e                	jmp    102 <malloc_preinit+0x102>
  c4:	83 b9 10 00 00 00 01 	cmpl   $0x1,0x10(%ecx)
  cb:	75 2f                	jne    fc <malloc_preinit+0xfc>
  cd:	83 7c 24 04 00       	cmpl   $0x0,0x4(%esp)
  d2:	77 28                	ja     fc <malloc_preinit+0xfc>
  d4:	8b 0c 24             	mov    (%esp),%ecx
  d7:	85 db                	test   %ebx,%ebx
  d9:	75 15                	jne    f0 <malloc_preinit+0xf0>
  db:	8d 91 00 00 fc ff    	lea    -0x40000(%ecx),%edx
  e1:	83 e2 f0             	and    $0xfffffff0,%edx
  e4:	39 d0                	cmp    %edx,%eax
  e6:	77 08                	ja     f0 <malloc_preinit+0xf0>
  e8:	39 d1                	cmp    %edx,%ecx
  ea:	72 04                	jb     f0 <malloc_preinit+0xf0>
  ec:	89 d3                	mov    %edx,%ebx
  ee:	89 d1                	mov    %edx,%ecx
  f0:	89 c2                	mov    %eax,%edx
  f2:	b8 00 00 00 00       	mov    $0x0,%eax
  f7:	e8 fc ff ff ff       	call   f8 <malloc_preinit+0xf8>
  fc:	4e                   	dec    %esi
  fd:	e9 44 ff ff ff       	jmp    46 <malloc_preinit+0x46>
 102:	83 c4 08             	add    $0x8,%esp
 105:	5b                   	pop    %ebx
 106:	5e                   	pop    %esi
 107:	5f                   	pop    %edi
 108:	5d                   	pop    %ebp
 109:	c3                   	ret    

Disassembly of section .text.malloc_csm_preinit:

00000000 <malloc_csm_preinit>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 c6                	mov    %eax,%esi
   6:	89 d3                	mov    %edx,%ebx
   8:	89 ca                	mov    %ecx,%edx
   a:	8b 44 24 14          	mov    0x14(%esp),%eax
   e:	8d 3c 08             	lea    (%eax,%ecx,1),%edi
  11:	3d 00 00 04 00       	cmp    $0x40000,%eax
  16:	76 1d                	jbe    35 <malloc_csm_preinit+0x35>
  18:	8d af 00 00 fc ff    	lea    -0x40000(%edi),%ebp
  1e:	89 e9                	mov    %ebp,%ecx
  20:	b8 00 00 00 00       	mov    $0x0,%eax
  25:	e8 fc ff ff ff       	call   26 <malloc_csm_preinit+0x26>
  2a:	89 f9                	mov    %edi,%ecx
  2c:	89 ea                	mov    %ebp,%edx
  2e:	b8 00 00 00 00       	mov    $0x0,%eax
  33:	eb 07                	jmp    3c <malloc_csm_preinit+0x3c>
  35:	89 f9                	mov    %edi,%ecx
  37:	b8 00 00 00 00       	mov    $0x0,%eax
  3c:	e8 fc ff ff ff       	call   3d <malloc_csm_preinit+0x3d>
  41:	8d 0c 1e             	lea    (%esi,%ebx,1),%ecx
  44:	89 f2                	mov    %esi,%edx
  46:	b8 00 00 00 00       	mov    $0x0,%eax
  4b:	5b                   	pop    %ebx
  4c:	5e                   	pop    %esi
  4d:	5f                   	pop    %edi
  4e:	5d                   	pop    %ebp
  4f:	e9 fc ff ff ff       	jmp    50 <malloc_csm_preinit+0x50>

Disassembly of section .text.malloc_init:

00000000 <malloc_init>:
   0:	68 62 00 00 00       	push   $0x62
   5:	e8 fc ff ff ff       	call   6 <malloc_init+0x6>
   a:	58                   	pop    %eax
   b:	31 c0                	xor    %eax,%eax
   d:	8b 0c 85 00 00 00 00 	mov    0x0(,%eax,4),%ecx
  14:	8b 11                	mov    (%ecx),%edx
  16:	85 d2                	test   %edx,%edx
  18:	74 03                	je     1d <malloc_init+0x1d>
  1a:	89 4a 04             	mov    %ecx,0x4(%edx)
  1d:	40                   	inc    %eax
  1e:	83 f8 05             	cmp    $0x5,%eax
  21:	75 ea                	jne    d <malloc_init+0xd>
  23:	b9 00 00 00 00       	mov    $0x0,%ecx
  28:	81 e9 00 00 00 00    	sub    $0x0,%ecx
  2e:	ba 00 00 00 00       	mov    $0x0,%edx
  33:	b8 00 00 00 00       	mov    $0x0,%eax
  38:	e8 fc ff ff ff       	call   39 <malloc_init+0x39>
  3d:	b9 00 00 00 00       	mov    $0x0,%ecx
  42:	ba 10 00 00 00       	mov    $0x10,%edx
  47:	b8 00 00 00 00       	mov    $0x0,%eax
  4c:	e8 fc ff ff ff       	call   4d <malloc_init+0x4d>
  51:	a1 00 00 00 00       	mov    0x0,%eax
  56:	31 d2                	xor    %edx,%edx
  58:	85 c0                	test   %eax,%eax
  5a:	74 06                	je     62 <malloc_init+0x62>
  5c:	89 c2                	mov    %eax,%edx
  5e:	8b 00                	mov    (%eax),%eax
  60:	eb f6                	jmp    58 <malloc_init+0x58>
  62:	89 15 00 00 00 00    	mov    %edx,0x0
  68:	b9 00 00 00 00       	mov    $0x0,%ecx
  6d:	81 e9 00 00 00 00    	sub    $0x0,%ecx
  73:	31 d2                	xor    %edx,%edx
  75:	b8 00 00 00 00       	mov    $0x0,%eax
  7a:	e8 fc ff ff ff       	call   7b <malloc_init+0x7b>
  7f:	b9 00 00 00 00       	mov    $0x0,%ecx
  84:	ba 00 00 00 00       	mov    $0x0,%edx
  89:	b8 00 00 00 00       	mov    $0x0,%eax
  8e:	e8 fc ff ff ff       	call   8f <malloc_init+0x8f>
  93:	e9 fc ff ff ff       	jmp    94 <malloc_init+0x94>

Disassembly of section .text.malloc_prepboot:

00000000 <malloc_prepboot>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	68 6f 00 00 00       	push   $0x6f
   8:	e8 fc ff ff ff       	call   9 <malloc_prepboot+0x9>
   d:	e8 fc ff ff ff       	call   e <malloc_prepboot+0xe>
  12:	89 c6                	mov    %eax,%esi
  14:	a1 00 00 00 00       	mov    0x0,%eax
  19:	89 f1                	mov    %esi,%ecx
  1b:	29 c1                	sub    %eax,%ecx
  1d:	31 d2                	xor    %edx,%edx
  1f:	e8 fc ff ff ff       	call   20 <malloc_prepboot+0x20>
  24:	66 c7 06 55 aa       	movw   $0xaa55,(%esi)
  29:	b8 00 00 0f 00       	mov    $0xf0000,%eax
  2e:	29 f0                	sub    %esi,%eax
  30:	89 c2                	mov    %eax,%edx
  32:	c1 ea 09             	shr    $0x9,%edx
  35:	59                   	pop    %ecx
  36:	3d ff ff 01 00       	cmp    $0x1ffff,%eax
  3b:	76 05                	jbe    42 <malloc_prepboot+0x42>
  3d:	ba ff 00 00 00       	mov    $0xff,%edx
  42:	88 56 02             	mov    %dl,0x2(%esi)
  45:	0f b7 1d 13 04 00 00 	movzwl 0x413,%ebx
  4c:	c1 e3 0a             	shl    $0xa,%ebx
  4f:	89 d8                	mov    %ebx,%eax
  51:	99                   	cltd   
  52:	6a 02                	push   $0x2
  54:	b9 00 00 0a 00       	mov    $0xa0000,%ecx
  59:	29 d9                	sub    %ebx,%ecx
  5b:	31 db                	xor    %ebx,%ebx
  5d:	53                   	push   %ebx
  5e:	51                   	push   %ecx
  5f:	e8 fc ff ff ff       	call   60 <malloc_prepboot+0x60>
  64:	8b 1d 00 00 00 00    	mov    0x0,%ebx
  6a:	83 c4 0c             	add    $0xc,%esp
  6d:	31 ff                	xor    %edi,%edi
  6f:	85 db                	test   %ebx,%ebx
  71:	74 06                	je     79 <malloc_prepboot+0x79>
  73:	89 df                	mov    %ebx,%edi
  75:	8b 1b                	mov    (%ebx),%ebx
  77:	eb f6                	jmp    6f <malloc_prepboot+0x6f>
  79:	8b 47 08             	mov    0x8(%edi),%eax
  7c:	8b 4f 0c             	mov    0xc(%edi),%ecx
  7f:	29 c1                	sub    %eax,%ecx
  81:	31 d2                	xor    %edx,%edx
  83:	e8 fc ff ff ff       	call   84 <malloc_prepboot+0x84>
  88:	ff 77 0c             	push   0xc(%edi)
  8b:	ff 77 08             	push   0x8(%edi)
  8e:	56                   	push   %esi
  8f:	ff 35 00 00 00 00    	push   0x0
  95:	68 80 00 00 00       	push   $0x80
  9a:	e8 fc ff ff ff       	call   9b <malloc_prepboot+0x9b>
  9f:	a1 00 00 00 00       	mov    0x0,%eax
  a4:	83 c4 14             	add    $0x14,%esp
  a7:	85 c0                	test   %eax,%eax
  a9:	74 06                	je     b1 <malloc_prepboot+0xb1>
  ab:	89 c3                	mov    %eax,%ebx
  ad:	8b 00                	mov    (%eax),%eax
  af:	eb f6                	jmp    a7 <malloc_prepboot+0xa7>
  b1:	85 db                	test   %ebx,%ebx
  b3:	74 29                	je     de <malloc_prepboot+0xde>
  b5:	8b 43 08             	mov    0x8(%ebx),%eax
  b8:	8b 5b 0c             	mov    0xc(%ebx),%ebx
  bb:	29 c3                	sub    %eax,%ebx
  bd:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
  c3:	31 d2                	xor    %edx,%edx
  c5:	6a 01                	push   $0x1
  c7:	31 ff                	xor    %edi,%edi
  c9:	57                   	push   %edi
  ca:	53                   	push   %ebx
  cb:	e8 fc ff ff ff       	call   cc <malloc_prepboot+0xcc>
  d0:	53                   	push   %ebx
  d1:	68 a7 00 00 00       	push   $0xa7
  d6:	e8 fc ff ff ff       	call   d7 <malloc_prepboot+0xd7>
  db:	83 c4 14             	add    $0x14,%esp
  de:	5b                   	pop    %ebx
  df:	5e                   	pop    %esi
  e0:	5f                   	pop    %edi
  e1:	e9 fc ff ff ff       	jmp    e2 <malloc_prepboot+0xe2>
