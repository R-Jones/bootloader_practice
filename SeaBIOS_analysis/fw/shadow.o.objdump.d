
./shadow.o:     file format elf32-i386


Disassembly of section .text.__make_bios_writable_intel:

00000000 <__make_bios_writable_intel>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 08             	sub    $0x8,%esp
   7:	89 d6                	mov    %edx,%esi
   9:	89 d7                	mov    %edx,%edi
   b:	83 e7 fc             	and    $0xfffffffc,%edi
   e:	0f b7 d8             	movzwl %ax,%ebx
  11:	89 fa                	mov    %edi,%edx
  13:	89 d8                	mov    %ebx,%eax
  15:	e8 fc ff ff ff       	call   16 <__make_bios_writable_intel+0x16>
  1a:	89 04 24             	mov    %eax,(%esp)
  1d:	8d 6f 04             	lea    0x4(%edi),%ebp
  20:	89 ea                	mov    %ebp,%edx
  22:	89 d8                	mov    %ebx,%eax
  24:	e8 fc ff ff ff       	call   25 <__make_bios_writable_intel+0x25>
  29:	89 44 24 04          	mov    %eax,0x4(%esp)
  2d:	89 f0                	mov    %esi,%eax
  2f:	83 e0 03             	and    $0x3,%eax
  32:	8d 0c 04             	lea    (%esp,%eax,1),%ecx
  35:	31 d2                	xor    %edx,%edx
  37:	c6 44 11 01 33       	movb   $0x33,0x1(%ecx,%edx,1)
  3c:	42                   	inc    %edx
  3d:	83 fa 06             	cmp    $0x6,%edx
  40:	75 f5                	jne    37 <__make_bios_writable_intel+0x37>
  42:	0f b6 34 04          	movzbl (%esp,%eax,1),%esi
  46:	83 e6 10             	and    $0x10,%esi
  49:	c6 04 04 30          	movb   $0x30,(%esp,%eax,1)
  4d:	8b 0c 24             	mov    (%esp),%ecx
  50:	89 fa                	mov    %edi,%edx
  52:	89 d8                	mov    %ebx,%eax
  54:	e8 fc ff ff ff       	call   55 <__make_bios_writable_intel+0x55>
  59:	8b 4c 24 04          	mov    0x4(%esp),%ecx
  5d:	89 ea                	mov    %ebp,%edx
  5f:	89 d8                	mov    %ebx,%eax
  61:	e8 fc ff ff ff       	call   62 <__make_bios_writable_intel+0x62>
  66:	89 f0                	mov    %esi,%eax
  68:	84 c0                	test   %al,%al
  6a:	75 15                	jne    81 <__make_bios_writable_intel+0x81>
  6c:	b8 00 00 00 00       	mov    $0x0,%eax
  71:	b9 00 00 00 00       	mov    $0x0,%ecx
  76:	29 c1                	sub    %eax,%ecx
  78:	be 00 00 f0 ff       	mov    $0xfff00000,%esi
  7d:	89 c7                	mov    %eax,%edi
  7f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  81:	83 c4 08             	add    $0x8,%esp
  84:	5b                   	pop    %ebx
  85:	5e                   	pop    %esi
  86:	5f                   	pop    %edi
  87:	5d                   	pop    %ebp
  88:	c3                   	ret    

Disassembly of section .text.make_bios_writable_intel:

00000000 <make_bios_writable_intel>:
   0:	53                   	push   %ebx
   1:	51                   	push   %ecx
   2:	0f b7 d8             	movzwl %ax,%ebx
   5:	89 14 24             	mov    %edx,(%esp)
   8:	89 d8                	mov    %ebx,%eax
   a:	e8 fc ff ff ff       	call   b <make_bios_writable_intel+0xb>
   f:	a8 10                	test   $0x10,%al
  11:	8b 14 24             	mov    (%esp),%edx
  14:	89 d8                	mov    %ebx,%eax
  16:	75 09                	jne    21 <make_bios_writable_intel+0x21>
  18:	b9 00 00 f0 ff       	mov    $0xfff00000,%ecx
  1d:	5b                   	pop    %ebx
  1e:	5b                   	pop    %ebx
  1f:	ff e1                	jmp    *%ecx
  21:	59                   	pop    %ecx
  22:	5b                   	pop    %ebx
  23:	e9 fc ff ff ff       	jmp    24 <make_bios_writable_intel+0x24>

Disassembly of section .text.make_bios_readonly_intel:

00000000 <make_bios_readonly_intel>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 10             	sub    $0x10,%esp
   7:	89 d3                	mov    %edx,%ebx
   9:	0f 09                	wbinvd 
   b:	89 d6                	mov    %edx,%esi
   d:	83 e6 fc             	and    $0xfffffffc,%esi
  10:	0f b7 c0             	movzwl %ax,%eax
  13:	89 04 24             	mov    %eax,(%esp)
  16:	89 f2                	mov    %esi,%edx
  18:	e8 fc ff ff ff       	call   19 <make_bios_readonly_intel+0x19>
  1d:	89 44 24 08          	mov    %eax,0x8(%esp)
  21:	8d 46 04             	lea    0x4(%esi),%eax
  24:	89 44 24 04          	mov    %eax,0x4(%esp)
  28:	89 c2                	mov    %eax,%edx
  2a:	8b 04 24             	mov    (%esp),%eax
  2d:	e8 fc ff ff ff       	call   2e <make_bios_readonly_intel+0x2e>
  32:	89 44 24 0c          	mov    %eax,0xc(%esp)
  36:	83 e3 03             	and    $0x3,%ebx
  39:	8d 7c 1c 08          	lea    0x8(%esp,%ebx,1),%edi
  3d:	e8 fc ff ff ff       	call   3e <make_bios_readonly_intel+0x3e>
  42:	89 c2                	mov    %eax,%edx
  44:	31 c0                	xor    %eax,%eax
  46:	89 c1                	mov    %eax,%ecx
  48:	c1 e1 0f             	shl    $0xf,%ecx
  4b:	8d a9 00 80 0c 00    	lea    0xc8000(%ecx),%ebp
  51:	39 ea                	cmp    %ebp,%edx
  53:	73 11                	jae    66 <make_bios_readonly_intel+0x66>
  55:	81 c1 00 40 0c 00    	add    $0xc4000,%ecx
  5b:	39 d1                	cmp    %edx,%ecx
  5d:	77 12                	ja     71 <make_bios_readonly_intel+0x71>
  5f:	c6 44 07 01 31       	movb   $0x31,0x1(%edi,%eax,1)
  64:	eb 0b                	jmp    71 <make_bios_readonly_intel+0x71>
  66:	c6 44 07 01 11       	movb   $0x11,0x1(%edi,%eax,1)
  6b:	40                   	inc    %eax
  6c:	83 f8 06             	cmp    $0x6,%eax
  6f:	75 d5                	jne    46 <make_bios_readonly_intel+0x46>
  71:	c6 44 1c 08 10       	movb   $0x10,0x8(%esp,%ebx,1)
  76:	8b 4c 24 08          	mov    0x8(%esp),%ecx
  7a:	89 f2                	mov    %esi,%edx
  7c:	8b 04 24             	mov    (%esp),%eax
  7f:	e8 fc ff ff ff       	call   80 <make_bios_readonly_intel+0x80>
  84:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
  88:	8b 54 24 04          	mov    0x4(%esp),%edx
  8c:	8b 04 24             	mov    (%esp),%eax
  8f:	83 c4 10             	add    $0x10,%esp
  92:	5b                   	pop    %ebx
  93:	5e                   	pop    %esi
  94:	5f                   	pop    %edi
  95:	5d                   	pop    %ebp
  96:	e9 fc ff ff ff       	jmp    97 <make_bios_readonly_intel+0x97>

Disassembly of section .text.make_bios_writable:

00000000 <make_bios_writable>:
   0:	f6 05 00 00 00 00 02 	testb  $0x2,0x0
   7:	75 7b                	jne    84 <make_bios_writable+0x84>
   9:	56                   	push   %esi
   a:	53                   	push   %ebx
   b:	68 00 00 00 00       	push   $0x0
  10:	e8 fc ff ff ff       	call   11 <make_bios_writable+0x11>
  15:	31 d2                	xor    %edx,%edx
  17:	83 c8 ff             	or     $0xffffffff,%eax
  1a:	e8 fc ff ff ff       	call   1b <make_bios_writable+0x1b>
  1f:	89 c3                	mov    %eax,%ebx
  21:	5a                   	pop    %edx
  22:	85 db                	test   %ebx,%ebx
  24:	78 50                	js     76 <make_bios_writable+0x76>
  26:	0f b7 f3             	movzwl %bx,%esi
  29:	31 d2                	xor    %edx,%edx
  2b:	89 f0                	mov    %esi,%eax
  2d:	e8 fc ff ff ff       	call   2e <make_bios_writable+0x2e>
  32:	66 3d 86 80          	cmp    $0x8086,%ax
  36:	75 31                	jne    69 <make_bios_writable+0x69>
  38:	c1 e8 10             	shr    $0x10,%eax
  3b:	3d 37 12 00 00       	cmp    $0x1237,%eax
  40:	75 07                	jne    49 <make_bios_writable+0x49>
  42:	ba 59 00 00 00       	mov    $0x59,%edx
  47:	eb 0c                	jmp    55 <make_bios_writable+0x55>
  49:	3d c0 29 00 00       	cmp    $0x29c0,%eax
  4e:	75 19                	jne    69 <make_bios_writable+0x69>
  50:	ba 90 00 00 00       	mov    $0x90,%edx
  55:	89 f0                	mov    %esi,%eax
  57:	e8 fc ff ff ff       	call   58 <make_bios_writable+0x58>
  5c:	e8 fc ff ff ff       	call   5d <make_bios_writable+0x5d>
  61:	89 1d 00 00 00 00    	mov    %ebx,0x0
  67:	eb 18                	jmp    81 <make_bios_writable+0x81>
  69:	31 d2                	xor    %edx,%edx
  6b:	89 d8                	mov    %ebx,%eax
  6d:	e8 fc ff ff ff       	call   6e <make_bios_writable+0x6e>
  72:	89 c3                	mov    %eax,%ebx
  74:	eb ac                	jmp    22 <make_bios_writable+0x22>
  76:	68 15 00 00 00       	push   $0x15
  7b:	e8 fc ff ff ff       	call   7c <make_bios_writable+0x7c>
  80:	58                   	pop    %eax
  81:	5b                   	pop    %ebx
  82:	5e                   	pop    %esi
  83:	c3                   	ret    
  84:	c3                   	ret    

Disassembly of section .text.make_bios_readonly:

00000000 <make_bios_readonly>:
   0:	f6 05 00 00 00 00 02 	testb  $0x2,0x0
   7:	75 4a                	jne    53 <make_bios_readonly+0x53>
   9:	68 3e 00 00 00       	push   $0x3e
   e:	e8 fc ff ff ff       	call   f <make_bios_readonly+0xf>
  13:	a1 00 00 00 00       	mov    0x0,%eax
  18:	5a                   	pop    %edx
  19:	85 c0                	test   %eax,%eax
  1b:	79 0c                	jns    29 <make_bios_readonly+0x29>
  1d:	68 52 00 00 00       	push   $0x52
  22:	e8 fc ff ff ff       	call   23 <make_bios_readonly+0x23>
  27:	58                   	pop    %eax
  28:	c3                   	ret    
  29:	0f b7 c0             	movzwl %ax,%eax
  2c:	ba 02 00 00 00       	mov    $0x2,%edx
  31:	e8 fc ff ff ff       	call   32 <make_bios_readonly+0x32>
  36:	66 3d 37 12          	cmp    $0x1237,%ax
  3a:	a1 00 00 00 00       	mov    0x0,%eax
  3f:	0f b7 c0             	movzwl %ax,%eax
  42:	ba 59 00 00 00       	mov    $0x59,%edx
  47:	74 05                	je     4e <make_bios_readonly+0x4e>
  49:	ba 90 00 00 00       	mov    $0x90,%edx
  4e:	e9 fc ff ff ff       	jmp    4f <make_bios_readonly+0x4f>
  53:	c3                   	ret    

Disassembly of section .text.qemu_reboot:

00000000 <qemu_reboot>:
   0:	f6 05 00 00 00 00 02 	testb  $0x2,0x0
   7:	0f 85 81 00 00 00    	jne    8e <qemu_reboot+0x8e>
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	a1 00 00 f0 ff       	mov    0xfff00000,%eax
  14:	85 c0                	test   %eax,%eax
  16:	74 2a                	je     42 <qemu_reboot+0x42>
  18:	83 3d 00 00 00 00 03 	cmpl   $0x3,0x0
  1f:	75 10                	jne    31 <qemu_reboot+0x31>
  21:	68 79 00 00 00       	push   $0x79
  26:	e8 fc ff ff ff       	call   27 <qemu_reboot+0x27>
  2b:	e8 fc ff ff ff       	call   2c <qemu_reboot+0x2c>
  30:	58                   	pop    %eax
  31:	e8 fc ff ff ff       	call   32 <qemu_reboot+0x32>
  36:	c7 05 00 00 00 00 03 	movl   $0x3,0x0
  3d:	00 00 00 
  40:	eb 3d                	jmp    7f <qemu_reboot+0x7f>
  42:	e8 fc ff ff ff       	call   43 <qemu_reboot+0x43>
  47:	b8 00 00 00 00       	mov    $0x0,%eax
  4c:	b9 00 00 00 00       	mov    $0x0,%ecx
  51:	29 c1                	sub    %eax,%ecx
  53:	be 00 00 f0 ff       	mov    $0xfff00000,%esi
  58:	89 c7                	mov    %eax,%edi
  5a:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  5c:	b8 04 00 00 00       	mov    $0x4,%eax
  61:	b9 fc ff ff ff       	mov    $0xfffffffc,%ecx
  66:	81 e9 00 00 00 00    	sub    $0x0,%ecx
  6c:	be 04 00 f0 ff       	mov    $0xfff00004,%esi
  71:	89 c7                	mov    %eax,%edi
  73:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  75:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
  7c:	00 00 00 
  7f:	ba f9 0c 00 00       	mov    $0xcf9,%edx
  84:	b0 02                	mov    $0x2,%al
  86:	ee                   	out    %al,(%dx)
  87:	b0 06                	mov    $0x6,%al
  89:	ee                   	out    %al,(%dx)
  8a:	cc                   	int3   
  8b:	5e                   	pop    %esi
  8c:	5f                   	pop    %edi
  8d:	c3                   	ret    
  8e:	c3                   	ret    
