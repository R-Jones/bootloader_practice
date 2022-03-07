
./biostables.o:     file format elf32-i386


Disassembly of section .text.get_acpi_rsdp_length:

00000000 <get_acpi_rsdp_length>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	89 c3                	mov    %eax,%ebx
   5:	89 d7                	mov    %edx,%edi
   7:	8b 00                	mov    (%eax),%eax
   9:	35 52 53 44 20       	xor    $0x20445352,%eax
   e:	8b 53 04             	mov    0x4(%ebx),%edx
  11:	81 f2 50 54 52 20    	xor    $0x20525450,%edx
  17:	09 d0                	or     %edx,%eax
  19:	75 05                	jne    20 <get_acpi_rsdp_length+0x20>
  1b:	83 ff 13             	cmp    $0x13,%edi
  1e:	77 05                	ja     25 <get_acpi_rsdp_length+0x25>
  20:	83 c8 ff             	or     $0xffffffff,%eax
  23:	eb 33                	jmp    58 <get_acpi_rsdp_length+0x58>
  25:	ba 14 00 00 00       	mov    $0x14,%edx
  2a:	89 d8                	mov    %ebx,%eax
  2c:	e8 fc ff ff ff       	call   2d <get_acpi_rsdp_length+0x2d>
  31:	84 c0                	test   %al,%al
  33:	75 eb                	jne    20 <get_acpi_rsdp_length+0x20>
  35:	80 7b 0f 01          	cmpb   $0x1,0xf(%ebx)
  39:	76 16                	jbe    51 <get_acpi_rsdp_length+0x51>
  3b:	8b 73 14             	mov    0x14(%ebx),%esi
  3e:	39 f7                	cmp    %esi,%edi
  40:	72 de                	jb     20 <get_acpi_rsdp_length+0x20>
  42:	89 f2                	mov    %esi,%edx
  44:	89 d8                	mov    %ebx,%eax
  46:	e8 fc ff ff ff       	call   47 <get_acpi_rsdp_length+0x47>
  4b:	84 c0                	test   %al,%al
  4d:	74 07                	je     56 <get_acpi_rsdp_length+0x56>
  4f:	eb cf                	jmp    20 <get_acpi_rsdp_length+0x20>
  51:	be 14 00 00 00       	mov    $0x14,%esi
  56:	89 f0                	mov    %esi,%eax
  58:	5b                   	pop    %ebx
  59:	5e                   	pop    %esi
  5a:	5f                   	pop    %edi
  5b:	c3                   	ret    

Disassembly of section .text.malloc_fseg:

00000000 <malloc_fseg>:
   0:	89 c2                	mov    %eax,%edx
   2:	b9 10 00 00 00       	mov    $0x10,%ecx
   7:	b8 00 00 00 00       	mov    $0x0,%eax
   c:	e9 fc ff ff ff       	jmp    d <malloc_fseg+0xd>

Disassembly of section .text.copy_pir:

00000000 <copy_pir>:
   0:	81 38 24 50 49 52    	cmpl   $0x52495024,(%eax)
   6:	75 63                	jne    6b <copy_pir+0x6b>
   8:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
   f:	75 5a                	jne    6b <copy_pir+0x6b>
  11:	57                   	push   %edi
  12:	56                   	push   %esi
  13:	53                   	push   %ebx
  14:	89 c6                	mov    %eax,%esi
  16:	0f b7 50 06          	movzwl 0x6(%eax),%edx
  1a:	66 83 fa 1f          	cmp    $0x1f,%dx
  1e:	76 47                	jbe    67 <copy_pir+0x67>
  20:	e8 fc ff ff ff       	call   21 <copy_pir+0x21>
  25:	84 c0                	test   %al,%al
  27:	75 3e                	jne    67 <copy_pir+0x67>
  29:	0f b7 46 06          	movzwl 0x6(%esi),%eax
  2d:	e8 fc ff ff ff       	call   2e <copy_pir+0x2e>
  32:	89 c3                	mov    %eax,%ebx
  34:	85 c0                	test   %eax,%eax
  36:	75 12                	jne    4a <copy_pir+0x4a>
  38:	ba 00 00 00 00       	mov    $0x0,%edx
  3d:	b8 26 00 00 00       	mov    $0x26,%eax
  42:	5b                   	pop    %ebx
  43:	5e                   	pop    %esi
  44:	5f                   	pop    %edi
  45:	e9 fc ff ff ff       	jmp    46 <copy_pir+0x46>
  4a:	50                   	push   %eax
  4b:	56                   	push   %esi
  4c:	68 00 00 00 00       	push   $0x0
  51:	e8 fc ff ff ff       	call   52 <copy_pir+0x52>
  56:	0f b7 4e 06          	movzwl 0x6(%esi),%ecx
  5a:	89 df                	mov    %ebx,%edi
  5c:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  5e:	89 1d 00 00 00 00    	mov    %ebx,0x0
  64:	83 c4 0c             	add    $0xc,%esp
  67:	5b                   	pop    %ebx
  68:	5e                   	pop    %esi
  69:	5f                   	pop    %edi
  6a:	c3                   	ret    
  6b:	c3                   	ret    

Disassembly of section .text.copy_mptable:

00000000 <copy_mptable>:
   0:	81 38 5f 4d 50 5f    	cmpl   $0x5f504d5f,(%eax)
   6:	0f 85 b7 00 00 00    	jne    c3 <copy_mptable+0xc3>
   c:	55                   	push   %ebp
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	83 ec 08             	sub    $0x8,%esp
  13:	89 c5                	mov    %eax,%ebp
  15:	83 78 04 00          	cmpl   $0x0,0x4(%eax)
  19:	0f 84 9c 00 00 00    	je     bb <copy_mptable+0xbb>
  1f:	ba 10 00 00 00       	mov    $0x10,%edx
  24:	e8 fc ff ff ff       	call   25 <copy_mptable+0x25>
  29:	84 c0                	test   %al,%al
  2b:	0f 85 8a 00 00 00    	jne    bb <copy_mptable+0xbb>
  31:	0f b6 45 08          	movzbl 0x8(%ebp),%eax
  35:	c1 e0 04             	shl    $0x4,%eax
  38:	89 04 24             	mov    %eax,(%esp)
  3b:	8b 45 04             	mov    0x4(%ebp),%eax
  3e:	0f b7 40 04          	movzwl 0x4(%eax),%eax
  42:	89 44 24 04          	mov    %eax,0x4(%esp)
  46:	8b 04 24             	mov    (%esp),%eax
  49:	03 44 24 04          	add    0x4(%esp),%eax
  4d:	3d 58 02 00 00       	cmp    $0x258,%eax
  52:	76 0f                	jbe    63 <copy_mptable+0x63>
  54:	50                   	push   %eax
  55:	68 1b 00 00 00       	push   $0x1b
  5a:	e8 fc ff ff ff       	call   5b <copy_mptable+0x5b>
  5f:	5e                   	pop    %esi
  60:	5f                   	pop    %edi
  61:	eb 58                	jmp    bb <copy_mptable+0xbb>
  63:	e8 fc ff ff ff       	call   64 <copy_mptable+0x64>
  68:	89 c3                	mov    %eax,%ebx
  6a:	85 c0                	test   %eax,%eax
  6c:	75 16                	jne    84 <copy_mptable+0x84>
  6e:	ba 00 00 00 00       	mov    $0x0,%edx
  73:	b8 44 00 00 00       	mov    $0x44,%eax
  78:	83 c4 08             	add    $0x8,%esp
  7b:	5b                   	pop    %ebx
  7c:	5e                   	pop    %esi
  7d:	5f                   	pop    %edi
  7e:	5d                   	pop    %ebp
  7f:	e9 fc ff ff ff       	jmp    80 <copy_mptable+0x80>
  84:	50                   	push   %eax
  85:	ff 75 04             	push   0x4(%ebp)
  88:	55                   	push   %ebp
  89:	68 4f 00 00 00       	push   $0x4f
  8e:	e8 fc ff ff ff       	call   8f <copy_mptable+0x8f>
  93:	89 df                	mov    %ebx,%edi
  95:	89 ee                	mov    %ebp,%esi
  97:	8b 4c 24 10          	mov    0x10(%esp),%ecx
  9b:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  9d:	89 7b 04             	mov    %edi,0x4(%ebx)
  a0:	ba 10 00 00 00       	mov    $0x10,%edx
  a5:	89 d8                	mov    %ebx,%eax
  a7:	e8 fc ff ff ff       	call   a8 <copy_mptable+0xa8>
  ac:	28 43 0a             	sub    %al,0xa(%ebx)
  af:	8b 75 04             	mov    0x4(%ebp),%esi
  b2:	8b 4c 24 14          	mov    0x14(%esp),%ecx
  b6:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  b8:	83 c4 10             	add    $0x10,%esp
  bb:	83 c4 08             	add    $0x8,%esp
  be:	5b                   	pop    %ebx
  bf:	5e                   	pop    %esi
  c0:	5f                   	pop    %edi
  c1:	5d                   	pop    %ebp
  c2:	c3                   	ret    
  c3:	c3                   	ret    

Disassembly of section .text.copy_acpi_rsdp:

00000000 <copy_acpi_rsdp>:
   0:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
   7:	75 52                	jne    5b <copy_acpi_rsdp+0x5b>
   9:	55                   	push   %ebp
   a:	57                   	push   %edi
   b:	56                   	push   %esi
   c:	53                   	push   %ebx
   d:	89 c6                	mov    %eax,%esi
   f:	83 ca ff             	or     $0xffffffff,%edx
  12:	e8 fc ff ff ff       	call   13 <copy_acpi_rsdp+0x13>
  17:	89 c3                	mov    %eax,%ebx
  19:	85 c0                	test   %eax,%eax
  1b:	78 39                	js     56 <copy_acpi_rsdp+0x56>
  1d:	e8 fc ff ff ff       	call   1e <copy_acpi_rsdp+0x1e>
  22:	89 c5                	mov    %eax,%ebp
  24:	85 c0                	test   %eax,%eax
  26:	75 13                	jne    3b <copy_acpi_rsdp+0x3b>
  28:	ba 00 00 00 00       	mov    $0x0,%edx
  2d:	b8 74 00 00 00       	mov    $0x74,%eax
  32:	5b                   	pop    %ebx
  33:	5e                   	pop    %esi
  34:	5f                   	pop    %edi
  35:	5d                   	pop    %ebp
  36:	e9 fc ff ff ff       	jmp    37 <copy_acpi_rsdp+0x37>
  3b:	50                   	push   %eax
  3c:	56                   	push   %esi
  3d:	68 71 00 00 00       	push   $0x71
  42:	e8 fc ff ff ff       	call   43 <copy_acpi_rsdp+0x43>
  47:	89 ef                	mov    %ebp,%edi
  49:	89 d9                	mov    %ebx,%ecx
  4b:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  4d:	89 2d 00 00 00 00    	mov    %ebp,0x0
  53:	83 c4 0c             	add    $0xc,%esp
  56:	5b                   	pop    %ebx
  57:	5e                   	pop    %esi
  58:	5f                   	pop    %edi
  59:	5d                   	pop    %ebp
  5a:	c3                   	ret    
  5b:	c3                   	ret    

Disassembly of section .text.find_acpi_rsdp:

00000000 <find_acpi_rsdp>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	bf 00 00 00 00       	mov    $0x0,%edi
   8:	bb 0f 00 00 00       	mov    $0xf,%ebx
   d:	83 e3 f0             	and    $0xfffffff0,%ebx
  10:	89 f8                	mov    %edi,%eax
  12:	83 e0 f0             	and    $0xfffffff0,%eax
  15:	39 d8                	cmp    %ebx,%eax
  17:	72 16                	jb     2f <find_acpi_rsdp+0x2f>
  19:	89 de                	mov    %ebx,%esi
  1b:	89 fa                	mov    %edi,%edx
  1d:	29 da                	sub    %ebx,%edx
  1f:	89 d8                	mov    %ebx,%eax
  21:	e8 fc ff ff ff       	call   22 <find_acpi_rsdp+0x22>
  26:	85 c0                	test   %eax,%eax
  28:	79 07                	jns    31 <find_acpi_rsdp+0x31>
  2a:	83 c3 10             	add    $0x10,%ebx
  2d:	eb e1                	jmp    10 <find_acpi_rsdp+0x10>
  2f:	31 f6                	xor    %esi,%esi
  31:	89 f0                	mov    %esi,%eax
  33:	5b                   	pop    %ebx
  34:	5e                   	pop    %esi
  35:	5f                   	pop    %edi
  36:	c3                   	ret    

Disassembly of section .text.find_acpi_table:

00000000 <find_acpi_table>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 c7                	mov    %eax,%edi
   6:	ff 35 00 00 00 00    	push   0x0
   c:	68 92 00 00 00       	push   $0x92
  11:	e8 fc ff ff ff       	call   12 <find_acpi_table+0x12>
  16:	8b 1d 00 00 00 00    	mov    0x0,%ebx
  1c:	59                   	pop    %ecx
  1d:	5e                   	pop    %esi
  1e:	85 db                	test   %ebx,%ebx
  20:	0f 84 c0 00 00 00    	je     e6 <find_acpi_table+0xe6>
  26:	81 7b 04 50 54 52 20 	cmpl   $0x20525450,0x4(%ebx)
  2d:	0f 85 b1 00 00 00    	jne    e4 <find_acpi_table+0xe4>
  33:	81 3b 52 53 44 20    	cmpl   $0x20445352,(%ebx)
  39:	0f 85 a5 00 00 00    	jne    e4 <find_acpi_table+0xe4>
  3f:	8b 6b 10             	mov    0x10(%ebx),%ebp
  42:	8b 43 18             	mov    0x18(%ebx),%eax
  45:	31 f6                	xor    %esi,%esi
  47:	83 7b 1c 00          	cmpl   $0x0,0x1c(%ebx)
  4b:	75 02                	jne    4f <find_acpi_table+0x4f>
  4d:	89 c6                	mov    %eax,%esi
  4f:	55                   	push   %ebp
  50:	68 9b 00 00 00       	push   $0x9b
  55:	e8 fc ff ff ff       	call   56 <find_acpi_table+0x56>
  5a:	56                   	push   %esi
  5b:	68 a4 00 00 00       	push   $0xa4
  60:	e8 fc ff ff ff       	call   61 <find_acpi_table+0x61>
  65:	83 c4 10             	add    $0x10,%esp
  68:	85 f6                	test   %esi,%esi
  6a:	74 32                	je     9e <find_acpi_table+0x9e>
  6c:	81 3e 58 53 44 54    	cmpl   $0x54445358,(%esi)
  72:	75 2a                	jne    9e <find_acpi_table+0x9e>
  74:	8b 46 04             	mov    0x4(%esi),%eax
  77:	01 f0                	add    %esi,%eax
  79:	83 c6 24             	add    $0x24,%esi
  7c:	39 f0                	cmp    %esi,%eax
  7e:	76 1e                	jbe    9e <find_acpi_table+0x9e>
  80:	8b 1e                	mov    (%esi),%ebx
  82:	83 7e 04 00          	cmpl   $0x0,0x4(%esi)
  86:	75 11                	jne    99 <find_acpi_table+0x99>
  88:	85 db                	test   %ebx,%ebx
  8a:	74 0d                	je     99 <find_acpi_table+0x99>
  8c:	39 3b                	cmp    %edi,(%ebx)
  8e:	75 09                	jne    99 <find_acpi_table+0x99>
  90:	53                   	push   %ebx
  91:	57                   	push   %edi
  92:	68 ad 00 00 00       	push   $0xad
  97:	eb 34                	jmp    cd <find_acpi_table+0xcd>
  99:	83 c6 08             	add    $0x8,%esi
  9c:	eb de                	jmp    7c <find_acpi_table+0x7c>
  9e:	85 ed                	test   %ebp,%ebp
  a0:	74 35                	je     d7 <find_acpi_table+0xd7>
  a2:	81 7d 00 52 53 44 54 	cmpl   $0x54445352,0x0(%ebp)
  a9:	75 2c                	jne    d7 <find_acpi_table+0xd7>
  ab:	8b 55 04             	mov    0x4(%ebp),%edx
  ae:	01 ea                	add    %ebp,%edx
  b0:	8d 45 24             	lea    0x24(%ebp),%eax
  b3:	eb 03                	jmp    b8 <find_acpi_table+0xb8>
  b5:	83 c0 04             	add    $0x4,%eax
  b8:	39 c2                	cmp    %eax,%edx
  ba:	76 1b                	jbe    d7 <find_acpi_table+0xd7>
  bc:	8b 18                	mov    (%eax),%ebx
  be:	85 db                	test   %ebx,%ebx
  c0:	74 f3                	je     b5 <find_acpi_table+0xb5>
  c2:	39 3b                	cmp    %edi,(%ebx)
  c4:	75 ef                	jne    b5 <find_acpi_table+0xb5>
  c6:	53                   	push   %ebx
  c7:	57                   	push   %edi
  c8:	68 c6 00 00 00       	push   $0xc6
  cd:	e8 fc ff ff ff       	call   ce <find_acpi_table+0xce>
  d2:	83 c4 0c             	add    $0xc,%esp
  d5:	eb 0f                	jmp    e6 <find_acpi_table+0xe6>
  d7:	57                   	push   %edi
  d8:	68 df 00 00 00       	push   $0xdf
  dd:	e8 fc ff ff ff       	call   de <find_acpi_table+0xde>
  e2:	58                   	pop    %eax
  e3:	5a                   	pop    %edx
  e4:	31 db                	xor    %ebx,%ebx
  e6:	89 d8                	mov    %ebx,%eax
  e8:	5b                   	pop    %ebx
  e9:	5e                   	pop    %esi
  ea:	5f                   	pop    %edi
  eb:	5d                   	pop    %ebp
  ec:	c3                   	ret    

Disassembly of section .text.find_resume_vector:

00000000 <find_resume_vector>:
   0:	53                   	push   %ebx
   1:	b8 46 41 43 50       	mov    $0x50434146,%eax
   6:	e8 fc ff ff ff       	call   7 <find_resume_vector+0x7>
   b:	85 c0                	test   %eax,%eax
   d:	75 04                	jne    13 <find_resume_vector+0x13>
   f:	31 c0                	xor    %eax,%eax
  11:	eb 2e                	jmp    41 <find_resume_vector+0x41>
  13:	8b 58 24             	mov    0x24(%eax),%ebx
  16:	53                   	push   %ebx
  17:	68 f2 00 00 00       	push   $0xf2
  1c:	e8 fc ff ff ff       	call   1d <find_resume_vector+0x1d>
  21:	58                   	pop    %eax
  22:	5a                   	pop    %edx
  23:	85 db                	test   %ebx,%ebx
  25:	74 e8                	je     f <find_resume_vector+0xf>
  27:	81 3b 46 41 43 53    	cmpl   $0x53434146,(%ebx)
  2d:	75 e0                	jne    f <find_resume_vector+0xf>
  2f:	ff 73 0c             	push   0xc(%ebx)
  32:	68 fb 00 00 00       	push   $0xfb
  37:	e8 fc ff ff ff       	call   38 <find_resume_vector+0x38>
  3c:	8b 43 0c             	mov    0xc(%ebx),%eax
  3f:	5a                   	pop    %edx
  40:	59                   	pop    %ecx
  41:	5b                   	pop    %ebx
  42:	c3                   	ret    

Disassembly of section .text.acpi_reboot:

00000000 <acpi_reboot>:
   0:	80 3d 01 00 00 00 08 	cmpb   $0x8,0x1
   7:	75 76                	jne    7f <acpi_reboot+0x7f>
   9:	57                   	push   %edi
   a:	56                   	push   %esi
   b:	8b 35 04 00 00 00    	mov    0x4,%esi
  11:	8b 3d 08 00 00 00    	mov    0x8,%edi
  17:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
  1e:	50                   	push   %eax
  1f:	57                   	push   %edi
  20:	56                   	push   %esi
  21:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
  28:	50                   	push   %eax
  29:	68 0b 01 00 00       	push   $0x10b
  2e:	e8 fc ff ff ff       	call   2f <acpi_reboot+0x2f>
  33:	a0 00 00 00 00       	mov    0x0,%al
  38:	83 c4 14             	add    $0x14,%esp
  3b:	3c 01                	cmp    $0x1,%al
  3d:	74 11                	je     50 <acpi_reboot+0x50>
  3f:	3c 02                	cmp    $0x2,%al
  41:	74 17                	je     5a <acpi_reboot+0x5a>
  43:	84 c0                	test   %al,%al
  45:	75 35                	jne    7c <acpi_reboot+0x7c>
  47:	a0 00 00 00 00       	mov    0x0,%al
  4c:	88 06                	mov    %al,(%esi)
  4e:	eb 2c                	jmp    7c <acpi_reboot+0x7c>
  50:	a0 00 00 00 00       	mov    0x0,%al
  55:	89 f2                	mov    %esi,%edx
  57:	ee                   	out    %al,(%dx)
  58:	eb 22                	jmp    7c <acpi_reboot+0x7c>
  5a:	0f b6 0d 00 00 00 00 	movzbl 0x0,%ecx
  61:	0f b7 d6             	movzwl %si,%edx
  64:	89 f8                	mov    %edi,%eax
  66:	c1 e0 03             	shl    $0x3,%eax
  69:	0f ac fe 10          	shrd   $0x10,%edi,%esi
  6d:	c1 ef 10             	shr    $0x10,%edi
  70:	09 f0                	or     %esi,%eax
  72:	0f b7 c0             	movzwl %ax,%eax
  75:	5e                   	pop    %esi
  76:	5f                   	pop    %edi
  77:	e9 fc ff ff ff       	jmp    78 <acpi_reboot+0x78>
  7c:	5e                   	pop    %esi
  7d:	5f                   	pop    %edi
  7e:	c3                   	ret    
  7f:	c3                   	ret    

Disassembly of section .text.find_acpi_features:

00000000 <find_acpi_features>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	b8 46 41 43 50       	mov    $0x50434146,%eax
   8:	e8 fc ff ff ff       	call   9 <find_acpi_features+0x9>
   d:	85 c0                	test   %eax,%eax
   f:	74 68                	je     79 <find_acpi_features+0x79>
  11:	89 c6                	mov    %eax,%esi
  13:	8b 58 4c             	mov    0x4c(%eax),%ebx
  16:	8b 78 40             	mov    0x40(%eax),%edi
  19:	53                   	push   %ebx
  1a:	68 29 01 00 00       	push   $0x129
  1f:	e8 fc ff ff ff       	call   20 <find_acpi_features+0x20>
  24:	58                   	pop    %eax
  25:	5a                   	pop    %edx
  26:	85 db                	test   %ebx,%ebx
  28:	74 08                	je     32 <find_acpi_features+0x32>
  2a:	0f b7 c3             	movzwl %bx,%eax
  2d:	e8 fc ff ff ff       	call   2e <find_acpi_features+0x2e>
  32:	85 ff                	test   %edi,%edi
  34:	74 06                	je     3c <find_acpi_features+0x3c>
  36:	89 3d 00 00 00 00    	mov    %edi,0x0
  3c:	81 7e 04 80 00 00 00 	cmpl   $0x80,0x4(%esi)
  43:	76 2c                	jbe    71 <find_acpi_features+0x71>
  45:	80 7e 74 02          	cmpb   $0x2,0x74(%esi)
  49:	77 26                	ja     71 <find_acpi_features+0x71>
  4b:	80 7e 75 08          	cmpb   $0x8,0x75(%esi)
  4f:	75 20                	jne    71 <find_acpi_features+0x71>
  51:	80 7e 76 00          	cmpb   $0x0,0x76(%esi)
  55:	75 1a                	jne    71 <find_acpi_features+0x71>
  57:	8a 86 80 00 00 00    	mov    0x80(%esi),%al
  5d:	bf 00 00 00 00       	mov    $0x0,%edi
  62:	83 c6 74             	add    $0x74,%esi
  65:	b9 03 00 00 00       	mov    $0x3,%ecx
  6a:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  6c:	a2 00 00 00 00       	mov    %al,0x0
  71:	5b                   	pop    %ebx
  72:	5e                   	pop    %esi
  73:	5f                   	pop    %edi
  74:	e9 fc ff ff ff       	jmp    75 <find_acpi_features+0x75>
  79:	5b                   	pop    %ebx
  7a:	5e                   	pop    %esi
  7b:	5f                   	pop    %edi
  7c:	c3                   	ret    

Disassembly of section .text.smbios_next:

00000000 <smbios_next>:
   0:	85 c0                	test   %eax,%eax
   2:	74 55                	je     59 <smbios_next+0x59>
   4:	53                   	push   %ebx
   5:	8b 48 18             	mov    0x18(%eax),%ecx
   8:	0f b7 58 16          	movzwl 0x16(%eax),%ebx
   c:	01 cb                	add    %ecx,%ebx
   e:	85 d2                	test   %edx,%edx
  10:	74 26                	je     38 <smbios_next+0x38>
  12:	8d 4a 04             	lea    0x4(%edx),%ecx
  15:	31 c0                	xor    %eax,%eax
  17:	39 cb                	cmp    %ecx,%ebx
  19:	72 3c                	jb     57 <smbios_next+0x57>
  1b:	0f b6 42 01          	movzbl 0x1(%edx),%eax
  1f:	8d 4c 02 02          	lea    0x2(%edx,%eax,1),%ecx
  23:	39 d9                	cmp    %ebx,%ecx
  25:	73 2e                	jae    55 <smbios_next+0x55>
  27:	80 79 ff 00          	cmpb   $0x0,-0x1(%ecx)
  2b:	74 03                	je     30 <smbios_next+0x30>
  2d:	41                   	inc    %ecx
  2e:	eb f3                	jmp    23 <smbios_next+0x23>
  30:	80 79 fe 00          	cmpb   $0x0,-0x2(%ecx)
  34:	75 f7                	jne    2d <smbios_next+0x2d>
  36:	eb 06                	jmp    3e <smbios_next+0x3e>
  38:	31 c0                	xor    %eax,%eax
  3a:	39 d9                	cmp    %ebx,%ecx
  3c:	73 19                	jae    57 <smbios_next+0x57>
  3e:	8d 51 04             	lea    0x4(%ecx),%edx
  41:	31 c0                	xor    %eax,%eax
  43:	39 d3                	cmp    %edx,%ebx
  45:	76 10                	jbe    57 <smbios_next+0x57>
  47:	0f b6 51 01          	movzbl 0x1(%ecx),%edx
  4b:	01 ca                	add    %ecx,%edx
  4d:	39 d3                	cmp    %edx,%ebx
  4f:	76 06                	jbe    57 <smbios_next+0x57>
  51:	89 c8                	mov    %ecx,%eax
  53:	eb 02                	jmp    57 <smbios_next+0x57>
  55:	31 c0                	xor    %eax,%eax
  57:	5b                   	pop    %ebx
  58:	c3                   	ret    
  59:	c3                   	ret    

Disassembly of section .text.copy_smbios:

00000000 <copy_smbios>:
   0:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
   7:	0f 85 87 00 00 00    	jne    94 <copy_smbios+0x94>
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	89 c6                	mov    %eax,%esi
  12:	81 38 5f 53 4d 5f    	cmpl   $0x5f4d535f,(%eax)
  18:	75 76                	jne    90 <copy_smbios+0x90>
  1a:	ba 10 00 00 00       	mov    $0x10,%edx
  1f:	e8 fc ff ff ff       	call   20 <copy_smbios+0x20>
  24:	84 c0                	test   %al,%al
  26:	75 68                	jne    90 <copy_smbios+0x90>
  28:	8d 5e 10             	lea    0x10(%esi),%ebx
  2b:	b9 05 00 00 00       	mov    $0x5,%ecx
  30:	ba 38 01 00 00       	mov    $0x138,%edx
  35:	89 d8                	mov    %ebx,%eax
  37:	e8 fc ff ff ff       	call   38 <copy_smbios+0x38>
  3c:	85 c0                	test   %eax,%eax
  3e:	75 50                	jne    90 <copy_smbios+0x90>
  40:	0f b6 56 05          	movzbl 0x5(%esi),%edx
  44:	83 ea 10             	sub    $0x10,%edx
  47:	89 d8                	mov    %ebx,%eax
  49:	e8 fc ff ff ff       	call   4a <copy_smbios+0x4a>
  4e:	84 c0                	test   %al,%al
  50:	75 3e                	jne    90 <copy_smbios+0x90>
  52:	0f b6 46 05          	movzbl 0x5(%esi),%eax
  56:	e8 fc ff ff ff       	call   57 <copy_smbios+0x57>
  5b:	89 c3                	mov    %eax,%ebx
  5d:	85 c0                	test   %eax,%eax
  5f:	75 12                	jne    73 <copy_smbios+0x73>
  61:	ba 00 00 00 00       	mov    $0x0,%edx
  66:	b8 36 01 00 00       	mov    $0x136,%eax
  6b:	5b                   	pop    %ebx
  6c:	5e                   	pop    %esi
  6d:	5f                   	pop    %edi
  6e:	e9 fc ff ff ff       	jmp    6f <copy_smbios+0x6f>
  73:	50                   	push   %eax
  74:	56                   	push   %esi
  75:	68 3e 01 00 00       	push   $0x13e
  7a:	e8 fc ff ff ff       	call   7b <copy_smbios+0x7b>
  7f:	0f b6 4e 05          	movzbl 0x5(%esi),%ecx
  83:	89 df                	mov    %ebx,%edi
  85:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  87:	89 1d 00 00 00 00    	mov    %ebx,0x0
  8d:	83 c4 0c             	add    $0xc,%esp
  90:	5b                   	pop    %ebx
  91:	5e                   	pop    %esi
  92:	5f                   	pop    %edi
  93:	c3                   	ret    
  94:	c3                   	ret    

Disassembly of section .text.display_uuid:

00000000 <display_uuid>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 38             	sub    $0x38,%esp
   7:	8b 35 00 00 00 00    	mov    0x0,%esi
   d:	31 d2                	xor    %edx,%edx
   f:	89 f0                	mov    %esi,%eax
  11:	e8 fc ff ff ff       	call   12 <display_uuid+0x12>
  16:	89 c3                	mov    %eax,%ebx
  18:	85 c0                	test   %eax,%eax
  1a:	0f 84 30 01 00 00    	je     150 <display_uuid+0x150>
  20:	80 3b 01             	cmpb   $0x1,(%ebx)
  23:	0f 85 20 01 00 00    	jne    149 <display_uuid+0x149>
  29:	80 7b 01 17          	cmpb   $0x17,0x1(%ebx)
  2d:	0f 86 16 01 00 00    	jbe    149 <display_uuid+0x149>
  33:	c7 44 24 28 00 00 00 	movl   $0x0,0x28(%esp)
  3a:	00 
  3b:	8d 7c 24 2c          	lea    0x2c(%esp),%edi
  3f:	b9 03 00 00 00       	mov    $0x3,%ecx
  44:	31 c0                	xor    %eax,%eax
  46:	f3 ab                	rep stos %eax,%es:(%edi)
  48:	8d 43 08             	lea    0x8(%ebx),%eax
  4b:	b9 10 00 00 00       	mov    $0x10,%ecx
  50:	8d 54 24 28          	lea    0x28(%esp),%edx
  54:	e8 fc ff ff ff       	call   55 <display_uuid+0x55>
  59:	85 c0                	test   %eax,%eax
  5b:	0f 84 ef 00 00 00    	je     150 <display_uuid+0x150>
  61:	8b 2d 00 00 00 00    	mov    0x0,%ebp
  67:	80 7d 06 02          	cmpb   $0x2,0x6(%ebp)
  6b:	0f b6 7b 17          	movzbl 0x17(%ebx),%edi
  6f:	0f b6 73 16          	movzbl 0x16(%ebx),%esi
  73:	0f b6 4b 15          	movzbl 0x15(%ebx),%ecx
  77:	0f b6 53 14          	movzbl 0x14(%ebx),%edx
  7b:	0f b6 43 13          	movzbl 0x13(%ebx),%eax
  7f:	89 04 24             	mov    %eax,(%esp)
  82:	0f b6 43 12          	movzbl 0x12(%ebx),%eax
  86:	89 44 24 04          	mov    %eax,0x4(%esp)
  8a:	0f b6 43 11          	movzbl 0x11(%ebx),%eax
  8e:	89 44 24 08          	mov    %eax,0x8(%esp)
  92:	0f b6 43 10          	movzbl 0x10(%ebx),%eax
  96:	89 44 24 0c          	mov    %eax,0xc(%esp)
  9a:	0f b6 43 0e          	movzbl 0xe(%ebx),%eax
  9e:	89 44 24 10          	mov    %eax,0x10(%esp)
  a2:	0f b6 43 0f          	movzbl 0xf(%ebx),%eax
  a6:	89 44 24 14          	mov    %eax,0x14(%esp)
  aa:	0f b6 43 0c          	movzbl 0xc(%ebx),%eax
  ae:	89 44 24 18          	mov    %eax,0x18(%esp)
  b2:	0f b6 43 0d          	movzbl 0xd(%ebx),%eax
  b6:	89 44 24 1c          	mov    %eax,0x1c(%esp)
  ba:	0f b6 43 08          	movzbl 0x8(%ebx),%eax
  be:	89 44 24 20          	mov    %eax,0x20(%esp)
  c2:	0f b6 43 09          	movzbl 0x9(%ebx),%eax
  c6:	89 44 24 24          	mov    %eax,0x24(%esp)
  ca:	0f b6 43 0a          	movzbl 0xa(%ebx),%eax
  ce:	0f b6 5b 0b          	movzbl 0xb(%ebx),%ebx
  d2:	77 08                	ja     dc <display_uuid+0xdc>
  d4:	75 36                	jne    10c <display_uuid+0x10c>
  d6:	80 7d 07 05          	cmpb   $0x5,0x7(%ebp)
  da:	76 30                	jbe    10c <display_uuid+0x10c>
  dc:	57                   	push   %edi
  dd:	56                   	push   %esi
  de:	51                   	push   %ecx
  df:	52                   	push   %edx
  e0:	ff 74 24 10          	push   0x10(%esp)
  e4:	ff 74 24 18          	push   0x18(%esp)
  e8:	ff 74 24 20          	push   0x20(%esp)
  ec:	ff 74 24 28          	push   0x28(%esp)
  f0:	ff 74 24 30          	push   0x30(%esp)
  f4:	ff 74 24 38          	push   0x38(%esp)
  f8:	ff 74 24 40          	push   0x40(%esp)
  fc:	ff 74 24 48          	push   0x48(%esp)
 100:	ff 74 24 50          	push   0x50(%esp)
 104:	ff 74 24 58          	push   0x58(%esp)
 108:	50                   	push   %eax
 109:	53                   	push   %ebx
 10a:	eb 2e                	jmp    13a <display_uuid+0x13a>
 10c:	57                   	push   %edi
 10d:	56                   	push   %esi
 10e:	51                   	push   %ecx
 10f:	52                   	push   %edx
 110:	ff 74 24 10          	push   0x10(%esp)
 114:	ff 74 24 18          	push   0x18(%esp)
 118:	ff 74 24 20          	push   0x20(%esp)
 11c:	ff 74 24 28          	push   0x28(%esp)
 120:	ff 74 24 34          	push   0x34(%esp)
 124:	ff 74 24 34          	push   0x34(%esp)
 128:	ff 74 24 44          	push   0x44(%esp)
 12c:	ff 74 24 44          	push   0x44(%esp)
 130:	53                   	push   %ebx
 131:	50                   	push   %eax
 132:	ff 74 24 5c          	push   0x5c(%esp)
 136:	ff 74 24 5c          	push   0x5c(%esp)
 13a:	68 68 01 00 00       	push   $0x168
 13f:	e8 fc ff ff ff       	call   140 <display_uuid+0x140>
 144:	83 c4 44             	add    $0x44,%esp
 147:	eb 07                	jmp    150 <display_uuid+0x150>
 149:	89 da                	mov    %ebx,%edx
 14b:	e9 bf fe ff ff       	jmp    f <display_uuid+0xf>
 150:	83 c4 38             	add    $0x38,%esp
 153:	5b                   	pop    %ebx
 154:	5e                   	pop    %esi
 155:	5f                   	pop    %edi
 156:	5d                   	pop    %ebp
 157:	c3                   	ret    

Disassembly of section .text.smbios_setup:

00000000 <smbios_setup>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 28             	sub    $0x28,%esp
   7:	b8 bb 01 00 00       	mov    $0x1bb,%eax
   c:	e8 fc ff ff ff       	call   d <smbios_setup+0xd>
  11:	89 c6                	mov    %eax,%esi
  13:	b8 d4 01 00 00       	mov    $0x1d4,%eax
  18:	e8 fc ff ff ff       	call   19 <smbios_setup+0x19>
  1d:	85 f6                	test   %esi,%esi
  1f:	0f 84 63 02 00 00    	je     288 <smbios_setup+0x288>
  25:	89 c3                	mov    %eax,%ebx
  27:	85 c0                	test   %eax,%eax
  29:	0f 84 59 02 00 00    	je     288 <smbios_setup+0x288>
  2f:	83 be 84 00 00 00 1f 	cmpl   $0x1f,0x84(%esi)
  36:	0f 85 4c 02 00 00    	jne    288 <smbios_setup+0x288>
  3c:	b9 1f 00 00 00       	mov    $0x1f,%ecx
  41:	8d 54 24 09          	lea    0x9(%esp),%edx
  45:	89 f0                	mov    %esi,%eax
  47:	ff 96 88 00 00 00    	call   *0x88(%esi)
  4d:	8b 93 84 00 00 00    	mov    0x84(%ebx),%edx
  53:	0f b7 44 24 1f       	movzwl 0x1f(%esp),%eax
  58:	39 c2                	cmp    %eax,%edx
  5a:	0f 85 28 02 00 00    	jne    288 <smbios_setup+0x288>
  60:	b9 10 00 00 00       	mov    $0x10,%ecx
  65:	b8 00 00 00 00       	mov    $0x0,%eax
  6a:	e8 fc ff ff ff       	call   6b <smbios_setup+0x6b>
  6f:	89 04 24             	mov    %eax,(%esp)
  72:	85 c0                	test   %eax,%eax
  74:	75 14                	jne    8a <smbios_setup+0x8a>
  76:	ba 00 00 00 00       	mov    $0x0,%edx
  7b:	b8 bf 01 00 00       	mov    $0x1bf,%eax
  80:	e8 fc ff ff ff       	call   81 <smbios_setup+0x81>
  85:	e9 fe 01 00 00       	jmp    288 <smbios_setup+0x288>
  8a:	8b 8b 84 00 00 00    	mov    0x84(%ebx),%ecx
  90:	8b 14 24             	mov    (%esp),%edx
  93:	89 d8                	mov    %ebx,%eax
  95:	ff 93 88 00 00 00    	call   *0x88(%ebx)
  9b:	8b 04 24             	mov    (%esp),%eax
  9e:	89 44 24 21          	mov    %eax,0x21(%esp)
  a2:	31 d2                	xor    %edx,%edx
  a4:	8d 44 24 09          	lea    0x9(%esp),%eax
  a8:	e8 fc ff ff ff       	call   a9 <smbios_setup+0xa9>
  ad:	89 c2                	mov    %eax,%edx
  af:	85 c0                	test   %eax,%eax
  b1:	74 09                	je     bc <smbios_setup+0xbc>
  b3:	80 3a 00             	cmpb   $0x0,(%edx)
  b6:	75 ec                	jne    a4 <smbios_setup+0xa4>
  b8:	31 f6                	xor    %esi,%esi
  ba:	eb 05                	jmp    c1 <smbios_setup+0xc1>
  bc:	be 01 00 00 00       	mov    $0x1,%esi
  c1:	66 8b 44 24 1f       	mov    0x1f(%esp),%ax
  c6:	66 89 44 24 06       	mov    %ax,0x6(%esp)
  cb:	66 85 f6             	test   %si,%si
  ce:	74 64                	je     134 <smbios_setup+0x134>
  d0:	b8 ed 01 00 00       	mov    $0x1ed,%eax
  d5:	e8 fc ff ff ff       	call   d6 <smbios_setup+0xd6>
  da:	89 c3                	mov    %eax,%ebx
  dc:	b8 00 00 00 00       	mov    $0x0,%eax
  e1:	e8 fc ff ff ff       	call   e2 <smbios_setup+0xe2>
  e6:	01 c3                	add    %eax,%ebx
  e8:	b8 f5 01 00 00       	mov    $0x1f5,%eax
  ed:	e8 fc ff ff ff       	call   ee <smbios_setup+0xee>
  f2:	8d 44 03 1c          	lea    0x1c(%ebx,%eax,1),%eax
  f6:	0f b7 d8             	movzwl %ax,%ebx
  f9:	66 8b 54 24 1f       	mov    0x1f(%esp),%dx
  fe:	89 d1                	mov    %edx,%ecx
 100:	f7 d1                	not    %ecx
 102:	0f b7 c9             	movzwl %cx,%ecx
 105:	39 cb                	cmp    %ecx,%ebx
 107:	7e 13                	jle    11c <smbios_setup+0x11c>
 109:	53                   	push   %ebx
 10a:	51                   	push   %ecx
 10b:	68 00 02 00 00       	push   $0x200
 110:	e8 fc ff ff ff       	call   111 <smbios_setup+0x111>
 115:	83 c4 0c             	add    $0xc,%esp
 118:	31 f6                	xor    %esi,%esi
 11a:	eb 18                	jmp    134 <smbios_setup+0x134>
 11c:	01 c2                	add    %eax,%edx
 11e:	66 89 54 24 1f       	mov    %dx,0x1f(%esp)
 123:	66 3b 44 24 11       	cmp    0x11(%esp),%ax
 128:	76 05                	jbe    12f <smbios_setup+0x12f>
 12a:	66 89 44 24 11       	mov    %ax,0x11(%esp)
 12f:	66 ff 44 24 25       	incw   0x25(%esp)
 134:	0f b7 44 24 1f       	movzwl 0x1f(%esp),%eax
 139:	89 c2                	mov    %eax,%edx
 13b:	66 3d 58 02          	cmp    $0x258,%ax
 13f:	76 11                	jbe    152 <smbios_setup+0x152>
 141:	b9 10 00 00 00       	mov    $0x10,%ecx
 146:	b8 00 00 00 00       	mov    $0x0,%eax
 14b:	e8 fc ff ff ff       	call   14c <smbios_setup+0x14c>
 150:	eb 05                	jmp    157 <smbios_setup+0x157>
 152:	e8 fc ff ff ff       	call   153 <smbios_setup+0x153>
 157:	89 c3                	mov    %eax,%ebx
 159:	85 c0                	test   %eax,%eax
 15b:	75 1c                	jne    179 <smbios_setup+0x179>
 15d:	ba 00 00 00 00       	mov    $0x0,%edx
 162:	b8 e3 01 00 00       	mov    $0x1e3,%eax
 167:	e8 fc ff ff ff       	call   168 <smbios_setup+0x168>
 16c:	8b 04 24             	mov    (%esp),%eax
 16f:	e8 fc ff ff ff       	call   170 <smbios_setup+0x170>
 174:	e9 0f 01 00 00       	jmp    288 <smbios_setup+0x288>
 179:	89 44 24 21          	mov    %eax,0x21(%esp)
 17d:	66 85 f6             	test   %si,%si
 180:	0f 84 b6 00 00 00    	je     23c <smbios_setup+0x23c>
 186:	8d 40 18             	lea    0x18(%eax),%eax
 189:	89 c7                	mov    %eax,%edi
 18b:	c7 03 00 18 00 00    	movl   $0x1800,(%ebx)
 191:	b8 ed 01 00 00       	mov    $0x1ed,%eax
 196:	e8 fc ff ff ff       	call   197 <smbios_setup+0x197>
 19b:	8d 48 01             	lea    0x1(%eax),%ecx
 19e:	83 f9 01             	cmp    $0x1,%ecx
 1a1:	7e 10                	jle    1b3 <smbios_setup+0x1b3>
 1a3:	be ed 01 00 00       	mov    $0x1ed,%esi
 1a8:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 1aa:	b0 01                	mov    $0x1,%al
 1ac:	bd 01 00 00 00       	mov    $0x1,%ebp
 1b1:	eb 04                	jmp    1b7 <smbios_setup+0x1b7>
 1b3:	31 c0                	xor    %eax,%eax
 1b5:	31 ed                	xor    %ebp,%ebp
 1b7:	88 43 04             	mov    %al,0x4(%ebx)
 1ba:	be 00 00 00 00       	mov    $0x0,%esi
 1bf:	85 f6                	test   %esi,%esi
 1c1:	74 16                	je     1d9 <smbios_setup+0x1d9>
 1c3:	89 f0                	mov    %esi,%eax
 1c5:	e8 fc ff ff ff       	call   1c6 <smbios_setup+0x1c6>
 1ca:	8d 48 01             	lea    0x1(%eax),%ecx
 1cd:	83 f9 01             	cmp    $0x1,%ecx
 1d0:	7e 07                	jle    1d9 <smbios_setup+0x1d9>
 1d2:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 1d4:	45                   	inc    %ebp
 1d5:	89 e8                	mov    %ebp,%eax
 1d7:	eb 02                	jmp    1db <smbios_setup+0x1db>
 1d9:	31 c0                	xor    %eax,%eax
 1db:	88 43 05             	mov    %al,0x5(%ebx)
 1de:	66 c7 43 06 00 e8    	movw   $0xe800,0x6(%ebx)
 1e4:	b8 f5 01 00 00       	mov    $0x1f5,%eax
 1e9:	e8 fc ff ff ff       	call   1ea <smbios_setup+0x1ea>
 1ee:	8d 48 01             	lea    0x1(%eax),%ecx
 1f1:	31 c0                	xor    %eax,%eax
 1f3:	83 f9 01             	cmp    $0x1,%ecx
 1f6:	7e 0a                	jle    202 <smbios_setup+0x202>
 1f8:	be f5 01 00 00       	mov    $0x1f5,%esi
 1fd:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 1ff:	45                   	inc    %ebp
 200:	89 e8                	mov    %ebp,%eax
 202:	88 43 08             	mov    %al,0x8(%ebx)
 205:	c6 43 09 00          	movb   $0x0,0x9(%ebx)
 209:	8d 43 0a             	lea    0xa(%ebx),%eax
 20c:	b9 08 00 00 00       	mov    $0x8,%ecx
 211:	31 d2                	xor    %edx,%edx
 213:	e8 fc ff ff ff       	call   214 <smbios_setup+0x214>
 218:	c6 43 0a 08          	movb   $0x8,0xa(%ebx)
 21c:	c7 43 12 00 04 00 00 	movl   $0x400,0x12(%ebx)
 223:	66 c7 43 16 ff ff    	movw   $0xffff,0x16(%ebx)
 229:	c6 07 00             	movb   $0x0,(%edi)
 22c:	85 ed                	test   %ebp,%ebp
 22e:	74 05                	je     235 <smbios_setup+0x235>
 230:	89 fb                	mov    %edi,%ebx
 232:	43                   	inc    %ebx
 233:	eb 07                	jmp    23c <smbios_setup+0x23c>
 235:	c6 47 01 00          	movb   $0x0,0x1(%edi)
 239:	8d 5f 02             	lea    0x2(%edi),%ebx
 23c:	0f b7 4c 24 06       	movzwl 0x6(%esp),%ecx
 241:	89 df                	mov    %ebx,%edi
 243:	8b 34 24             	mov    (%esp),%esi
 246:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 248:	8b 04 24             	mov    (%esp),%eax
 24b:	e8 fc ff ff ff       	call   24c <smbios_setup+0x24c>
 250:	ba 10 00 00 00       	mov    $0x10,%edx
 255:	8d 44 24 09          	lea    0x9(%esp),%eax
 259:	e8 fc ff ff ff       	call   25a <smbios_setup+0x25a>
 25e:	28 44 24 0d          	sub    %al,0xd(%esp)
 262:	0f b6 54 24 0e       	movzbl 0xe(%esp),%edx
 267:	83 ea 10             	sub    $0x10,%edx
 26a:	8d 44 24 19          	lea    0x19(%esp),%eax
 26e:	e8 fc ff ff ff       	call   26f <smbios_setup+0x26f>
 273:	28 44 24 1e          	sub    %al,0x1e(%esp)
 277:	8d 44 24 09          	lea    0x9(%esp),%eax
 27b:	e8 fc ff ff ff       	call   27c <smbios_setup+0x27c>
 280:	83 c4 28             	add    $0x28,%esp
 283:	5b                   	pop    %ebx
 284:	5e                   	pop    %esi
 285:	5f                   	pop    %edi
 286:	5d                   	pop    %ebp
 287:	c3                   	ret    
 288:	83 c4 28             	add    $0x28,%esp
 28b:	5b                   	pop    %ebx
 28c:	5e                   	pop    %esi
 28d:	5f                   	pop    %edi
 28e:	5d                   	pop    %ebp
 28f:	e9 fc ff ff ff       	jmp    290 <smbios_setup+0x290>

Disassembly of section .text.copy_table:

00000000 <copy_table>:
   0:	52                   	push   %edx
   1:	89 04 24             	mov    %eax,(%esp)
   4:	e8 fc ff ff ff       	call   5 <copy_table+0x5>
   9:	8b 04 24             	mov    (%esp),%eax
   c:	e8 fc ff ff ff       	call   d <copy_table+0xd>
  11:	8b 04 24             	mov    (%esp),%eax
  14:	e8 fc ff ff ff       	call   15 <copy_table+0x15>
  19:	8b 04 24             	mov    (%esp),%eax
  1c:	59                   	pop    %ecx
  1d:	e9 fc ff ff ff       	jmp    1e <copy_table+0x1e>
