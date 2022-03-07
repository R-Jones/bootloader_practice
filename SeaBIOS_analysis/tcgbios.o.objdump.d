
./tcgbios.o:     file format elf32-i386


Disassembly of section .text.tpm_set_log_area:

00000000 <tpm_set_log_area>:
   0:	85 c0                	test   %eax,%eax
   2:	74 43                	je     47 <tpm_set_log_area+0x47>
   4:	56                   	push   %esi
   5:	53                   	push   %ebx
   6:	89 d6                	mov    %edx,%esi
   8:	85 d2                	test   %edx,%edx
   a:	74 35                	je     41 <tpm_set_log_area+0x41>
   c:	89 c3                	mov    %eax,%ebx
   e:	89 d1                	mov    %edx,%ecx
  10:	31 d2                	xor    %edx,%edx
  12:	e8 fc ff ff ff       	call   13 <tpm_set_log_area+0x13>
  17:	89 1d 04 00 00 00    	mov    %ebx,0x4
  1d:	89 35 00 00 00 00    	mov    %esi,0x0
  23:	89 1d 0c 00 00 00    	mov    %ebx,0xc
  29:	c7 05 10 00 00 00 00 	movl   $0x0,0x10
  30:	00 00 00 
  33:	c7 05 08 00 00 00 00 	movl   $0x0,0x8
  3a:	00 00 00 
  3d:	31 c0                	xor    %eax,%eax
  3f:	eb 03                	jmp    44 <tpm_set_log_area+0x44>
  41:	83 c8 ff             	or     $0xffffffff,%eax
  44:	5b                   	pop    %ebx
  45:	5e                   	pop    %esi
  46:	c3                   	ret    
  47:	83 c8 ff             	or     $0xffffffff,%eax
  4a:	c3                   	ret    

Disassembly of section .text.tpm_log_event:

00000000 <tpm_log_event>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 c6                	mov    %eax,%esi
   6:	89 d7                	mov    %edx,%edi
   8:	89 cd                	mov    %ecx,%ebp
   a:	8b 5c 24 14          	mov    0x14(%esp),%ebx
   e:	ff 35 0c 00 00 00    	push   0xc
  14:	ff 35 04 00 00 00    	push   0x4
  1a:	68 00 00 00 00       	push   $0x0
  1f:	e8 fc ff ff ff       	call   20 <tpm_log_event+0x20>
  24:	a1 0c 00 00 00       	mov    0xc,%eax
  29:	83 c4 0c             	add    $0xc,%esp
  2c:	85 c0                	test   %eax,%eax
  2e:	74 53                	je     83 <tpm_log_event+0x83>
  30:	8d 54 1f 0c          	lea    0xc(%edi,%ebx,1),%edx
  34:	8d 0c 10             	lea    (%eax,%edx,1),%ecx
  37:	2b 0d 04 00 00 00    	sub    0x4,%ecx
  3d:	39 0d 00 00 00 00    	cmp    %ecx,0x0
  43:	73 0f                	jae    54 <tpm_log_event+0x54>
  45:	52                   	push   %edx
  46:	68 25 00 00 00       	push   $0x25
  4b:	e8 fc ff ff ff       	call   4c <tpm_log_event+0x4c>
  50:	58                   	pop    %eax
  51:	5a                   	pop    %edx
  52:	eb 2f                	jmp    83 <tpm_log_event+0x83>
  54:	8d 4f 08             	lea    0x8(%edi),%ecx
  57:	89 c7                	mov    %eax,%edi
  59:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  5b:	89 1f                	mov    %ebx,(%edi)
  5d:	8d 47 04             	lea    0x4(%edi),%eax
  60:	89 c7                	mov    %eax,%edi
  62:	89 ee                	mov    %ebp,%esi
  64:	89 d9                	mov    %ebx,%ecx
  66:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  68:	a1 0c 00 00 00       	mov    0xc,%eax
  6d:	a3 10 00 00 00       	mov    %eax,0x10
  72:	01 d0                	add    %edx,%eax
  74:	a3 0c 00 00 00       	mov    %eax,0xc
  79:	ff 05 08 00 00 00    	incl   0x8
  7f:	31 c0                	xor    %eax,%eax
  81:	eb 03                	jmp    86 <tpm_log_event+0x86>
  83:	83 c8 ff             	or     $0xffffffff,%eax
  86:	5b                   	pop    %ebx
  87:	5e                   	pop    %esi
  88:	5f                   	pop    %edi
  89:	5d                   	pop    %ebp
  8a:	c3                   	ret    

Disassembly of section .text.cpu_to_be32:

00000000 <be32_to_cpu>:
   0:	0f c8                	bswap  %eax
   2:	c3                   	ret    

Disassembly of section .text.tpm20_write_EfiSpecIdEventStruct:

00000000 <tpm20_write_EfiSpecIdEventStruct>:
   0:	8b 15 00 00 00 00    	mov    0x0,%edx
   6:	83 c8 ff             	or     $0xffffffff,%eax
   9:	85 d2                	test   %edx,%edx
   b:	0f 84 3c 01 00 00    	je     14d <tpm20_write_EfiSpecIdEventStruct+0x14d>
  11:	55                   	push   %ebp
  12:	57                   	push   %edi
  13:	56                   	push   %esi
  14:	53                   	push   %ebx
  15:	81 ec 04 03 00 00    	sub    $0x304,%esp
  1b:	8d bc 24 77 01 00 00 	lea    0x177(%esp),%edi
  22:	b9 8d 01 00 00       	mov    $0x18d,%ecx
  27:	31 c0                	xor    %eax,%eax
  29:	f3 aa                	rep stos %al,%es:(%edi)
  2b:	8d bc 24 77 01 00 00 	lea    0x177(%esp),%edi
  32:	be bd 00 00 00       	mov    $0xbd,%esi
  37:	b9 04 00 00 00       	mov    $0x4,%ecx
  3c:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  3e:	66 c7 84 24 8c 01 00 	movw   $0x202,0x18c(%esp)
  45:	00 02 02 
  48:	c6 84 24 8e 01 00 00 	movb   $0x2,0x18e(%esp)
  4f:	02 
  50:	8d 5a 04             	lea    0x4(%edx),%ebx
  53:	a1 00 00 00 00       	mov    0x0,%eax
  58:	01 d0                	add    %edx,%eax
  5a:	89 04 24             	mov    %eax,(%esp)
  5d:	8b 02                	mov    (%edx),%eax
  5f:	e8 fc ff ff ff       	call   60 <tpm20_write_EfiSpecIdEventStruct+0x60>
  64:	89 c6                	mov    %eax,%esi
  66:	31 c0                	xor    %eax,%eax
  68:	39 ce                	cmp    %ecx,%esi
  6a:	74 7a                	je     e6 <tpm20_write_EfiSpecIdEventStruct+0xe6>
  6c:	0f b6 7b 02          	movzbl 0x2(%ebx),%edi
  70:	89 fa                	mov    %edi,%edx
  72:	8d 7c 3b 03          	lea    0x3(%ebx,%edi,1),%edi
  76:	39 3c 24             	cmp    %edi,(%esp)
  79:	72 6b                	jb     e6 <tpm20_write_EfiSpecIdEventStruct+0xe6>
  7b:	84 d2                	test   %dl,%dl
  7d:	74 62                	je     e1 <tpm20_write_EfiSpecIdEventStruct+0xe1>
  7f:	80 7b 03 00          	cmpb   $0x0,0x3(%ebx)
  83:	74 5c                	je     e1 <tpm20_write_EfiSpecIdEventStruct+0xe1>
  85:	66 8b 13             	mov    (%ebx),%dx
  88:	86 f2                	xchg   %dh,%dl
  8a:	31 db                	xor    %ebx,%ebx
  8c:	6b eb 0c             	imul   $0xc,%ebx,%ebp
  8f:	66 3b 95 00 00 00 00 	cmp    0x0(%ebp),%dx
  96:	75 1d                	jne    b5 <tpm20_write_EfiSpecIdEventStruct+0xb5>
  98:	0f b6 9d 03 00 00 00 	movzbl 0x3(%ebp),%ebx
  9f:	8d 2c 8d 20 00 00 00 	lea    0x20(,%ecx,4),%ebp
  a6:	81 fd 8c 01 00 00    	cmp    $0x18c,%ebp
  ac:	76 1f                	jbe    cd <tpm20_write_EfiSpecIdEventStruct+0xcd>
  ae:	68 47 00 00 00       	push   $0x47
  b3:	eb 3b                	jmp    f0 <tpm20_write_EfiSpecIdEventStruct+0xf0>
  b5:	43                   	inc    %ebx
  b6:	83 fb 08             	cmp    $0x8,%ebx
  b9:	75 d1                	jne    8c <tpm20_write_EfiSpecIdEventStruct+0x8c>
  bb:	0f b7 d2             	movzwl %dx,%edx
  be:	52                   	push   %edx
  bf:	68 97 00 00 00       	push   $0x97
  c4:	e8 fc ff ff ff       	call   c5 <tpm20_write_EfiSpecIdEventStruct+0xc5>
  c9:	58                   	pop    %eax
  ca:	5a                   	pop    %edx
  cb:	eb 72                	jmp    13f <tpm20_write_EfiSpecIdEventStruct+0x13f>
  cd:	8d 68 04             	lea    0x4(%eax),%ebp
  d0:	66 89 94 ac 83 01 00 	mov    %dx,0x183(%esp,%ebp,4)
  d7:	00 
  d8:	66 89 9c ac 85 01 00 	mov    %bx,0x185(%esp,%ebp,4)
  df:	00 
  e0:	40                   	inc    %eax
  e1:	41                   	inc    %ecx
  e2:	89 fb                	mov    %edi,%ebx
  e4:	eb 82                	jmp    68 <tpm20_write_EfiSpecIdEventStruct+0x68>
  e6:	3b 1c 24             	cmp    (%esp),%ebx
  e9:	74 0d                	je     f8 <tpm20_write_EfiSpecIdEventStruct+0xf8>
  eb:	68 6b 00 00 00       	push   $0x6b
  f0:	e8 fc ff ff ff       	call   f1 <tpm20_write_EfiSpecIdEventStruct+0xf1>
  f5:	5b                   	pop    %ebx
  f6:	eb 47                	jmp    13f <tpm20_write_EfiSpecIdEventStruct+0x13f>
  f8:	89 84 24 8f 01 00 00 	mov    %eax,0x18f(%esp)
  ff:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 106:	c6 84 14 93 01 00 00 	movb   $0x0,0x193(%esp,%edx,1)
 10d:	00 
 10e:	8d 7c 24 07          	lea    0x7(%esp),%edi
 112:	b9 5c 00 00 00       	mov    $0x5c,%ecx
 117:	31 c0                	xor    %eax,%eax
 119:	f3 ab                	rep stos %eax,%es:(%edi)
 11b:	c7 44 24 0b 03 00 00 	movl   $0x3,0xb(%esp)
 122:	00 
 123:	8d 42 1d             	lea    0x1d(%edx),%eax
 126:	50                   	push   %eax
 127:	8d 8c 24 7b 01 00 00 	lea    0x17b(%esp),%ecx
 12e:	ba 14 00 00 00       	mov    $0x14,%edx
 133:	8d 44 24 0b          	lea    0xb(%esp),%eax
 137:	e8 fc ff ff ff       	call   138 <tpm20_write_EfiSpecIdEventStruct+0x138>
 13c:	59                   	pop    %ecx
 13d:	eb 03                	jmp    142 <tpm20_write_EfiSpecIdEventStruct+0x142>
 13f:	83 c8 ff             	or     $0xffffffff,%eax
 142:	81 c4 04 03 00 00    	add    $0x304,%esp
 148:	5b                   	pop    %ebx
 149:	5e                   	pop    %esi
 14a:	5f                   	pop    %edi
 14b:	5d                   	pop    %ebp
 14c:	c3                   	ret    
 14d:	c3                   	ret    

Disassembly of section .text.tpm_simple_cmd:

00000000 <tpm_simple_cmd>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	83 ec 54             	sub    $0x54,%esp
   6:	89 c7                	mov    %eax,%edi
   8:	89 d6                	mov    %edx,%esi
   a:	89 ca                	mov    %ecx,%edx
   c:	8b 5c 24 64          	mov    0x64(%esp),%ebx
  10:	89 d9                	mov    %ebx,%ecx
  12:	66 c7 44 24 08 00 00 	movw   $0x0,0x8(%esp)
  19:	8d 42 0a             	lea    0xa(%edx),%eax
  1c:	e8 fc ff ff ff       	call   1d <tpm_simple_cmd+0x1d>
  21:	89 44 24 0a          	mov    %eax,0xa(%esp)
  25:	89 f0                	mov    %esi,%eax
  27:	e8 fc ff ff ff       	call   28 <tpm_simple_cmd+0x28>
  2c:	89 44 24 0e          	mov    %eax,0xe(%esp)
  30:	0f b7 db             	movzwl %bx,%ebx
  33:	83 fa 02             	cmp    $0x2,%edx
  36:	75 05                	jne    3d <tpm_simple_cmd+0x3d>
  38:	89 d9                	mov    %ebx,%ecx
  3a:	c1 e1 08             	shl    $0x8,%ecx
  3d:	66 89 4c 24 12       	mov    %cx,0x12(%esp)
  42:	a0 00 00 00 00       	mov    0x0,%al
  47:	3c 01                	cmp    $0x1,%al
  49:	74 0d                	je     58 <tpm_simple_cmd+0x58>
  4b:	3c 02                	cmp    $0x2,%al
  4d:	75 10                	jne    5f <tpm_simple_cmd+0x5f>
  4f:	66 c7 44 24 08 80 01 	movw   $0x180,0x8(%esp)
  56:	eb 07                	jmp    5f <tpm_simple_cmd+0x5f>
  58:	66 c7 44 24 08 00 c1 	movw   $0xc100,0x8(%esp)
  5f:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
  66:	00 
  67:	b9 40 00 00 00       	mov    $0x40,%ecx
  6c:	31 d2                	xor    %edx,%edx
  6e:	8d 44 24 14          	lea    0x14(%esp),%eax
  72:	e8 fc ff ff ff       	call   73 <tpm_simple_cmd+0x73>
  77:	89 f8                	mov    %edi,%eax
  79:	0f b6 c0             	movzbl %al,%eax
  7c:	ff 74 24 68          	push   0x68(%esp)
  80:	8d 54 24 08          	lea    0x8(%esp),%edx
  84:	52                   	push   %edx
  85:	8d 4c 24 1c          	lea    0x1c(%esp),%ecx
  89:	8d 54 24 10          	lea    0x10(%esp),%edx
  8d:	e8 fc ff ff ff       	call   8e <tpm_simple_cmd+0x8e>
  92:	89 c2                	mov    %eax,%edx
  94:	58                   	pop    %eax
  95:	59                   	pop    %ecx
  96:	83 c8 ff             	or     $0xffffffff,%eax
  99:	85 d2                	test   %edx,%edx
  9b:	75 09                	jne    a6 <tpm_simple_cmd+0xa6>
  9d:	8b 44 24 1a          	mov    0x1a(%esp),%eax
  a1:	e8 fc ff ff ff       	call   a2 <tpm_simple_cmd+0xa2>
  a6:	50                   	push   %eax
  a7:	89 44 24 04          	mov    %eax,0x4(%esp)
  ab:	53                   	push   %ebx
  ac:	56                   	push   %esi
  ad:	68 cd 00 00 00       	push   $0xcd
  b2:	e8 fc ff ff ff       	call   b3 <tpm_simple_cmd+0xb3>
  b7:	8b 44 24 10          	mov    0x10(%esp),%eax
  bb:	83 c4 64             	add    $0x64,%esp
  be:	5b                   	pop    %ebx
  bf:	5e                   	pop    %esi
  c0:	5f                   	pop    %edi
  c1:	c3                   	ret    

Disassembly of section .text.tpm20_get_suppt_pcrbanks.isra.0:

00000000 <tpm20_get_suppt_pcrbanks.isra.0>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 08             	sub    $0x8,%esp
   7:	c6 00 00             	movb   $0x0,(%eax)
   a:	c6 02 00             	movb   $0x0,(%edx)
   d:	8b 1d 00 00 00 00    	mov    0x0,%ebx
  13:	85 db                	test   %ebx,%ebx
  15:	74 63                	je     7a <tpm20_get_suppt_pcrbanks.isra.0+0x7a>
  17:	8d 4b 04             	lea    0x4(%ebx),%ecx
  1a:	03 1d 00 00 00 00    	add    0x0,%ebx
  20:	89 1c 24             	mov    %ebx,(%esp)
  23:	0f b6 79 02          	movzbl 0x2(%ecx),%edi
  27:	8d 74 39 03          	lea    0x3(%ecx,%edi,1),%esi
  2b:	89 74 24 04          	mov    %esi,0x4(%esp)
  2f:	39 34 24             	cmp    %esi,(%esp)
  32:	72 46                	jb     7a <tpm20_get_suppt_pcrbanks.isra.0+0x7a>
  34:	66 8b 31             	mov    (%ecx),%si
  37:	66 c1 c6 08          	rol    $0x8,%si
  3b:	31 db                	xor    %ebx,%ebx
  3d:	6b eb 0c             	imul   $0xc,%ebx,%ebp
  40:	66 3b b5 00 00 00 00 	cmp    0x0(%ebp),%si
  47:	75 09                	jne    52 <tpm20_get_suppt_pcrbanks.isra.0+0x52>
  49:	0f b6 b5 02 00 00 00 	movzbl 0x2(%ebp),%esi
  50:	eb 08                	jmp    5a <tpm20_get_suppt_pcrbanks.isra.0+0x5a>
  52:	43                   	inc    %ebx
  53:	83 fb 08             	cmp    $0x8,%ebx
  56:	75 e5                	jne    3d <tpm20_get_suppt_pcrbanks.isra.0+0x3d>
  58:	31 f6                	xor    %esi,%esi
  5a:	89 f3                	mov    %esi,%ebx
  5c:	08 18                	or     %bl,(%eax)
  5e:	31 db                	xor    %ebx,%ebx
  60:	39 df                	cmp    %ebx,%edi
  62:	77 06                	ja     6a <tpm20_get_suppt_pcrbanks.isra.0+0x6a>
  64:	8b 4c 24 04          	mov    0x4(%esp),%ecx
  68:	eb b9                	jmp    23 <tpm20_get_suppt_pcrbanks.isra.0+0x23>
  6a:	80 7c 19 03 00       	cmpb   $0x0,0x3(%ecx,%ebx,1)
  6f:	74 06                	je     77 <tpm20_get_suppt_pcrbanks.isra.0+0x77>
  71:	89 f1                	mov    %esi,%ecx
  73:	08 0a                	or     %cl,(%edx)
  75:	eb ed                	jmp    64 <tpm20_get_suppt_pcrbanks.isra.0+0x64>
  77:	43                   	inc    %ebx
  78:	eb e6                	jmp    60 <tpm20_get_suppt_pcrbanks.isra.0+0x60>
  7a:	83 c4 08             	add    $0x8,%esp
  7d:	5b                   	pop    %ebx
  7e:	5e                   	pop    %esi
  7f:	5f                   	pop    %edi
  80:	5d                   	pop    %ebp
  81:	c3                   	ret    

Disassembly of section .text.tpm20_hierarchycontrol.constprop.0.isra.0:

00000000 <tpm20_hierarchycontrol.constprop.0.isra.0>:
   0:	83 ec 30             	sub    $0x30,%esp
   3:	c7 44 24 10 80 02 00 	movl   $0x280,0x10(%esp)
   a:	00 
   b:	c7 44 24 14 00 20 00 	movl   $0x2000,0x14(%esp)
  12:	00 
  13:	c7 44 24 18 01 21 40 	movl   $0x402101,0x18(%esp)
  1a:	00 
  1b:	c7 44 24 1c 00 0c 00 	movl   $0xc00,0x1c(%esp)
  22:	00 
  23:	c7 44 24 20 00 09 40 	movl   $0x400900,0x20(%esp)
  2a:	00 
  2b:	c7 44 24 24 00 09 00 	movl   $0x900,0x24(%esp)
  32:	00 
  33:	66 c7 44 24 28 01 00 	movw   $0x1,0x28(%esp)
  3a:	c6 44 24 2a 00       	movb   $0x0,0x2a(%esp)
  3f:	e8 fc ff ff ff       	call   40 <tpm20_hierarchycontrol.constprop.0.isra.0+0x40>
  44:	89 44 24 2b          	mov    %eax,0x2b(%esp)
  48:	c6 44 24 2f 00       	movb   $0x0,0x2f(%esp)
  4d:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
  54:	6a 01                	push   $0x1
  56:	8d 44 24 04          	lea    0x4(%esp),%eax
  5a:	50                   	push   %eax
  5b:	8d 4c 24 0e          	lea    0xe(%esp),%ecx
  5f:	8d 54 24 18          	lea    0x18(%esp),%edx
  63:	31 c0                	xor    %eax,%eax
  65:	e8 fc ff ff ff       	call   66 <tpm20_hierarchycontrol.constprop.0.isra.0+0x66>
  6a:	5a                   	pop    %edx
  6b:	59                   	pop    %ecx
  6c:	83 ca ff             	or     $0xffffffff,%edx
  6f:	83 3c 24 0a          	cmpl   $0xa,(%esp)
  73:	75 0b                	jne    80 <tpm20_hierarchycontrol.constprop.0.isra.0+0x80>
  75:	31 d2                	xor    %edx,%edx
  77:	0b 44 24 0c          	or     0xc(%esp),%eax
  7b:	0f 95 c2             	setne  %dl
  7e:	f7 da                	neg    %edx
  80:	52                   	push   %edx
  81:	68 f6 00 00 00       	push   $0xf6
  86:	e8 fc ff ff ff       	call   87 <tpm20_hierarchycontrol.constprop.0.isra.0+0x87>
  8b:	83 c4 38             	add    $0x38,%esp
  8e:	c3                   	ret    

Disassembly of section .text.tpm_set_failure:

00000000 <tpm_set_failure>:
   0:	a0 00 00 00 00       	mov    0x0,%al
   5:	3c 01                	cmp    $0x1,%al
   7:	74 24                	je     2d <tpm_set_failure+0x2d>
   9:	3c 02                	cmp    $0x2,%al
   b:	75 34                	jne    41 <tpm_set_failure+0x41>
   d:	b8 0b 00 00 40       	mov    $0x4000000b,%eax
  12:	e8 fc ff ff ff       	call   13 <tpm_set_failure+0x13>
  17:	b8 01 00 00 40       	mov    $0x40000001,%eax
  1c:	e8 fc ff ff ff       	call   1d <tpm_set_failure+0x1d>
  21:	b8 0c 00 00 40       	mov    $0x4000000c,%eax
  26:	e8 fc ff ff ff       	call   27 <tpm_set_failure+0x27>
  2b:	eb 14                	jmp    41 <tpm_set_failure+0x41>
  2d:	6a 00                	push   $0x0
  2f:	6a 00                	push   $0x0
  31:	31 c9                	xor    %ecx,%ecx
  33:	ba 73 00 00 00       	mov    $0x73,%edx
  38:	31 c0                	xor    %eax,%eax
  3a:	e8 fc ff ff ff       	call   3b <tpm_set_failure+0x3b>
  3f:	58                   	pop    %eax
  40:	5a                   	pop    %edx
  41:	c6 05 00 00 00 00 00 	movb   $0x0,0x0
  48:	c3                   	ret    

Disassembly of section .text.tpm20_extend:

00000000 <tpm20_extend>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	81 ec 94 01 00 00    	sub    $0x194,%esp
   9:	89 c6                	mov    %eax,%esi
   b:	8b 00                	mov    (%eax),%eax
   d:	e8 fc ff ff ff       	call   e <tpm20_extend+0xe>
  12:	66 c7 44 24 11 80 02 	movw   $0x280,0x11(%esp)
  19:	c7 44 24 17 00 00 01 	movl   $0x82010000,0x17(%esp)
  20:	82 
  21:	89 44 24 1b          	mov    %eax,0x1b(%esp)
  25:	c7 44 24 1f 00 00 00 	movl   $0x9000000,0x1f(%esp)
  2c:	09 
  2d:	c7 44 24 23 40 00 00 	movl   $0x9000040,0x23(%esp)
  34:	09 
  35:	c7 44 24 27 00 00 01 	movl   $0x10000,0x27(%esp)
  3c:	00 
  3d:	c6 44 24 2b 00       	movb   $0x0,0x2b(%esp)
  42:	8d 5c 24 2c          	lea    0x2c(%esp),%ebx
  46:	83 c6 08             	add    $0x8,%esi
  49:	89 df                	mov    %ebx,%edi
  4b:	89 d1                	mov    %edx,%ecx
  4d:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  4f:	8d 42 1b             	lea    0x1b(%edx),%eax
  52:	e8 fc ff ff ff       	call   53 <tpm20_extend+0x53>
  57:	89 44 24 13          	mov    %eax,0x13(%esp)
  5b:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
  62:	6a 00                	push   $0x0
  64:	8d 44 24 04          	lea    0x4(%esp),%eax
  68:	50                   	push   %eax
  69:	8d 4c 24 0f          	lea    0xf(%esp),%ecx
  6d:	8d 54 24 19          	lea    0x19(%esp),%edx
  71:	31 c0                	xor    %eax,%eax
  73:	e8 fc ff ff ff       	call   74 <tpm20_extend+0x74>
  78:	5a                   	pop    %edx
  79:	59                   	pop    %ecx
  7a:	83 3c 24 0a          	cmpl   $0xa,(%esp)
  7e:	75 0e                	jne    8e <tpm20_extend+0x8e>
  80:	0b 44 24 0d          	or     0xd(%esp),%eax
  84:	0f 95 c0             	setne  %al
  87:	0f b6 c0             	movzbl %al,%eax
  8a:	f7 d8                	neg    %eax
  8c:	eb 03                	jmp    91 <tpm20_extend+0x91>
  8e:	83 c8 ff             	or     $0xffffffff,%eax
  91:	81 c4 94 01 00 00    	add    $0x194,%esp
  97:	5b                   	pop    %ebx
  98:	5e                   	pop    %esi
  99:	5f                   	pop    %edi
  9a:	c3                   	ret    

Disassembly of section .text.tpm12_get_capability:

00000000 <tpm12_get_capability>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 20             	sub    $0x20,%esp
   7:	89 c3                	mov    %eax,%ebx
   9:	89 d6                	mov    %edx,%esi
   b:	89 cf                	mov    %ecx,%edi
   d:	8b 6c 24 34          	mov    0x34(%esp),%ebp
  11:	66 c7 44 24 0a 00 c1 	movw   $0xc100,0xa(%esp)
  18:	c7 44 24 0c 00 00 00 	movl   $0x16000000,0xc(%esp)
  1f:	16 
  20:	c7 44 24 10 00 00 00 	movl   $0x65000000,0x10(%esp)
  27:	65 
  28:	e8 fc ff ff ff       	call   29 <tpm12_get_capability+0x29>
  2d:	89 44 24 14          	mov    %eax,0x14(%esp)
  31:	c7 44 24 18 00 00 00 	movl   $0x4000000,0x18(%esp)
  38:	04 
  39:	89 d0                	mov    %edx,%eax
  3b:	e8 fc ff ff ff       	call   3c <tpm12_get_capability+0x3c>
  40:	89 44 24 1c          	mov    %eax,0x1c(%esp)
  44:	89 6c 24 04          	mov    %ebp,0x4(%esp)
  48:	6a 00                	push   $0x0
  4a:	8d 44 24 08          	lea    0x8(%esp),%eax
  4e:	50                   	push   %eax
  4f:	8d 54 24 12          	lea    0x12(%esp),%edx
  53:	31 c0                	xor    %eax,%eax
  55:	e8 fc ff ff ff       	call   56 <tpm12_get_capability+0x56>
  5a:	5a                   	pop    %edx
  5b:	59                   	pop    %ecx
  5c:	85 c0                	test   %eax,%eax
  5e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  63:	75 0e                	jne    73 <tpm12_get_capability+0x73>
  65:	39 6c 24 04          	cmp    %ebp,0x4(%esp)
  69:	75 08                	jne    73 <tpm12_get_capability+0x73>
  6b:	8b 47 06             	mov    0x6(%edi),%eax
  6e:	e8 fc ff ff ff       	call   6f <tpm12_get_capability+0x6f>
  73:	50                   	push   %eax
  74:	89 44 24 04          	mov    %eax,0x4(%esp)
  78:	56                   	push   %esi
  79:	53                   	push   %ebx
  7a:	68 3c 01 00 00       	push   $0x13c
  7f:	e8 fc ff ff ff       	call   80 <tpm12_get_capability+0x80>
  84:	8b 44 24 10          	mov    0x10(%esp),%eax
  88:	83 c4 30             	add    $0x30,%esp
  8b:	5b                   	pop    %ebx
  8c:	5e                   	pop    %esi
  8d:	5f                   	pop    %edi
  8e:	5d                   	pop    %ebp
  8f:	c3                   	ret    

Disassembly of section .text.tpm12_read_has_owner:

00000000 <tpm12_read_has_owner>:
   0:	53                   	push   %ebx
   1:	83 ec 10             	sub    $0x10,%esp
   4:	89 c3                	mov    %eax,%ebx
   6:	6a 0f                	push   $0xf
   8:	8d 4c 24 05          	lea    0x5(%esp),%ecx
   c:	ba 11 01 00 00       	mov    $0x111,%edx
  11:	b8 05 00 00 00       	mov    $0x5,%eax
  16:	e8 fc ff ff ff       	call   17 <tpm12_read_has_owner+0x17>
  1b:	5a                   	pop    %edx
  1c:	85 c0                	test   %eax,%eax
  1e:	75 09                	jne    29 <tpm12_read_has_owner+0x29>
  20:	0f b6 54 24 0f       	movzbl 0xf(%esp),%edx
  25:	89 13                	mov    %edx,(%ebx)
  27:	eb 03                	jmp    2c <tpm12_read_has_owner+0x2c>
  29:	83 c8 ff             	or     $0xffffffff,%eax
  2c:	83 c4 10             	add    $0x10,%esp
  2f:	5b                   	pop    %ebx
  30:	c3                   	ret    

Disassembly of section .text.tpm12_read_permanent_flags.constprop.0:

00000000 <tpm12_read_permanent_flags.constprop.0>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	83 ec 24             	sub    $0x24,%esp
   6:	89 c5                	mov    %eax,%ebp
   8:	b9 16 00 00 00       	mov    $0x16,%ecx
   d:	31 d2                	xor    %edx,%edx
   f:	e8 fc ff ff ff       	call   10 <tpm12_read_permanent_flags.constprop.0+0x10>
  14:	6a 24                	push   $0x24
  16:	8d 4c 24 04          	lea    0x4(%esp),%ecx
  1a:	ba 08 01 00 00       	mov    $0x108,%edx
  1f:	b8 04 00 00 00       	mov    $0x4,%eax
  24:	e8 fc ff ff ff       	call   25 <tpm12_read_permanent_flags.constprop.0+0x25>
  29:	5a                   	pop    %edx
  2a:	85 c0                	test   %eax,%eax
  2c:	75 0f                	jne    3d <tpm12_read_permanent_flags.constprop.0+0x3d>
  2e:	8d 74 24 0e          	lea    0xe(%esp),%esi
  32:	b9 16 00 00 00       	mov    $0x16,%ecx
  37:	89 ef                	mov    %ebp,%edi
  39:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  3b:	eb 03                	jmp    40 <tpm12_read_permanent_flags.constprop.0+0x40>
  3d:	83 c8 ff             	or     $0xffffffff,%eax
  40:	83 c4 24             	add    $0x24,%esp
  43:	5e                   	pop    %esi
  44:	5f                   	pop    %edi
  45:	5d                   	pop    %ebp
  46:	c3                   	ret    

Disassembly of section .text.tpm12_enable_tpm.constprop.0:

00000000 <tpm12_enable_tpm.constprop.0>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	83 ec 18             	sub    $0x18,%esp
   5:	89 c6                	mov    %eax,%esi
   7:	8d 44 24 02          	lea    0x2(%esp),%eax
   b:	e8 fc ff ff ff       	call   c <tpm12_enable_tpm.constprop.0+0xc>
  10:	83 cb ff             	or     $0xffffffff,%ebx
  13:	85 c0                	test   %eax,%eax
  15:	75 46                	jne    5d <tpm12_enable_tpm.constprop.0+0x5d>
  17:	80 7c 24 04 00       	cmpb   $0x0,0x4(%esp)
  1c:	74 0d                	je     2b <tpm12_enable_tpm.constprop.0+0x2b>
  1e:	ba 6f 00 00 00       	mov    $0x6f,%edx
  23:	85 f6                	test   %esi,%esi
  25:	75 0b                	jne    32 <tpm12_enable_tpm.constprop.0+0x32>
  27:	31 db                	xor    %ebx,%ebx
  29:	eb 32                	jmp    5d <tpm12_enable_tpm.constprop.0+0x5d>
  2b:	ba 70 00 00 00       	mov    $0x70,%edx
  30:	29 f2                	sub    %esi,%edx
  32:	6a 00                	push   $0x0
  34:	6a 00                	push   $0x0
  36:	31 c9                	xor    %ecx,%ecx
  38:	31 c0                	xor    %eax,%eax
  3a:	e8 fc ff ff ff       	call   3b <tpm12_enable_tpm.constprop.0+0x3b>
  3f:	89 c3                	mov    %eax,%ebx
  41:	5a                   	pop    %edx
  42:	59                   	pop    %ecx
  43:	85 c0                	test   %eax,%eax
  45:	74 e0                	je     27 <tpm12_enable_tpm.constprop.0+0x27>
  47:	85 f6                	test   %esi,%esi
  49:	74 07                	je     52 <tpm12_enable_tpm.constprop.0+0x52>
  4b:	68 76 01 00 00       	push   $0x176
  50:	eb 05                	jmp    57 <tpm12_enable_tpm.constprop.0+0x57>
  52:	68 99 01 00 00       	push   $0x199
  57:	e8 fc ff ff ff       	call   58 <tpm12_enable_tpm.constprop.0+0x58>
  5c:	58                   	pop    %eax
  5d:	89 d8                	mov    %ebx,%eax
  5f:	83 c4 18             	add    $0x18,%esp
  62:	5b                   	pop    %ebx
  63:	5e                   	pop    %esi
  64:	c3                   	ret    

Disassembly of section .text.tpm12_activate_tpm.constprop.0:

00000000 <tpm12_activate_tpm.constprop.0>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 c3                	mov    %eax,%ebx
   8:	89 d7                	mov    %edx,%edi
   a:	8d 44 24 02          	lea    0x2(%esp),%eax
   e:	e8 fc ff ff ff       	call   f <tpm12_activate_tpm.constprop.0+0xf>
  13:	83 ce ff             	or     $0xffffffff,%esi
  16:	85 c0                	test   %eax,%eax
  18:	75 59                	jne    73 <tpm12_activate_tpm.constprop.0+0x73>
  1a:	80 7c 24 06 00       	cmpb   $0x0,0x6(%esp)
  1f:	74 09                	je     2a <tpm12_activate_tpm.constprop.0+0x2a>
  21:	f6 c3 01             	test   $0x1,%bl
  24:	75 04                	jne    2a <tpm12_activate_tpm.constprop.0+0x2a>
  26:	31 f6                	xor    %esi,%esi
  28:	eb 49                	jmp    73 <tpm12_activate_tpm.constprop.0+0x73>
  2a:	80 7c 24 04 00       	cmpb   $0x0,0x4(%esp)
  2f:	75 f5                	jne    26 <tpm12_activate_tpm.constprop.0+0x26>
  31:	6a 00                	push   $0x0
  33:	89 d8                	mov    %ebx,%eax
  35:	83 f0 01             	xor    $0x1,%eax
  38:	50                   	push   %eax
  39:	b9 01 00 00 00       	mov    $0x1,%ecx
  3e:	ba 72 00 00 00       	mov    $0x72,%edx
  43:	31 c0                	xor    %eax,%eax
  45:	e8 fc ff ff ff       	call   46 <tpm12_activate_tpm.constprop.0+0x46>
  4a:	89 c6                	mov    %eax,%esi
  4c:	5a                   	pop    %edx
  4d:	59                   	pop    %ecx
  4e:	85 c0                	test   %eax,%eax
  50:	75 21                	jne    73 <tpm12_activate_tpm.constprop.0+0x73>
  52:	21 fb                	and    %edi,%ebx
  54:	80 e3 01             	and    $0x1,%bl
  57:	74 cd                	je     26 <tpm12_activate_tpm.constprop.0+0x26>
  59:	68 bd 01 00 00       	push   $0x1bd
  5e:	e8 fc ff ff ff       	call   5f <tpm12_activate_tpm.constprop.0+0x5f>
  63:	b8 d0 07 00 00       	mov    $0x7d0,%eax
  68:	e8 fc ff ff ff       	call   69 <tpm12_activate_tpm.constprop.0+0x69>
  6d:	e8 fc ff ff ff       	call   6e <tpm12_activate_tpm.constprop.0+0x6e>
  72:	58                   	pop    %eax
  73:	89 f0                	mov    %esi,%eax
  75:	83 c4 18             	add    $0x18,%esp
  78:	5b                   	pop    %ebx
  79:	5e                   	pop    %esi
  7a:	5f                   	pop    %edi
  7b:	c3                   	ret    

Disassembly of section .text.tpm12_set_owner_install.constprop.0:

00000000 <tpm12_set_owner_install.constprop.0>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	83 ec 1c             	sub    $0x1c,%esp
   5:	89 c6                	mov    %eax,%esi
   7:	89 e0                	mov    %esp,%eax
   9:	e8 fc ff ff ff       	call   a <tpm12_set_owner_install.constprop.0+0xa>
   e:	85 c0                	test   %eax,%eax
  10:	75 6b                	jne    7d <tpm12_set_owner_install.constprop.0+0x7d>
  12:	83 3c 24 00          	cmpl   $0x0,(%esp)
  16:	74 09                	je     21 <tpm12_set_owner_install.constprop.0+0x21>
  18:	89 c3                	mov    %eax,%ebx
  1a:	68 f7 01 00 00       	push   $0x1f7
  1f:	eb 1b                	jmp    3c <tpm12_set_owner_install.constprop.0+0x3c>
  21:	8d 44 24 06          	lea    0x6(%esp),%eax
  25:	e8 fc ff ff ff       	call   26 <tpm12_set_owner_install.constprop.0+0x26>
  2a:	89 c3                	mov    %eax,%ebx
  2c:	85 c0                	test   %eax,%eax
  2e:	75 4d                	jne    7d <tpm12_set_owner_install.constprop.0+0x7d>
  30:	80 7c 24 08 00       	cmpb   $0x0,0x8(%esp)
  35:	74 0d                	je     44 <tpm12_set_owner_install.constprop.0+0x44>
  37:	68 11 02 00 00       	push   $0x211
  3c:	e8 fc ff ff ff       	call   3d <tpm12_set_owner_install.constprop.0+0x3d>
  41:	58                   	pop    %eax
  42:	eb 3c                	jmp    80 <tpm12_set_owner_install.constprop.0+0x80>
  44:	6a 00                	push   $0x0
  46:	56                   	push   %esi
  47:	b9 01 00 00 00       	mov    $0x1,%ecx
  4c:	ba 71 00 00 00       	mov    $0x71,%edx
  51:	31 c0                	xor    %eax,%eax
  53:	e8 fc ff ff ff       	call   54 <tpm12_set_owner_install.constprop.0+0x54>
  58:	89 c3                	mov    %eax,%ebx
  5a:	59                   	pop    %ecx
  5b:	58                   	pop    %eax
  5c:	85 db                	test   %ebx,%ebx
  5e:	75 20                	jne    80 <tpm12_set_owner_install.constprop.0+0x80>
  60:	b8 e6 01 00 00       	mov    $0x1e6,%eax
  65:	85 f6                	test   %esi,%esi
  67:	75 05                	jne    6e <tpm12_set_owner_install.constprop.0+0x6e>
  69:	b8 ee 01 00 00       	mov    $0x1ee,%eax
  6e:	50                   	push   %eax
  6f:	68 2c 02 00 00       	push   $0x22c
  74:	e8 fc ff ff ff       	call   75 <tpm12_set_owner_install.constprop.0+0x75>
  79:	58                   	pop    %eax
  7a:	5a                   	pop    %edx
  7b:	eb 03                	jmp    80 <tpm12_set_owner_install.constprop.0+0x80>
  7d:	83 cb ff             	or     $0xffffffff,%ebx
  80:	89 d8                	mov    %ebx,%eax
  82:	83 c4 1c             	add    $0x1c,%esp
  85:	5b                   	pop    %ebx
  86:	5e                   	pop    %esi
  87:	c3                   	ret    

Disassembly of section .text.tpm_extend:

00000000 <tpm_extend>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	83 ec 44             	sub    $0x44,%esp
   5:	89 c6                	mov    %eax,%esi
   7:	a0 00 00 00 00       	mov    0x0,%al
   c:	3c 01                	cmp    $0x1,%al
   e:	74 09                	je     19 <tpm_extend+0x19>
  10:	3c 02                	cmp    $0x2,%al
  12:	74 6c                	je     80 <tpm_extend+0x80>
  14:	83 c8 ff             	or     $0xffffffff,%eax
  17:	eb 73                	jmp    8c <tpm_extend+0x8c>
  19:	66 c7 44 24 22 00 c1 	movw   $0xc100,0x22(%esp)
  20:	c7 44 24 24 00 00 00 	movl   $0x22000000,0x24(%esp)
  27:	22 
  28:	c7 44 24 28 00 00 00 	movl   $0x14000000,0x28(%esp)
  2f:	14 
  30:	8b 06                	mov    (%esi),%eax
  32:	e8 fc ff ff ff       	call   33 <tpm_extend+0x33>
  37:	89 44 24 2c          	mov    %eax,0x2c(%esp)
  3b:	8d 7c 24 30          	lea    0x30(%esp),%edi
  3f:	83 c6 08             	add    $0x8,%esi
  42:	b9 05 00 00 00       	mov    $0x5,%ecx
  47:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  49:	c7 04 24 1e 00 00 00 	movl   $0x1e,(%esp)
  50:	6a 00                	push   $0x0
  52:	8d 44 24 04          	lea    0x4(%esp),%eax
  56:	50                   	push   %eax
  57:	8d 4c 24 0c          	lea    0xc(%esp),%ecx
  5b:	8d 54 24 2a          	lea    0x2a(%esp),%edx
  5f:	31 c0                	xor    %eax,%eax
  61:	e8 fc ff ff ff       	call   62 <tpm_extend+0x62>
  66:	89 c2                	mov    %eax,%edx
  68:	58                   	pop    %eax
  69:	59                   	pop    %ecx
  6a:	83 c8 ff             	or     $0xffffffff,%eax
  6d:	83 3c 24 1e          	cmpl   $0x1e,(%esp)
  71:	75 19                	jne    8c <tpm_extend+0x8c>
  73:	31 c0                	xor    %eax,%eax
  75:	0b 54 24 0a          	or     0xa(%esp),%edx
  79:	0f 95 c0             	setne  %al
  7c:	f7 d8                	neg    %eax
  7e:	eb 0c                	jmp    8c <tpm_extend+0x8c>
  80:	89 f0                	mov    %esi,%eax
  82:	83 c4 44             	add    $0x44,%esp
  85:	5e                   	pop    %esi
  86:	5f                   	pop    %edi
  87:	e9 fc ff ff ff       	jmp    88 <tpm_extend+0x88>
  8c:	83 c4 44             	add    $0x44,%esp
  8f:	5e                   	pop    %esi
  90:	5f                   	pop    %edi
  91:	c3                   	ret    

Disassembly of section .text.hash_log_extend.constprop.0:

00000000 <hash_log_extend.constprop.0>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	81 ec 70 01 00 00    	sub    $0x170,%esp
   a:	89 c3                	mov    %eax,%ebx
   c:	b8 19 00 00 00       	mov    $0x19,%eax
  11:	83 3b 17             	cmpl   $0x17,(%ebx)
  14:	0f 87 83 00 00 00    	ja     9d <hash_log_extend.constprop.0+0x9d>
  1a:	89 d0                	mov    %edx,%eax
  1c:	8d 6b 08             	lea    0x8(%ebx),%ebp
  1f:	85 d2                	test   %edx,%edx
  21:	74 09                	je     2c <hash_log_extend.constprop.0+0x2c>
  23:	89 ca                	mov    %ecx,%edx
  25:	89 e9                	mov    %ebp,%ecx
  27:	e8 fc ff ff ff       	call   28 <hash_log_extend.constprop.0+0x28>
  2c:	89 e7                	mov    %esp,%edi
  2e:	b9 5c 00 00 00       	mov    $0x5c,%ecx
  33:	31 c0                	xor    %eax,%eax
  35:	f3 ab                	rep stos %eax,%es:(%edi)
  37:	8b 03                	mov    (%ebx),%eax
  39:	89 04 24             	mov    %eax,(%esp)
  3c:	8b 43 04             	mov    0x4(%ebx),%eax
  3f:	89 44 24 04          	mov    %eax,0x4(%esp)
  43:	b9 05 00 00 00       	mov    $0x5,%ecx
  48:	8d 7c 24 08          	lea    0x8(%esp),%edi
  4c:	89 ee                	mov    %ebp,%esi
  4e:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  50:	83 bc 24 84 01 00 00 	cmpl   $0x0,0x184(%esp)
  57:	00 
  58:	75 2e                	jne    88 <hash_log_extend.constprop.0+0x88>
  5a:	b9 05 00 00 00       	mov    $0x5,%ecx
  5f:	8d 7c 24 08          	lea    0x8(%esp),%edi
  63:	89 ee                	mov    %ebp,%esi
  65:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  67:	8d 4b 20             	lea    0x20(%ebx),%ecx
  6a:	ff 73 1c             	push   0x1c(%ebx)
  6d:	ba 14 00 00 00       	mov    $0x14,%edx
  72:	8d 44 24 04          	lea    0x4(%esp),%eax
  76:	e8 fc ff ff ff       	call   77 <hash_log_extend.constprop.0+0x77>
  7b:	5a                   	pop    %edx
  7c:	85 c0                	test   %eax,%eax
  7e:	0f 95 c0             	setne  %al
  81:	0f b6 c0             	movzbl %al,%eax
  84:	01 c0                	add    %eax,%eax
  86:	eb 15                	jmp    9d <hash_log_extend.constprop.0+0x9d>
  88:	ba 14 00 00 00       	mov    $0x14,%edx
  8d:	89 e0                	mov    %esp,%eax
  8f:	e8 fc ff ff ff       	call   90 <hash_log_extend.constprop.0+0x90>
  94:	85 c0                	test   %eax,%eax
  96:	74 c2                	je     5a <hash_log_extend.constprop.0+0x5a>
  98:	b8 1a 00 00 00       	mov    $0x1a,%eax
  9d:	81 c4 70 01 00 00    	add    $0x170,%esp
  a3:	5b                   	pop    %ebx
  a4:	5e                   	pop    %esi
  a5:	5f                   	pop    %edi
  a6:	5d                   	pop    %ebp
  a7:	c3                   	ret    

Disassembly of section .text.tpm_build_digest:

00000000 <tpm_build_digest>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 20             	sub    $0x20,%esp
   7:	89 c5                	mov    %eax,%ebp
   9:	89 54 24 18          	mov    %edx,0x18(%esp)
   d:	89 4c 24 1c          	mov    %ecx,0x1c(%esp)
  11:	a0 00 00 00 00       	mov    0x0,%al
  16:	3c 01                	cmp    $0x1,%al
  18:	74 09                	je     23 <tpm_build_digest+0x23>
  1a:	3c 02                	cmp    $0x2,%al
  1c:	74 1f                	je     3d <tpm_build_digest+0x3d>
  1e:	e9 81 01 00 00       	jmp    1a4 <tpm_build_digest+0x1a4>
  23:	8d 4d 08             	lea    0x8(%ebp),%ecx
  26:	8b 54 24 1c          	mov    0x1c(%esp),%edx
  2a:	8b 44 24 18          	mov    0x18(%esp),%eax
  2e:	e8 fc ff ff ff       	call   2f <tpm_build_digest+0x2f>
  33:	b8 14 00 00 00       	mov    $0x14,%eax
  38:	e9 6a 01 00 00       	jmp    1a7 <tpm_build_digest+0x1a7>
  3d:	8b 0d 00 00 00 00    	mov    0x0,%ecx
  43:	83 c8 ff             	or     $0xffffffff,%eax
  46:	85 c9                	test   %ecx,%ecx
  48:	0f 84 59 01 00 00    	je     1a7 <tpm_build_digest+0x1a7>
  4e:	8d 51 04             	lea    0x4(%ecx),%edx
  51:	03 0d 00 00 00 00    	add    0x0,%ecx
  57:	89 4c 24 04          	mov    %ecx,0x4(%esp)
  5b:	8d 5d 0c             	lea    0xc(%ebp),%ebx
  5e:	31 f6                	xor    %esi,%esi
  60:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
  67:	00 
  68:	a1 00 00 00 00       	mov    0x0,%eax
  6d:	8b 00                	mov    (%eax),%eax
  6f:	e8 fc ff ff ff       	call   70 <tpm_build_digest+0x70>
  74:	39 44 24 14          	cmp    %eax,0x14(%esp)
  78:	0f 83 f7 00 00 00    	jae    175 <tpm_build_digest+0x175>
  7e:	0f b6 4a 02          	movzbl 0x2(%edx),%ecx
  82:	89 c8                	mov    %ecx,%eax
  84:	8d 7c 0a 03          	lea    0x3(%edx,%ecx,1),%edi
  88:	89 7c 24 08          	mov    %edi,0x8(%esp)
  8c:	39 7c 24 04          	cmp    %edi,0x4(%esp)
  90:	0f 82 df 00 00 00    	jb     175 <tpm_build_digest+0x175>
  96:	84 c0                	test   %al,%al
  98:	0f 84 ca 00 00 00    	je     168 <tpm_build_digest+0x168>
  9e:	80 7a 03 00          	cmpb   $0x0,0x3(%edx)
  a2:	0f 84 c0 00 00 00    	je     168 <tpm_build_digest+0x168>
  a8:	66 8b 12             	mov    (%edx),%dx
  ab:	89 d0                	mov    %edx,%eax
  ad:	86 e0                	xchg   %ah,%al
  af:	66 89 44 24 02       	mov    %ax,0x2(%esp)
  b4:	31 c0                	xor    %eax,%eax
  b6:	6b c8 0c             	imul   $0xc,%eax,%ecx
  b9:	66 8b 7c 24 02       	mov    0x2(%esp),%di
  be:	66 3b b9 00 00 00 00 	cmp    0x0(%ecx),%di
  c5:	75 25                	jne    ec <tpm_build_digest+0xec>
  c7:	0f b6 81 03 00 00 00 	movzbl 0x3(%ecx),%eax
  ce:	8d 44 03 02          	lea    0x2(%ebx,%eax,1),%eax
  d2:	89 44 24 0c          	mov    %eax,0xc(%esp)
  d6:	8d 85 70 01 00 00    	lea    0x170(%ebp),%eax
  dc:	39 44 24 0c          	cmp    %eax,0xc(%esp)
  e0:	76 27                	jbe    109 <tpm_build_digest+0x109>
  e2:	68 47 02 00 00       	push   $0x247
  e7:	e9 94 00 00 00       	jmp    180 <tpm_build_digest+0x180>
  ec:	40                   	inc    %eax
  ed:	83 f8 08             	cmp    $0x8,%eax
  f0:	75 c4                	jne    b6 <tpm_build_digest+0xb6>
  f2:	0f b7 74 24 02       	movzwl 0x2(%esp),%esi
  f7:	56                   	push   %esi
  f8:	68 97 00 00 00       	push   $0x97
  fd:	e8 fc ff ff ff       	call   fe <tpm_build_digest+0xfe>
 102:	58                   	pop    %eax
 103:	5a                   	pop    %edx
 104:	e9 9b 00 00 00       	jmp    1a4 <tpm_build_digest+0x1a4>
 109:	83 7c 24 34 00       	cmpl   $0x0,0x34(%esp)
 10e:	75 05                	jne    115 <tpm_build_digest+0x115>
 110:	66 8b 54 24 02       	mov    0x2(%esp),%dx
 115:	66 89 13             	mov    %dx,(%ebx)
 118:	8d 43 02             	lea    0x2(%ebx),%eax
 11b:	89 44 24 10          	mov    %eax,0x10(%esp)
 11f:	bf 00 00 00 00       	mov    $0x0,%edi
 124:	66 8b 44 24 02       	mov    0x2(%esp),%ax
 129:	66 3b 07             	cmp    (%edi),%ax
 12c:	75 29                	jne    157 <tpm_build_digest+0x157>
 12e:	8b 5f 08             	mov    0x8(%edi),%ebx
 131:	85 db                	test   %ebx,%ebx
 133:	74 10                	je     145 <tpm_build_digest+0x145>
 135:	8b 4c 24 10          	mov    0x10(%esp),%ecx
 139:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 13d:	8b 44 24 18          	mov    0x18(%esp),%eax
 141:	ff d3                	call   *%ebx
 143:	eb 12                	jmp    157 <tpm_build_digest+0x157>
 145:	0f b6 4f 03          	movzbl 0x3(%edi),%ecx
 149:	ba ff 00 00 00       	mov    $0xff,%edx
 14e:	8b 44 24 10          	mov    0x10(%esp),%eax
 152:	e8 fc ff ff ff       	call   153 <tpm_build_digest+0x153>
 157:	83 c7 0c             	add    $0xc,%edi
 15a:	b8 60 00 00 00       	mov    $0x60,%eax
 15f:	39 f8                	cmp    %edi,%eax
 161:	75 c1                	jne    124 <tpm_build_digest+0x124>
 163:	46                   	inc    %esi
 164:	8b 5c 24 0c          	mov    0xc(%esp),%ebx
 168:	ff 44 24 14          	incl   0x14(%esp)
 16c:	8b 54 24 08          	mov    0x8(%esp),%edx
 170:	e9 f3 fe ff ff       	jmp    68 <tpm_build_digest+0x68>
 175:	39 54 24 04          	cmp    %edx,0x4(%esp)
 179:	74 0d                	je     188 <tpm_build_digest+0x188>
 17b:	68 6b 00 00 00       	push   $0x6b
 180:	e8 fc ff ff ff       	call   181 <tpm_build_digest+0x181>
 185:	59                   	pop    %ecx
 186:	eb 1c                	jmp    1a4 <tpm_build_digest+0x1a4>
 188:	8d 55 08             	lea    0x8(%ebp),%edx
 18b:	83 7c 24 34 00       	cmpl   $0x0,0x34(%esp)
 190:	74 09                	je     19b <tpm_build_digest+0x19b>
 192:	89 f0                	mov    %esi,%eax
 194:	e8 fc ff ff ff       	call   195 <tpm_build_digest+0x195>
 199:	89 c6                	mov    %eax,%esi
 19b:	89 75 08             	mov    %esi,0x8(%ebp)
 19e:	89 d8                	mov    %ebx,%eax
 1a0:	29 d0                	sub    %edx,%eax
 1a2:	eb 03                	jmp    1a7 <tpm_build_digest+0x1a7>
 1a4:	83 c8 ff             	or     $0xffffffff,%eax
 1a7:	83 c4 20             	add    $0x20,%esp
 1aa:	5b                   	pop    %ebx
 1ab:	5e                   	pop    %esi
 1ac:	5f                   	pop    %edi
 1ad:	5d                   	pop    %ebp
 1ae:	c3                   	ret    

Disassembly of section .text.tpm_add_measurement_to_log:

00000000 <tpm_add_measurement_to_log>:
   0:	80 3d 00 00 00 00 00 	cmpb   $0x0,0x0
   7:	0f 84 8c 00 00 00    	je     99 <tpm_add_measurement_to_log+0x99>
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	81 ec 70 01 00 00    	sub    $0x170,%esp
  16:	89 c3                	mov    %eax,%ebx
  18:	89 ce                	mov    %ecx,%esi
  1a:	89 e7                	mov    %esp,%edi
  1c:	b9 5c 00 00 00       	mov    $0x5c,%ecx
  21:	31 c0                	xor    %eax,%eax
  23:	f3 ab                	rep stos %eax,%es:(%edi)
  25:	89 1c 24             	mov    %ebx,(%esp)
  28:	89 54 24 04          	mov    %edx,0x4(%esp)
  2c:	6a 01                	push   $0x1
  2e:	8b 8c 24 8c 01 00 00 	mov    0x18c(%esp),%ecx
  35:	8b 94 24 88 01 00 00 	mov    0x188(%esp),%edx
  3c:	8d 44 24 04          	lea    0x4(%esp),%eax
  40:	e8 fc ff ff ff       	call   41 <tpm_add_measurement_to_log+0x41>
  45:	89 c3                	mov    %eax,%ebx
  47:	59                   	pop    %ecx
  48:	85 c0                	test   %eax,%eax
  4a:	78 43                	js     8f <tpm_add_measurement_to_log+0x8f>
  4c:	89 c2                	mov    %eax,%edx
  4e:	89 e0                	mov    %esp,%eax
  50:	e8 fc ff ff ff       	call   51 <tpm_add_measurement_to_log+0x51>
  55:	85 c0                	test   %eax,%eax
  57:	74 07                	je     60 <tpm_add_measurement_to_log+0x60>
  59:	e8 fc ff ff ff       	call   5a <tpm_add_measurement_to_log+0x5a>
  5e:	eb 2f                	jmp    8f <tpm_add_measurement_to_log+0x8f>
  60:	6a 00                	push   $0x0
  62:	8b 8c 24 8c 01 00 00 	mov    0x18c(%esp),%ecx
  69:	8b 94 24 88 01 00 00 	mov    0x188(%esp),%edx
  70:	8d 44 24 04          	lea    0x4(%esp),%eax
  74:	e8 fc ff ff ff       	call   75 <tpm_add_measurement_to_log+0x75>
  79:	ff b4 24 84 01 00 00 	push   0x184(%esp)
  80:	89 f1                	mov    %esi,%ecx
  82:	89 da                	mov    %ebx,%edx
  84:	8d 44 24 08          	lea    0x8(%esp),%eax
  88:	e8 fc ff ff ff       	call   89 <tpm_add_measurement_to_log+0x89>
  8d:	58                   	pop    %eax
  8e:	5a                   	pop    %edx
  8f:	81 c4 70 01 00 00    	add    $0x170,%esp
  95:	5b                   	pop    %ebx
  96:	5e                   	pop    %esi
  97:	5f                   	pop    %edi
  98:	c3                   	ret    
  99:	c3                   	ret    

Disassembly of section .text.tpm_add_action:

00000000 <tpm_add_action>:
   0:	53                   	push   %ebx
   1:	51                   	push   %ecx
   2:	89 c3                	mov    %eax,%ebx
   4:	89 d0                	mov    %edx,%eax
   6:	89 14 24             	mov    %edx,(%esp)
   9:	e8 fc ff ff ff       	call   a <tpm_add_action+0xa>
   e:	50                   	push   %eax
   f:	8b 4c 24 04          	mov    0x4(%esp),%ecx
  13:	51                   	push   %ecx
  14:	50                   	push   %eax
  15:	ba 05 00 00 00       	mov    $0x5,%edx
  1a:	89 d8                	mov    %ebx,%eax
  1c:	e8 fc ff ff ff       	call   1d <tpm_add_action+0x1d>
  21:	83 c4 10             	add    $0x10,%esp
  24:	5b                   	pop    %ebx
  25:	c3                   	ret    

Disassembly of section .text.tpm_setup:

00000000 <tpm_setup>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	81 ec a0 00 00 00    	sub    $0xa0,%esp
   9:	b8 54 50 4d 32       	mov    $0x324d5054,%eax
   e:	e8 fc ff ff ff       	call   f <tpm_setup+0xf>
  13:	85 c0                	test   %eax,%eax
  15:	75 15                	jne    2c <tpm_setup+0x2c>
  17:	b8 54 43 50 41       	mov    $0x41504354,%eax
  1c:	e8 fc ff ff ff       	call   1d <tpm_setup+0x1d>
  21:	89 c3                	mov    %eax,%ebx
  23:	85 c0                	test   %eax,%eax
  25:	75 42                	jne    69 <tpm_setup+0x69>
  27:	e9 37 04 00 00       	jmp    463 <tpm_setup+0x463>
  2c:	89 c3                	mov    %eax,%ebx
  2e:	83 78 04 4b          	cmpl   $0x4b,0x4(%eax)
  32:	76 e3                	jbe    17 <tpm_setup+0x17>
  34:	ff 70 40             	push   0x40(%eax)
  37:	ff 70 44             	push   0x44(%eax)
  3a:	68 69 02 00 00       	push   $0x269
  3f:	e8 fc ff ff ff       	call   40 <tpm_setup+0x40>
  44:	8b 53 40             	mov    0x40(%ebx),%edx
  47:	8b 43 44             	mov    0x44(%ebx),%eax
  4a:	e8 fc ff ff ff       	call   4b <tpm_setup+0x4b>
  4f:	83 c4 0c             	add    $0xc,%esp
  52:	85 c0                	test   %eax,%eax
  54:	75 c1                	jne    17 <tpm_setup+0x17>
  56:	e8 fc ff ff ff       	call   57 <tpm_setup+0x57>
  5b:	a2 00 00 00 00       	mov    %al,0x0
  60:	84 c0                	test   %al,%al
  62:	75 2c                	jne    90 <tpm_setup+0x90>
  64:	e9 fa 03 00 00       	jmp    463 <tpm_setup+0x463>
  69:	ff 70 26             	push   0x26(%eax)
  6c:	ff 70 2a             	push   0x2a(%eax)
  6f:	68 8e 02 00 00       	push   $0x28e
  74:	e8 fc ff ff ff       	call   75 <tpm_setup+0x75>
  79:	8b 53 26             	mov    0x26(%ebx),%edx
  7c:	8b 43 2a             	mov    0x2a(%ebx),%eax
  7f:	e8 fc ff ff ff       	call   80 <tpm_setup+0x80>
  84:	83 c4 0c             	add    $0xc,%esp
  87:	85 c0                	test   %eax,%eax
  89:	74 cb                	je     56 <tpm_setup+0x56>
  8b:	e9 d3 03 00 00       	jmp    463 <tpm_setup+0x463>
  90:	ba 63 02 00 00       	mov    $0x263,%edx
  95:	fe c8                	dec    %al
  97:	74 05                	je     9e <tpm_setup+0x9e>
  99:	ba 67 02 00 00       	mov    $0x267,%edx
  9e:	52                   	push   %edx
  9f:	68 b3 02 00 00       	push   $0x2b3
  a4:	e8 fc ff ff ff       	call   a5 <tpm_setup+0xa5>
  a9:	c6 05 00 00 00 00 01 	movb   $0x1,0x0
  b0:	5f                   	pop    %edi
  b1:	58                   	pop    %eax
  b2:	f6 05 00 00 00 00 02 	testb  $0x2,0x0
  b9:	0f 85 a4 03 00 00    	jne    463 <tpm_setup+0x463>
  bf:	a0 00 00 00 00       	mov    0x0,%al
  c4:	3c 01                	cmp    $0x1,%al
  c6:	74 0d                	je     d5 <tpm_setup+0xd5>
  c8:	3c 02                	cmp    $0x2,%al
  ca:	0f 84 9b 01 00 00    	je     26b <tpm_setup+0x26b>
  d0:	e9 8e 03 00 00       	jmp    463 <tpm_setup+0x463>
  d5:	68 d0 02 00 00       	push   $0x2d0
  da:	e8 fc ff ff ff       	call   db <tpm_setup+0xdb>
  df:	6a 00                	push   $0x0
  e1:	6a 01                	push   $0x1
  e3:	b9 02 00 00 00       	mov    $0x2,%ecx
  e8:	ba 99 00 00 00       	mov    $0x99,%edx
  ed:	31 c0                	xor    %eax,%eax
  ef:	e8 fc ff ff ff       	call   f0 <tpm_setup+0xf0>
  f4:	83 c4 0c             	add    $0xc,%esp
  f7:	85 c0                	test   %eax,%eax
  f9:	0f 85 62 01 00 00    	jne    261 <tpm_setup+0x261>
  ff:	6a 00                	push   $0x0
 101:	6a 08                	push   $0x8
 103:	b9 02 00 00 00       	mov    $0x2,%ecx
 108:	ba 0a 00 00 40       	mov    $0x4000000a,%edx
 10d:	e8 fc ff ff ff       	call   10e <tpm_setup+0x10e>
 112:	5b                   	pop    %ebx
 113:	5e                   	pop    %esi
 114:	85 c0                	test   %eax,%eax
 116:	74 4f                	je     167 <tpm_setup+0x167>
 118:	8d 44 24 20          	lea    0x20(%esp),%eax
 11c:	e8 fc ff ff ff       	call   11d <tpm_setup+0x11d>
 121:	85 c0                	test   %eax,%eax
 123:	75 4c                	jne    171 <tpm_setup+0x171>
 125:	80 7c 24 29 00       	cmpb   $0x0,0x29(%esp)
 12a:	75 3b                	jne    167 <tpm_setup+0x167>
 12c:	8a 44 24 28          	mov    0x28(%esp),%al
 130:	0a 44 24 2a          	or     0x2a(%esp),%al
 134:	75 3b                	jne    171 <tpm_setup+0x171>
 136:	6a 00                	push   $0x0
 138:	6a 20                	push   $0x20
 13a:	b9 02 00 00 00       	mov    $0x2,%ecx
 13f:	ba 0a 00 00 40       	mov    $0x4000000a,%edx
 144:	31 c0                	xor    %eax,%eax
 146:	e8 fc ff ff ff       	call   147 <tpm_setup+0x147>
 14b:	6a 00                	push   $0x0
 14d:	6a 08                	push   $0x8
 14f:	b9 02 00 00 00       	mov    $0x2,%ecx
 154:	ba 0a 00 00 40       	mov    $0x4000000a,%edx
 159:	31 c0                	xor    %eax,%eax
 15b:	e8 fc ff ff ff       	call   15c <tpm_setup+0x15c>
 160:	83 c4 10             	add    $0x10,%esp
 163:	85 c0                	test   %eax,%eax
 165:	75 0a                	jne    171 <tpm_setup+0x171>
 167:	c7 05 00 00 00 00 01 	movl   $0x1,0x0
 16e:	00 00 00 
 171:	6a 1e                	push   $0x1e
 173:	8d 4c 24 24          	lea    0x24(%esp),%ecx
 177:	ba 15 01 00 00       	mov    $0x115,%edx
 17c:	b8 05 00 00 00       	mov    $0x5,%eax
 181:	e8 fc ff ff ff       	call   182 <tpm_setup+0x182>
 186:	59                   	pop    %ecx
 187:	85 c0                	test   %eax,%eax
 189:	0f 85 d2 00 00 00    	jne    261 <tpm_setup+0x261>
 18f:	6a 1a                	push   $0x1a
 191:	8d 4c 24 08          	lea    0x8(%esp),%ecx
 195:	ba 20 01 00 00       	mov    $0x120,%edx
 19a:	b8 05 00 00 00       	mov    $0x5,%eax
 19f:	e8 fc ff ff ff       	call   1a0 <tpm_setup+0x1a0>
 1a4:	5a                   	pop    %edx
 1a5:	85 c0                	test   %eax,%eax
 1a7:	0f 85 b4 00 00 00    	jne    261 <tpm_setup+0x261>
 1ad:	8d 54 24 04          	lea    0x4(%esp),%edx
 1b1:	8d 4c 24 10          	lea    0x10(%esp),%ecx
 1b5:	8b 42 0e             	mov    0xe(%edx),%eax
 1b8:	e8 fc ff ff ff       	call   1b9 <tpm_setup+0x1b9>
 1bd:	89 42 0e             	mov    %eax,0xe(%edx)
 1c0:	83 c2 04             	add    $0x4,%edx
 1c3:	39 d1                	cmp    %edx,%ecx
 1c5:	75 ee                	jne    1b5 <tpm_setup+0x1b5>
 1c7:	8d 54 24 20          	lea    0x20(%esp),%edx
 1cb:	8d 4c 24 30          	lea    0x30(%esp),%ecx
 1cf:	8b 42 0e             	mov    0xe(%edx),%eax
 1d2:	e8 fc ff ff ff       	call   1d3 <tpm_setup+0x1d3>
 1d7:	89 42 0e             	mov    %eax,0xe(%edx)
 1da:	83 c2 04             	add    $0x4,%edx
 1dd:	39 d1                	cmp    %edx,%ecx
 1df:	75 ee                	jne    1cf <tpm_setup+0x1cf>
 1e1:	ff 74 24 3a          	push   0x3a(%esp)
 1e5:	ff 74 24 3a          	push   0x3a(%esp)
 1e9:	ff 74 24 3a          	push   0x3a(%esp)
 1ed:	ff 74 24 3a          	push   0x3a(%esp)
 1f1:	68 fe 02 00 00       	push   $0x2fe
 1f6:	e8 fc ff ff ff       	call   1f7 <tpm_setup+0x1f7>
 1fb:	ff 74 24 2e          	push   0x2e(%esp)
 1ff:	ff 74 24 2e          	push   0x2e(%esp)
 203:	ff 74 24 2e          	push   0x2e(%esp)
 207:	68 1e 03 00 00       	push   $0x31e
 20c:	e8 fc ff ff ff       	call   20d <tpm_setup+0x20d>
 211:	83 c4 24             	add    $0x24,%esp
 214:	8d 54 24 12          	lea    0x12(%esp),%edx
 218:	8d 44 24 2e          	lea    0x2e(%esp),%eax
 21c:	e8 fc ff ff ff       	call   21d <tpm_setup+0x21d>
 221:	6a 02                	push   $0x2
 223:	6a 00                	push   $0x0
 225:	31 c9                	xor    %ecx,%ecx
 227:	ba 50 00 00 00       	mov    $0x50,%edx
 22c:	31 c0                	xor    %eax,%eax
 22e:	e8 fc ff ff ff       	call   22f <tpm_setup+0x22f>
 233:	5e                   	pop    %esi
 234:	5f                   	pop    %edi
 235:	85 c0                	test   %eax,%eax
 237:	75 28                	jne    261 <tpm_setup+0x261>
 239:	6a 00                	push   $0x0
 23b:	6a 00                	push   $0x0
 23d:	31 c9                	xor    %ecx,%ecx
 23f:	ba 0b 00 00 40       	mov    $0x4000000b,%edx
 244:	b8 03 00 00 00       	mov    $0x3,%eax
 249:	e8 fc ff ff ff       	call   24a <tpm_setup+0x24a>
 24e:	59                   	pop    %ecx
 24f:	5b                   	pop    %ebx
 250:	85 c0                	test   %eax,%eax
 252:	0f 84 92 01 00 00    	je     3ea <tpm_setup+0x3ea>
 258:	83 f8 3d             	cmp    $0x3d,%eax
 25b:	0f 84 89 01 00 00    	je     3ea <tpm_setup+0x3ea>
 261:	68 76 04 00 00       	push   $0x476
 266:	e9 67 01 00 00       	jmp    3d2 <tpm_setup+0x3d2>
 26b:	8d 7c 24 04          	lea    0x4(%esp),%edi
 26f:	be 5c 04 00 00       	mov    $0x45c,%esi
 274:	b9 03 00 00 00       	mov    $0x3,%ecx
 279:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 27b:	8d 7c 24 20          	lea    0x20(%esp),%edi
 27f:	be 68 04 00 00       	mov    $0x468,%esi
 284:	b9 04 00 00 00       	mov    $0x4,%ecx
 289:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 28b:	8d 54 24 04          	lea    0x4(%esp),%edx
 28f:	8d 44 24 20          	lea    0x20(%esp),%eax
 293:	e8 fc ff ff ff       	call   294 <tpm_setup+0x294>
 298:	6a 00                	push   $0x0
 29a:	6a 00                	push   $0x0
 29c:	b9 02 00 00 00       	mov    $0x2,%ecx
 2a1:	ba 44 01 00 00       	mov    $0x144,%edx
 2a6:	31 c0                	xor    %eax,%eax
 2a8:	e8 fc ff ff ff       	call   2a9 <tpm_setup+0x2a9>
 2ad:	89 c3                	mov    %eax,%ebx
 2af:	50                   	push   %eax
 2b0:	68 64 03 00 00       	push   $0x364
 2b5:	e8 fc ff ff ff       	call   2b6 <tpm_setup+0x2b6>
 2ba:	83 c4 10             	add    $0x10,%esp
 2bd:	85 db                	test   %ebx,%ebx
 2bf:	0f 85 08 01 00 00    	jne    3cd <tpm_setup+0x3cd>
 2c5:	6a 02                	push   $0x2
 2c7:	6a 01                	push   $0x1
 2c9:	b9 01 00 00 00       	mov    $0x1,%ecx
 2ce:	ba 43 01 00 00       	mov    $0x143,%edx
 2d3:	31 c0                	xor    %eax,%eax
 2d5:	e8 fc ff ff ff       	call   2d6 <tpm_setup+0x2d6>
 2da:	89 c3                	mov    %eax,%ebx
 2dc:	50                   	push   %eax
 2dd:	68 ab 03 00 00       	push   $0x3ab
 2e2:	e8 fc ff ff ff       	call   2e3 <tpm_setup+0x2e3>
 2e7:	83 c4 10             	add    $0x10,%esp
 2ea:	85 db                	test   %ebx,%ebx
 2ec:	0f 85 db 00 00 00    	jne    3cd <tpm_setup+0x3cd>
 2f2:	66 c7 44 24 04 80 01 	movw   $0x180,0x4(%esp)
 2f9:	c7 44 24 06 00 00 00 	movl   $0x16000000,0x6(%esp)
 300:	16 
 301:	c7 44 24 0a 00 00 01 	movl   $0x7a010000,0xa(%esp)
 308:	7a 
 309:	c7 44 24 0e 00 00 00 	movl   $0x5000000,0xe(%esp)
 310:	05 
 311:	c7 44 24 12 00 00 00 	movl   $0x0,0x12(%esp)
 318:	00 
 319:	c7 44 24 16 00 00 00 	movl   $0x8000000,0x16(%esp)
 320:	08 
 321:	c7 04 24 80 00 00 00 	movl   $0x80,(%esp)
 328:	6a 00                	push   $0x0
 32a:	8d 44 24 04          	lea    0x4(%esp),%eax
 32e:	50                   	push   %eax
 32f:	8d 4c 24 28          	lea    0x28(%esp),%ecx
 333:	8d 54 24 0c          	lea    0xc(%esp),%edx
 337:	31 c0                	xor    %eax,%eax
 339:	e8 fc ff ff ff       	call   33a <tpm_setup+0x33a>
 33e:	5f                   	pop    %edi
 33f:	5a                   	pop    %edx
 340:	83 cb ff             	or     $0xffffffff,%ebx
 343:	85 c0                	test   %eax,%eax
 345:	75 1b                	jne    362 <tpm_setup+0x362>
 347:	8b 44 24 22          	mov    0x22(%esp),%eax
 34b:	e8 fc ff ff ff       	call   34c <tpm_setup+0x34c>
 350:	3d 80 00 00 00       	cmp    $0x80,%eax
 355:	77 0b                	ja     362 <tpm_setup+0x362>
 357:	8b 44 24 26          	mov    0x26(%esp),%eax
 35b:	e8 fc ff ff ff       	call   35c <tpm_setup+0x35c>
 360:	89 c3                	mov    %eax,%ebx
 362:	53                   	push   %ebx
 363:	68 e9 03 00 00       	push   $0x3e9
 368:	e8 fc ff ff ff       	call   369 <tpm_setup+0x369>
 36d:	59                   	pop    %ecx
 36e:	5e                   	pop    %esi
 36f:	85 db                	test   %ebx,%ebx
 371:	75 5a                	jne    3cd <tpm_setup+0x3cd>
 373:	8b 44 24 22          	mov    0x22(%esp),%eax
 377:	e8 fc ff ff ff       	call   378 <tpm_setup+0x378>
 37c:	83 f8 0f             	cmp    $0xf,%eax
 37f:	76 4c                	jbe    3cd <tpm_setup+0x3cd>
 381:	8d 58 f1             	lea    -0xf(%eax),%ebx
 384:	83 fb 06             	cmp    $0x6,%ebx
 387:	76 44                	jbe    3cd <tpm_setup+0x3cd>
 389:	b9 10 00 00 00       	mov    $0x10,%ecx
 38e:	89 da                	mov    %ebx,%edx
 390:	b8 00 00 00 00       	mov    $0x0,%eax
 395:	e8 fc ff ff ff       	call   396 <tpm_setup+0x396>
 39a:	a3 00 00 00 00       	mov    %eax,0x0
 39f:	85 c0                	test   %eax,%eax
 3a1:	74 1b                	je     3be <tpm_setup+0x3be>
 3a3:	8d 74 24 2f          	lea    0x2f(%esp),%esi
 3a7:	89 c7                	mov    %eax,%edi
 3a9:	89 d9                	mov    %ebx,%ecx
 3ab:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 3ad:	89 1d 00 00 00 00    	mov    %ebx,0x0
 3b3:	e8 fc ff ff ff       	call   3b4 <tpm_setup+0x3b4>
 3b8:	85 c0                	test   %eax,%eax
 3ba:	74 2e                	je     3ea <tpm_setup+0x3ea>
 3bc:	eb 0f                	jmp    3cd <tpm_setup+0x3cd>
 3be:	ba 00 00 00 00       	mov    $0x0,%edx
 3c3:	b8 31 02 00 00       	mov    $0x231,%eax
 3c8:	e8 fc ff ff ff       	call   3c9 <tpm_setup+0x3c9>
 3cd:	68 a4 04 00 00       	push   $0x4a4
 3d2:	68 3c 03 00 00       	push   $0x33c
 3d7:	e8 fc ff ff ff       	call   3d8 <tpm_setup+0x3d8>
 3dc:	81 c4 a8 00 00 00    	add    $0xa8,%esp
 3e2:	5b                   	pop    %ebx
 3e3:	5e                   	pop    %esi
 3e4:	5f                   	pop    %edi
 3e5:	e9 fc ff ff ff       	jmp    3e6 <tpm_setup+0x3e6>
 3ea:	8d 7c 24 28          	lea    0x28(%esp),%edi
 3ee:	b9 05 00 00 00       	mov    $0x5,%ecx
 3f3:	31 c0                	xor    %eax,%eax
 3f5:	f3 ab                	rep stos %eax,%es:(%edi)
 3f7:	c7 44 24 20 01 00 00 	movl   $0x1,0x20(%esp)
 3fe:	00 
 3ff:	c7 44 24 24 14 00 00 	movl   $0x14,0x24(%esp)
 406:	00 
 407:	8b 1d 00 00 00 00    	mov    0x0,%ebx
 40d:	53                   	push   %ebx
 40e:	68 2c 04 00 00       	push   $0x42c
 413:	e8 fc ff ff ff       	call   414 <tpm_setup+0x414>
 418:	58                   	pop    %eax
 419:	5a                   	pop    %edx
 41a:	85 db                	test   %ebx,%ebx
 41c:	74 2d                	je     44b <tpm_setup+0x44b>
 41e:	8d 74 24 20          	lea    0x20(%esp),%esi
 422:	0f b7 53 16          	movzwl 0x16(%ebx),%edx
 426:	8b 43 18             	mov    0x18(%ebx),%eax
 429:	8d 4c 24 28          	lea    0x28(%esp),%ecx
 42d:	e8 fc ff ff ff       	call   42e <tpm_setup+0x42e>
 432:	6a 1c                	push   $0x1c
 434:	56                   	push   %esi
 435:	6a 1c                	push   $0x1c
 437:	89 f1                	mov    %esi,%ecx
 439:	ba 06 00 00 00       	mov    $0x6,%edx
 43e:	b8 01 00 00 00       	mov    $0x1,%eax
 443:	e8 fc ff ff ff       	call   444 <tpm_setup+0x444>
 448:	83 c4 0c             	add    $0xc,%esp
 44b:	ba 43 04 00 00       	mov    $0x443,%edx
 450:	b8 02 00 00 00       	mov    $0x2,%eax
 455:	81 c4 a0 00 00 00    	add    $0xa0,%esp
 45b:	5b                   	pop    %ebx
 45c:	5e                   	pop    %esi
 45d:	5f                   	pop    %edi
 45e:	e9 fc ff ff ff       	jmp    45f <tpm_setup+0x45f>
 463:	81 c4 a0 00 00 00    	add    $0xa0,%esp
 469:	5b                   	pop    %ebx
 46a:	5e                   	pop    %esi
 46b:	5f                   	pop    %edi
 46c:	c3                   	ret    

Disassembly of section .text.tpm_prepboot:

00000000 <tpm_prepboot>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 58             	sub    $0x58,%esp
   7:	a0 00 00 00 00       	mov    0x0,%al
   c:	3c 01                	cmp    $0x1,%al
   e:	74 09                	je     19 <tpm_prepboot+0x19>
  10:	3c 02                	cmp    $0x2,%al
  12:	74 2c                	je     40 <tpm_prepboot+0x40>
  14:	e9 b8 01 00 00       	jmp    1d1 <tpm_prepboot+0x1d1>
  19:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
  20:	0f 84 ab 01 00 00    	je     1d1 <tpm_prepboot+0x1d1>
  26:	6a 00                	push   $0x0
  28:	6a 14                	push   $0x14
  2a:	b9 02 00 00 00       	mov    $0x2,%ecx
  2f:	ba 0a 00 00 40       	mov    $0x4000000a,%edx
  34:	31 c0                	xor    %eax,%eax
  36:	e8 fc ff ff ff       	call   37 <tpm_prepboot+0x37>
  3b:	e9 8e 00 00 00       	jmp    ce <tpm_prepboot+0xce>
  40:	c7 44 24 27 80 01 00 	movl   $0x180,0x27(%esp)
  47:	00 
  48:	c7 44 24 2b 00 14 00 	movl   $0x1400,0x2b(%esp)
  4f:	00 
  50:	c7 44 24 2f 01 46 00 	movl   $0x8004601,0x2f(%esp)
  57:	08 
  58:	0f 31                	rdtsc  
  5a:	89 c1                	mov    %eax,%ecx
  5c:	89 d3                	mov    %edx,%ebx
  5e:	0f 31                	rdtsc  
  60:	89 c7                	mov    %eax,%edi
  62:	0f ca                	bswap  %edx
  64:	89 f8                	mov    %edi,%eax
  66:	0f c8                	bswap  %eax
  68:	01 d1                	add    %edx,%ecx
  6a:	11 c3                	adc    %eax,%ebx
  6c:	89 4c 24 33          	mov    %ecx,0x33(%esp)
  70:	89 5c 24 37          	mov    %ebx,0x37(%esp)
  74:	c7 44 24 04 0a 00 00 	movl   $0xa,0x4(%esp)
  7b:	00 
  7c:	6a 00                	push   $0x0
  7e:	8d 44 24 08          	lea    0x8(%esp),%eax
  82:	50                   	push   %eax
  83:	8d 4c 24 1b          	lea    0x1b(%esp),%ecx
  87:	8d 54 24 2f          	lea    0x2f(%esp),%edx
  8b:	31 c0                	xor    %eax,%eax
  8d:	e8 fc ff ff ff       	call   8e <tpm_prepboot+0x8e>
  92:	59                   	pop    %ecx
  93:	5b                   	pop    %ebx
  94:	83 cb ff             	or     $0xffffffff,%ebx
  97:	83 7c 24 04 0a       	cmpl   $0xa,0x4(%esp)
  9c:	75 0b                	jne    a9 <tpm_prepboot+0xa9>
  9e:	31 db                	xor    %ebx,%ebx
  a0:	0b 44 24 19          	or     0x19(%esp),%eax
  a4:	0f 95 c3             	setne  %bl
  a7:	f7 db                	neg    %ebx
  a9:	53                   	push   %ebx
  aa:	68 78 04 00 00       	push   $0x478
  af:	e8 fc ff ff ff       	call   b0 <tpm_prepboot+0xb0>
  b4:	58                   	pop    %eax
  b5:	5a                   	pop    %edx
  b6:	85 db                	test   %ebx,%ebx
  b8:	74 1b                	je     d5 <tpm_prepboot+0xd5>
  ba:	68 eb 04 00 00       	push   $0x4eb
  bf:	68 3c 03 00 00       	push   $0x33c
  c4:	e8 fc ff ff ff       	call   c5 <tpm_prepboot+0xc5>
  c9:	e8 fc ff ff ff       	call   ca <tpm_prepboot+0xca>
  ce:	5d                   	pop    %ebp
  cf:	58                   	pop    %eax
  d0:	e9 fc 00 00 00       	jmp    1d1 <tpm_prepboot+0x1d1>
  d5:	c7 44 24 04 80 01 00 	movl   $0x180,0x4(%esp)
  dc:	00 
  dd:	c7 44 24 08 00 0c 00 	movl   $0xc00,0x8(%esp)
  e4:	00 
  e5:	c7 44 24 0c 01 7b 00 	movl   $0x14007b01,0xc(%esp)
  ec:	14 
  ed:	c7 04 24 20 00 00 00 	movl   $0x20,(%esp)
  f4:	6a 01                	push   $0x1
  f6:	8d 6c 24 04          	lea    0x4(%esp),%ebp
  fa:	55                   	push   %ebp
  fb:	8d 4c 24 2f          	lea    0x2f(%esp),%ecx
  ff:	8d 54 24 0c          	lea    0xc(%esp),%edx
 103:	31 c0                	xor    %eax,%eax
 105:	e8 fc ff ff ff       	call   106 <tpm_prepboot+0x106>
 10a:	89 ec                	mov    %ebp,%esp
 10c:	83 3c 24 20          	cmpl   $0x20,(%esp)
 110:	75 17                	jne    129 <tpm_prepboot+0x129>
 112:	0b 44 24 2d          	or     0x2d(%esp),%eax
 116:	75 11                	jne    129 <tpm_prepboot+0x129>
 118:	8d 74 24 33          	lea    0x33(%esp),%esi
 11c:	b9 05 00 00 00       	mov    $0x5,%ecx
 121:	8d 7c 24 13          	lea    0x13(%esp),%edi
 125:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 127:	eb 03                	jmp    12c <tpm_prepboot+0x12c>
 129:	83 cb ff             	or     $0xffffffff,%ebx
 12c:	53                   	push   %ebx
 12d:	68 b8 04 00 00       	push   $0x4b8
 132:	e8 fc ff ff ff       	call   133 <tpm_prepboot+0x133>
 137:	5e                   	pop    %esi
 138:	5f                   	pop    %edi
 139:	85 db                	test   %ebx,%ebx
 13b:	0f 85 79 ff ff ff    	jne    ba <tpm_prepboot+0xba>
 141:	c7 44 24 27 80 02 00 	movl   $0x280,0x27(%esp)
 148:	00 
 149:	c7 44 24 2b 00 31 00 	movl   $0x3100,0x2b(%esp)
 150:	00 
 151:	c7 44 24 2f 01 29 40 	movl   $0x402901,0x2f(%esp)
 158:	00 
 159:	c7 44 24 33 00 0c 00 	movl   $0xc00,0x33(%esp)
 160:	00 
 161:	c7 44 24 37 00 09 40 	movl   $0x400900,0x37(%esp)
 168:	00 
 169:	c7 44 24 3b 00 09 00 	movl   $0x900,0x3b(%esp)
 170:	00 
 171:	c7 44 24 3f 01 00 00 	movl   $0x1,0x3f(%esp)
 178:	00 
 179:	c6 44 24 43 14       	movb   $0x14,0x43(%esp)
 17e:	8d 7c 24 44          	lea    0x44(%esp),%edi
 182:	b9 05 00 00 00       	mov    $0x5,%ecx
 187:	8d 74 24 13          	lea    0x13(%esp),%esi
 18b:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 18d:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
 194:	6a 01                	push   $0x1
 196:	55                   	push   %ebp
 197:	8d 4c 24 0c          	lea    0xc(%esp),%ecx
 19b:	8d 54 24 2f          	lea    0x2f(%esp),%edx
 19f:	31 c0                	xor    %eax,%eax
 1a1:	e8 fc ff ff ff       	call   1a2 <tpm_prepboot+0x1a2>
 1a6:	59                   	pop    %ecx
 1a7:	5b                   	pop    %ebx
 1a8:	83 cb ff             	or     $0xffffffff,%ebx
 1ab:	83 3c 24 0a          	cmpl   $0xa,(%esp)
 1af:	75 0b                	jne    1bc <tpm_prepboot+0x1bc>
 1b1:	31 db                	xor    %ebx,%ebx
 1b3:	0b 44 24 0a          	or     0xa(%esp),%eax
 1b7:	0f 95 c3             	setne  %bl
 1ba:	f7 db                	neg    %ebx
 1bc:	53                   	push   %ebx
 1bd:	68 f7 04 00 00       	push   $0x4f7
 1c2:	e8 fc ff ff ff       	call   1c3 <tpm_prepboot+0x1c3>
 1c7:	58                   	pop    %eax
 1c8:	5a                   	pop    %edx
 1c9:	85 db                	test   %ebx,%ebx
 1cb:	0f 85 e9 fe ff ff    	jne    ba <tpm_prepboot+0xba>
 1d1:	ba 40 05 00 00       	mov    $0x540,%edx
 1d6:	b8 04 00 00 00       	mov    $0x4,%eax
 1db:	e8 fc ff ff ff       	call   1dc <tpm_prepboot+0x1dc>
 1e0:	31 db                	xor    %ebx,%ebx
 1e2:	6a 04                	push   $0x4
 1e4:	68 00 00 00 00       	push   $0x0
 1e9:	6a 04                	push   $0x4
 1eb:	b9 00 00 00 00       	mov    $0x0,%ecx
 1f0:	ba 04 00 00 00       	mov    $0x4,%edx
 1f5:	89 d8                	mov    %ebx,%eax
 1f7:	e8 fc ff ff ff       	call   1f8 <tpm_prepboot+0x1f8>
 1fc:	43                   	inc    %ebx
 1fd:	83 c4 0c             	add    $0xc,%esp
 200:	83 fb 08             	cmp    $0x8,%ebx
 203:	75 dd                	jne    1e2 <tpm_prepboot+0x1e2>
 205:	83 c4 58             	add    $0x58,%esp
 208:	5b                   	pop    %ebx
 209:	5e                   	pop    %esi
 20a:	5f                   	pop    %edi
 20b:	5d                   	pop    %ebp
 20c:	c3                   	ret    

Disassembly of section .text.tpm_option_rom:

00000000 <tpm_option_rom>:
   0:	80 3d 00 00 00 00 00 	cmpb   $0x0,0x0
   7:	74 4c                	je     55 <tpm_option_rom+0x55>
   9:	57                   	push   %edi
   a:	53                   	push   %ebx
   b:	83 ec 20             	sub    $0x20,%esp
   e:	89 c3                	mov    %eax,%ebx
  10:	8d 7c 24 08          	lea    0x8(%esp),%edi
  14:	b9 06 00 00 00       	mov    $0x6,%ecx
  19:	31 c0                	xor    %eax,%eax
  1b:	f3 ab                	rep stos %eax,%es:(%edi)
  1d:	c7 04 24 07 00 00 00 	movl   $0x7,(%esp)
  24:	c7 44 24 04 18 00 00 	movl   $0x18,0x4(%esp)
  2b:	00 
  2c:	89 e7                	mov    %esp,%edi
  2e:	8d 4c 24 0c          	lea    0xc(%esp),%ecx
  32:	89 d8                	mov    %ebx,%eax
  34:	e8 fc ff ff ff       	call   35 <tpm_option_rom+0x35>
  39:	6a 20                	push   $0x20
  3b:	57                   	push   %edi
  3c:	6a 20                	push   $0x20
  3e:	89 f9                	mov    %edi,%ecx
  40:	ba 06 00 00 00       	mov    $0x6,%edx
  45:	b8 02 00 00 00       	mov    $0x2,%eax
  4a:	e8 fc ff ff ff       	call   4b <tpm_option_rom+0x4b>
  4f:	83 c4 2c             	add    $0x2c,%esp
  52:	5b                   	pop    %ebx
  53:	5f                   	pop    %edi
  54:	c3                   	ret    
  55:	c3                   	ret    

Disassembly of section .text.tpm_add_bcv:

00000000 <tpm_add_bcv>:
   0:	80 3d 00 00 00 00 00 	cmpb   $0x0,0x0
   7:	74 76                	je     7f <tpm_add_bcv+0x7f>
   9:	81 f9 ff 01 00 00    	cmp    $0x1ff,%ecx
   f:	76 6e                	jbe    7f <tpm_add_bcv+0x7f>
  11:	53                   	push   %ebx
  12:	89 d3                	mov    %edx,%ebx
  14:	ba 50 05 00 00       	mov    $0x550,%edx
  19:	83 c0 80             	add    $0xffffff80,%eax
  1c:	75 05                	jne    23 <tpm_add_bcv+0x23>
  1e:	ba 70 05 00 00       	mov    $0x570,%edx
  23:	b8 04 00 00 00       	mov    $0x4,%eax
  28:	e8 fc ff ff ff       	call   29 <tpm_add_bcv+0x29>
  2d:	b8 8d 05 00 00       	mov    $0x58d,%eax
  32:	e8 fc ff ff ff       	call   33 <tpm_add_bcv+0x33>
  37:	68 b8 01 00 00       	push   $0x1b8
  3c:	53                   	push   %ebx
  3d:	50                   	push   %eax
  3e:	b9 8d 05 00 00       	mov    $0x58d,%ecx
  43:	ba 0d 00 00 00       	mov    $0xd,%edx
  48:	b8 04 00 00 00       	mov    $0x4,%eax
  4d:	e8 fc ff ff ff       	call   4e <tpm_add_bcv+0x4e>
  52:	b8 91 05 00 00       	mov    $0x591,%eax
  57:	e8 fc ff ff ff       	call   58 <tpm_add_bcv+0x58>
  5c:	6a 48                	push   $0x48
  5e:	81 c3 b8 01 00 00    	add    $0x1b8,%ebx
  64:	53                   	push   %ebx
  65:	50                   	push   %eax
  66:	b9 91 05 00 00       	mov    $0x591,%ecx
  6b:	ba 0e 00 00 00       	mov    $0xe,%edx
  70:	b8 05 00 00 00       	mov    $0x5,%eax
  75:	e8 fc ff ff ff       	call   76 <tpm_add_bcv+0x76>
  7a:	83 c4 18             	add    $0x18,%esp
  7d:	5b                   	pop    %ebx
  7e:	c3                   	ret    
  7f:	c3                   	ret    

Disassembly of section .text.tpm_add_cdrom:

00000000 <tpm_add_cdrom>:
   0:	80 3d 00 00 00 00 00 	cmpb   $0x0,0x0
   7:	74 3c                	je     45 <tpm_add_cdrom+0x45>
   9:	56                   	push   %esi
   a:	53                   	push   %ebx
   b:	89 d3                	mov    %edx,%ebx
   d:	89 ce                	mov    %ecx,%esi
   f:	ba a5 05 00 00       	mov    $0x5a5,%edx
  14:	b8 04 00 00 00       	mov    $0x4,%eax
  19:	e8 fc ff ff ff       	call   1a <tpm_add_cdrom+0x1a>
  1e:	b8 c0 05 00 00       	mov    $0x5c0,%eax
  23:	e8 fc ff ff ff       	call   24 <tpm_add_cdrom+0x24>
  28:	56                   	push   %esi
  29:	53                   	push   %ebx
  2a:	50                   	push   %eax
  2b:	b9 c0 05 00 00       	mov    $0x5c0,%ecx
  30:	ba 0d 00 00 00       	mov    $0xd,%edx
  35:	b8 04 00 00 00       	mov    $0x4,%eax
  3a:	e8 fc ff ff ff       	call   3b <tpm_add_cdrom+0x3b>
  3f:	83 c4 0c             	add    $0xc,%esp
  42:	5b                   	pop    %ebx
  43:	5e                   	pop    %esi
  44:	c3                   	ret    
  45:	c3                   	ret    

Disassembly of section .text.tpm_add_cdrom_catalog:

00000000 <tpm_add_cdrom_catalog>:
   0:	80 3d 00 00 00 00 00 	cmpb   $0x0,0x0
   7:	74 3c                	je     45 <tpm_add_cdrom_catalog+0x45>
   9:	56                   	push   %esi
   a:	53                   	push   %ebx
   b:	89 c3                	mov    %eax,%ebx
   d:	89 d6                	mov    %edx,%esi
   f:	ba a5 05 00 00       	mov    $0x5a5,%edx
  14:	b8 04 00 00 00       	mov    $0x4,%eax
  19:	e8 fc ff ff ff       	call   1a <tpm_add_cdrom_catalog+0x1a>
  1e:	b8 ce 05 00 00       	mov    $0x5ce,%eax
  23:	e8 fc ff ff ff       	call   24 <tpm_add_cdrom_catalog+0x24>
  28:	56                   	push   %esi
  29:	53                   	push   %ebx
  2a:	50                   	push   %eax
  2b:	b9 ce 05 00 00       	mov    $0x5ce,%ecx
  30:	ba 0e 00 00 00       	mov    $0xe,%edx
  35:	b8 05 00 00 00       	mov    $0x5,%eax
  3a:	e8 fc ff ff ff       	call   3b <tpm_add_cdrom_catalog+0x3b>
  3f:	83 c4 0c             	add    $0xc,%esp
  42:	5b                   	pop    %ebx
  43:	5e                   	pop    %esi
  44:	c3                   	ret    
  45:	c3                   	ret    

Disassembly of section .text.tpm_s3_resume:

00000000 <tpm_s3_resume>:
   0:	80 3d 00 00 00 00 00 	cmpb   $0x0,0x0
   7:	0f 84 a1 00 00 00    	je     ae <tpm_s3_resume+0xae>
   d:	53                   	push   %ebx
   e:	68 db 05 00 00       	push   $0x5db
  13:	e8 fc ff ff ff       	call   14 <tpm_s3_resume+0x14>
  18:	a0 00 00 00 00       	mov    0x0,%al
  1d:	5a                   	pop    %edx
  1e:	3c 01                	cmp    $0x1,%al
  20:	74 06                	je     28 <tpm_s3_resume+0x28>
  22:	3c 02                	cmp    $0x2,%al
  24:	74 1d                	je     43 <tpm_s3_resume+0x43>
  26:	eb 6d                	jmp    95 <tpm_s3_resume+0x95>
  28:	6a 00                	push   $0x0
  2a:	6a 02                	push   $0x2
  2c:	b9 02 00 00 00       	mov    $0x2,%ecx
  31:	ba 99 00 00 00       	mov    $0x99,%edx
  36:	31 c0                	xor    %eax,%eax
  38:	e8 fc ff ff ff       	call   39 <tpm_s3_resume+0x39>
  3d:	89 c3                	mov    %eax,%ebx
  3f:	59                   	pop    %ecx
  40:	58                   	pop    %eax
  41:	eb 4e                	jmp    91 <tpm_s3_resume+0x91>
  43:	6a 00                	push   $0x0
  45:	6a 01                	push   $0x1
  47:	b9 02 00 00 00       	mov    $0x2,%ecx
  4c:	ba 44 01 00 00       	mov    $0x144,%edx
  51:	31 c0                	xor    %eax,%eax
  53:	e8 fc ff ff ff       	call   54 <tpm_s3_resume+0x54>
  58:	89 c3                	mov    %eax,%ebx
  5a:	50                   	push   %eax
  5b:	68 09 06 00 00       	push   $0x609
  60:	e8 fc ff ff ff       	call   61 <tpm_s3_resume+0x61>
  65:	83 c4 10             	add    $0x10,%esp
  68:	85 db                	test   %ebx,%ebx
  6a:	75 29                	jne    95 <tpm_s3_resume+0x95>
  6c:	6a 02                	push   $0x2
  6e:	6a 01                	push   $0x1
  70:	b9 01 00 00 00       	mov    $0x1,%ecx
  75:	ba 43 01 00 00       	mov    $0x143,%edx
  7a:	31 c0                	xor    %eax,%eax
  7c:	e8 fc ff ff ff       	call   7d <tpm_s3_resume+0x7d>
  81:	89 c3                	mov    %eax,%ebx
  83:	50                   	push   %eax
  84:	68 50 06 00 00       	push   $0x650
  89:	e8 fc ff ff ff       	call   8a <tpm_s3_resume+0x8a>
  8e:	83 c4 10             	add    $0x10,%esp
  91:	85 db                	test   %ebx,%ebx
  93:	74 17                	je     ac <tpm_s3_resume+0xac>
  95:	68 7c 05 00 00       	push   $0x57c
  9a:	68 3c 03 00 00       	push   $0x33c
  9f:	e8 fc ff ff ff       	call   a0 <tpm_s3_resume+0xa0>
  a4:	58                   	pop    %eax
  a5:	5a                   	pop    %edx
  a6:	5b                   	pop    %ebx
  a7:	e9 fc ff ff ff       	jmp    a8 <tpm_s3_resume+0xa8>
  ac:	5b                   	pop    %ebx
  ad:	c3                   	ret    
  ae:	c3                   	ret    

Disassembly of section .text.runtime.src/tcgbios.c.1653:

00000000 <tpm_interrupt_handler32>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 20             	sub    $0x20,%esp
   7:	89 c3                	mov    %eax,%ebx
   9:	66 8b 40 24          	mov    0x24(%eax),%ax
   d:	83 e0 fe             	and    $0xfffffffe,%eax
  10:	66 89 43 24          	mov    %ax,0x24(%ebx)
  14:	0f b6 53 1c          	movzbl 0x1c(%ebx),%edx
  18:	80 3d 00 00 00 00 00 	cmpb   $0x0,0x0
  1f:	74 10                	je     31 <tpm_interrupt_handler32+0x31>
  21:	84 d2                	test   %dl,%dl
  23:	74 1c                	je     41 <tpm_interrupt_handler32+0x41>
  25:	c7 43 1c 21 00 00 00 	movl   $0x21,0x1c(%ebx)
  2c:	e9 dd 02 00 00       	jmp    30e <tpm_interrupt_handler32+0x30e>
  31:	80 fa 07             	cmp    $0x7,%dl
  34:	0f 87 cd 02 00 00    	ja     307 <tpm_interrupt_handler32+0x307>
  3a:	ff 24 95 00 00 00 00 	jmp    *0x0(,%edx,4)
  41:	e8 fc ff ff ff       	call   42 <tpm_interrupt_handler32+0x42>
  46:	85 c0                	test   %eax,%eax
  48:	75 0c                	jne    56 <tpm_interrupt_handler32+0x56>
  4a:	c7 43 1c 23 00 00 00 	movl   $0x23,0x1c(%ebx)
  51:	e9 b8 02 00 00       	jmp    30e <tpm_interrupt_handler32+0x30e>
  56:	c7 43 1c 00 00 00 00 	movl   $0x0,0x1c(%ebx)
  5d:	c7 43 10 54 43 50 41 	movl   $0x41504354,0x10(%ebx)
  64:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
  6b:	66 c7 43 18 02 01    	movw   $0x102,0x18(%ebx)
  71:	a1 04 00 00 00       	mov    0x4,%eax
  76:	89 43 08             	mov    %eax,0x8(%ebx)
  79:	a1 10 00 00 00       	mov    0x10,%eax
  7e:	89 43 04             	mov    %eax,0x4(%ebx)
  81:	e9 88 02 00 00       	jmp    30e <tpm_interrupt_handler32+0x30e>
  86:	0f b7 3b             	movzwl (%ebx),%edi
  89:	c1 e7 04             	shl    $0x4,%edi
  8c:	0f b7 43 08          	movzwl 0x8(%ebx),%eax
  90:	01 c7                	add    %eax,%edi
  92:	0f b7 43 02          	movzwl 0x2(%ebx),%eax
  96:	c1 e0 04             	shl    $0x4,%eax
  99:	0f b7 53 04          	movzwl 0x4(%ebx),%edx
  9d:	01 d0                	add    %edx,%eax
  9f:	66 8b 10             	mov    (%eax),%dx
  a2:	66 83 fa 18          	cmp    $0x18,%dx
  a6:	74 0e                	je     b6 <tpm_interrupt_handler32+0xb6>
  a8:	66 83 fa 1c          	cmp    $0x1c,%dx
  ac:	75 5c                	jne    10a <tpm_interrupt_handler32+0x10a>
  ae:	8b 70 14             	mov    0x14(%eax),%esi
  b1:	8b 68 18             	mov    0x18(%eax),%ebp
  b4:	eb 06                	jmp    bc <tpm_interrupt_handler32+0xbc>
  b6:	8b 70 10             	mov    0x10(%eax),%esi
  b9:	8b 68 14             	mov    0x14(%eax),%ebp
  bc:	8b 50 0c             	mov    0xc(%eax),%edx
  bf:	39 16                	cmp    %edx,(%esi)
  c1:	75 47                	jne    10a <tpm_interrupt_handler32+0x10a>
  c3:	8b 4e 1c             	mov    0x1c(%esi),%ecx
  c6:	83 c1 20             	add    $0x20,%ecx
  c9:	ba 19 00 00 00       	mov    $0x19,%edx
  ce:	39 e9                	cmp    %ebp,%ecx
  d0:	75 3d                	jne    10f <tpm_interrupt_handler32+0x10f>
  d2:	8b 48 08             	mov    0x8(%eax),%ecx
  d5:	8b 50 04             	mov    0x4(%eax),%edx
  d8:	6a 01                	push   $0x1
  da:	89 f0                	mov    %esi,%eax
  dc:	e8 fc ff ff ff       	call   dd <tpm_interrupt_handler32+0xdd>
  e1:	89 c2                	mov    %eax,%edx
  e3:	58                   	pop    %eax
  e4:	85 d2                	test   %edx,%edx
  e6:	75 27                	jne    10f <tpm_interrupt_handler32+0x10f>
  e8:	c7 07 1c 00 00 00    	movl   $0x1c,(%edi)
  ee:	a1 08 00 00 00       	mov    0x8,%eax
  f3:	89 47 04             	mov    %eax,0x4(%edi)
  f6:	8d 47 08             	lea    0x8(%edi),%eax
  f9:	83 c6 08             	add    $0x8,%esi
  fc:	b9 05 00 00 00       	mov    $0x5,%ecx
 101:	89 c7                	mov    %eax,%edi
 103:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 105:	e9 8d 01 00 00       	jmp    297 <tpm_interrupt_handler32+0x297>
 10a:	ba 19 00 00 00       	mov    $0x19,%edx
 10f:	c7 07 04 00 00 00    	movl   $0x4,(%edi)
 115:	e9 7d 01 00 00       	jmp    297 <tpm_interrupt_handler32+0x297>
 11a:	0f b7 33             	movzwl (%ebx),%esi
 11d:	c1 e6 04             	shl    $0x4,%esi
 120:	0f b7 43 08          	movzwl 0x8(%ebx),%eax
 124:	01 c6                	add    %eax,%esi
 126:	0f b7 53 02          	movzwl 0x2(%ebx),%edx
 12a:	c1 e2 04             	shl    $0x4,%edx
 12d:	0f b7 43 04          	movzwl 0x4(%ebx),%eax
 131:	01 c2                	add    %eax,%edx
 133:	0f b7 0a             	movzwl (%edx),%ecx
 136:	66 83 f9 11          	cmp    $0x11,%cx
 13a:	76 6d                	jbe    1a9 <tpm_interrupt_handler32+0x1a9>
 13c:	8b 42 0a             	mov    0xa(%edx),%eax
 13f:	e8 fc ff ff ff       	call   140 <tpm_interrupt_handler32+0x140>
 144:	83 c0 08             	add    $0x8,%eax
 147:	39 c1                	cmp    %eax,%ecx
 149:	75 5e                	jne    1a9 <tpm_interrupt_handler32+0x1a9>
 14b:	0f b7 7a 04          	movzwl 0x4(%edx),%edi
 14f:	66 83 ff 03          	cmp    $0x3,%di
 153:	76 54                	jbe    1a9 <tpm_interrupt_handler32+0x1a9>
 155:	66 8b 42 08          	mov    0x8(%edx),%ax
 159:	86 e0                	xchg   %ah,%al
 15b:	8a 0d 00 00 00 00    	mov    0x0,%cl
 161:	80 f9 01             	cmp    $0x1,%cl
 164:	74 0f                	je     175 <tpm_interrupt_handler32+0x175>
 166:	80 f9 02             	cmp    $0x2,%cl
 169:	75 14                	jne    17f <tpm_interrupt_handler32+0x17f>
 16b:	66 05 ff 7f          	add    $0x7fff,%ax
 16f:	66 83 f8 01          	cmp    $0x1,%ax
 173:	eb 08                	jmp    17d <tpm_interrupt_handler32+0x17d>
 175:	66 2d c1 00          	sub    $0xc1,%ax
 179:	66 83 f8 02          	cmp    $0x2,%ax
 17d:	77 2a                	ja     1a9 <tpm_interrupt_handler32+0x1a9>
 17f:	83 ef 04             	sub    $0x4,%edi
 182:	89 3c 24             	mov    %edi,(%esp)
 185:	8d 4e 04             	lea    0x4(%esi),%ecx
 188:	83 c2 08             	add    $0x8,%edx
 18b:	6a 02                	push   $0x2
 18d:	8d 44 24 04          	lea    0x4(%esp),%eax
 191:	50                   	push   %eax
 192:	31 c0                	xor    %eax,%eax
 194:	e8 fc ff ff ff       	call   195 <tpm_interrupt_handler32+0x195>
 199:	5f                   	pop    %edi
 19a:	5d                   	pop    %ebp
 19b:	85 c0                	test   %eax,%eax
 19d:	75 11                	jne    1b0 <tpm_interrupt_handler32+0x1b0>
 19f:	8b 04 24             	mov    (%esp),%eax
 1a2:	8d 50 04             	lea    0x4(%eax),%edx
 1a5:	31 c0                	xor    %eax,%eax
 1a7:	eb 11                	jmp    1ba <tpm_interrupt_handler32+0x1ba>
 1a9:	b8 19 00 00 00       	mov    $0x19,%eax
 1ae:	eb 05                	jmp    1b5 <tpm_interrupt_handler32+0x1b5>
 1b0:	b8 18 00 00 00       	mov    $0x18,%eax
 1b5:	ba 04 00 00 00       	mov    $0x4,%edx
 1ba:	66 89 16             	mov    %dx,(%esi)
 1bd:	66 c7 46 02 00 00    	movw   $0x0,0x2(%esi)
 1c3:	e9 3a 01 00 00       	jmp    302 <tpm_interrupt_handler32+0x302>
 1c8:	c6 05 00 00 00 00 01 	movb   $0x1,0x0
 1cf:	c7 43 1c 00 00 00 00 	movl   $0x0,0x1c(%ebx)
 1d6:	e9 33 01 00 00       	jmp    30e <tpm_interrupt_handler32+0x30e>
 1db:	0f b7 33             	movzwl (%ebx),%esi
 1de:	c1 e6 04             	shl    $0x4,%esi
 1e1:	0f b7 43 08          	movzwl 0x8(%ebx),%eax
 1e5:	01 c6                	add    %eax,%esi
 1e7:	0f b7 53 02          	movzwl 0x2(%ebx),%edx
 1eb:	c1 e2 04             	shl    $0x4,%edx
 1ee:	0f b7 43 04          	movzwl 0x4(%ebx),%eax
 1f2:	01 c2                	add    %eax,%edx
 1f4:	66 83 3a 1c          	cmpw   $0x1c,(%edx)
 1f8:	75 4a                	jne    244 <tpm_interrupt_handler32+0x244>
 1fa:	8b 7a 14             	mov    0x14(%edx),%edi
 1fd:	8b 42 0c             	mov    0xc(%edx),%eax
 200:	39 07                	cmp    %eax,(%edi)
 202:	75 40                	jne    244 <tpm_interrupt_handler32+0x244>
 204:	8b 42 10             	mov    0x10(%edx),%eax
 207:	39 47 04             	cmp    %eax,0x4(%edi)
 20a:	75 38                	jne    244 <tpm_interrupt_handler32+0x244>
 20c:	8b 47 1c             	mov    0x1c(%edi),%eax
 20f:	8d 48 20             	lea    0x20(%eax),%ecx
 212:	b8 19 00 00 00       	mov    $0x19,%eax
 217:	39 4a 18             	cmp    %ecx,0x18(%edx)
 21a:	75 2d                	jne    249 <tpm_interrupt_handler32+0x249>
 21c:	8b 4a 08             	mov    0x8(%edx),%ecx
 21f:	8b 52 04             	mov    0x4(%edx),%edx
 222:	6a 00                	push   $0x0
 224:	89 f8                	mov    %edi,%eax
 226:	e8 fc ff ff ff       	call   227 <tpm_interrupt_handler32+0x227>
 22b:	59                   	pop    %ecx
 22c:	85 c0                	test   %eax,%eax
 22e:	75 19                	jne    249 <tpm_interrupt_handler32+0x249>
 230:	c7 06 08 00 00 00    	movl   $0x8,(%esi)
 236:	8b 15 08 00 00 00    	mov    0x8,%edx
 23c:	89 56 04             	mov    %edx,0x4(%esi)
 23f:	e9 be 00 00 00       	jmp    302 <tpm_interrupt_handler32+0x302>
 244:	b8 19 00 00 00       	mov    $0x19,%eax
 249:	c7 06 02 00 00 00    	movl   $0x2,(%esi)
 24f:	e9 ae 00 00 00       	jmp    302 <tpm_interrupt_handler32+0x302>
 254:	0f b7 43 02          	movzwl 0x2(%ebx),%eax
 258:	c1 e0 04             	shl    $0x4,%eax
 25b:	0f b7 53 04          	movzwl 0x4(%ebx),%edx
 25f:	01 d0                	add    %edx,%eax
 261:	ba 19 00 00 00       	mov    $0x19,%edx
 266:	66 83 38 10          	cmpw   $0x10,(%eax)
 26a:	75 2b                	jne    297 <tpm_interrupt_handler32+0x297>
 26c:	8b 70 04             	mov    0x4(%eax),%esi
 26f:	85 f6                	test   %esi,%esi
 271:	74 24                	je     297 <tpm_interrupt_handler32+0x297>
 273:	8b 78 08             	mov    0x8(%eax),%edi
 276:	85 ff                	test   %edi,%edi
 278:	74 1d                	je     297 <tpm_interrupt_handler32+0x297>
 27a:	83 78 0c 04          	cmpl   $0x4,0xc(%eax)
 27e:	75 17                	jne    297 <tpm_interrupt_handler32+0x297>
 280:	0f b7 0b             	movzwl (%ebx),%ecx
 283:	c1 e1 04             	shl    $0x4,%ecx
 286:	0f b7 43 08          	movzwl 0x8(%ebx),%eax
 28a:	01 c1                	add    %eax,%ecx
 28c:	89 fa                	mov    %edi,%edx
 28e:	89 f0                	mov    %esi,%eax
 290:	e8 fc ff ff ff       	call   291 <tpm_interrupt_handler32+0x291>
 295:	31 d2                	xor    %edx,%edx
 297:	89 53 1c             	mov    %edx,0x1c(%ebx)
 29a:	eb 72                	jmp    30e <tpm_interrupt_handler32+0x30e>
 29c:	0f b7 03             	movzwl (%ebx),%eax
 29f:	c1 e0 04             	shl    $0x4,%eax
 2a2:	0f b7 53 08          	movzwl 0x8(%ebx),%edx
 2a6:	c7 04 10 04 00 00 00 	movl   $0x4,(%eax,%edx,1)
 2ad:	c7 43 1c 03 00 00 00 	movl   $0x3,0x1c(%ebx)
 2b4:	eb 58                	jmp    30e <tpm_interrupt_handler32+0x30e>
 2b6:	8b 73 14             	mov    0x14(%ebx),%esi
 2b9:	0f b7 53 02          	movzwl 0x2(%ebx),%edx
 2bd:	c1 e2 04             	shl    $0x4,%edx
 2c0:	0f b7 43 04          	movzwl 0x4(%ebx),%eax
 2c4:	01 c2                	add    %eax,%edx
 2c6:	8d 7c 24 08          	lea    0x8(%esp),%edi
 2ca:	b9 05 00 00 00       	mov    $0x5,%ecx
 2cf:	31 c0                	xor    %eax,%eax
 2d1:	f3 ab                	rep stos %eax,%es:(%edi)
 2d3:	89 34 24             	mov    %esi,(%esp)
 2d6:	c7 44 24 04 0c 00 00 	movl   $0xc,0x4(%esp)
 2dd:	00 
 2de:	c7 44 24 1c 04 00 00 	movl   $0x4,0x1c(%esp)
 2e5:	00 
 2e6:	6a 01                	push   $0x1
 2e8:	8b 4b 18             	mov    0x18(%ebx),%ecx
 2eb:	8d 44 24 04          	lea    0x4(%esp),%eax
 2ef:	e8 fc ff ff ff       	call   2f0 <tpm_interrupt_handler32+0x2f0>
 2f4:	5a                   	pop    %edx
 2f5:	85 c0                	test   %eax,%eax
 2f7:	75 09                	jne    302 <tpm_interrupt_handler32+0x302>
 2f9:	8b 15 08 00 00 00    	mov    0x8,%edx
 2ff:	89 53 14             	mov    %edx,0x14(%ebx)
 302:	89 43 1c             	mov    %eax,0x1c(%ebx)
 305:	eb 07                	jmp    30e <tpm_interrupt_handler32+0x30e>
 307:	83 c8 01             	or     $0x1,%eax
 30a:	66 89 43 24          	mov    %ax,0x24(%ebx)
 30e:	83 c4 20             	add    $0x20,%esp
 311:	5b                   	pop    %ebx
 312:	5e                   	pop    %esi
 313:	5f                   	pop    %edi
 314:	5d                   	pop    %ebp
 315:	c3                   	ret    

Disassembly of section .text.tpm_menu:

00000000 <tpm_menu>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 54             	sub    $0x54,%esp
   7:	31 c0                	xor    %eax,%eax
   9:	e8 fc ff ff ff       	call   a <tpm_menu+0xa>
   e:	85 c0                	test   %eax,%eax
  10:	79 f5                	jns    7 <tpm_menu+0x7>
  12:	e8 fc ff ff ff       	call   13 <tpm_menu+0x13>
  17:	a0 00 00 00 00       	mov    0x0,%al
  1c:	3c 01                	cmp    $0x1,%al
  1e:	74 0d                	je     2d <tpm_menu+0x2d>
  20:	3c 02                	cmp    $0x2,%al
  22:	0f 85 c8 06 00 00    	jne    6f0 <tpm_menu+0x6f0>
  28:	e9 94 00 00 00       	jmp    c1 <tpm_menu+0xc1>
  2d:	68 90 06 00 00       	push   $0x690
  32:	e8 fc ff ff ff       	call   33 <tpm_menu+0x33>
  37:	58                   	pop    %eax
  38:	8d 44 24 18          	lea    0x18(%esp),%eax
  3c:	e8 fc ff ff ff       	call   3d <tpm_menu+0x3d>
  41:	85 c0                	test   %eax,%eax
  43:	74 10                	je     55 <tpm_menu+0x55>
  45:	68 0f 07 00 00       	push   $0x70f
  4a:	e8 fc ff ff ff       	call   4b <tpm_menu+0x4b>
  4f:	58                   	pop    %eax
  50:	e9 9b 06 00 00       	jmp    6f0 <tpm_menu+0x6f0>
  55:	8d 44 24 0c          	lea    0xc(%esp),%eax
  59:	e8 fc ff ff ff       	call   5a <tpm_menu+0x5a>
  5e:	85 c0                	test   %eax,%eax
  60:	75 e3                	jne    45 <tpm_menu+0x45>
  62:	31 c0                	xor    %eax,%eax
  64:	80 7c 24 1a 00       	cmpb   $0x0,0x1a(%esp)
  69:	0f 94 c0             	sete   %al
  6c:	89 c6                	mov    %eax,%esi
  6e:	80 7c 24 1c 00       	cmpb   $0x0,0x1c(%esp)
  73:	75 03                	jne    78 <tpm_menu+0x78>
  75:	83 ce 02             	or     $0x2,%esi
  78:	89 f3                	mov    %esi,%ebx
  7a:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%esp)
  7f:	74 08                	je     89 <tpm_menu+0x89>
  81:	83 cb 04             	or     $0x4,%ebx
  84:	e9 8c 03 00 00       	jmp    415 <tpm_menu+0x415>
  89:	80 7c 24 1b 00       	cmpb   $0x0,0x1b(%esp)
  8e:	0f 84 81 03 00 00    	je     415 <tpm_menu+0x415>
  94:	83 cb 08             	or     $0x8,%ebx
  97:	e9 79 03 00 00       	jmp    415 <tpm_menu+0x415>
  9c:	b8 e8 03 00 00       	mov    $0x3e8,%eax
  a1:	e8 fc ff ff ff       	call   a2 <tpm_menu+0xa2>
  a6:	83 f8 ff             	cmp    $0xffffffff,%eax
  a9:	74 f1                	je     9c <tpm_menu+0x9c>
  ab:	83 f8 02             	cmp    $0x2,%eax
  ae:	0f 84 46 02 00 00    	je     2fa <tpm_menu+0x2fa>
  b4:	83 f8 03             	cmp    $0x3,%eax
  b7:	74 2b                	je     e4 <tpm_menu+0xe4>
  b9:	48                   	dec    %eax
  ba:	75 05                	jne    c1 <tpm_menu+0xc1>
  bc:	e8 fc ff ff ff       	call   bd <tpm_menu+0xbd>
  c1:	68 30 0a 00 00       	push   $0xa30
  c6:	e8 fc ff ff ff       	call   c7 <tpm_menu+0xc7>
  cb:	68 3e 0a 00 00       	push   $0xa3e
  d0:	e8 fc ff ff ff       	call   d1 <tpm_menu+0xd1>
  d5:	68 14 09 00 00       	push   $0x914
  da:	e8 fc ff ff ff       	call   db <tpm_menu+0xdb>
  df:	83 c4 0c             	add    $0xc,%esp
  e2:	eb b8                	jmp    9c <tpm_menu+0x9c>
  e4:	8d 54 24 04          	lea    0x4(%esp),%edx
  e8:	8d 44 24 05          	lea    0x5(%esp),%eax
  ec:	e8 fc ff ff ff       	call   ed <tpm_menu+0xed>
  f1:	8a 5c 24 04          	mov    0x4(%esp),%bl
  f5:	68 5a 0a 00 00       	push   $0xa5a
  fa:	e8 fc ff ff ff       	call   fb <tpm_menu+0xfb>
  ff:	58                   	pop    %eax
 100:	be 01 00 00 00       	mov    $0x1,%esi
 105:	bf 01 00 00 00       	mov    $0x1,%edi
 10a:	0f b6 6c 24 05       	movzbl 0x5(%esp),%ebp
 10f:	89 e9                	mov    %ebp,%ecx
 111:	21 f9                	and    %edi,%ecx
 113:	31 c0                	xor    %eax,%eax
 115:	6b d0 0c             	imul   $0xc,%eax,%edx
 118:	3a 8a 02 00 00 00    	cmp    0x2(%edx),%cl
 11e:	75 0c                	jne    12c <tpm_menu+0x12c>
 120:	8b 82 04 00 00 00    	mov    0x4(%edx),%eax
 126:	85 c0                	test   %eax,%eax
 128:	75 0a                	jne    134 <tpm_menu+0x134>
 12a:	eb 33                	jmp    15f <tpm_menu+0x15f>
 12c:	40                   	inc    %eax
 12d:	83 f8 08             	cmp    $0x8,%eax
 130:	75 e3                	jne    115 <tpm_menu+0x115>
 132:	eb 2b                	jmp    15f <tpm_menu+0x15f>
 134:	50                   	push   %eax
 135:	56                   	push   %esi
 136:	68 8c 0a 00 00       	push   $0xa8c
 13b:	e8 fc ff ff ff       	call   13c <tpm_menu+0x13c>
 140:	83 c4 0c             	add    $0xc,%esp
 143:	89 f8                	mov    %edi,%eax
 145:	84 c3                	test   %al,%bl
 147:	74 0b                	je     154 <tpm_menu+0x154>
 149:	68 95 0a 00 00       	push   $0xa95
 14e:	e8 fc ff ff ff       	call   14f <tpm_menu+0x14f>
 153:	58                   	pop    %eax
 154:	68 a0 0a 00 00       	push   $0xaa0
 159:	e8 fc ff ff ff       	call   15a <tpm_menu+0x15a>
 15e:	58                   	pop    %eax
 15f:	d1 e7                	shl    %edi
 161:	46                   	inc    %esi
 162:	83 fe 09             	cmp    $0x9,%esi
 165:	75 a3                	jne    10a <tpm_menu+0x10a>
 167:	68 a2 0a 00 00       	push   $0xaa2
 16c:	e8 fc ff ff ff       	call   16d <tpm_menu+0x16d>
 171:	5f                   	pop    %edi
 172:	84 db                	test   %bl,%bl
 174:	74 0b                	je     181 <tpm_menu+0x181>
 176:	68 d1 0a 00 00       	push   $0xad1
 17b:	e8 fc ff ff ff       	call   17c <tpm_menu+0x17c>
 180:	5e                   	pop    %esi
 181:	89 e8                	mov    %ebp,%eax
 183:	0f b6 e8             	movzbl %al,%ebp
 186:	b8 e8 03 00 00       	mov    $0x3e8,%eax
 18b:	e8 fc ff ff ff       	call   18c <tpm_menu+0x18c>
 190:	83 f8 06             	cmp    $0x6,%eax
 193:	7f 34                	jg     1c9 <tpm_menu+0x1c9>
 195:	83 f8 01             	cmp    $0x1,%eax
 198:	7e 1d                	jle    1b7 <tpm_menu+0x1b7>
 19a:	8d 48 ff             	lea    -0x1(%eax),%ecx
 19d:	0f b6 c9             	movzbl %cl,%ecx
 1a0:	49                   	dec    %ecx
 1a1:	89 e8                	mov    %ebp,%eax
 1a3:	d3 f8                	sar    %cl,%eax
 1a5:	a8 01                	test   $0x1,%al
 1a7:	74 dd                	je     186 <tpm_menu+0x186>
 1a9:	b8 01 00 00 00       	mov    $0x1,%eax
 1ae:	d3 e0                	shl    %cl,%eax
 1b0:	31 c3                	xor    %eax,%ebx
 1b2:	e9 3e ff ff ff       	jmp    f5 <tpm_menu+0xf5>
 1b7:	75 cd                	jne    186 <tpm_menu+0x186>
 1b9:	68 a0 0a 00 00       	push   $0xaa0
 1be:	e8 fc ff ff ff       	call   1bf <tpm_menu+0x1bf>
 1c3:	5b                   	pop    %ebx
 1c4:	e9 f8 fe ff ff       	jmp    c1 <tpm_menu+0xc1>
 1c9:	83 f8 1e             	cmp    $0x1e,%eax
 1cc:	75 b8                	jne    186 <tpm_menu+0x186>
 1ce:	84 db                	test   %bl,%bl
 1d0:	74 b4                	je     186 <tpm_menu+0x186>
 1d2:	8d 7c 24 30          	lea    0x30(%esp),%edi
 1d6:	b9 23 00 00 00       	mov    $0x23,%ecx
 1db:	31 c0                	xor    %eax,%eax
 1dd:	f3 aa                	rep stos %al,%es:(%edi)
 1df:	66 c7 44 24 30 80 02 	movw   $0x280,0x30(%esp)
 1e6:	c7 44 24 38 01 2b 40 	movl   $0x402b01,0x38(%esp)
 1ed:	00 
 1ee:	c6 44 24 3d 0c       	movb   $0xc,0x3d(%esp)
 1f3:	66 c7 44 24 41 09 40 	movw   $0x4009,0x41(%esp)
 1fa:	c7 44 24 45 09 00 00 	movl   $0x1000009,0x45(%esp)
 201:	01 
 202:	8d 54 24 06          	lea    0x6(%esp),%edx
 206:	8d 44 24 07          	lea    0x7(%esp),%eax
 20a:	e8 fc ff ff ff       	call   20b <tpm_menu+0x20b>
 20f:	8a 44 24 07          	mov    0x7(%esp),%al
 213:	88 04 24             	mov    %al,(%esp)
 216:	bf 08 00 00 00       	mov    $0x8,%edi
 21b:	31 d2                	xor    %edx,%edx
 21d:	b0 01                	mov    $0x1,%al
 21f:	84 04 24             	test   %al,(%esp)
 222:	74 49                	je     26d <tpm_menu+0x26d>
 224:	31 c9                	xor    %ecx,%ecx
 226:	6b f1 0c             	imul   $0xc,%ecx,%esi
 229:	38 86 02 00 00 00    	cmp    %al,0x2(%esi)
 22f:	75 36                	jne    267 <tpm_menu+0x267>
 231:	66 8b 8e 00 00 00 00 	mov    0x0(%esi),%cx
 238:	86 e9                	xchg   %ch,%cl
 23a:	66 83 be 00 00 00 00 	cmpw   $0x0,0x0(%esi)
 241:	00 
 242:	74 29                	je     26d <tpm_menu+0x26d>
 244:	6b f2 06             	imul   $0x6,%edx,%esi
 247:	66 89 4c 34 18       	mov    %cx,0x18(%esp,%esi,1)
 24c:	c6 44 34 1a 03       	movb   $0x3,0x1a(%esp,%esi,1)
 251:	84 c3                	test   %al,%bl
 253:	0f 95 c1             	setne  %cl
 256:	f7 d9                	neg    %ecx
 258:	88 4c 34 1b          	mov    %cl,0x1b(%esp,%esi,1)
 25c:	88 4c 34 1c          	mov    %cl,0x1c(%esp,%esi,1)
 260:	88 4c 34 1d          	mov    %cl,0x1d(%esp,%esi,1)
 264:	42                   	inc    %edx
 265:	eb 06                	jmp    26d <tpm_menu+0x26d>
 267:	41                   	inc    %ecx
 268:	83 f9 08             	cmp    $0x8,%ecx
 26b:	75 b9                	jne    226 <tpm_menu+0x226>
 26d:	d1 e0                	shl    %eax
 26f:	4f                   	dec    %edi
 270:	75 ad                	jne    21f <tpm_menu+0x21f>
 272:	89 d0                	mov    %edx,%eax
 274:	e8 fc ff ff ff       	call   275 <tpm_menu+0x275>
 279:	89 44 24 4b          	mov    %eax,0x4b(%esp)
 27d:	6b c2 06             	imul   $0x6,%edx,%eax
 280:	8d 54 24 4f          	lea    0x4f(%esp),%edx
 284:	8d 74 24 18          	lea    0x18(%esp),%esi
 288:	89 d7                	mov    %edx,%edi
 28a:	89 c1                	mov    %eax,%ecx
 28c:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 28e:	83 c0 1f             	add    $0x1f,%eax
 291:	e8 fc ff ff ff       	call   292 <tpm_menu+0x292>
 296:	89 44 24 32          	mov    %eax,0x32(%esp)
 29a:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 2a1:	00 
 2a2:	6a 00                	push   $0x0
 2a4:	8d 44 24 0c          	lea    0xc(%esp),%eax
 2a8:	50                   	push   %eax
 2a9:	8d 4c 24 14          	lea    0x14(%esp),%ecx
 2ad:	8d 54 24 38          	lea    0x38(%esp),%edx
 2b1:	31 c0                	xor    %eax,%eax
 2b3:	e8 fc ff ff ff       	call   2b4 <tpm_menu+0x2b4>
 2b8:	5a                   	pop    %edx
 2b9:	59                   	pop    %ecx
 2ba:	85 c0                	test   %eax,%eax
 2bc:	0f 85 c4 fe ff ff    	jne    186 <tpm_menu+0x186>
 2c2:	8b 44 24 12          	mov    0x12(%esp),%eax
 2c6:	e8 fc ff ff ff       	call   2c7 <tpm_menu+0x2c7>
 2cb:	85 c0                	test   %eax,%eax
 2cd:	0f 85 b3 fe ff ff    	jne    186 <tpm_menu+0x186>
 2d3:	6a 00                	push   $0x0
 2d5:	6a 00                	push   $0x0
 2d7:	b9 02 00 00 00       	mov    $0x2,%ecx
 2dc:	ba 45 01 00 00       	mov    $0x145,%edx
 2e1:	e8 fc ff ff ff       	call   2e2 <tpm_menu+0x2e2>
 2e6:	5e                   	pop    %esi
 2e7:	5f                   	pop    %edi
 2e8:	85 c0                	test   %eax,%eax
 2ea:	0f 85 96 fe ff ff    	jne    186 <tpm_menu+0x186>
 2f0:	e8 fc ff ff ff       	call   2f1 <tpm_menu+0x2f1>
 2f5:	e9 8c fe ff ff       	jmp    186 <tpm_menu+0x186>
 2fa:	c7 44 24 30 80 02 00 	movl   $0x280,0x30(%esp)
 301:	00 
 302:	c7 44 24 34 00 1c 00 	movl   $0x1c00,0x34(%esp)
 309:	00 
 30a:	c7 44 24 38 01 27 40 	movl   $0x402701,0x38(%esp)
 311:	00 
 312:	c7 44 24 3c 00 0c 00 	movl   $0xc00,0x3c(%esp)
 319:	00 
 31a:	c7 44 24 40 00 09 40 	movl   $0x400900,0x40(%esp)
 321:	00 
 322:	c7 44 24 44 00 09 00 	movl   $0x900,0x44(%esp)
 329:	00 
 32a:	c7 44 24 48 01 00 00 	movl   $0x1,0x48(%esp)
 331:	00 
 332:	c7 44 24 0c 0a 00 00 	movl   $0xa,0xc(%esp)
 339:	00 
 33a:	6a 00                	push   $0x0
 33c:	8d 74 24 10          	lea    0x10(%esp),%esi
 340:	56                   	push   %esi
 341:	8d 4c 24 20          	lea    0x20(%esp),%ecx
 345:	8d 54 24 38          	lea    0x38(%esp),%edx
 349:	31 c0                	xor    %eax,%eax
 34b:	e8 fc ff ff ff       	call   34c <tpm_menu+0x34c>
 350:	5a                   	pop    %edx
 351:	59                   	pop    %ecx
 352:	83 cb ff             	or     $0xffffffff,%ebx
 355:	83 7c 24 0c 0a       	cmpl   $0xa,0xc(%esp)
 35a:	75 0b                	jne    367 <tpm_menu+0x367>
 35c:	31 db                	xor    %ebx,%ebx
 35e:	0b 44 24 1e          	or     0x1e(%esp),%eax
 362:	0f 95 c3             	setne  %bl
 365:	f7 db                	neg    %ebx
 367:	53                   	push   %ebx
 368:	68 ea 0a 00 00       	push   $0xaea
 36d:	e8 fc ff ff ff       	call   36e <tpm_menu+0x36e>
 372:	5f                   	pop    %edi
 373:	5d                   	pop    %ebp
 374:	85 db                	test   %ebx,%ebx
 376:	74 16                	je     38e <tpm_menu+0x38e>
 378:	6a ff                	push   $0xffffffff
 37a:	6a 05                	push   $0x5
 37c:	68 10 0a 00 00       	push   $0xa10
 381:	e8 fc ff ff ff       	call   382 <tpm_menu+0x382>
 386:	83 c4 0c             	add    $0xc,%esp
 389:	e9 33 fd ff ff       	jmp    c1 <tpm_menu+0xc1>
 38e:	c7 44 24 30 80 02 00 	movl   $0x280,0x30(%esp)
 395:	00 
 396:	c7 44 24 34 00 1b 00 	movl   $0x1b00,0x34(%esp)
 39d:	00 
 39e:	c7 44 24 38 01 26 40 	movl   $0x402601,0x38(%esp)
 3a5:	00 
 3a6:	c7 44 24 3c 00 0c 00 	movl   $0xc00,0x3c(%esp)
 3ad:	00 
 3ae:	c7 44 24 40 00 09 40 	movl   $0x400900,0x40(%esp)
 3b5:	00 
 3b6:	c7 44 24 44 00 09 00 	movl   $0x900,0x44(%esp)
 3bd:	00 
 3be:	66 c7 44 24 48 01 00 	movw   $0x1,0x48(%esp)
 3c5:	c6 44 24 4a 00       	movb   $0x0,0x4a(%esp)
 3ca:	c7 44 24 0c 0a 00 00 	movl   $0xa,0xc(%esp)
 3d1:	00 
 3d2:	6a 01                	push   $0x1
 3d4:	56                   	push   %esi
 3d5:	8d 4c 24 20          	lea    0x20(%esp),%ecx
 3d9:	8d 54 24 38          	lea    0x38(%esp),%edx
 3dd:	31 c0                	xor    %eax,%eax
 3df:	e8 fc ff ff ff       	call   3e0 <tpm_menu+0x3e0>
 3e4:	5b                   	pop    %ebx
 3e5:	5e                   	pop    %esi
 3e6:	83 cb ff             	or     $0xffffffff,%ebx
 3e9:	83 7c 24 0c 0a       	cmpl   $0xa,0xc(%esp)
 3ee:	75 0b                	jne    3fb <tpm_menu+0x3fb>
 3f0:	31 db                	xor    %ebx,%ebx
 3f2:	0b 44 24 1e          	or     0x1e(%esp),%eax
 3f6:	0f 95 c3             	setne  %bl
 3f9:	f7 db                	neg    %ebx
 3fb:	53                   	push   %ebx
 3fc:	68 2c 0b 00 00       	push   $0xb2c
 401:	e8 fc ff ff ff       	call   402 <tpm_menu+0x402>
 406:	5a                   	pop    %edx
 407:	59                   	pop    %ecx
 408:	85 db                	test   %ebx,%ebx
 40a:	0f 84 b1 fc ff ff    	je     c1 <tpm_menu+0xc1>
 410:	e9 63 ff ff ff       	jmp    378 <tpm_menu+0x378>
 415:	68 67 0b 00 00       	push   $0xb67
 41a:	e8 fc ff ff ff       	call   41b <tpm_menu+0x41b>
 41f:	58                   	pop    %eax
 420:	89 d8                	mov    %ebx,%eax
 422:	83 e0 01             	and    $0x1,%eax
 425:	89 04 24             	mov    %eax,(%esp)
 428:	74 07                	je     431 <tpm_menu+0x431>
 42a:	68 2e 07 00 00       	push   $0x72e
 42f:	eb 05                	jmp    436 <tpm_menu+0x436>
 431:	68 38 07 00 00       	push   $0x738
 436:	e8 fc ff ff ff       	call   437 <tpm_menu+0x437>
 43b:	58                   	pop    %eax
 43c:	89 dd                	mov    %ebx,%ebp
 43e:	83 e5 02             	and    $0x2,%ebp
 441:	74 07                	je     44a <tpm_menu+0x44a>
 443:	68 43 07 00 00       	push   $0x743
 448:	eb 05                	jmp    44f <tpm_menu+0x44f>
 44a:	68 50 07 00 00       	push   $0x750
 44f:	e8 fc ff ff ff       	call   450 <tpm_menu+0x450>
 454:	58                   	pop    %eax
 455:	89 df                	mov    %ebx,%edi
 457:	83 e7 04             	and    $0x4,%edi
 45a:	74 07                	je     463 <tpm_menu+0x463>
 45c:	68 62 07 00 00       	push   $0x762
 461:	eb 1c                	jmp    47f <tpm_menu+0x47f>
 463:	68 7e 07 00 00       	push   $0x77e
 468:	e8 fc ff ff ff       	call   469 <tpm_menu+0x469>
 46d:	58                   	pop    %eax
 46e:	f6 c3 08             	test   $0x8,%bl
 471:	74 07                	je     47a <tpm_menu+0x47a>
 473:	68 9e 07 00 00       	push   $0x79e
 478:	eb 05                	jmp    47f <tpm_menu+0x47f>
 47a:	68 c6 07 00 00       	push   $0x7c6
 47f:	e8 fc ff ff ff       	call   480 <tpm_menu+0x480>
 484:	59                   	pop    %ecx
 485:	83 fe 03             	cmp    $0x3,%esi
 488:	74 0b                	je     495 <tpm_menu+0x495>
 48a:	68 f7 07 00 00       	push   $0x7f7
 48f:	e8 fc ff ff ff       	call   490 <tpm_menu+0x490>
 494:	5a                   	pop    %edx
 495:	68 45 08 00 00       	push   $0x845
 49a:	e8 fc ff ff ff       	call   49b <tpm_menu+0x49b>
 49f:	58                   	pop    %eax
 4a0:	83 3c 24 00          	cmpl   $0x0,(%esp)
 4a4:	74 77                	je     51d <tpm_menu+0x51d>
 4a6:	68 5e 08 00 00       	push   $0x85e
 4ab:	e8 fc ff ff ff       	call   4ac <tpm_menu+0x4ac>
 4b0:	c7 44 24 34 20 00 00 	movl   $0x20,0x34(%esp)
 4b7:	00 
 4b8:	58                   	pop    %eax
 4b9:	85 ed                	test   %ebp,%ebp
 4bb:	74 46                	je     503 <tpm_menu+0x503>
 4bd:	68 73 08 00 00       	push   $0x873
 4c2:	e8 fc ff ff ff       	call   4c3 <tpm_menu+0x4c3>
 4c7:	c7 44 24 38 2f 00 00 	movl   $0x2f,0x38(%esp)
 4ce:	00 
 4cf:	58                   	pop    %eax
 4d0:	80 e3 08             	and    $0x8,%bl
 4d3:	74 14                	je     4e9 <tpm_menu+0x4e9>
 4d5:	68 8b 08 00 00       	push   $0x88b
 4da:	e8 fc ff ff ff       	call   4db <tpm_menu+0x4db>
 4df:	c7 44 24 3c 19 00 00 	movl   $0x19,0x3c(%esp)
 4e6:	00 
 4e7:	eb 12                	jmp    4fb <tpm_menu+0x4fb>
 4e9:	68 b1 08 00 00       	push   $0x8b1
 4ee:	e8 fc ff ff ff       	call   4ef <tpm_menu+0x4ef>
 4f3:	c7 44 24 3c 1f 00 00 	movl   $0x1f,0x3c(%esp)
 4fa:	00 
 4fb:	58                   	pop    %eax
 4fc:	bb 03 00 00 00       	mov    $0x3,%ebx
 501:	eb 32                	jmp    535 <tpm_menu+0x535>
 503:	68 d5 08 00 00       	push   $0x8d5
 508:	e8 fc ff ff ff       	call   509 <tpm_menu+0x509>
 50d:	c7 44 24 38 1e 00 00 	movl   $0x1e,0x38(%esp)
 514:	00 
 515:	58                   	pop    %eax
 516:	bb 02 00 00 00       	mov    $0x2,%ebx
 51b:	eb 18                	jmp    535 <tpm_menu+0x535>
 51d:	68 eb 08 00 00       	push   $0x8eb
 522:	e8 fc ff ff ff       	call   523 <tpm_menu+0x523>
 527:	c7 44 24 34 12 00 00 	movl   $0x12,0x34(%esp)
 52e:	00 
 52f:	5d                   	pop    %ebp
 530:	bb 01 00 00 00       	mov    $0x1,%ebx
 535:	85 ff                	test   %edi,%edi
 537:	74 14                	je     54d <tpm_menu+0x54d>
 539:	68 ff 08 00 00       	push   $0x8ff
 53e:	e8 fc ff ff ff       	call   53f <tpm_menu+0x53f>
 543:	c7 44 9c 34 2e 00 00 	movl   $0x2e,0x34(%esp,%ebx,4)
 54a:	00 
 54b:	5f                   	pop    %edi
 54c:	43                   	inc    %ebx
 54d:	c7 44 9c 30 00 00 00 	movl   $0x0,0x30(%esp,%ebx,4)
 554:	00 
 555:	68 14 09 00 00       	push   $0x914
 55a:	e8 fc ff ff ff       	call   55b <tpm_menu+0x55b>
 55f:	5e                   	pop    %esi
 560:	31 db                	xor    %ebx,%ebx
 562:	b8 e8 03 00 00       	mov    $0x3e8,%eax
 567:	e8 fc ff ff ff       	call   568 <tpm_menu+0x568>
 56c:	89 c6                	mov    %eax,%esi
 56e:	83 f8 ff             	cmp    $0xffffffff,%eax
 571:	74 ef                	je     562 <tpm_menu+0x562>
 573:	83 f8 20             	cmp    $0x20,%eax
 576:	7f 24                	jg     59c <tpm_menu+0x59c>
 578:	83 f8 11             	cmp    $0x11,%eax
 57b:	7f 0c                	jg     589 <tpm_menu+0x589>
 57d:	83 f8 01             	cmp    $0x1,%eax
 580:	75 e0                	jne    562 <tpm_menu+0x562>
 582:	e8 fc ff ff ff       	call   583 <tpm_menu+0x583>
 587:	eb 33                	jmp    5bc <tpm_menu+0x5bc>
 589:	8d 40 ee             	lea    -0x12(%eax),%eax
 58c:	83 f8 0e             	cmp    $0xe,%eax
 58f:	77 d1                	ja     562 <tpm_menu+0x562>
 591:	ff 24 85 00 00 00 00 	jmp    *0x0(,%eax,4)
 598:	b3 02                	mov    $0x2,%bl
 59a:	eb 20                	jmp    5bc <tpm_menu+0x5bc>
 59c:	83 f8 2e             	cmp    $0x2e,%eax
 59f:	74 19                	je     5ba <tpm_menu+0x5ba>
 5a1:	83 f8 2f             	cmp    $0x2f,%eax
 5a4:	75 bc                	jne    562 <tpm_menu+0x562>
 5a6:	b3 04                	mov    $0x4,%bl
 5a8:	eb 12                	jmp    5bc <tpm_menu+0x5bc>
 5aa:	b3 03                	mov    $0x3,%bl
 5ac:	eb 0e                	jmp    5bc <tpm_menu+0x5bc>
 5ae:	b3 09                	mov    $0x9,%bl
 5b0:	eb 0a                	jmp    5bc <tpm_menu+0x5bc>
 5b2:	b3 08                	mov    $0x8,%bl
 5b4:	eb 06                	jmp    5bc <tpm_menu+0x5bc>
 5b6:	b3 01                	mov    $0x1,%bl
 5b8:	eb 02                	jmp    5bc <tpm_menu+0x5bc>
 5ba:	b3 05                	mov    $0x5,%bl
 5bc:	8d 44 24 30          	lea    0x30(%esp),%eax
 5c0:	8b 10                	mov    (%eax),%edx
 5c2:	85 d2                	test   %edx,%edx
 5c4:	74 9c                	je     562 <tpm_menu+0x562>
 5c6:	83 c0 04             	add    $0x4,%eax
 5c9:	39 f2                	cmp    %esi,%edx
 5cb:	75 f3                	jne    5c0 <tpm_menu+0x5c0>
 5cd:	4b                   	dec    %ebx
 5ce:	80 fb 08             	cmp    $0x8,%bl
 5d1:	0f 87 61 fa ff ff    	ja     38 <tpm_menu+0x38>
 5d7:	0f b6 db             	movzbl %bl,%ebx
 5da:	ff 24 9d 3c 00 00 00 	jmp    *0x3c(,%ebx,4)
 5e1:	b8 01 00 00 00       	mov    $0x1,%eax
 5e6:	e8 fc ff ff ff       	call   5e7 <tpm_menu+0x5e7>
 5eb:	ba 01 00 00 00       	mov    $0x1,%edx
 5f0:	e9 df 00 00 00       	jmp    6d4 <tpm_menu+0x6d4>
 5f5:	31 c0                	xor    %eax,%eax
 5f7:	e8 fc ff ff ff       	call   5f8 <tpm_menu+0x5f8>
 5fc:	ba 02 00 00 00       	mov    $0x2,%edx
 601:	e9 ce 00 00 00       	jmp    6d4 <tpm_menu+0x6d4>
 606:	ba 01 00 00 00       	mov    $0x1,%edx
 60b:	b8 01 00 00 00       	mov    $0x1,%eax
 610:	e8 fc ff ff ff       	call   611 <tpm_menu+0x611>
 615:	ba 03 00 00 00       	mov    $0x3,%edx
 61a:	e9 b5 00 00 00       	jmp    6d4 <tpm_menu+0x6d4>
 61f:	ba 01 00 00 00       	mov    $0x1,%edx
 624:	31 c0                	xor    %eax,%eax
 626:	e8 fc ff ff ff       	call   627 <tpm_menu+0x627>
 62b:	ba 04 00 00 00       	mov    $0x4,%edx
 630:	e9 9f 00 00 00       	jmp    6d4 <tpm_menu+0x6d4>
 635:	8d 44 24 18          	lea    0x18(%esp),%eax
 639:	e8 fc ff ff ff       	call   63a <tpm_menu+0x63a>
 63e:	85 c0                	test   %eax,%eax
 640:	75 64                	jne    6a6 <tpm_menu+0x6a6>
 642:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
 647:	75 0a                	jne    653 <tpm_menu+0x653>
 649:	68 77 09 00 00       	push   $0x977
 64e:	e9 df f9 ff ff       	jmp    32 <tpm_menu+0x32>
 653:	b8 01 00 00 00       	mov    $0x1,%eax
 658:	e8 fc ff ff ff       	call   659 <tpm_menu+0x659>
 65d:	85 c0                	test   %eax,%eax
 65f:	75 10                	jne    671 <tpm_menu+0x671>
 661:	31 d2                	xor    %edx,%edx
 663:	b8 01 00 00 00       	mov    $0x1,%eax
 668:	e8 fc ff ff ff       	call   669 <tpm_menu+0x669>
 66d:	85 c0                	test   %eax,%eax
 66f:	74 13                	je     684 <tpm_menu+0x684>
 671:	89 04 24             	mov    %eax,(%esp)
 674:	68 94 09 00 00       	push   $0x994
 679:	e8 fc ff ff ff       	call   67a <tpm_menu+0x67a>
 67e:	5b                   	pop    %ebx
 67f:	8b 04 24             	mov    (%esp),%eax
 682:	eb 2c                	jmp    6b0 <tpm_menu+0x6b0>
 684:	6a 00                	push   $0x0
 686:	6a 00                	push   $0x0
 688:	31 c9                	xor    %ecx,%ecx
 68a:	ba 5d 00 00 00       	mov    $0x5d,%edx
 68f:	31 c0                	xor    %eax,%eax
 691:	e8 fc ff ff ff       	call   692 <tpm_menu+0x692>
 696:	5a                   	pop    %edx
 697:	59                   	pop    %ecx
 698:	85 c0                	test   %eax,%eax
 69a:	75 14                	jne    6b0 <tpm_menu+0x6b0>
 69c:	68 c2 09 00 00       	push   $0x9c2
 6a1:	e9 8c f9 ff ff       	jmp    32 <tpm_menu+0x32>
 6a6:	ba 05 00 00 00       	mov    $0x5,%edx
 6ab:	83 c8 ff             	or     $0xffffffff,%eax
 6ae:	eb 2c                	jmp    6dc <tpm_menu+0x6dc>
 6b0:	ba 05 00 00 00       	mov    $0x5,%edx
 6b5:	eb 25                	jmp    6dc <tpm_menu+0x6dc>
 6b7:	b8 01 00 00 00       	mov    $0x1,%eax
 6bc:	e8 fc ff ff ff       	call   6bd <tpm_menu+0x6bd>
 6c1:	ba 08 00 00 00       	mov    $0x8,%edx
 6c6:	eb 0c                	jmp    6d4 <tpm_menu+0x6d4>
 6c8:	31 c0                	xor    %eax,%eax
 6ca:	e8 fc ff ff ff       	call   6cb <tpm_menu+0x6cb>
 6cf:	ba 09 00 00 00       	mov    $0x9,%edx
 6d4:	85 c0                	test   %eax,%eax
 6d6:	0f 84 5c f9 ff ff    	je     38 <tpm_menu+0x38>
 6dc:	50                   	push   %eax
 6dd:	52                   	push   %edx
 6de:	68 10 0a 00 00       	push   $0xa10
 6e3:	e8 fc ff ff ff       	call   6e4 <tpm_menu+0x6e4>
 6e8:	83 c4 0c             	add    $0xc,%esp
 6eb:	e9 48 f9 ff ff       	jmp    38 <tpm_menu+0x38>
 6f0:	83 c4 54             	add    $0x54,%esp
 6f3:	5b                   	pop    %ebx
 6f4:	5e                   	pop    %esi
 6f5:	5f                   	pop    %edi
 6f6:	5d                   	pop    %ebp
 6f7:	c3                   	ret    

Disassembly of section .text.tpm_can_show_menu:

00000000 <tpm_can_show_menu>:
   0:	a0 00 00 00 00       	mov    0x0,%al
   5:	3c 01                	cmp    $0x1,%al
   7:	74 07                	je     10 <tpm_can_show_menu+0x10>
   9:	3c 02                	cmp    $0x2,%al
   b:	74 17                	je     24 <tpm_can_show_menu+0x24>
   d:	31 c0                	xor    %eax,%eax
   f:	c3                   	ret    
  10:	31 c0                	xor    %eax,%eax
  12:	80 3d 00 00 00 00 00 	cmpb   $0x0,0x0
  19:	74 16                	je     31 <tpm_can_show_menu+0x31>
  1b:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
  22:	eb 07                	jmp    2b <tpm_can_show_menu+0x2b>
  24:	80 3d 00 00 00 00 00 	cmpb   $0x0,0x0
  2b:	0f 95 c0             	setne  %al
  2e:	0f b6 c0             	movzbl %al,%eax
  31:	c3                   	ret    
