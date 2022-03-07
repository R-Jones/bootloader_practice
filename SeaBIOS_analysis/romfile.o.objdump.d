
./romfile.o:     file format elf32-i386


Disassembly of section .text.const_read_file:

00000000 <const_read_file>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	89 ce                	mov    %ecx,%esi
   4:	8b 88 84 00 00 00    	mov    0x84(%eax),%ecx
   a:	39 f1                	cmp    %esi,%ecx
   c:	77 12                	ja     20 <const_read_file+0x20>
   e:	8b b0 8c 00 00 00    	mov    0x8c(%eax),%esi
  14:	89 d7                	mov    %edx,%edi
  16:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  18:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
  1e:	eb 03                	jmp    23 <const_read_file+0x23>
  20:	83 c8 ff             	or     $0xffffffff,%eax
  23:	5e                   	pop    %esi
  24:	5f                   	pop    %edi
  25:	c3                   	ret    

Disassembly of section .text.malloc_tmp:

00000000 <malloc_tmp>:
   0:	52                   	push   %edx
   1:	89 c2                	mov    %eax,%edx
   3:	b9 10 00 00 00       	mov    $0x10,%ecx
   8:	89 04 24             	mov    %eax,(%esp)
   b:	b8 00 00 00 00       	mov    $0x0,%eax
  10:	e8 fc ff ff ff       	call   11 <malloc_tmp+0x11>
  15:	85 c0                	test   %eax,%eax
  17:	8b 14 24             	mov    (%esp),%edx
  1a:	75 12                	jne    2e <malloc_tmp+0x2e>
  1c:	b9 10 00 00 00       	mov    $0x10,%ecx
  21:	b8 00 00 00 00       	mov    $0x0,%eax
  26:	83 c4 04             	add    $0x4,%esp
  29:	e9 fc ff ff ff       	jmp    2a <malloc_tmp+0x2a>
  2e:	5a                   	pop    %edx
  2f:	c3                   	ret    

Disassembly of section .text.romfile_add:

00000000 <romfile_add>:
   0:	53                   	push   %ebx
   1:	89 c3                	mov    %eax,%ebx
   3:	ff b0 84 00 00 00    	push   0x84(%eax)
   9:	8d 40 04             	lea    0x4(%eax),%eax
   c:	50                   	push   %eax
   d:	68 00 00 00 00       	push   $0x0
  12:	e8 fc ff ff ff       	call   13 <romfile_add+0x13>
  17:	a1 00 00 00 00       	mov    0x0,%eax
  1c:	89 03                	mov    %eax,(%ebx)
  1e:	89 1d 00 00 00 00    	mov    %ebx,0x0
  24:	83 c4 0c             	add    $0xc,%esp
  27:	5b                   	pop    %ebx
  28:	c3                   	ret    

Disassembly of section .text.romfile_findprefix:

00000000 <romfile_findprefix>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	89 c6                	mov    %eax,%esi
   5:	89 d3                	mov    %edx,%ebx
   7:	e8 fc ff ff ff       	call   8 <romfile_findprefix+0x8>
   c:	89 c7                	mov    %eax,%edi
   e:	85 db                	test   %ebx,%ebx
  10:	75 1a                	jne    2c <romfile_findprefix+0x2c>
  12:	8b 1d 00 00 00 00    	mov    0x0,%ebx
  18:	85 db                	test   %ebx,%ebx
  1a:	74 14                	je     30 <romfile_findprefix+0x30>
  1c:	8d 53 04             	lea    0x4(%ebx),%edx
  1f:	89 f9                	mov    %edi,%ecx
  21:	89 f0                	mov    %esi,%eax
  23:	e8 fc ff ff ff       	call   24 <romfile_findprefix+0x24>
  28:	85 c0                	test   %eax,%eax
  2a:	74 04                	je     30 <romfile_findprefix+0x30>
  2c:	8b 1b                	mov    (%ebx),%ebx
  2e:	eb e8                	jmp    18 <romfile_findprefix+0x18>
  30:	89 d8                	mov    %ebx,%eax
  32:	5b                   	pop    %ebx
  33:	5e                   	pop    %esi
  34:	5f                   	pop    %edi
  35:	c3                   	ret    

Disassembly of section .text.romfile_find:

00000000 <romfile_find>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	89 c6                	mov    %eax,%esi
   5:	e8 fc ff ff ff       	call   6 <romfile_find+0x6>
   a:	8d 78 01             	lea    0x1(%eax),%edi
   d:	8b 1d 00 00 00 00    	mov    0x0,%ebx
  13:	85 db                	test   %ebx,%ebx
  15:	74 14                	je     2b <romfile_find+0x2b>
  17:	8d 53 04             	lea    0x4(%ebx),%edx
  1a:	89 f9                	mov    %edi,%ecx
  1c:	89 f0                	mov    %esi,%eax
  1e:	e8 fc ff ff ff       	call   1f <romfile_find+0x1f>
  23:	85 c0                	test   %eax,%eax
  25:	74 04                	je     2b <romfile_find+0x2b>
  27:	8b 1b                	mov    (%ebx),%ebx
  29:	eb e8                	jmp    13 <romfile_find+0x13>
  2b:	89 d8                	mov    %ebx,%eax
  2d:	5b                   	pop    %ebx
  2e:	5e                   	pop    %esi
  2f:	5f                   	pop    %edi
  30:	c3                   	ret    

Disassembly of section .text.romfile_loadfile:

00000000 <romfile_loadfile>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	51                   	push   %ecx
   5:	89 c5                	mov    %eax,%ebp
   7:	89 14 24             	mov    %edx,(%esp)
   a:	e8 fc ff ff ff       	call   b <romfile_loadfile+0xb>
   f:	85 c0                	test   %eax,%eax
  11:	74 70                	je     83 <romfile_loadfile+0x83>
  13:	89 c7                	mov    %eax,%edi
  15:	8b b0 84 00 00 00    	mov    0x84(%eax),%esi
  1b:	31 db                	xor    %ebx,%ebx
  1d:	85 f6                	test   %esi,%esi
  1f:	74 64                	je     85 <romfile_loadfile+0x85>
  21:	8d 56 01             	lea    0x1(%esi),%edx
  24:	b9 10 00 00 00       	mov    $0x10,%ecx
  29:	b8 00 00 00 00       	mov    $0x0,%eax
  2e:	e8 fc ff ff ff       	call   2f <romfile_loadfile+0x2f>
  33:	89 c3                	mov    %eax,%ebx
  35:	85 c0                	test   %eax,%eax
  37:	75 11                	jne    4a <romfile_loadfile+0x4a>
  39:	ba 00 00 00 00       	mov    $0x0,%edx
  3e:	b8 41 00 00 00       	mov    $0x41,%eax
  43:	e8 fc ff ff ff       	call   44 <romfile_loadfile+0x44>
  48:	eb 3b                	jmp    85 <romfile_loadfile+0x85>
  4a:	56                   	push   %esi
  4b:	55                   	push   %ebp
  4c:	68 1b 00 00 00       	push   $0x1b
  51:	e8 fc ff ff ff       	call   52 <romfile_loadfile+0x52>
  56:	89 f1                	mov    %esi,%ecx
  58:	89 da                	mov    %ebx,%edx
  5a:	89 f8                	mov    %edi,%eax
  5c:	ff 97 88 00 00 00    	call   *0x88(%edi)
  62:	83 c4 0c             	add    $0xc,%esp
  65:	85 c0                	test   %eax,%eax
  67:	79 09                	jns    72 <romfile_loadfile+0x72>
  69:	89 d8                	mov    %ebx,%eax
  6b:	e8 fc ff ff ff       	call   6c <romfile_loadfile+0x6c>
  70:	eb 11                	jmp    83 <romfile_loadfile+0x83>
  72:	83 3c 24 00          	cmpl   $0x0,(%esp)
  76:	74 05                	je     7d <romfile_loadfile+0x7d>
  78:	8b 04 24             	mov    (%esp),%eax
  7b:	89 30                	mov    %esi,(%eax)
  7d:	c6 04 33 00          	movb   $0x0,(%ebx,%esi,1)
  81:	eb 02                	jmp    85 <romfile_loadfile+0x85>
  83:	31 db                	xor    %ebx,%ebx
  85:	89 d8                	mov    %ebx,%eax
  87:	5a                   	pop    %edx
  88:	5b                   	pop    %ebx
  89:	5e                   	pop    %esi
  8a:	5f                   	pop    %edi
  8b:	5d                   	pop    %ebp
  8c:	c3                   	ret    

Disassembly of section .text.romfile_loadint:

00000000 <romfile_loadint>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	57                   	push   %edi
   4:	56                   	push   %esi
   5:	83 ec 08             	sub    $0x8,%esp
   8:	89 d6                	mov    %edx,%esi
   a:	89 cf                	mov    %ecx,%edi
   c:	e8 fc ff ff ff       	call   d <romfile_loadint+0xd>
  11:	85 c0                	test   %eax,%eax
  13:	75 06                	jne    1b <romfile_loadint+0x1b>
  15:	89 f0                	mov    %esi,%eax
  17:	89 fa                	mov    %edi,%edx
  19:	eb 39                	jmp    54 <romfile_loadint+0x54>
  1b:	8b 90 84 00 00 00    	mov    0x84(%eax),%edx
  21:	8d 4a ff             	lea    -0x1(%edx),%ecx
  24:	83 f9 07             	cmp    $0x7,%ecx
  27:	77 ec                	ja     15 <romfile_loadint+0x15>
  29:	85 d1                	test   %edx,%ecx
  2b:	75 e8                	jne    15 <romfile_loadint+0x15>
  2d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  34:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  3b:	00 
  3c:	b9 08 00 00 00       	mov    $0x8,%ecx
  41:	89 e2                	mov    %esp,%edx
  43:	ff 90 88 00 00 00    	call   *0x88(%eax)
  49:	85 c0                	test   %eax,%eax
  4b:	78 c8                	js     15 <romfile_loadint+0x15>
  4d:	8b 04 24             	mov    (%esp),%eax
  50:	8b 54 24 04          	mov    0x4(%esp),%edx
  54:	59                   	pop    %ecx
  55:	5e                   	pop    %esi
  56:	5e                   	pop    %esi
  57:	5f                   	pop    %edi
  58:	5d                   	pop    %ebp
  59:	c3                   	ret    

Disassembly of section .text.const_romfile_add_int:

00000000 <const_romfile_add_int>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	89 c7                	mov    %eax,%edi
   5:	89 d3                	mov    %edx,%ebx
   7:	b8 04 00 00 00       	mov    $0x4,%eax
   c:	e8 fc ff ff ff       	call   d <const_romfile_add_int+0xd>
  11:	85 c0                	test   %eax,%eax
  13:	75 0c                	jne    21 <const_romfile_add_int+0x21>
  15:	ba 00 00 00 00       	mov    $0x0,%edx
  1a:	b8 8d 00 00 00       	mov    $0x8d,%eax
  1f:	eb 1e                	jmp    3f <const_romfile_add_int+0x3f>
  21:	89 c6                	mov    %eax,%esi
  23:	89 18                	mov    %ebx,(%eax)
  25:	b8 90 00 00 00       	mov    $0x90,%eax
  2a:	e8 fc ff ff ff       	call   2b <const_romfile_add_int+0x2b>
  2f:	89 c3                	mov    %eax,%ebx
  31:	85 c0                	test   %eax,%eax
  33:	75 12                	jne    47 <const_romfile_add_int+0x47>
  35:	ba 00 00 00 00       	mov    $0x0,%edx
  3a:	b8 7d 00 00 00       	mov    $0x7d,%eax
  3f:	5b                   	pop    %ebx
  40:	5e                   	pop    %esi
  41:	5f                   	pop    %edi
  42:	e9 fc ff ff ff       	jmp    43 <const_romfile_add_int+0x43>
  47:	b9 90 00 00 00       	mov    $0x90,%ecx
  4c:	31 d2                	xor    %edx,%edx
  4e:	e8 fc ff ff ff       	call   4f <const_romfile_add_int+0x4f>
  53:	8d 43 04             	lea    0x4(%ebx),%eax
  56:	b9 80 00 00 00       	mov    $0x80,%ecx
  5b:	89 fa                	mov    %edi,%edx
  5d:	e8 fc ff ff ff       	call   5e <const_romfile_add_int+0x5e>
  62:	c7 83 84 00 00 00 04 	movl   $0x4,0x84(%ebx)
  69:	00 00 00 
  6c:	c7 83 88 00 00 00 00 	movl   $0x0,0x88(%ebx)
  73:	00 00 00 
  76:	89 b3 8c 00 00 00    	mov    %esi,0x8c(%ebx)
  7c:	89 d8                	mov    %ebx,%eax
  7e:	5b                   	pop    %ebx
  7f:	5e                   	pop    %esi
  80:	5f                   	pop    %edi
  81:	e9 fc ff ff ff       	jmp    82 <const_romfile_add_int+0x82>
