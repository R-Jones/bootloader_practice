
./boot.o:     file format elf32-i386


Disassembly of section .text.glob_prefix:

00000000 <glob_prefix>:
   0:	53                   	push   %ebx
   1:	89 c1                	mov    %eax,%ecx
   3:	89 d0                	mov    %edx,%eax
   5:	8a 19                	mov    (%ecx),%bl
   7:	8a 10                	mov    (%eax),%dl
   9:	84 db                	test   %bl,%bl
   b:	75 0b                	jne    18 <glob_prefix+0x18>
   d:	80 fa 2f             	cmp    $0x2f,%dl
  10:	74 26                	je     38 <glob_prefix+0x38>
  12:	84 d2                	test   %dl,%dl
  14:	75 20                	jne    36 <glob_prefix+0x36>
  16:	eb 20                	jmp    38 <glob_prefix+0x38>
  18:	80 fb 2a             	cmp    $0x2a,%bl
  1b:	75 11                	jne    2e <glob_prefix+0x2e>
  1d:	84 d2                	test   %dl,%dl
  1f:	74 0a                	je     2b <glob_prefix+0x2b>
  21:	80 fa 2f             	cmp    $0x2f,%dl
  24:	74 05                	je     2b <glob_prefix+0x2b>
  26:	38 51 01             	cmp    %dl,0x1(%ecx)
  29:	75 08                	jne    33 <glob_prefix+0x33>
  2b:	41                   	inc    %ecx
  2c:	eb d7                	jmp    5 <glob_prefix+0x5>
  2e:	38 d3                	cmp    %dl,%bl
  30:	75 04                	jne    36 <glob_prefix+0x36>
  32:	41                   	inc    %ecx
  33:	40                   	inc    %eax
  34:	eb cf                	jmp    5 <glob_prefix+0x5>
  36:	31 c0                	xor    %eax,%eax
  38:	5b                   	pop    %ebx
  39:	c3                   	ret    

Disassembly of section .text.parse_u32:

00000000 <parse_u32>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	89 d7                	mov    %edx,%edi
   5:	31 c9                	xor    %ecx,%ecx
   7:	85 c0                	test   %eax,%eax
   9:	74 1d                	je     28 <parse_u32+0x28>
   b:	0f be 18             	movsbl (%eax),%ebx
   e:	8d 73 d0             	lea    -0x30(%ebx),%esi
  11:	89 f2                	mov    %esi,%edx
  13:	80 fa 09             	cmp    $0x9,%dl
  16:	77 0a                	ja     22 <parse_u32+0x22>
  18:	6b c9 0a             	imul   $0xa,%ecx,%ecx
  1b:	8d 4c 19 d0          	lea    -0x30(%ecx,%ebx,1),%ecx
  1f:	40                   	inc    %eax
  20:	eb e9                	jmp    b <parse_u32+0xb>
  22:	80 fb 01             	cmp    $0x1,%bl
  25:	83 d8 ff             	sbb    $0xffffffff,%eax
  28:	89 0f                	mov    %ecx,(%edi)
  2a:	5b                   	pop    %ebx
  2b:	5e                   	pop    %esi
  2c:	5f                   	pop    %edi
  2d:	c3                   	ret    

Disassembly of section .text.usb_portmap:

00000000 <usb_portmap>:
   0:	53                   	push   %ebx
   1:	8b 18                	mov    (%eax),%ebx
   3:	8b 13                	mov    (%ebx),%edx
   5:	8b 4a 08             	mov    0x8(%edx),%ecx
   8:	8b 50 08             	mov    0x8(%eax),%edx
   b:	85 c9                	test   %ecx,%ecx
   d:	74 05                	je     14 <usb_portmap+0x14>
   f:	89 d8                	mov    %ebx,%eax
  11:	5b                   	pop    %ebx
  12:	ff e1                	jmp    *%ecx
  14:	8d 42 01             	lea    0x1(%edx),%eax
  17:	5b                   	pop    %ebx
  18:	c3                   	ret    

Disassembly of section .text.add_bev:

00000000 <add_bev>:
   0:	53                   	push   %ebx
   1:	89 d1                	mov    %edx,%ecx
   3:	8d 50 fe             	lea    -0x2(%eax),%edx
   6:	83 e2 fd             	and    $0xfffffffd,%edx
   9:	74 07                	je     12 <add_bev+0x12>
   b:	83 f8 01             	cmp    $0x1,%eax
   e:	75 2a                	jne    3a <add_bev+0x3a>
  10:	eb 15                	jmp    27 <add_bev+0x27>
  12:	8b 15 00 00 00 00    	mov    0x0,%edx
  18:	8d 5a 01             	lea    0x1(%edx),%ebx
  1b:	89 1d 00 00 00 00    	mov    %ebx,0x0
  21:	85 d2                	test   %edx,%edx
  23:	74 e6                	je     b <add_bev+0xb>
  25:	eb 35                	jmp    5c <add_bev+0x5c>
  27:	8b 15 00 00 00 00    	mov    0x0,%edx
  2d:	8d 5a 01             	lea    0x1(%edx),%ebx
  30:	89 1d 00 00 00 00    	mov    %ebx,0x0
  36:	85 d2                	test   %edx,%edx
  38:	75 22                	jne    5c <add_bev+0x5c>
  3a:	8b 15 00 00 00 00    	mov    0x0,%edx
  40:	83 fa 13             	cmp    $0x13,%edx
  43:	77 17                	ja     5c <add_bev+0x5c>
  45:	8d 5a 01             	lea    0x1(%edx),%ebx
  48:	89 1d 00 00 00 00    	mov    %ebx,0x0
  4e:	89 04 d5 00 00 00 00 	mov    %eax,0x0(,%edx,8)
  55:	89 0c d5 04 00 00 00 	mov    %ecx,0x4(,%edx,8)
  5c:	5b                   	pop    %ebx
  5d:	c3                   	ret    

Disassembly of section .text.build_usb_path:

00000000 <build_usb_path>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 c3                	mov    %eax,%ebx
   6:	8b 41 04             	mov    0x4(%ecx),%eax
   9:	85 c0                	test   %eax,%eax
   b:	74 2e                	je     3b <build_usb_path+0x3b>
   d:	89 d6                	mov    %edx,%esi
   f:	89 cd                	mov    %ecx,%ebp
  11:	8b 08                	mov    (%eax),%ecx
  13:	89 d8                	mov    %ebx,%eax
  15:	e8 e6 ff ff ff       	call   0 <build_usb_path>
  1a:	89 c7                	mov    %eax,%edi
  1c:	8b 45 04             	mov    0x4(%ebp),%eax
  1f:	e8 fc ff ff ff       	call   20 <build_usb_path+0x20>
  24:	50                   	push   %eax
  25:	68 00 00 00 00       	push   $0x0
  2a:	01 de                	add    %ebx,%esi
  2c:	29 fe                	sub    %edi,%esi
  2e:	56                   	push   %esi
  2f:	57                   	push   %edi
  30:	e8 fc ff ff ff       	call   31 <build_usb_path+0x31>
  35:	8d 1c 07             	lea    (%edi,%eax,1),%ebx
  38:	83 c4 10             	add    $0x10,%esp
  3b:	89 d8                	mov    %ebx,%eax
  3d:	5b                   	pop    %ebx
  3e:	5e                   	pop    %esi
  3f:	5f                   	pop    %edi
  40:	5d                   	pop    %ebp
  41:	c3                   	ret    

Disassembly of section .text.boot_lchs_find:

00000000 <boot_lchs_find>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	51                   	push   %ecx
   5:	89 c6                	mov    %eax,%esi
   7:	50                   	push   %eax
   8:	68 08 00 00 00       	push   $0x8
   d:	e8 fc ff ff ff       	call   e <boot_lchs_find+0xe>
  12:	a1 00 00 00 00       	mov    0x0,%eax
  17:	89 44 24 08          	mov    %eax,0x8(%esp)
  1b:	8b 1d 00 00 00 00    	mov    0x0,%ebx
  21:	5f                   	pop    %edi
  22:	5d                   	pop    %ebp
  23:	31 ff                	xor    %edi,%edi
  25:	39 3c 24             	cmp    %edi,(%esp)
  28:	7e 15                	jle    3f <boot_lchs_find+0x3f>
  2a:	89 dd                	mov    %ebx,%ebp
  2c:	8b 13                	mov    (%ebx),%edx
  2e:	89 f0                	mov    %esi,%eax
  30:	e8 fc ff ff ff       	call   31 <boot_lchs_find+0x31>
  35:	83 c3 10             	add    $0x10,%ebx
  38:	85 c0                	test   %eax,%eax
  3a:	75 05                	jne    41 <boot_lchs_find+0x41>
  3c:	47                   	inc    %edi
  3d:	eb e6                	jmp    25 <boot_lchs_find+0x25>
  3f:	31 ed                	xor    %ebp,%ebp
  41:	89 e8                	mov    %ebp,%eax
  43:	5a                   	pop    %edx
  44:	5b                   	pop    %ebx
  45:	5e                   	pop    %esi
  46:	5f                   	pop    %edi
  47:	5d                   	pop    %ebp
  48:	c3                   	ret    

Disassembly of section .text.find_prio:

00000000 <find_prio>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 c6                	mov    %eax,%esi
   6:	50                   	push   %eax
   7:	68 29 00 00 00       	push   $0x29
   c:	e8 fc ff ff ff       	call   d <find_prio+0xd>
  11:	8b 3d 00 00 00 00    	mov    0x0,%edi
  17:	8b 2d 00 00 00 00    	mov    0x0,%ebp
  1d:	58                   	pop    %eax
  1e:	5a                   	pop    %edx
  1f:	31 db                	xor    %ebx,%ebx
  21:	39 df                	cmp    %ebx,%edi
  23:	7e 12                	jle    37 <find_prio+0x37>
  25:	8b 54 9d 00          	mov    0x0(%ebp,%ebx,4),%edx
  29:	89 f0                	mov    %esi,%eax
  2b:	e8 fc ff ff ff       	call   2c <find_prio+0x2c>
  30:	43                   	inc    %ebx
  31:	85 c0                	test   %eax,%eax
  33:	74 ec                	je     21 <find_prio+0x21>
  35:	eb 03                	jmp    3a <find_prio+0x3a>
  37:	83 cb ff             	or     $0xffffffff,%ebx
  3a:	89 d8                	mov    %ebx,%eax
  3c:	5b                   	pop    %ebx
  3d:	5e                   	pop    %esi
  3e:	5f                   	pop    %edi
  3f:	5d                   	pop    %ebp
  40:	c3                   	ret    

Disassembly of section .text.call_boot_entry:

00000000 <call_boot_entry>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	83 ec 28             	sub    $0x28,%esp
   5:	89 c3                	mov    %eax,%ebx
   7:	89 d6                	mov    %edx,%esi
   9:	0f b7 c0             	movzwl %ax,%eax
   c:	50                   	push   %eax
   d:	89 d8                	mov    %ebx,%eax
   f:	c1 e8 10             	shr    $0x10,%eax
  12:	50                   	push   %eax
  13:	68 46 00 00 00       	push   $0x46
  18:	e8 fc ff ff ff       	call   19 <call_boot_entry+0x19>
  1d:	b9 26 00 00 00       	mov    $0x26,%ecx
  22:	31 d2                	xor    %edx,%edx
  24:	8d 44 24 0e          	lea    0xe(%esp),%eax
  28:	e8 fc ff ff ff       	call   29 <call_boot_entry+0x29>
  2d:	66 c7 44 24 32 00 02 	movw   $0x200,0x32(%esp)
  34:	89 5c 24 2e          	mov    %ebx,0x2e(%esp)
  38:	89 f0                	mov    %esi,%eax
  3a:	88 44 24 22          	mov    %al,0x22(%esp)
  3e:	66 c7 44 24 2a 55 aa 	movw   $0xaa55,0x2a(%esp)
  45:	8d 44 24 0e          	lea    0xe(%esp),%eax
  49:	e8 fc ff ff ff       	call   4a <call_boot_entry+0x4a>
  4e:	83 c4 34             	add    $0x34,%esp
  51:	5b                   	pop    %ebx
  52:	5e                   	pop    %esi
  53:	c3                   	ret    

Disassembly of section .text.boot_disk:

00000000 <boot_disk>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	83 ec 28             	sub    $0x28,%esp
   5:	89 c3                	mov    %eax,%ebx
   7:	89 d6                	mov    %edx,%esi
   9:	b9 26 00 00 00       	mov    $0x26,%ecx
   e:	31 d2                	xor    %edx,%edx
  10:	8d 44 24 02          	lea    0x2(%esp),%eax
  14:	e8 fc ff ff ff       	call   15 <boot_disk+0x15>
  19:	66 c7 44 24 26 00 02 	movw   $0x200,0x26(%esp)
  20:	88 5c 24 16          	mov    %bl,0x16(%esp)
  24:	66 c7 44 24 04 c0 07 	movw   $0x7c0,0x4(%esp)
  2b:	66 c7 44 24 1e 01 02 	movw   $0x201,0x1e(%esp)
  32:	c6 44 24 1a 01       	movb   $0x1,0x1a(%esp)
  37:	ba 00 00 00 00       	mov    $0x0,%edx
  3c:	0f b7 d2             	movzwl %dx,%edx
  3f:	8d 44 24 02          	lea    0x2(%esp),%eax
  43:	e8 fc ff ff ff       	call   44 <boot_disk+0x44>
  48:	f6 44 24 26 01       	testb  $0x1,0x26(%esp)
  4d:	74 07                	je     56 <boot_disk+0x56>
  4f:	68 5e 00 00 00       	push   $0x5e
  54:	eb 14                	jmp    6a <boot_disk+0x6a>
  56:	85 f6                	test   %esi,%esi
  58:	74 18                	je     72 <boot_disk+0x72>
  5a:	66 81 3d fe 7d 00 00 	cmpw   $0xaa55,0x7dfe
  61:	55 aa 
  63:	74 0d                	je     72 <boot_disk+0x72>
  65:	68 8a 00 00 00       	push   $0x8a
  6a:	e8 fc ff ff ff       	call   6b <boot_disk+0x6b>
  6f:	58                   	pop    %eax
  70:	eb 20                	jmp    92 <boot_disk+0x92>
  72:	0f b6 db             	movzbl %bl,%ebx
  75:	b9 00 02 00 00       	mov    $0x200,%ecx
  7a:	ba 00 7c 00 00       	mov    $0x7c00,%edx
  7f:	89 d8                	mov    %ebx,%eax
  81:	e8 fc ff ff ff       	call   82 <boot_disk+0x82>
  86:	89 da                	mov    %ebx,%edx
  88:	b8 00 7c 00 00       	mov    $0x7c00,%eax
  8d:	e8 fc ff ff ff       	call   8e <boot_disk+0x8e>
  92:	83 c4 28             	add    $0x28,%esp
  95:	5b                   	pop    %ebx
  96:	5e                   	pop    %esi
  97:	c3                   	ret    

Disassembly of section .text.boot_fail:

00000000 <boot_fail>:
   0:	53                   	push   %ebx
   1:	a1 00 00 00 00       	mov    0x0,%eax
   6:	83 f8 ff             	cmp    $0xffffffff,%eax
   9:	75 0d                	jne    18 <boot_fail+0x18>
   b:	68 ad 00 00 00       	push   $0xad
  10:	e8 fc ff ff ff       	call   11 <boot_fail+0x11>
  15:	5b                   	pop    %ebx
  16:	eb 15                	jmp    2d <boot_fail+0x2d>
  18:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
  1d:	99                   	cltd   
  1e:	f7 f9                	idiv   %ecx
  20:	50                   	push   %eax
  21:	68 c2 00 00 00       	push   $0xc2
  26:	e8 fc ff ff ff       	call   27 <boot_fail+0x27>
  2b:	5a                   	pop    %edx
  2c:	59                   	pop    %ecx
  2d:	a1 00 00 00 00       	mov    0x0,%eax
  32:	e8 fc ff ff ff       	call   33 <boot_fail+0x33>
  37:	89 c3                	mov    %eax,%ebx
  39:	83 3d 00 00 00 00 ff 	cmpl   $0xffffffff,0x0
  40:	75 07                	jne    49 <boot_fail+0x49>
  42:	e8 fc ff ff ff       	call   43 <boot_fail+0x43>
  47:	eb f0                	jmp    39 <boot_fail+0x39>
  49:	89 d8                	mov    %ebx,%eax
  4b:	e8 fc ff ff ff       	call   4c <boot_fail+0x4c>
  50:	85 c0                	test   %eax,%eax
  52:	74 ee                	je     42 <boot_fail+0x42>
  54:	68 f0 00 00 00       	push   $0xf0
  59:	e8 fc ff ff ff       	call   5a <boot_fail+0x5a>
  5e:	58                   	pop    %eax
  5f:	5b                   	pop    %ebx
  60:	e9 fc ff ff ff       	jmp    61 <boot_fail+0x61>

Disassembly of section .text.do_boot:

00000000 <do_boot>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	83 ec 2c             	sub    $0x2c,%esp
   6:	89 c3                	mov    %eax,%ebx
   8:	39 05 00 00 00 00    	cmp    %eax,0x0
   e:	7f 05                	jg     15 <do_boot+0x15>
  10:	e8 fc ff ff ff       	call   11 <do_boot+0x11>
  15:	8b 04 dd 00 00 00 00 	mov    0x0(,%ebx,8),%eax
  1c:	83 f8 04             	cmp    $0x4,%eax
  1f:	74 66                	je     87 <do_boot+0x87>
  21:	7f 25                	jg     48 <do_boot+0x48>
  23:	83 f8 02             	cmp    $0x2,%eax
  26:	74 40                	je     68 <do_boot+0x68>
  28:	83 f8 03             	cmp    $0x3,%eax
  2b:	74 61                	je     8e <do_boot+0x8e>
  2d:	48                   	dec    %eax
  2e:	0f 85 eb 00 00 00    	jne    11f <do_boot+0x11f>
  34:	68 fc 00 00 00       	push   $0xfc
  39:	e8 fc ff ff ff       	call   3a <do_boot+0x3a>
  3e:	8b 15 00 00 00 00    	mov    0x0,%edx
  44:	31 c0                	xor    %eax,%eax
  46:	eb 34                	jmp    7c <do_boot+0x7c>
  48:	3d 80 00 00 00       	cmp    $0x80,%eax
  4d:	0f 84 a8 00 00 00    	je     fb <do_boot+0xfb>
  53:	3d f0 00 00 00       	cmp    $0xf0,%eax
  58:	0f 85 c1 00 00 00    	jne    11f <do_boot+0x11f>
  5e:	e8 fc ff ff ff       	call   5f <do_boot+0x5f>
  63:	e9 b7 00 00 00       	jmp    11f <do_boot+0x11f>
  68:	68 14 01 00 00       	push   $0x114
  6d:	e8 fc ff ff ff       	call   6e <do_boot+0x6e>
  72:	ba 01 00 00 00       	mov    $0x1,%edx
  77:	b8 80 00 00 00       	mov    $0x80,%eax
  7c:	e8 fc ff ff ff       	call   7d <do_boot+0x7d>
  81:	5b                   	pop    %ebx
  82:	e9 98 00 00 00       	jmp    11f <do_boot+0x11f>
  87:	68 2f 01 00 00       	push   $0x12f
  8c:	eb df                	jmp    6d <do_boot+0x6d>
  8e:	8b 04 dd 04 00 00 00 	mov    0x4(,%ebx,8),%eax
  95:	89 04 24             	mov    %eax,(%esp)
  98:	68 4b 01 00 00       	push   $0x14b
  9d:	e8 fc ff ff ff       	call   9e <do_boot+0x9e>
  a2:	8b 44 24 04          	mov    0x4(%esp),%eax
  a6:	e8 fc ff ff ff       	call   a7 <do_boot+0xa7>
  ab:	59                   	pop    %ecx
  ac:	85 c0                	test   %eax,%eax
  ae:	74 0f                	je     bf <do_boot+0xbf>
  b0:	50                   	push   %eax
  b1:	68 63 01 00 00       	push   $0x163
  b6:	e8 fc ff ff ff       	call   b7 <do_boot+0xb7>
  bb:	58                   	pop    %eax
  bc:	5a                   	pop    %edx
  bd:	eb 60                	jmp    11f <do_boot+0x11f>
  bf:	0f b7 1d 0c 00 00 00 	movzwl 0xc,%ebx
  c6:	89 df                	mov    %ebx,%edi
  c8:	c1 e3 04             	shl    $0x4,%ebx
  cb:	0f b6 35 02 00 00 00 	movzbl 0x2,%esi
  d2:	b9 00 02 00 00       	mov    $0x200,%ecx
  d7:	89 da                	mov    %ebx,%edx
  d9:	89 f0                	mov    %esi,%eax
  db:	e8 fc ff ff ff       	call   dc <do_boot+0xdc>
  e0:	81 e7 00 f0 00 00    	and    $0xf000,%edi
  e6:	c1 e7 10             	shl    $0x10,%edi
  e9:	89 d8                	mov    %ebx,%eax
  eb:	25 f0 ff 00 00       	and    $0xfff0,%eax
  f0:	09 f8                	or     %edi,%eax
  f2:	89 f2                	mov    %esi,%edx
  f4:	e8 fc ff ff ff       	call   f5 <do_boot+0xf5>
  f9:	eb 24                	jmp    11f <do_boot+0x11f>
  fb:	8b 04 dd 04 00 00 00 	mov    0x4(,%ebx,8),%eax
 102:	89 04 24             	mov    %eax,(%esp)
 105:	68 97 01 00 00       	push   $0x197
 10a:	e8 fc ff ff ff       	call   10b <do_boot+0x10b>
 10f:	31 d2                	xor    %edx,%edx
 111:	8b 44 24 04          	mov    0x4(%esp),%eax
 115:	e8 fc ff ff ff       	call   116 <do_boot+0x116>
 11a:	e9 62 ff ff ff       	jmp    81 <do_boot+0x81>
 11f:	b9 26 00 00 00       	mov    $0x26,%ecx
 124:	31 d2                	xor    %edx,%edx
 126:	8d 44 24 06          	lea    0x6(%esp),%eax
 12a:	e8 fc ff ff ff       	call   12b <do_boot+0x12b>
 12f:	66 c7 44 24 2a 00 02 	movw   $0x200,0x2a(%esp)
 136:	ba 00 00 00 00       	mov    $0x0,%edx
 13b:	0f b7 d2             	movzwl %dx,%edx
 13e:	8d 44 24 06          	lea    0x6(%esp),%eax
 142:	e8 fc ff ff ff       	call   143 <do_boot+0x143>
 147:	83 c4 2c             	add    $0x2c,%esp
 14a:	5b                   	pop    %ebx
 14b:	5e                   	pop    %esi
 14c:	5f                   	pop    %edi
 14d:	c3                   	ret    

Disassembly of section .text.build_pci_path.constprop.0:

00000000 <build_pci_path.constprop.0>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	53                   	push   %ebx
   5:	89 c6                	mov    %eax,%esi
   7:	89 d7                	mov    %edx,%edi
   9:	89 cd                	mov    %ecx,%ebp
   b:	8b 49 0c             	mov    0xc(%ecx),%ecx
   e:	85 c9                	test   %ecx,%ecx
  10:	74 0e                	je     20 <build_pci_path.constprop.0+0x20>
  12:	ba ac 01 00 00       	mov    $0x1ac,%edx
  17:	e8 e4 ff ff ff       	call   0 <build_pci_path.constprop.0>
  1c:	89 c3                	mov    %eax,%ebx
  1e:	eb 3c                	jmp    5c <build_pci_path.constprop.0+0x5c>
  20:	68 b7 01 00 00       	push   $0x1b7
  25:	68 c2 01 00 00       	push   $0x1c2
  2a:	68 00 01 00 00       	push   $0x100
  2f:	50                   	push   %eax
  30:	e8 fc ff ff ff       	call   31 <build_pci_path.constprop.0+0x31>
  35:	8d 1c 06             	lea    (%esi,%eax,1),%ebx
  38:	0f b6 55 02          	movzbl 0x2(%ebp),%edx
  3c:	83 c4 10             	add    $0x10,%esp
  3f:	84 d2                	test   %dl,%dl
  41:	74 19                	je     5c <build_pci_path.constprop.0+0x5c>
  43:	52                   	push   %edx
  44:	68 c5 01 00 00       	push   $0x1c5
  49:	ba 00 01 00 00       	mov    $0x100,%edx
  4e:	29 c2                	sub    %eax,%edx
  50:	52                   	push   %edx
  51:	53                   	push   %ebx
  52:	e8 fc ff ff ff       	call   53 <build_pci_path.constprop.0+0x53>
  57:	01 c3                	add    %eax,%ebx
  59:	83 c4 10             	add    $0x10,%esp
  5c:	8b 45 00             	mov    0x0(%ebp),%eax
  5f:	88 c2                	mov    %al,%dl
  61:	83 e2 07             	and    $0x7,%edx
  64:	88 54 24 03          	mov    %dl,0x3(%esp)
  68:	81 c6 00 01 00 00    	add    $0x100,%esi
  6e:	c0 e8 03             	shr    $0x3,%al
  71:	0f b6 c0             	movzbl %al,%eax
  74:	50                   	push   %eax
  75:	57                   	push   %edi
  76:	68 c9 01 00 00       	push   $0x1c9
  7b:	89 f0                	mov    %esi,%eax
  7d:	29 d8                	sub    %ebx,%eax
  7f:	50                   	push   %eax
  80:	53                   	push   %ebx
  81:	e8 fc ff ff ff       	call   82 <build_pci_path.constprop.0+0x82>
  86:	01 c3                	add    %eax,%ebx
  88:	83 c4 14             	add    $0x14,%esp
  8b:	0f b6 54 24 03       	movzbl 0x3(%esp),%edx
  90:	84 d2                	test   %dl,%dl
  92:	74 14                	je     a8 <build_pci_path.constprop.0+0xa8>
  94:	52                   	push   %edx
  95:	68 c5 01 00 00       	push   $0x1c5
  9a:	29 de                	sub    %ebx,%esi
  9c:	56                   	push   %esi
  9d:	53                   	push   %ebx
  9e:	e8 fc ff ff ff       	call   9f <build_pci_path.constprop.0+0x9f>
  a3:	01 c3                	add    %eax,%ebx
  a5:	83 c4 10             	add    $0x10,%esp
  a8:	89 d8                	mov    %ebx,%eax
  aa:	5a                   	pop    %edx
  ab:	5b                   	pop    %ebx
  ac:	5e                   	pop    %esi
  ad:	5f                   	pop    %edi
  ae:	5d                   	pop    %ebp
  af:	c3                   	ret    

Disassembly of section .text.bootentry_add:

00000000 <bootentry_add>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	53                   	push   %ebx
   5:	89 c6                	mov    %eax,%esi
   7:	89 d7                	mov    %edx,%edi
   9:	89 cd                	mov    %ecx,%ebp
   b:	8b 5c 24 18          	mov    0x18(%esp),%ebx
   f:	b9 10 00 00 00       	mov    $0x10,%ecx
  14:	ba 18 00 00 00       	mov    $0x18,%edx
  19:	b8 00 00 00 00       	mov    $0x0,%eax
  1e:	e8 fc ff ff ff       	call   1f <bootentry_add+0x1f>
  23:	85 c0                	test   %eax,%eax
  25:	75 2c                	jne    53 <bootentry_add+0x53>
  27:	b9 10 00 00 00       	mov    $0x10,%ecx
  2c:	ba 18 00 00 00       	mov    $0x18,%edx
  31:	b8 00 00 00 00       	mov    $0x0,%eax
  36:	e8 fc ff ff ff       	call   37 <bootentry_add+0x37>
  3b:	85 c0                	test   %eax,%eax
  3d:	75 14                	jne    53 <bootentry_add+0x53>
  3f:	ba 00 00 00 00       	mov    $0x0,%edx
  44:	b8 14 02 00 00       	mov    $0x214,%eax
  49:	59                   	pop    %ecx
  4a:	5b                   	pop    %ebx
  4b:	5e                   	pop    %esi
  4c:	5f                   	pop    %edi
  4d:	5d                   	pop    %ebp
  4e:	e9 fc ff ff ff       	jmp    4f <bootentry_add+0x4f>
  53:	89 30                	mov    %esi,(%eax)
  55:	89 78 08             	mov    %edi,0x8(%eax)
  58:	89 68 04             	mov    %ebp,0x4(%eax)
  5b:	85 db                	test   %ebx,%ebx
  5d:	75 05                	jne    64 <bootentry_add+0x64>
  5f:	bb d0 01 00 00       	mov    $0x1d0,%ebx
  64:	89 58 0c             	mov    %ebx,0xc(%eax)
  67:	89 04 24             	mov    %eax,(%esp)
  6a:	55                   	push   %ebp
  6b:	57                   	push   %edi
  6c:	56                   	push   %esi
  6d:	53                   	push   %ebx
  6e:	68 d2 01 00 00       	push   $0x1d2
  73:	e8 fc ff ff ff       	call   74 <bootentry_add+0x74>
  78:	8b 15 00 00 00 00    	mov    0x0,%edx
  7e:	83 c4 14             	add    $0x14,%esp
  81:	bd 00 00 00 00       	mov    $0x0,%ebp
  86:	8b 04 24             	mov    (%esp),%eax
  89:	85 d2                	test   %edx,%edx
  8b:	74 34                	je     c1 <bootentry_add+0xc1>
  8d:	8b 7a f8             	mov    -0x8(%edx),%edi
  90:	39 78 08             	cmp    %edi,0x8(%eax)
  93:	7c 2c                	jl     c1 <bootentry_add+0xc1>
  95:	7f 24                	jg     bb <bootentry_add+0xbb>
  97:	8b 18                	mov    (%eax),%ebx
  99:	3b 5a f0             	cmp    -0x10(%edx),%ebx
  9c:	7c 23                	jl     c1 <bootentry_add+0xc1>
  9e:	75 1b                	jne    bb <bootentry_add+0xbb>
  a0:	83 fb 03             	cmp    $0x3,%ebx
  a3:	7f 16                	jg     bb <bootentry_add+0xbb>
  a5:	8b 70 04             	mov    0x4(%eax),%esi
  a8:	8b 5a f4             	mov    -0xc(%edx),%ebx
  ab:	8a 0b                	mov    (%ebx),%cl
  ad:	38 0e                	cmp    %cl,(%esi)
  af:	72 10                	jb     c1 <bootentry_add+0xc1>
  b1:	75 08                	jne    bb <bootentry_add+0xbb>
  b3:	8b 7b 14             	mov    0x14(%ebx),%edi
  b6:	39 7e 14             	cmp    %edi,0x14(%esi)
  b9:	72 06                	jb     c1 <bootentry_add+0xc1>
  bb:	89 d5                	mov    %edx,%ebp
  bd:	8b 12                	mov    (%edx),%edx
  bf:	eb c8                	jmp    89 <bootentry_add+0x89>
  c1:	8d 58 10             	lea    0x10(%eax),%ebx
  c4:	89 68 14             	mov    %ebp,0x14(%eax)
  c7:	89 50 10             	mov    %edx,0x10(%eax)
  ca:	85 d2                	test   %edx,%edx
  cc:	74 03                	je     d1 <bootentry_add+0xd1>
  ce:	89 5a 04             	mov    %ebx,0x4(%edx)
  d1:	89 5d 00             	mov    %ebx,0x0(%ebp)
  d4:	58                   	pop    %eax
  d5:	5b                   	pop    %ebx
  d6:	5e                   	pop    %esi
  d7:	5f                   	pop    %edi
  d8:	5d                   	pop    %ebp
  d9:	c3                   	ret    

Disassembly of section .text.boot_lchs_find_pci_device:

00000000 <boot_lchs_find_pci_device>:
   0:	53                   	push   %ebx
   1:	81 ec 00 01 00 00    	sub    $0x100,%esp
   7:	89 c1                	mov    %eax,%ecx
   9:	89 d3                	mov    %edx,%ebx
   b:	ba 06 02 00 00       	mov    $0x206,%edx
  10:	89 e0                	mov    %esp,%eax
  12:	e8 fc ff ff ff       	call   13 <boot_lchs_find_pci_device+0x13>
  17:	89 e0                	mov    %esp,%eax
  19:	e8 fc ff ff ff       	call   1a <boot_lchs_find_pci_device+0x1a>
  1e:	85 c0                	test   %eax,%eax
  20:	74 18                	je     3a <boot_lchs_find_pci_device+0x3a>
  22:	8b 50 04             	mov    0x4(%eax),%edx
  25:	66 89 53 02          	mov    %dx,0x2(%ebx)
  29:	8b 50 08             	mov    0x8(%eax),%edx
  2c:	66 89 13             	mov    %dx,(%ebx)
  2f:	8b 40 0c             	mov    0xc(%eax),%eax
  32:	66 89 43 04          	mov    %ax,0x4(%ebx)
  36:	31 c0                	xor    %eax,%eax
  38:	eb 03                	jmp    3d <boot_lchs_find_pci_device+0x3d>
  3a:	83 c8 ff             	or     $0xffffffff,%eax
  3d:	81 c4 00 01 00 00    	add    $0x100,%esp
  43:	5b                   	pop    %ebx
  44:	c3                   	ret    

Disassembly of section .text.boot_lchs_find_scsi_device:

00000000 <boot_lchs_find_scsi_device>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	81 ec 00 01 00 00    	sub    $0x100,%esp
   9:	8b 9c 24 10 01 00 00 	mov    0x110(%esp),%ebx
  10:	85 c0                	test   %eax,%eax
  12:	75 05                	jne    19 <boot_lchs_find_scsi_device+0x19>
  14:	83 c8 ff             	or     $0xffffffff,%eax
  17:	eb 4f                	jmp    68 <boot_lchs_find_scsi_device+0x68>
  19:	89 d6                	mov    %edx,%esi
  1b:	89 cf                	mov    %ecx,%edi
  1d:	89 c1                	mov    %eax,%ecx
  1f:	ba 06 02 00 00       	mov    $0x206,%edx
  24:	89 e0                	mov    %esp,%eax
  26:	e8 fc ff ff ff       	call   27 <boot_lchs_find_scsi_device+0x27>
  2b:	57                   	push   %edi
  2c:	56                   	push   %esi
  2d:	68 08 02 00 00       	push   $0x208
  32:	8d 94 24 0c 01 00 00 	lea    0x10c(%esp),%edx
  39:	29 c2                	sub    %eax,%edx
  3b:	52                   	push   %edx
  3c:	50                   	push   %eax
  3d:	e8 fc ff ff ff       	call   3e <boot_lchs_find_scsi_device+0x3e>
  42:	8d 44 24 14          	lea    0x14(%esp),%eax
  46:	e8 fc ff ff ff       	call   47 <boot_lchs_find_scsi_device+0x47>
  4b:	83 c4 14             	add    $0x14,%esp
  4e:	85 c0                	test   %eax,%eax
  50:	74 c2                	je     14 <boot_lchs_find_scsi_device+0x14>
  52:	8b 50 04             	mov    0x4(%eax),%edx
  55:	66 89 53 02          	mov    %dx,0x2(%ebx)
  59:	8b 50 08             	mov    0x8(%eax),%edx
  5c:	66 89 13             	mov    %dx,(%ebx)
  5f:	8b 40 0c             	mov    0xc(%eax),%eax
  62:	66 89 43 04          	mov    %ax,0x4(%ebx)
  66:	31 c0                	xor    %eax,%eax
  68:	81 c4 00 01 00 00    	add    $0x100,%esp
  6e:	5b                   	pop    %ebx
  6f:	5e                   	pop    %esi
  70:	5f                   	pop    %edi
  71:	c3                   	ret    

Disassembly of section .text.boot_lchs_find_ata_device:

00000000 <boot_lchs_find_ata_device>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	81 ec 00 01 00 00    	sub    $0x100,%esp
   9:	8b 9c 24 10 01 00 00 	mov    0x110(%esp),%ebx
  10:	85 c0                	test   %eax,%eax
  12:	75 05                	jne    19 <boot_lchs_find_ata_device+0x19>
  14:	83 c8 ff             	or     $0xffffffff,%eax
  17:	eb 4f                	jmp    68 <boot_lchs_find_ata_device+0x68>
  19:	89 d6                	mov    %edx,%esi
  1b:	89 cf                	mov    %ecx,%edi
  1d:	89 c1                	mov    %eax,%ecx
  1f:	ba 06 02 00 00       	mov    $0x206,%edx
  24:	89 e0                	mov    %esp,%eax
  26:	e8 fc ff ff ff       	call   27 <boot_lchs_find_ata_device+0x27>
  2b:	57                   	push   %edi
  2c:	56                   	push   %esi
  2d:	68 15 02 00 00       	push   $0x215
  32:	8d 94 24 0c 01 00 00 	lea    0x10c(%esp),%edx
  39:	29 c2                	sub    %eax,%edx
  3b:	52                   	push   %edx
  3c:	50                   	push   %eax
  3d:	e8 fc ff ff ff       	call   3e <boot_lchs_find_ata_device+0x3e>
  42:	8d 44 24 14          	lea    0x14(%esp),%eax
  46:	e8 fc ff ff ff       	call   47 <boot_lchs_find_ata_device+0x47>
  4b:	83 c4 14             	add    $0x14,%esp
  4e:	85 c0                	test   %eax,%eax
  50:	74 c2                	je     14 <boot_lchs_find_ata_device+0x14>
  52:	8b 50 04             	mov    0x4(%eax),%edx
  55:	66 89 53 02          	mov    %dx,0x2(%ebx)
  59:	8b 50 08             	mov    0x8(%eax),%edx
  5c:	66 89 13             	mov    %dx,(%ebx)
  5f:	8b 40 0c             	mov    0xc(%eax),%eax
  62:	66 89 43 04          	mov    %ax,0x4(%ebx)
  66:	31 c0                	xor    %eax,%eax
  68:	81 c4 00 01 00 00    	add    $0x100,%esp
  6e:	5b                   	pop    %ebx
  6f:	5e                   	pop    %esi
  70:	5f                   	pop    %edi
  71:	c3                   	ret    

Disassembly of section .text.is_bootprio_strict:

00000000 <is_bootprio_strict>:
   0:	83 3d 00 00 00 00 fe 	cmpl   $0xfffffffe,0x0
   7:	75 0f                	jne    18 <is_bootprio_strict+0x18>
   9:	b8 27 02 00 00       	mov    $0x227,%eax
   e:	e8 fc ff ff ff       	call   f <is_bootprio_strict+0xf>
  13:	a3 00 00 00 00       	mov    %eax,0x0
  18:	a1 00 00 00 00       	mov    0x0,%eax
  1d:	f7 d0                	not    %eax
  1f:	c1 e8 1f             	shr    $0x1f,%eax
  22:	c3                   	ret    

Disassembly of section .text.bootprio_find_pci_device:

00000000 <bootprio_find_pci_device>:
   0:	81 ec 00 01 00 00    	sub    $0x100,%esp
   6:	89 c1                	mov    %eax,%ecx
   8:	ba 06 02 00 00       	mov    $0x206,%edx
   d:	89 e0                	mov    %esp,%eax
   f:	e8 fc ff ff ff       	call   10 <bootprio_find_pci_device+0x10>
  14:	89 e0                	mov    %esp,%eax
  16:	e8 fc ff ff ff       	call   17 <bootprio_find_pci_device+0x17>
  1b:	81 c4 00 01 00 00    	add    $0x100,%esp
  21:	c3                   	ret    

Disassembly of section .text.bootprio_find_mmio_device:

00000000 <bootprio_find_mmio_device>:
   0:	53                   	push   %ebx
   1:	81 ec 00 01 00 00    	sub    $0x100,%esp
   7:	50                   	push   %eax
   8:	68 2c 02 00 00       	push   $0x22c
   d:	68 00 01 00 00       	push   $0x100
  12:	8d 5c 24 0c          	lea    0xc(%esp),%ebx
  16:	53                   	push   %ebx
  17:	e8 fc ff ff ff       	call   18 <bootprio_find_mmio_device+0x18>
  1c:	89 d8                	mov    %ebx,%eax
  1e:	e8 fc ff ff ff       	call   1f <bootprio_find_mmio_device+0x1f>
  23:	81 c4 10 01 00 00    	add    $0x110,%esp
  29:	5b                   	pop    %ebx
  2a:	c3                   	ret    

Disassembly of section .text.bootprio_find_scsi_device:

00000000 <bootprio_find_scsi_device>:
   0:	85 c0                	test   %eax,%eax
   2:	74 43                	je     47 <bootprio_find_scsi_device+0x47>
   4:	56                   	push   %esi
   5:	53                   	push   %ebx
   6:	81 ec 00 01 00 00    	sub    $0x100,%esp
   c:	89 d3                	mov    %edx,%ebx
   e:	89 ce                	mov    %ecx,%esi
  10:	89 c1                	mov    %eax,%ecx
  12:	ba 06 02 00 00       	mov    $0x206,%edx
  17:	89 e0                	mov    %esp,%eax
  19:	e8 fc ff ff ff       	call   1a <bootprio_find_scsi_device+0x1a>
  1e:	56                   	push   %esi
  1f:	53                   	push   %ebx
  20:	68 08 02 00 00       	push   $0x208
  25:	8d 94 24 0c 01 00 00 	lea    0x10c(%esp),%edx
  2c:	29 c2                	sub    %eax,%edx
  2e:	52                   	push   %edx
  2f:	50                   	push   %eax
  30:	e8 fc ff ff ff       	call   31 <bootprio_find_scsi_device+0x31>
  35:	8d 44 24 14          	lea    0x14(%esp),%eax
  39:	e8 fc ff ff ff       	call   3a <bootprio_find_scsi_device+0x3a>
  3e:	81 c4 14 01 00 00    	add    $0x114,%esp
  44:	5b                   	pop    %ebx
  45:	5e                   	pop    %esi
  46:	c3                   	ret    
  47:	83 c8 ff             	or     $0xffffffff,%eax
  4a:	c3                   	ret    

Disassembly of section .text.bootprio_find_scsi_mmio_device:

00000000 <bootprio_find_scsi_mmio_device>:
   0:	53                   	push   %ebx
   1:	81 ec 00 01 00 00    	sub    $0x100,%esp
   7:	51                   	push   %ecx
   8:	52                   	push   %edx
   9:	50                   	push   %eax
   a:	68 41 02 00 00       	push   $0x241
   f:	68 00 01 00 00       	push   $0x100
  14:	8d 5c 24 14          	lea    0x14(%esp),%ebx
  18:	53                   	push   %ebx
  19:	e8 fc ff ff ff       	call   1a <bootprio_find_scsi_mmio_device+0x1a>
  1e:	89 d8                	mov    %ebx,%eax
  20:	e8 fc ff ff ff       	call   21 <bootprio_find_scsi_mmio_device+0x21>
  25:	81 c4 18 01 00 00    	add    $0x118,%esp
  2b:	5b                   	pop    %ebx
  2c:	c3                   	ret    

Disassembly of section .text.bootprio_find_ata_device:

00000000 <bootprio_find_ata_device>:
   0:	85 c0                	test   %eax,%eax
   2:	74 43                	je     47 <bootprio_find_ata_device+0x47>
   4:	56                   	push   %esi
   5:	53                   	push   %ebx
   6:	81 ec 00 01 00 00    	sub    $0x100,%esp
   c:	89 d3                	mov    %edx,%ebx
   e:	89 ce                	mov    %ecx,%esi
  10:	89 c1                	mov    %eax,%ecx
  12:	ba 06 02 00 00       	mov    $0x206,%edx
  17:	89 e0                	mov    %esp,%eax
  19:	e8 fc ff ff ff       	call   1a <bootprio_find_ata_device+0x1a>
  1e:	56                   	push   %esi
  1f:	53                   	push   %ebx
  20:	68 15 02 00 00       	push   $0x215
  25:	8d 94 24 0c 01 00 00 	lea    0x10c(%esp),%edx
  2c:	29 c2                	sub    %eax,%edx
  2e:	52                   	push   %edx
  2f:	50                   	push   %eax
  30:	e8 fc ff ff ff       	call   31 <bootprio_find_ata_device+0x31>
  35:	8d 44 24 14          	lea    0x14(%esp),%eax
  39:	e8 fc ff ff ff       	call   3a <bootprio_find_ata_device+0x3a>
  3e:	81 c4 14 01 00 00    	add    $0x114,%esp
  44:	5b                   	pop    %ebx
  45:	5e                   	pop    %esi
  46:	c3                   	ret    
  47:	83 c8 ff             	or     $0xffffffff,%eax
  4a:	c3                   	ret    

Disassembly of section .text.bootprio_find_fdc_device:

00000000 <bootprio_find_fdc_device>:
   0:	85 c0                	test   %eax,%eax
   2:	74 43                	je     47 <bootprio_find_fdc_device+0x47>
   4:	56                   	push   %esi
   5:	53                   	push   %ebx
   6:	81 ec 00 01 00 00    	sub    $0x100,%esp
   c:	89 d3                	mov    %edx,%ebx
   e:	89 ce                	mov    %ecx,%esi
  10:	89 c1                	mov    %eax,%ecx
  12:	ba 60 02 00 00       	mov    $0x260,%edx
  17:	89 e0                	mov    %esp,%eax
  19:	e8 fc ff ff ff       	call   1a <bootprio_find_fdc_device+0x1a>
  1e:	56                   	push   %esi
  1f:	53                   	push   %ebx
  20:	68 64 02 00 00       	push   $0x264
  25:	8d 94 24 0c 01 00 00 	lea    0x10c(%esp),%edx
  2c:	29 c2                	sub    %eax,%edx
  2e:	52                   	push   %edx
  2f:	50                   	push   %eax
  30:	e8 fc ff ff ff       	call   31 <bootprio_find_fdc_device+0x31>
  35:	8d 44 24 14          	lea    0x14(%esp),%eax
  39:	e8 fc ff ff ff       	call   3a <bootprio_find_fdc_device+0x3a>
  3e:	81 c4 14 01 00 00    	add    $0x114,%esp
  44:	5b                   	pop    %ebx
  45:	5e                   	pop    %esi
  46:	c3                   	ret    
  47:	83 c8 ff             	or     $0xffffffff,%eax
  4a:	c3                   	ret    

Disassembly of section .text.bootprio_find_pci_rom:

00000000 <bootprio_find_pci_rom>:
   0:	53                   	push   %ebx
   1:	81 ec 00 01 00 00    	sub    $0x100,%esp
   7:	89 c1                	mov    %eax,%ecx
   9:	89 d3                	mov    %edx,%ebx
   b:	ba 06 02 00 00       	mov    $0x206,%edx
  10:	89 e0                	mov    %esp,%eax
  12:	e8 fc ff ff ff       	call   13 <bootprio_find_pci_rom+0x13>
  17:	85 db                	test   %ebx,%ebx
  19:	74 19                	je     34 <bootprio_find_pci_rom+0x34>
  1b:	53                   	push   %ebx
  1c:	68 78 02 00 00       	push   $0x278
  21:	8d 94 24 08 01 00 00 	lea    0x108(%esp),%edx
  28:	29 c2                	sub    %eax,%edx
  2a:	52                   	push   %edx
  2b:	50                   	push   %eax
  2c:	e8 fc ff ff ff       	call   2d <bootprio_find_pci_rom+0x2d>
  31:	83 c4 10             	add    $0x10,%esp
  34:	89 e0                	mov    %esp,%eax
  36:	e8 fc ff ff ff       	call   37 <bootprio_find_pci_rom+0x37>
  3b:	81 c4 00 01 00 00    	add    $0x100,%esp
  41:	5b                   	pop    %ebx
  42:	c3                   	ret    

Disassembly of section .text.bootprio_find_named_rom:

00000000 <bootprio_find_named_rom>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	81 ec 00 01 00 00    	sub    $0x100,%esp
   8:	89 d6                	mov    %edx,%esi
   a:	50                   	push   %eax
   b:	68 7f 02 00 00       	push   $0x27f
  10:	68 00 01 00 00       	push   $0x100
  15:	8d 5c 24 0c          	lea    0xc(%esp),%ebx
  19:	53                   	push   %ebx
  1a:	e8 fc ff ff ff       	call   1b <bootprio_find_named_rom+0x1b>
  1f:	89 dc                	mov    %ebx,%esp
  21:	85 f6                	test   %esi,%esi
  23:	74 1a                	je     3f <bootprio_find_named_rom+0x3f>
  25:	01 d8                	add    %ebx,%eax
  27:	56                   	push   %esi
  28:	68 78 02 00 00       	push   $0x278
  2d:	8d 94 24 08 01 00 00 	lea    0x108(%esp),%edx
  34:	29 c2                	sub    %eax,%edx
  36:	52                   	push   %edx
  37:	50                   	push   %eax
  38:	e8 fc ff ff ff       	call   39 <bootprio_find_named_rom+0x39>
  3d:	89 dc                	mov    %ebx,%esp
  3f:	89 d8                	mov    %ebx,%eax
  41:	e8 fc ff ff ff       	call   42 <bootprio_find_named_rom+0x42>
  46:	81 c4 00 01 00 00    	add    $0x100,%esp
  4c:	5b                   	pop    %ebx
  4d:	5e                   	pop    %esi
  4e:	c3                   	ret    

Disassembly of section .text.bootprio_find_usb:

00000000 <bootprio_find_usb>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	81 ec 00 01 00 00    	sub    $0x100,%esp
   a:	89 c3                	mov    %eax,%ebx
   c:	89 d7                	mov    %edx,%edi
   e:	8b 00                	mov    (%eax),%eax
  10:	8b 40 08             	mov    0x8(%eax),%eax
  13:	8b 48 08             	mov    0x8(%eax),%ecx
  16:	85 c9                	test   %ecx,%ecx
  18:	74 0e                	je     28 <bootprio_find_usb+0x28>
  1a:	ba 87 02 00 00       	mov    $0x287,%edx
  1f:	89 e0                	mov    %esp,%eax
  21:	e8 fc ff ff ff       	call   22 <bootprio_find_usb+0x22>
  26:	eb 23                	jmp    4b <bootprio_find_usb+0x4b>
  28:	8b 50 0c             	mov    0xc(%eax),%edx
  2b:	83 c8 ff             	or     $0xffffffff,%eax
  2e:	85 d2                	test   %edx,%edx
  30:	74 79                	je     ab <bootprio_find_usb+0xab>
  32:	52                   	push   %edx
  33:	68 8b 02 00 00       	push   $0x28b
  38:	68 00 01 00 00       	push   $0x100
  3d:	8d 74 24 0c          	lea    0xc(%esp),%esi
  41:	56                   	push   %esi
  42:	e8 fc ff ff ff       	call   43 <bootprio_find_usb+0x43>
  47:	01 f0                	add    %esi,%eax
  49:	89 f4                	mov    %esi,%esp
  4b:	8d 94 24 00 01 00 00 	lea    0x100(%esp),%edx
  52:	29 c2                	sub    %eax,%edx
  54:	8b 0b                	mov    (%ebx),%ecx
  56:	e8 fc ff ff ff       	call   57 <bootprio_find_usb+0x57>
  5b:	89 c6                	mov    %eax,%esi
  5d:	89 d8                	mov    %ebx,%eax
  5f:	e8 fc ff ff ff       	call   60 <bootprio_find_usb+0x60>
  64:	8d ac 24 00 01 00 00 	lea    0x100(%esp),%ebp
  6b:	29 f5                	sub    %esi,%ebp
  6d:	57                   	push   %edi
  6e:	50                   	push   %eax
  6f:	68 94 02 00 00       	push   $0x294
  74:	55                   	push   %ebp
  75:	56                   	push   %esi
  76:	e8 fc ff ff ff       	call   77 <bootprio_find_usb+0x77>
  7b:	8d 44 24 14          	lea    0x14(%esp),%eax
  7f:	e8 fc ff ff ff       	call   80 <bootprio_find_usb+0x80>
  84:	83 c4 14             	add    $0x14,%esp
  87:	85 c0                	test   %eax,%eax
  89:	79 20                	jns    ab <bootprio_find_usb+0xab>
  8b:	89 d8                	mov    %ebx,%eax
  8d:	e8 fc ff ff ff       	call   8e <bootprio_find_usb+0x8e>
  92:	50                   	push   %eax
  93:	68 ab 02 00 00       	push   $0x2ab
  98:	55                   	push   %ebp
  99:	56                   	push   %esi
  9a:	e8 fc ff ff ff       	call   9b <bootprio_find_usb+0x9b>
  9f:	8d 44 24 10          	lea    0x10(%esp),%eax
  a3:	e8 fc ff ff ff       	call   a4 <bootprio_find_usb+0xa4>
  a8:	83 c4 10             	add    $0x10,%esp
  ab:	81 c4 00 01 00 00    	add    $0x100,%esp
  b1:	5b                   	pop    %ebx
  b2:	5e                   	pop    %esi
  b3:	5f                   	pop    %edi
  b4:	5d                   	pop    %ebp
  b5:	c3                   	ret    

Disassembly of section .text.boot_init:

00000000 <boot_init>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 14             	sub    $0x14,%esp
   7:	b8 38 00 00 00       	mov    $0x38,%eax
   c:	e8 fc ff ff ff       	call   d <boot_init+0xd>
  11:	a8 01                	test   $0x1,%al
  13:	74 0a                	je     1f <boot_init+0x1f>
  15:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
  1c:	00 00 00 
  1f:	b8 3d 00 00 00       	mov    $0x3d,%eax
  24:	e8 fc ff ff ff       	call   25 <boot_init+0x25>
  29:	0f b6 d8             	movzbl %al,%ebx
  2c:	b8 38 00 00 00       	mov    $0x38,%eax
  31:	e8 fc ff ff ff       	call   32 <boot_init+0x32>
  36:	c1 e0 04             	shl    $0x4,%eax
  39:	25 00 0f 00 00       	and    $0xf00,%eax
  3e:	09 c3                	or     %eax,%ebx
  40:	c7 05 00 00 00 00 0f 	movl   $0x270f,0x0
  47:	27 00 00 
  4a:	c7 05 00 00 00 00 0f 	movl   $0x270f,0x0
  51:	27 00 00 
  54:	c7 05 00 00 00 00 0f 	movl   $0x270f,0x0
  5b:	27 00 00 
  5e:	c7 05 00 00 00 00 0f 	movl   $0x270f,0x0
  65:	27 00 00 
  68:	31 ff                	xor    %edi,%edi
  6a:	31 f6                	xor    %esi,%esi
  6c:	c6 44 24 03 00       	movb   $0x0,0x3(%esp)
  71:	31 c9                	xor    %ecx,%ecx
  73:	b8 65 00 00 00       	mov    $0x65,%eax
  78:	89 da                	mov    %ebx,%edx
  7a:	83 e2 0f             	and    $0xf,%edx
  7d:	89 5c 24 10          	mov    %ebx,0x10(%esp)
  81:	c1 eb 04             	shr    $0x4,%ebx
  84:	83 fa 03             	cmp    $0x3,%edx
  87:	74 2c                	je     b5 <boot_init+0xb5>
  89:	f6 44 24 10 0c       	testb  $0xc,0x10(%esp)
  8e:	75 15                	jne    a5 <boot_init+0xa5>
  90:	83 fa 01             	cmp    $0x1,%edx
  93:	74 2b                	je     c0 <boot_init+0xc0>
  95:	83 fa 02             	cmp    $0x2,%edx
  98:	75 2a                	jne    c4 <boot_init+0xc4>
  9a:	89 44 24 04          	mov    %eax,0x4(%esp)
  9e:	c6 44 24 03 01       	movb   $0x1,0x3(%esp)
  a3:	eb 1f                	jmp    c4 <boot_init+0xc4>
  a5:	83 fa 04             	cmp    $0x4,%edx
  a8:	75 1a                	jne    c4 <boot_init+0xc4>
  aa:	89 44 24 0c          	mov    %eax,0xc(%esp)
  ae:	bf 01 00 00 00       	mov    $0x1,%edi
  b3:	eb 0f                	jmp    c4 <boot_init+0xc4>
  b5:	89 44 24 08          	mov    %eax,0x8(%esp)
  b9:	be 01 00 00 00       	mov    $0x1,%esi
  be:	eb 04                	jmp    c4 <boot_init+0xc4>
  c0:	89 c5                	mov    %eax,%ebp
  c2:	b1 01                	mov    $0x1,%cl
  c4:	40                   	inc    %eax
  c5:	83 f8 68             	cmp    $0x68,%eax
  c8:	75 ae                	jne    78 <boot_init+0x78>
  ca:	89 f8                	mov    %edi,%eax
  cc:	84 c0                	test   %al,%al
  ce:	74 09                	je     d9 <boot_init+0xd9>
  d0:	8b 44 24 0c          	mov    0xc(%esp),%eax
  d4:	a3 00 00 00 00       	mov    %eax,0x0
  d9:	89 f0                	mov    %esi,%eax
  db:	84 c0                	test   %al,%al
  dd:	74 09                	je     e8 <boot_init+0xe8>
  df:	8b 44 24 08          	mov    0x8(%esp),%eax
  e3:	a3 00 00 00 00       	mov    %eax,0x0
  e8:	80 7c 24 03 00       	cmpb   $0x0,0x3(%esp)
  ed:	74 09                	je     f8 <boot_init+0xf8>
  ef:	8b 44 24 04          	mov    0x4(%esp),%eax
  f3:	a3 00 00 00 00       	mov    %eax,0x0
  f8:	84 c9                	test   %cl,%cl
  fa:	74 06                	je     102 <boot_init+0x102>
  fc:	89 2d 00 00 00 00    	mov    %ebp,0x0
 102:	ba 60 ea 00 00       	mov    $0xea60,%edx
 107:	31 c9                	xor    %ecx,%ecx
 109:	b8 b5 02 00 00       	mov    $0x2b5,%eax
 10e:	e8 fc ff ff ff       	call   10f <boot_init+0x10f>
 113:	a3 00 00 00 00       	mov    %eax,0x0
 118:	31 d2                	xor    %edx,%edx
 11a:	b8 c8 02 00 00       	mov    $0x2c8,%eax
 11f:	e8 fc ff ff ff       	call   120 <boot_init+0x120>
 124:	89 c3                	mov    %eax,%ebx
 126:	85 c0                	test   %eax,%eax
 128:	0f 84 d8 00 00 00    	je     206 <boot_init+0x206>
 12e:	c7 05 00 00 00 00 01 	movl   $0x1,0x0
 135:	00 00 00 
 138:	89 c2                	mov    %eax,%edx
 13a:	31 f6                	xor    %esi,%esi
 13c:	b8 01 00 00 00       	mov    $0x1,%eax
 141:	8a 0a                	mov    (%edx),%cl
 143:	84 c9                	test   %cl,%cl
 145:	74 0e                	je     155 <boot_init+0x155>
 147:	80 f9 0a             	cmp    $0xa,%cl
 14a:	75 06                	jne    152 <boot_init+0x152>
 14c:	40                   	inc    %eax
 14d:	be 01 00 00 00       	mov    $0x1,%esi
 152:	42                   	inc    %edx
 153:	eb ec                	jmp    141 <boot_init+0x141>
 155:	89 f1                	mov    %esi,%ecx
 157:	84 c9                	test   %cl,%cl
 159:	74 05                	je     160 <boot_init+0x160>
 15b:	a3 00 00 00 00       	mov    %eax,0x0
 160:	a1 00 00 00 00       	mov    0x0,%eax
 165:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 16c:	b9 10 00 00 00       	mov    $0x10,%ecx
 171:	b8 00 00 00 00       	mov    $0x0,%eax
 176:	e8 fc ff ff ff       	call   177 <boot_init+0x177>
 17b:	a3 00 00 00 00       	mov    %eax,0x0
 180:	85 c0                	test   %eax,%eax
 182:	75 22                	jne    1a6 <boot_init+0x1a6>
 184:	ba 00 00 00 00       	mov    $0x0,%edx
 189:	b8 0b 01 00 00       	mov    $0x10b,%eax
 18e:	e8 fc ff ff ff       	call   18f <boot_init+0x18f>
 193:	89 d8                	mov    %ebx,%eax
 195:	e8 fc ff ff ff       	call   196 <boot_init+0x196>
 19a:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
 1a1:	00 00 00 
 1a4:	eb 60                	jmp    206 <boot_init+0x206>
 1a6:	68 d2 02 00 00       	push   $0x2d2
 1ab:	e8 fc ff ff ff       	call   1ac <boot_init+0x1ac>
 1b0:	5a                   	pop    %edx
 1b1:	31 f6                	xor    %esi,%esi
 1b3:	8d 3c b5 00 00 00 00 	lea    0x0(,%esi,4),%edi
 1ba:	a1 00 00 00 00       	mov    0x0,%eax
 1bf:	89 1c b0             	mov    %ebx,(%eax,%esi,4)
 1c2:	ba 0a 00 00 00       	mov    $0xa,%edx
 1c7:	89 d8                	mov    %ebx,%eax
 1c9:	e8 fc ff ff ff       	call   1ca <boot_init+0x1ca>
 1ce:	89 c3                	mov    %eax,%ebx
 1d0:	85 c0                	test   %eax,%eax
 1d2:	74 04                	je     1d8 <boot_init+0x1d8>
 1d4:	c6 00 00             	movb   $0x0,(%eax)
 1d7:	43                   	inc    %ebx
 1d8:	8b 2d 00 00 00 00    	mov    0x0,%ebp
 1de:	01 fd                	add    %edi,%ebp
 1e0:	8b 45 00             	mov    0x0(%ebp),%eax
 1e3:	e8 fc ff ff ff       	call   1e4 <boot_init+0x1e4>
 1e8:	89 45 00             	mov    %eax,0x0(%ebp)
 1eb:	46                   	inc    %esi
 1ec:	a1 00 00 00 00       	mov    0x0,%eax
 1f1:	ff 34 38             	push   (%eax,%edi,1)
 1f4:	56                   	push   %esi
 1f5:	68 df 02 00 00       	push   $0x2df
 1fa:	e8 fc ff ff ff       	call   1fb <boot_init+0x1fb>
 1ff:	83 c4 0c             	add    $0xc,%esp
 202:	85 db                	test   %ebx,%ebx
 204:	75 ad                	jne    1b3 <boot_init+0x1b3>
 206:	31 d2                	xor    %edx,%edx
 208:	b8 e7 02 00 00       	mov    $0x2e7,%eax
 20d:	e8 fc ff ff ff       	call   20e <boot_init+0x20e>
 212:	89 c3                	mov    %eax,%ebx
 214:	85 c0                	test   %eax,%eax
 216:	0f 84 ed 00 00 00    	je     309 <boot_init+0x309>
 21c:	c7 05 00 00 00 00 01 	movl   $0x1,0x0
 223:	00 00 00 
 226:	89 c2                	mov    %eax,%edx
 228:	31 f6                	xor    %esi,%esi
 22a:	b8 01 00 00 00       	mov    $0x1,%eax
 22f:	8a 0a                	mov    (%edx),%cl
 231:	84 c9                	test   %cl,%cl
 233:	74 0e                	je     243 <boot_init+0x243>
 235:	80 f9 0a             	cmp    $0xa,%cl
 238:	75 06                	jne    240 <boot_init+0x240>
 23a:	40                   	inc    %eax
 23b:	be 01 00 00 00       	mov    $0x1,%esi
 240:	42                   	inc    %edx
 241:	eb ec                	jmp    22f <boot_init+0x22f>
 243:	89 f1                	mov    %esi,%ecx
 245:	84 c9                	test   %cl,%cl
 247:	74 05                	je     24e <boot_init+0x24e>
 249:	a3 00 00 00 00       	mov    %eax,0x0
 24e:	8b 15 00 00 00 00    	mov    0x0,%edx
 254:	c1 e2 04             	shl    $0x4,%edx
 257:	b9 10 00 00 00       	mov    $0x10,%ecx
 25c:	b8 00 00 00 00       	mov    $0x0,%eax
 261:	e8 fc ff ff ff       	call   262 <boot_init+0x262>
 266:	a3 00 00 00 00       	mov    %eax,0x0
 26b:	85 c0                	test   %eax,%eax
 26d:	75 22                	jne    291 <boot_init+0x291>
 26f:	ba 00 00 00 00       	mov    $0x0,%edx
 274:	b8 93 00 00 00       	mov    $0x93,%eax
 279:	e8 fc ff ff ff       	call   27a <boot_init+0x27a>
 27e:	89 d8                	mov    %ebx,%eax
 280:	e8 fc ff ff ff       	call   281 <boot_init+0x281>
 285:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
 28c:	00 00 00 
 28f:	eb 78                	jmp    309 <boot_init+0x309>
 291:	68 f5 02 00 00       	push   $0x2f5
 296:	e8 fc ff ff ff       	call   297 <boot_init+0x297>
 29b:	58                   	pop    %eax
 29c:	31 ff                	xor    %edi,%edi
 29e:	8b 35 00 00 00 00    	mov    0x0,%esi
 2a4:	01 fe                	add    %edi,%esi
 2a6:	89 1e                	mov    %ebx,(%esi)
 2a8:	ba 0a 00 00 00       	mov    $0xa,%edx
 2ad:	89 d8                	mov    %ebx,%eax
 2af:	e8 fc ff ff ff       	call   2b0 <boot_init+0x2b0>
 2b4:	89 c3                	mov    %eax,%ebx
 2b6:	85 c0                	test   %eax,%eax
 2b8:	74 04                	je     2be <boot_init+0x2be>
 2ba:	c6 00 00             	movb   $0x0,(%eax)
 2bd:	43                   	inc    %ebx
 2be:	ba 20 00 00 00       	mov    $0x20,%edx
 2c3:	8b 06                	mov    (%esi),%eax
 2c5:	e8 fc ff ff ff       	call   2c6 <boot_init+0x2c6>
 2ca:	85 c0                	test   %eax,%eax
 2cc:	74 04                	je     2d2 <boot_init+0x2d2>
 2ce:	c6 00 00             	movb   $0x0,(%eax)
 2d1:	40                   	inc    %eax
 2d2:	8d 56 04             	lea    0x4(%esi),%edx
 2d5:	e8 fc ff ff ff       	call   2d6 <boot_init+0x2d6>
 2da:	8d 56 08             	lea    0x8(%esi),%edx
 2dd:	e8 fc ff ff ff       	call   2de <boot_init+0x2de>
 2e2:	8d 56 0c             	lea    0xc(%esi),%edx
 2e5:	e8 fc ff ff ff       	call   2e6 <boot_init+0x2e6>
 2ea:	ff 76 0c             	push   0xc(%esi)
 2ed:	ff 76 08             	push   0x8(%esi)
 2f0:	ff 76 04             	push   0x4(%esi)
 2f3:	ff 36                	push   (%esi)
 2f5:	68 05 03 00 00       	push   $0x305
 2fa:	e8 fc ff ff ff       	call   2fb <boot_init+0x2fb>
 2ff:	83 c7 10             	add    $0x10,%edi
 302:	83 c4 14             	add    $0x14,%esp
 305:	85 db                	test   %ebx,%ebx
 307:	75 95                	jne    29e <boot_init+0x29e>
 309:	83 c4 14             	add    $0x14,%esp
 30c:	5b                   	pop    %ebx
 30d:	5e                   	pop    %esi
 30e:	5f                   	pop    %edi
 30f:	5d                   	pop    %ebp
 310:	c3                   	ret    

Disassembly of section .text.boot_add_bev:

00000000 <boot_add_bev>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 d3                	mov    %edx,%ebx
   4:	89 ca                	mov    %ecx,%edx
   6:	8b 74 24 0c          	mov    0xc(%esp),%esi
   a:	0f b7 cb             	movzwl %bx,%ecx
   d:	bb 17 03 00 00       	mov    $0x317,%ebx
  12:	66 85 d2             	test   %dx,%dx
  15:	0f b7 c0             	movzwl %ax,%eax
  18:	74 0a                	je     24 <boot_add_bev+0x24>
  1a:	89 c3                	mov    %eax,%ebx
  1c:	c1 e3 04             	shl    $0x4,%ebx
  1f:	0f b7 d2             	movzwl %dx,%edx
  22:	01 d3                	add    %edx,%ebx
  24:	c1 e0 10             	shl    $0x10,%eax
  27:	09 c1                	or     %eax,%ecx
  29:	8b 15 00 00 00 00    	mov    0x0,%edx
  2f:	85 f6                	test   %esi,%esi
  31:	78 02                	js     35 <boot_add_bev+0x35>
  33:	89 f2                	mov    %esi,%edx
  35:	53                   	push   %ebx
  36:	b8 80 00 00 00       	mov    $0x80,%eax
  3b:	e8 fc ff ff ff       	call   3c <boot_add_bev+0x3c>
  40:	c7 05 00 00 00 00 0f 	movl   $0x270f,0x0
  47:	27 00 00 
  4a:	58                   	pop    %eax
  4b:	5b                   	pop    %ebx
  4c:	5e                   	pop    %esi
  4d:	c3                   	ret    

Disassembly of section .text.boot_add_bcv:

00000000 <boot_add_bcv>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 d3                	mov    %edx,%ebx
   4:	89 ca                	mov    %ecx,%edx
   6:	8b 74 24 0c          	mov    0xc(%esp),%esi
   a:	0f b7 cb             	movzwl %bx,%ecx
   d:	bb 1f 03 00 00       	mov    $0x31f,%ebx
  12:	66 85 d2             	test   %dx,%dx
  15:	0f b7 c0             	movzwl %ax,%eax
  18:	74 0a                	je     24 <boot_add_bcv+0x24>
  1a:	89 c3                	mov    %eax,%ebx
  1c:	c1 e3 04             	shl    $0x4,%ebx
  1f:	0f b7 d2             	movzwl %dx,%edx
  22:	01 d3                	add    %edx,%ebx
  24:	c1 e0 10             	shl    $0x10,%eax
  27:	09 c1                	or     %eax,%ecx
  29:	8b 15 00 00 00 00    	mov    0x0,%edx
  2f:	85 f6                	test   %esi,%esi
  31:	78 02                	js     35 <boot_add_bcv+0x35>
  33:	89 f2                	mov    %esi,%edx
  35:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
  39:	b8 81 00 00 00       	mov    $0x81,%eax
  3e:	5b                   	pop    %ebx
  3f:	5e                   	pop    %esi
  40:	e9 fc ff ff ff       	jmp    41 <boot_add_bcv+0x41>

Disassembly of section .text.boot_add_floppy:

00000000 <boot_add_floppy>:
   0:	53                   	push   %ebx
   1:	8b 1d 00 00 00 00    	mov    0x0,%ebx
   7:	85 c9                	test   %ecx,%ecx
   9:	78 02                	js     d <boot_add_floppy+0xd>
   b:	89 cb                	mov    %ecx,%ebx
   d:	52                   	push   %edx
   e:	89 c1                	mov    %eax,%ecx
  10:	89 da                	mov    %ebx,%edx
  12:	b8 01 00 00 00       	mov    $0x1,%eax
  17:	e8 fc ff ff ff       	call   18 <boot_add_floppy+0x18>
  1c:	58                   	pop    %eax
  1d:	5b                   	pop    %ebx
  1e:	c3                   	ret    

Disassembly of section .text.boot_add_hd:

00000000 <boot_add_hd>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	53                   	push   %ebx
   4:	89 c6                	mov    %eax,%esi
   6:	89 d3                	mov    %edx,%ebx
   8:	89 cf                	mov    %ecx,%edi
   a:	66 8b 02             	mov    (%edx),%ax
   d:	66 89 04 24          	mov    %ax,(%esp)
  11:	8a 42 02             	mov    0x2(%edx),%al
  14:	88 44 24 02          	mov    %al,0x2(%esp)
  18:	c6 44 24 03 00       	movb   $0x0,0x3(%esp)
  1d:	ba 31 03 00 00       	mov    $0x331,%edx
  22:	89 e0                	mov    %esp,%eax
  24:	e8 fc ff ff ff       	call   25 <boot_add_hd+0x25>
  29:	85 c0                	test   %eax,%eax
  2b:	8b 15 00 00 00 00    	mov    0x0,%edx
  31:	75 10                	jne    43 <boot_add_hd+0x43>
  33:	85 ff                	test   %edi,%edi
  35:	78 02                	js     39 <boot_add_hd+0x39>
  37:	89 fa                	mov    %edi,%edx
  39:	53                   	push   %ebx
  3a:	89 f1                	mov    %esi,%ecx
  3c:	b8 04 00 00 00       	mov    $0x4,%eax
  41:	eb 0e                	jmp    51 <boot_add_hd+0x51>
  43:	85 ff                	test   %edi,%edi
  45:	78 02                	js     49 <boot_add_hd+0x49>
  47:	89 fa                	mov    %edi,%edx
  49:	53                   	push   %ebx
  4a:	89 f1                	mov    %esi,%ecx
  4c:	b8 02 00 00 00       	mov    $0x2,%eax
  51:	e8 fc ff ff ff       	call   52 <boot_add_hd+0x52>
  56:	58                   	pop    %eax
  57:	5a                   	pop    %edx
  58:	5b                   	pop    %ebx
  59:	5e                   	pop    %esi
  5a:	5f                   	pop    %edi
  5b:	c3                   	ret    

Disassembly of section .text.boot_add_cd:

00000000 <boot_add_cd>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 c7                	mov    %eax,%edi
   6:	89 d3                	mov    %edx,%ebx
   8:	89 cd                	mov    %ecx,%ebp
   a:	f6 05 00 00 00 00 01 	testb  $0x1,0x0
  11:	74 25                	je     38 <boot_add_cd+0x38>
  13:	e8 fc ff ff ff       	call   14 <boot_add_cd+0x14>
  18:	89 c6                	mov    %eax,%esi
  1a:	85 c0                	test   %eax,%eax
  1c:	74 1a                	je     38 <boot_add_cd+0x38>
  1e:	50                   	push   %eax
  1f:	53                   	push   %ebx
  20:	68 35 03 00 00       	push   $0x335
  25:	6a 50                	push   $0x50
  27:	e8 fc ff ff ff       	call   28 <boot_add_cd+0x28>
  2c:	89 c3                	mov    %eax,%ebx
  2e:	89 f0                	mov    %esi,%eax
  30:	e8 fc ff ff ff       	call   31 <boot_add_cd+0x31>
  35:	83 c4 10             	add    $0x10,%esp
  38:	8b 15 00 00 00 00    	mov    0x0,%edx
  3e:	85 ed                	test   %ebp,%ebp
  40:	78 02                	js     44 <boot_add_cd+0x44>
  42:	89 ea                	mov    %ebp,%edx
  44:	53                   	push   %ebx
  45:	89 f9                	mov    %edi,%ecx
  47:	b8 03 00 00 00       	mov    $0x3,%eax
  4c:	e8 fc ff ff ff       	call   4d <boot_add_cd+0x4d>
  51:	58                   	pop    %eax
  52:	5b                   	pop    %ebx
  53:	5e                   	pop    %esi
  54:	5f                   	pop    %edi
  55:	5d                   	pop    %ebp
  56:	c3                   	ret    

Disassembly of section .text.boot_add_cbfs:

00000000 <boot_add_cbfs>:
   0:	53                   	push   %ebx
   1:	89 d3                	mov    %edx,%ebx
   3:	ba 0f 27 00 00       	mov    $0x270f,%edx
   8:	85 c9                	test   %ecx,%ecx
   a:	78 02                	js     e <boot_add_cbfs+0xe>
   c:	89 ca                	mov    %ecx,%edx
   e:	53                   	push   %ebx
   f:	89 c1                	mov    %eax,%ecx
  11:	b8 20 00 00 00       	mov    $0x20,%eax
  16:	e8 fc ff ff ff       	call   17 <boot_add_cbfs+0x17>
  1b:	58                   	pop    %eax
  1c:	5b                   	pop    %ebx
  1d:	c3                   	ret    

Disassembly of section .text.get_keystroke_full:

00000000 <get_keystroke_full>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	83 ec 28             	sub    $0x28,%esp
   5:	e8 fc ff ff ff       	call   6 <get_keystroke_full+0x6>
   a:	89 c6                	mov    %eax,%esi
   c:	bb 00 00 00 00       	mov    $0x0,%ebx
  11:	0f b7 db             	movzwl %bx,%ebx
  14:	b9 26 00 00 00       	mov    $0x26,%ecx
  19:	31 d2                	xor    %edx,%edx
  1b:	8d 44 24 02          	lea    0x2(%esp),%eax
  1f:	e8 fc ff ff ff       	call   20 <get_keystroke_full+0x20>
  24:	66 c7 44 24 26 40 02 	movw   $0x240,0x26(%esp)
  2b:	c6 44 24 1f 01       	movb   $0x1,0x1f(%esp)
  30:	89 da                	mov    %ebx,%edx
  32:	8d 44 24 02          	lea    0x2(%esp),%eax
  36:	e8 fc ff ff ff       	call   37 <get_keystroke_full+0x37>
  3b:	f6 44 24 26 40       	testb  $0x40,0x26(%esp)
  40:	75 29                	jne    6b <get_keystroke_full+0x6b>
  42:	b9 26 00 00 00       	mov    $0x26,%ecx
  47:	31 d2                	xor    %edx,%edx
  49:	8d 44 24 02          	lea    0x2(%esp),%eax
  4d:	e8 fc ff ff ff       	call   4e <get_keystroke_full+0x4e>
  52:	66 c7 44 24 26 00 02 	movw   $0x200,0x26(%esp)
  59:	89 da                	mov    %ebx,%edx
  5b:	8d 44 24 02          	lea    0x2(%esp),%eax
  5f:	e8 fc ff ff ff       	call   60 <get_keystroke_full+0x60>
  64:	0f b7 44 24 1e       	movzwl 0x1e(%esp),%eax
  69:	eb 15                	jmp    80 <get_keystroke_full+0x80>
  6b:	89 f0                	mov    %esi,%eax
  6d:	e8 fc ff ff ff       	call   6e <get_keystroke_full+0x6e>
  72:	85 c0                	test   %eax,%eax
  74:	75 07                	jne    7d <get_keystroke_full+0x7d>
  76:	e8 fc ff ff ff       	call   77 <get_keystroke_full+0x77>
  7b:	eb 97                	jmp    14 <get_keystroke_full+0x14>
  7d:	83 c8 ff             	or     $0xffffffff,%eax
  80:	83 c4 28             	add    $0x28,%esp
  83:	5b                   	pop    %ebx
  84:	5e                   	pop    %esi
  85:	c3                   	ret    

Disassembly of section .text.get_keystroke:

00000000 <get_keystroke>:
   0:	e8 fc ff ff ff       	call   1 <get_keystroke+0x1>
   5:	85 c0                	test   %eax,%eax
   7:	78 03                	js     c <get_keystroke+0xc>
   9:	c1 f8 08             	sar    $0x8,%eax
   c:	c3                   	ret    

Disassembly of section .text.interactive_bootmenu:

00000000 <interactive_bootmenu>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	83 ec 54             	sub    $0x54,%esp
   5:	ba 01 00 00 00       	mov    $0x1,%edx
   a:	31 c9                	xor    %ecx,%ecx
   c:	b8 59 03 00 00       	mov    $0x359,%eax
  11:	e8 fc ff ff ff       	call   12 <interactive_bootmenu+0x12>
  16:	85 c0                	test   %eax,%eax
  18:	0f 84 c9 01 00 00    	je     1e7 <interactive_bootmenu+0x1e7>
  1e:	83 f8 02             	cmp    $0x2,%eax
  21:	75 32                	jne    55 <interactive_bootmenu+0x55>
  23:	e8 fc ff ff ff       	call   24 <interactive_bootmenu+0x24>
  28:	85 c0                	test   %eax,%eax
  2a:	75 29                	jne    55 <interactive_bootmenu+0x55>
  2c:	a1 00 00 00 00       	mov    0x0,%eax
  31:	85 c0                	test   %eax,%eax
  33:	74 20                	je     55 <interactive_bootmenu+0x55>
  35:	83 38 00             	cmpl   $0x0,(%eax)
  38:	75 1b                	jne    55 <interactive_bootmenu+0x55>
  3a:	68 6c 03 00 00       	push   $0x36c
  3f:	e8 fc ff ff ff       	call   40 <interactive_bootmenu+0x40>
  44:	68 9b 03 00 00       	push   $0x39b
  49:	e8 fc ff ff ff       	call   4a <interactive_bootmenu+0x4a>
  4e:	59                   	pop    %ecx
  4f:	5b                   	pop    %ebx
  50:	e9 92 01 00 00       	jmp    1e7 <interactive_bootmenu+0x1e7>
  55:	31 c0                	xor    %eax,%eax
  57:	e8 fc ff ff ff       	call   58 <interactive_bootmenu+0x58>
  5c:	85 c0                	test   %eax,%eax
  5e:	79 f5                	jns    55 <interactive_bootmenu+0x55>
  60:	31 d2                	xor    %edx,%edx
  62:	b8 9d 03 00 00       	mov    $0x39d,%eax
  67:	e8 fc ff ff ff       	call   68 <interactive_bootmenu+0x68>
  6c:	89 c3                	mov    %eax,%ebx
  6e:	ba 01 00 00 00       	mov    $0x1,%edx
  73:	31 c9                	xor    %ecx,%ecx
  75:	b8 b3 03 00 00       	mov    $0x3b3,%eax
  7a:	e8 fc ff ff ff       	call   7b <interactive_bootmenu+0x7b>
  7f:	89 c6                	mov    %eax,%esi
  81:	89 d8                	mov    %ebx,%eax
  83:	85 db                	test   %ebx,%ebx
  85:	75 05                	jne    8c <interactive_bootmenu+0x8c>
  87:	b8 3d 03 00 00       	mov    $0x33d,%eax
  8c:	50                   	push   %eax
  8d:	68 c2 01 00 00       	push   $0x1c2
  92:	e8 fc ff ff ff       	call   93 <interactive_bootmenu+0x93>
  97:	89 d8                	mov    %ebx,%eax
  99:	e8 fc ff ff ff       	call   9a <interactive_bootmenu+0x9a>
  9e:	ba c4 09 00 00       	mov    $0x9c4,%edx
  a3:	31 c9                	xor    %ecx,%ecx
  a5:	b8 c5 03 00 00       	mov    $0x3c5,%eax
  aa:	e8 fc ff ff ff       	call   ab <interactive_bootmenu+0xab>
  af:	89 44 24 08          	mov    %eax,0x8(%esp)
  b3:	e8 fc ff ff ff       	call   b4 <interactive_bootmenu+0xb4>
  b8:	8b 44 24 08          	mov    0x8(%esp),%eax
  bc:	e8 fc ff ff ff       	call   bd <interactive_bootmenu+0xbd>
  c1:	89 c3                	mov    %eax,%ebx
  c3:	e8 fc ff ff ff       	call   c4 <interactive_bootmenu+0xc4>
  c8:	58                   	pop    %eax
  c9:	5a                   	pop    %edx
  ca:	39 de                	cmp    %ebx,%esi
  cc:	0f 85 15 01 00 00    	jne    1e7 <interactive_bootmenu+0x1e7>
  d2:	31 c0                	xor    %eax,%eax
  d4:	e8 fc ff ff ff       	call   d5 <interactive_bootmenu+0xd5>
  d9:	85 c0                	test   %eax,%eax
  db:	79 f5                	jns    d2 <interactive_bootmenu+0xd2>
  dd:	68 d8 03 00 00       	push   $0x3d8
  e2:	e8 fc ff ff ff       	call   e3 <interactive_bootmenu+0xe3>
  e7:	e8 fc ff ff ff       	call   e8 <interactive_bootmenu+0xe8>
  ec:	a1 00 00 00 00       	mov    0x0,%eax
  f1:	8d 58 f0             	lea    -0x10(%eax),%ebx
  f4:	58                   	pop    %eax
  f5:	31 f6                	xor    %esi,%esi
  f7:	83 fb f0             	cmp    $0xfffffff0,%ebx
  fa:	74 35                	je     131 <interactive_bootmenu+0x131>
  fc:	83 fe 22             	cmp    $0x22,%esi
  ff:	74 30                	je     131 <interactive_bootmenu+0x131>
 101:	8b 53 0c             	mov    0xc(%ebx),%edx
 104:	b9 4d 00 00 00       	mov    $0x4d,%ecx
 109:	8d 44 24 07          	lea    0x7(%esp),%eax
 10d:	e8 fc ff ff ff       	call   10e <interactive_bootmenu+0x10e>
 112:	50                   	push   %eax
 113:	0f be 86 00 00 00 00 	movsbl 0x0(%esi),%eax
 11a:	50                   	push   %eax
 11b:	68 ee 03 00 00       	push   $0x3ee
 120:	e8 fc ff ff ff       	call   121 <interactive_bootmenu+0x121>
 125:	46                   	inc    %esi
 126:	8b 5b 10             	mov    0x10(%ebx),%ebx
 129:	83 eb 10             	sub    $0x10,%ebx
 12c:	83 c4 0c             	add    $0xc,%esp
 12f:	eb c6                	jmp    f7 <interactive_bootmenu+0xf7>
 131:	e8 fc ff ff ff       	call   132 <interactive_bootmenu+0x132>
 136:	85 c0                	test   %eax,%eax
 138:	74 0b                	je     145 <interactive_bootmenu+0x145>
 13a:	68 f6 03 00 00       	push   $0x3f6
 13f:	e8 fc ff ff ff       	call   140 <interactive_bootmenu+0x140>
 144:	58                   	pop    %eax
 145:	b8 e8 03 00 00       	mov    $0x3e8,%eax
 14a:	e8 fc ff ff ff       	call   14b <interactive_bootmenu+0x14b>
 14f:	85 c0                	test   %eax,%eax
 151:	78 f2                	js     145 <interactive_bootmenu+0x145>
 153:	3d 1b 01 00 00       	cmp    $0x11b,%eax
 158:	74 eb                	je     145 <interactive_bootmenu+0x145>
 15a:	0f b6 f0             	movzbl %al,%esi
 15d:	e8 fc ff ff ff       	call   15e <interactive_bootmenu+0x15e>
 162:	85 c0                	test   %eax,%eax
 164:	74 15                	je     17b <interactive_bootmenu+0x17b>
 166:	83 fe 74             	cmp    $0x74,%esi
 169:	75 10                	jne    17b <interactive_bootmenu+0x17b>
 16b:	68 9b 03 00 00       	push   $0x39b
 170:	e8 fc ff ff ff       	call   171 <interactive_bootmenu+0x171>
 175:	e8 fc ff ff ff       	call   176 <interactive_bootmenu+0x176>
 17a:	58                   	pop    %eax
 17b:	a1 00 00 00 00       	mov    0x0,%eax
 180:	8d 58 f0             	lea    -0x10(%eax),%ebx
 183:	31 c0                	xor    %eax,%eax
 185:	83 fb f0             	cmp    $0xfffffff0,%ebx
 188:	74 bb                	je     145 <interactive_bootmenu+0x145>
 18a:	83 f8 22             	cmp    $0x22,%eax
 18d:	74 b6                	je     145 <interactive_bootmenu+0x145>
 18f:	0f be 90 00 00 00 00 	movsbl 0x0(%eax),%edx
 196:	39 f2                	cmp    %esi,%edx
 198:	74 09                	je     1a3 <interactive_bootmenu+0x1a3>
 19a:	40                   	inc    %eax
 19b:	8b 5b 10             	mov    0x10(%ebx),%ebx
 19e:	83 eb 10             	sub    $0x10,%ebx
 1a1:	eb e2                	jmp    185 <interactive_bootmenu+0x185>
 1a3:	85 db                	test   %ebx,%ebx
 1a5:	74 9e                	je     145 <interactive_bootmenu+0x145>
 1a7:	68 9b 03 00 00       	push   $0x39b
 1ac:	e8 fc ff ff ff       	call   1ad <interactive_bootmenu+0x1ad>
 1b1:	8d 53 10             	lea    0x10(%ebx),%edx
 1b4:	8b 43 10             	mov    0x10(%ebx),%eax
 1b7:	8b 4b 14             	mov    0x14(%ebx),%ecx
 1ba:	89 01                	mov    %eax,(%ecx)
 1bc:	5e                   	pop    %esi
 1bd:	85 c0                	test   %eax,%eax
 1bf:	74 03                	je     1c4 <interactive_bootmenu+0x1c4>
 1c1:	89 48 04             	mov    %ecx,0x4(%eax)
 1c4:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
 1cb:	a1 00 00 00 00       	mov    0x0,%eax
 1d0:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
 1d7:	89 43 10             	mov    %eax,0x10(%ebx)
 1da:	85 c0                	test   %eax,%eax
 1dc:	74 03                	je     1e1 <interactive_bootmenu+0x1e1>
 1de:	89 50 04             	mov    %edx,0x4(%eax)
 1e1:	89 15 00 00 00 00    	mov    %edx,0x0
 1e7:	83 c4 54             	add    $0x54,%esp
 1ea:	5b                   	pop    %ebx
 1eb:	5e                   	pop    %esi
 1ec:	c3                   	ret    

Disassembly of section .text.bcv_prepboot:

00000000 <bcv_prepboot>:
   0:	53                   	push   %ebx
   1:	b8 27 02 00 00       	mov    $0x227,%eax
   6:	e8 fc ff ff ff       	call   7 <bcv_prepboot+0x7>
   b:	85 c0                	test   %eax,%eax
   d:	78 14                	js     23 <bcv_prepboot+0x23>
   f:	89 c2                	mov    %eax,%edx
  11:	68 27 02 00 00       	push   $0x227
  16:	31 c9                	xor    %ecx,%ecx
  18:	b8 f0 00 00 00       	mov    $0xf0,%eax
  1d:	e8 fc ff ff ff       	call   1e <bcv_prepboot+0x1e>
  22:	58                   	pop    %eax
  23:	a1 00 00 00 00       	mov    0x0,%eax
  28:	8d 58 f0             	lea    -0x10(%eax),%ebx
  2b:	83 fb f0             	cmp    $0xfffffff0,%ebx
  2e:	0f 84 80 00 00 00    	je     b4 <bcv_prepboot+0xb4>
  34:	8b 03                	mov    (%ebx),%eax
  36:	83 f8 03             	cmp    $0x3,%eax
  39:	74 5c                	je     97 <bcv_prepboot+0x97>
  3b:	7f 14                	jg     51 <bcv_prepboot+0x51>
  3d:	83 f8 01             	cmp    $0x1,%eax
  40:	74 2a                	je     6c <bcv_prepboot+0x6c>
  42:	83 f8 02             	cmp    $0x2,%eax
  45:	75 58                	jne    9f <bcv_prepboot+0x9f>
  47:	8b 43 04             	mov    0x4(%ebx),%eax
  4a:	e8 fc ff ff ff       	call   4b <bcv_prepboot+0x4b>
  4f:	eb 2c                	jmp    7d <bcv_prepboot+0x7d>
  51:	83 f8 04             	cmp    $0x4,%eax
  54:	74 30                	je     86 <bcv_prepboot+0x86>
  56:	3d 81 00 00 00       	cmp    $0x81,%eax
  5b:	75 42                	jne    9f <bcv_prepboot+0x9f>
  5d:	0f b7 53 04          	movzwl 0x4(%ebx),%edx
  61:	0f b7 43 06          	movzwl 0x6(%ebx),%eax
  65:	e8 fc ff ff ff       	call   66 <bcv_prepboot+0x66>
  6a:	eb 11                	jmp    7d <bcv_prepboot+0x7d>
  6c:	8b 43 04             	mov    0x4(%ebx),%eax
  6f:	e8 fc ff ff ff       	call   70 <bcv_prepboot+0x70>
  74:	31 d2                	xor    %edx,%edx
  76:	b8 01 00 00 00       	mov    $0x1,%eax
  7b:	eb 27                	jmp    a4 <bcv_prepboot+0xa4>
  7d:	31 d2                	xor    %edx,%edx
  7f:	b8 02 00 00 00       	mov    $0x2,%eax
  84:	eb 1e                	jmp    a4 <bcv_prepboot+0xa4>
  86:	8b 43 04             	mov    0x4(%ebx),%eax
  89:	e8 fc ff ff ff       	call   8a <bcv_prepboot+0x8a>
  8e:	31 d2                	xor    %edx,%edx
  90:	b8 04 00 00 00       	mov    $0x4,%eax
  95:	eb 0d                	jmp    a4 <bcv_prepboot+0xa4>
  97:	8b 43 04             	mov    0x4(%ebx),%eax
  9a:	e8 fc ff ff ff       	call   9b <bcv_prepboot+0x9b>
  9f:	8b 53 04             	mov    0x4(%ebx),%edx
  a2:	8b 03                	mov    (%ebx),%eax
  a4:	e8 fc ff ff ff       	call   a5 <bcv_prepboot+0xa5>
  a9:	8b 5b 10             	mov    0x10(%ebx),%ebx
  ac:	83 eb 10             	sub    $0x10,%ebx
  af:	e9 77 ff ff ff       	jmp    2b <bcv_prepboot+0x2b>
  b4:	31 d2                	xor    %edx,%edx
  b6:	b8 01 00 00 00       	mov    $0x1,%eax
  bb:	e8 fc ff ff ff       	call   bc <bcv_prepboot+0xbc>
  c0:	31 d2                	xor    %edx,%edx
  c2:	b8 02 00 00 00       	mov    $0x2,%eax
  c7:	5b                   	pop    %ebx
  c8:	e9 fc ff ff ff       	jmp    c9 <bcv_prepboot+0xc9>

Disassembly of section .text.runtime.src/boot.c.1036:

00000000 <handle_18>:
   0:	ba 00 00 00 00       	mov    $0x0,%edx
   5:	31 c0                	xor    %eax,%eax
   7:	e8 fc ff ff ff       	call   8 <handle_18+0x8>
   c:	a1 00 00 00 00       	mov    0x0,%eax
  11:	40                   	inc    %eax
  12:	a3 00 00 00 00       	mov    %eax,0x0
  17:	e9 fc ff ff ff       	jmp    18 <handle_18+0x18>

Disassembly of section .text.runtime.src/boot.c.1046:

00000000 <handle_19>:
   0:	ba 00 00 00 00       	mov    $0x0,%edx
   5:	31 c0                	xor    %eax,%eax
   7:	e8 fc ff ff ff       	call   8 <handle_19+0x8>
   c:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
  13:	00 00 00 
  16:	31 c0                	xor    %eax,%eax
  18:	e9 fc ff ff ff       	jmp    19 <handle_19+0x19>
