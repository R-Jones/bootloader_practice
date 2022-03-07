
./string.o:     file format elf32-i386


Disassembly of section .text.checksum_far:

00000000 <checksum_far>:
   0:	01 d1                	add    %edx,%ecx
   2:	31 c0                	xor    %eax,%eax
   4:	39 ca                	cmp    %ecx,%edx
   6:	74 05                	je     d <checksum_far+0xd>
   8:	02 02                	add    (%edx),%al
   a:	42                   	inc    %edx
   b:	eb f7                	jmp    4 <checksum_far+0x4>
   d:	c3                   	ret    

Disassembly of section .text.checksum:

00000000 <checksum>:
   0:	89 d1                	mov    %edx,%ecx
   2:	89 c2                	mov    %eax,%edx
   4:	31 c0                	xor    %eax,%eax
   6:	e9 fc ff ff ff       	jmp    7 <checksum+0x7>

Disassembly of section .text.strlen:

00000000 <strlen>:
   0:	89 c1                	mov    %eax,%ecx
   2:	89 c2                	mov    %eax,%edx
   4:	80 3a 00             	cmpb   $0x0,(%edx)
   7:	74 03                	je     c <strlen+0xc>
   9:	42                   	inc    %edx
   a:	eb f8                	jmp    4 <strlen+0x4>
   c:	89 d0                	mov    %edx,%eax
   e:	29 c8                	sub    %ecx,%eax
  10:	c3                   	ret    

Disassembly of section .text.memcmp_far:

00000000 <memcmp_far>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	0f b7 c0             	movzwl %ax,%eax
   5:	c1 e0 04             	shl    $0x4,%eax
   8:	8d 1c 10             	lea    (%eax,%edx,1),%ebx
   b:	0f b7 c9             	movzwl %cx,%ecx
   e:	c1 e1 04             	shl    $0x4,%ecx
  11:	03 4c 24 0c          	add    0xc(%esp),%ecx
  15:	03 44 24 10          	add    0x10(%esp),%eax
  19:	01 c2                	add    %eax,%edx
  1b:	39 d3                	cmp    %edx,%ebx
  1d:	74 14                	je     33 <memcmp_far+0x33>
  1f:	0f b6 03             	movzbl (%ebx),%eax
  22:	0f b6 31             	movzbl (%ecx),%esi
  25:	43                   	inc    %ebx
  26:	41                   	inc    %ecx
  27:	29 f0                	sub    %esi,%eax
  29:	74 f0                	je     1b <memcmp_far+0x1b>
  2b:	c1 f8 1f             	sar    $0x1f,%eax
  2e:	83 c8 01             	or     $0x1,%eax
  31:	eb 02                	jmp    35 <memcmp_far+0x35>
  33:	31 c0                	xor    %eax,%eax
  35:	5b                   	pop    %ebx
  36:	5e                   	pop    %esi
  37:	c3                   	ret    

Disassembly of section .text.memcmp:

00000000 <memcmp>:
   0:	01 c1                	add    %eax,%ecx
   2:	39 c8                	cmp    %ecx,%eax
   4:	75 03                	jne    9 <memcmp+0x9>
   6:	31 c0                	xor    %eax,%eax
   8:	c3                   	ret    
   9:	53                   	push   %ebx
   a:	8a 1a                	mov    (%edx),%bl
   c:	38 18                	cmp    %bl,(%eax)
   e:	74 07                	je     17 <memcmp+0x17>
  10:	19 c0                	sbb    %eax,%eax
  12:	83 c8 01             	or     $0x1,%eax
  15:	eb 08                	jmp    1f <memcmp+0x1f>
  17:	40                   	inc    %eax
  18:	42                   	inc    %edx
  19:	39 c8                	cmp    %ecx,%eax
  1b:	75 ed                	jne    a <memcmp+0xa>
  1d:	31 c0                	xor    %eax,%eax
  1f:	5b                   	pop    %ebx
  20:	c3                   	ret    

Disassembly of section .text.strcmp:

00000000 <strcmp>:
   0:	53                   	push   %ebx
   1:	31 c9                	xor    %ecx,%ecx
   3:	8a 1c 08             	mov    (%eax,%ecx,1),%bl
   6:	3a 1c 0a             	cmp    (%edx,%ecx,1),%bl
   9:	74 0c                	je     17 <strcmp+0x17>
   b:	0f 9d c0             	setge  %al
   e:	0f b6 c0             	movzbl %al,%eax
  11:	8d 44 00 ff          	lea    -0x1(%eax,%eax,1),%eax
  15:	eb 07                	jmp    1e <strcmp+0x1e>
  17:	41                   	inc    %ecx
  18:	84 db                	test   %bl,%bl
  1a:	75 e7                	jne    3 <strcmp+0x3>
  1c:	31 c0                	xor    %eax,%eax
  1e:	5b                   	pop    %ebx
  1f:	c3                   	ret    

Disassembly of section .text.memset_far:

00000000 <memset_far>:
   0:	57                   	push   %edi
   1:	89 c8                	mov    %ecx,%eax
   3:	8b 4c 24 08          	mov    0x8(%esp),%ecx
   7:	89 d7                	mov    %edx,%edi
   9:	67 f3 aa             	rep stos %al,%es:(%di)
   c:	5f                   	pop    %edi
   d:	c3                   	ret    

Disassembly of section .text.memset16_far:

00000000 <memset16_far>:
   0:	57                   	push   %edi
   1:	89 c8                	mov    %ecx,%eax
   3:	8b 4c 24 08          	mov    0x8(%esp),%ecx
   7:	d1 e9                	shr    %ecx
   9:	89 d7                	mov    %edx,%edi
   b:	67 66 f3 ab          	rep stos %ax,%es:(%di)
   f:	5f                   	pop    %edi
  10:	c3                   	ret    

Disassembly of section .text.memset:

00000000 <memset>:
   0:	85 c9                	test   %ecx,%ecx
   2:	74 06                	je     a <memset+0xa>
   4:	49                   	dec    %ecx
   5:	88 14 08             	mov    %dl,(%eax,%ecx,1)
   8:	eb f6                	jmp    0 <memset>
   a:	c3                   	ret    

Disassembly of section .text.memset_fl:

00000000 <memset_fl>:
   0:	0f b6 d2             	movzbl %dl,%edx
   3:	e9 fc ff ff ff       	jmp    4 <memset_fl+0x4>

Disassembly of section .text.memcpy_far:

00000000 <memcpy_far>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	89 c8                	mov    %ecx,%eax
   4:	8b 4c 24 10          	mov    0x10(%esp),%ecx
   8:	8b 74 24 0c          	mov    0xc(%esp),%esi
   c:	89 d7                	mov    %edx,%edi
   e:	66 8c da             	mov    %ds,%dx
  11:	8e d8                	mov    %eax,%ds
  13:	67 f3 a4             	rep movsb %ds:(%si),%es:(%di)
  16:	8e da                	mov    %edx,%ds
  18:	5e                   	pop    %esi
  19:	5f                   	pop    %edi
  1a:	c3                   	ret    

Disassembly of section .text.memcpy_fl:

00000000 <memcpy_fl>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	89 c7                	mov    %eax,%edi
   4:	89 d6                	mov    %edx,%esi
   6:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   8:	5e                   	pop    %esi
   9:	5f                   	pop    %edi
   a:	c3                   	ret    

Disassembly of section .text.memcpy:

00000000 <memcpy>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	89 d6                	mov    %edx,%esi
   4:	89 c2                	mov    %eax,%edx
   6:	09 f2                	or     %esi,%edx
   8:	09 ca                	or     %ecx,%edx
   a:	80 e2 03             	and    $0x3,%dl
   d:	74 06                	je     15 <memcpy+0x15>
   f:	89 c7                	mov    %eax,%edi
  11:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  13:	eb 07                	jmp    1c <memcpy+0x1c>
  15:	c1 e9 02             	shr    $0x2,%ecx
  18:	89 c7                	mov    %eax,%edi
  1a:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  1c:	5e                   	pop    %esi
  1d:	5f                   	pop    %edi
  1e:	c3                   	ret    

Disassembly of section .text.iomemcpy:

00000000 <iomemcpy>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 c3                	mov    %eax,%ebx
   6:	89 d6                	mov    %edx,%esi
   8:	89 cd                	mov    %ecx,%ebp
   a:	e8 fc ff ff ff       	call   b <iomemcpy+0xb>
   f:	83 fd 03             	cmp    $0x3,%ebp
  12:	76 21                	jbe    35 <iomemcpy+0x35>
  14:	89 e8                	mov    %ebp,%eax
  16:	81 fd 00 08 00 00    	cmp    $0x800,%ebp
  1c:	76 05                	jbe    23 <iomemcpy+0x23>
  1e:	b8 00 08 00 00       	mov    $0x800,%eax
  23:	89 c1                	mov    %eax,%ecx
  25:	c1 e9 02             	shr    $0x2,%ecx
  28:	83 e0 fc             	and    $0xfffffffc,%eax
  2b:	29 c5                	sub    %eax,%ebp
  2d:	89 df                	mov    %ebx,%edi
  2f:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  31:	89 fb                	mov    %edi,%ebx
  33:	eb d5                	jmp    a <iomemcpy+0xa>
  35:	85 ed                	test   %ebp,%ebp
  37:	74 06                	je     3f <iomemcpy+0x3f>
  39:	89 df                	mov    %ebx,%edi
  3b:	89 e9                	mov    %ebp,%ecx
  3d:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  3f:	5b                   	pop    %ebx
  40:	5e                   	pop    %esi
  41:	5f                   	pop    %edi
  42:	5d                   	pop    %ebp
  43:	c3                   	ret    

Disassembly of section .text.memmove:

00000000 <memmove>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	89 c3                	mov    %eax,%ebx
   5:	89 d6                	mov    %edx,%esi
   7:	39 c2                	cmp    %eax,%edx
   9:	72 06                	jb     11 <memmove+0x11>
   b:	89 c7                	mov    %eax,%edi
   d:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   f:	eb 12                	jmp    23 <memmove+0x23>
  11:	49                   	dec    %ecx
  12:	83 f9 ff             	cmp    $0xffffffff,%ecx
  15:	8d 43 ff             	lea    -0x1(%ebx),%eax
  18:	74 09                	je     23 <memmove+0x23>
  1a:	8a 14 0e             	mov    (%esi,%ecx,1),%dl
  1d:	88 54 08 01          	mov    %dl,0x1(%eax,%ecx,1)
  21:	eb ee                	jmp    11 <memmove+0x11>
  23:	5b                   	pop    %ebx
  24:	5e                   	pop    %esi
  25:	5f                   	pop    %edi
  26:	c3                   	ret    

Disassembly of section .text.strtcpy:

00000000 <strtcpy>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	8d 5a 01             	lea    0x1(%edx),%ebx
   5:	8d 34 0a             	lea    (%edx,%ecx,1),%esi
   8:	89 c1                	mov    %eax,%ecx
   a:	39 f3                	cmp    %esi,%ebx
   c:	74 0e                	je     1c <strtcpy+0x1c>
   e:	43                   	inc    %ebx
   f:	8a 53 fe             	mov    -0x2(%ebx),%dl
  12:	84 d2                	test   %dl,%dl
  14:	74 06                	je     1c <strtcpy+0x1c>
  16:	41                   	inc    %ecx
  17:	88 51 ff             	mov    %dl,-0x1(%ecx)
  1a:	eb ee                	jmp    a <strtcpy+0xa>
  1c:	c6 01 00             	movb   $0x0,(%ecx)
  1f:	5b                   	pop    %ebx
  20:	5e                   	pop    %esi
  21:	c3                   	ret    

Disassembly of section .text.strchr:

00000000 <strchr>:
   0:	0f be 08             	movsbl (%eax),%ecx
   3:	84 c9                	test   %cl,%cl
   5:	74 07                	je     e <strchr+0xe>
   7:	39 d1                	cmp    %edx,%ecx
   9:	74 05                	je     10 <strchr+0x10>
   b:	40                   	inc    %eax
   c:	eb f2                	jmp    0 <strchr>
   e:	31 c0                	xor    %eax,%eax
  10:	c3                   	ret    

Disassembly of section .text.nullTrailingSpace:

00000000 <nullTrailingSpace>:
   0:	53                   	push   %ebx
   1:	89 c3                	mov    %eax,%ebx
   3:	e8 fc ff ff ff       	call   4 <nullTrailingSpace+0x4>
   8:	8d 44 03 ff          	lea    -0x1(%ebx,%eax,1),%eax
   c:	39 d8                	cmp    %ebx,%eax
   e:	72 11                	jb     21 <nullTrailingSpace+0x21>
  10:	80 38 20             	cmpb   $0x20,(%eax)
  13:	7f 0c                	jg     21 <nullTrailingSpace+0x21>
  15:	48                   	dec    %eax
  16:	c6 40 01 00          	movb   $0x0,0x1(%eax)
  1a:	eb f0                	jmp    c <nullTrailingSpace+0xc>
  1c:	84 c0                	test   %al,%al
  1e:	74 07                	je     27 <nullTrailingSpace+0x27>
  20:	43                   	inc    %ebx
  21:	8a 03                	mov    (%ebx),%al
  23:	3c 20                	cmp    $0x20,%al
  25:	7e f5                	jle    1c <nullTrailingSpace+0x1c>
  27:	89 d8                	mov    %ebx,%eax
  29:	5b                   	pop    %ebx
  2a:	c3                   	ret    
