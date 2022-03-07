
./coreboot.o:     file format elf32-i386


Disassembly of section .text.ipchksum:

00000000 <ipchksum>:
   0:	53                   	push   %ebx
   1:	31 c9                	xor    %ecx,%ecx
   3:	83 fa 01             	cmp    $0x1,%edx
   6:	7e 0d                	jle    15 <ipchksum+0x15>
   8:	0f b7 18             	movzwl (%eax),%ebx
   b:	01 d9                	add    %ebx,%ecx
   d:	83 c0 02             	add    $0x2,%eax
  10:	83 ea 02             	sub    $0x2,%edx
  13:	eb ee                	jmp    3 <ipchksum+0x3>
  15:	85 d2                	test   %edx,%edx
  17:	74 05                	je     1e <ipchksum+0x1e>
  19:	0f b6 00             	movzbl (%eax),%eax
  1c:	01 c1                	add    %eax,%ecx
  1e:	89 ca                	mov    %ecx,%edx
  20:	c1 ea 10             	shr    $0x10,%edx
  23:	0f b7 c9             	movzwl %cx,%ecx
  26:	01 ca                	add    %ecx,%edx
  28:	89 d0                	mov    %edx,%eax
  2a:	c1 e8 10             	shr    $0x10,%eax
  2d:	01 d0                	add    %edx,%eax
  2f:	f7 d0                	not    %eax
  31:	5b                   	pop    %ebx
  32:	c3                   	ret    

Disassembly of section .text.find_cb_header:

00000000 <find_cb_header>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 c3                	mov    %eax,%ebx
   6:	8d 34 02             	lea    (%edx,%eax,1),%esi
   9:	39 f3                	cmp    %esi,%ebx
   b:	73 39                	jae    46 <find_cb_header+0x46>
   d:	89 df                	mov    %ebx,%edi
   f:	81 3b 4c 42 49 4f    	cmpl   $0x4f49424c,(%ebx)
  15:	75 2a                	jne    41 <find_cb_header+0x41>
  17:	8b 6b 0c             	mov    0xc(%ebx),%ebp
  1a:	85 ed                	test   %ebp,%ebp
  1c:	74 23                	je     41 <find_cb_header+0x41>
  1e:	ba 18 00 00 00       	mov    $0x18,%edx
  23:	89 d8                	mov    %ebx,%eax
  25:	e8 fc ff ff ff       	call   26 <find_cb_header+0x26>
  2a:	66 85 c0             	test   %ax,%ax
  2d:	75 12                	jne    41 <find_cb_header+0x41>
  2f:	8d 43 18             	lea    0x18(%ebx),%eax
  32:	89 ea                	mov    %ebp,%edx
  34:	e8 fc ff ff ff       	call   35 <find_cb_header+0x35>
  39:	0f b7 c0             	movzwl %ax,%eax
  3c:	3b 43 10             	cmp    0x10(%ebx),%eax
  3f:	74 07                	je     48 <find_cb_header+0x48>
  41:	83 c3 10             	add    $0x10,%ebx
  44:	eb c3                	jmp    9 <find_cb_header+0x9>
  46:	31 ff                	xor    %edi,%edi
  48:	89 f8                	mov    %edi,%eax
  4a:	5b                   	pop    %ebx
  4b:	5e                   	pop    %esi
  4c:	5f                   	pop    %edi
  4d:	5d                   	pop    %ebp
  4e:	c3                   	ret    

Disassembly of section .text.find_cb_subtable:

00000000 <find_cb_subtable>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 c1                	mov    %eax,%ecx
   4:	83 c0 18             	add    $0x18,%eax
   7:	8b 59 14             	mov    0x14(%ecx),%ebx
   a:	31 c9                	xor    %ecx,%ecx
   c:	39 d9                	cmp    %ebx,%ecx
   e:	74 0e                	je     1e <find_cb_subtable+0x1e>
  10:	8b 70 04             	mov    0x4(%eax),%esi
  13:	01 c6                	add    %eax,%esi
  15:	39 10                	cmp    %edx,(%eax)
  17:	74 07                	je     20 <find_cb_subtable+0x20>
  19:	41                   	inc    %ecx
  1a:	89 f0                	mov    %esi,%eax
  1c:	eb ee                	jmp    c <find_cb_subtable+0xc>
  1e:	31 c0                	xor    %eax,%eax
  20:	5b                   	pop    %ebx
  21:	5e                   	pop    %esi
  22:	c3                   	ret    

Disassembly of section .text.find_cb_table:

00000000 <find_cb_table>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	8b 1d 00 00 00 00    	mov    0x0,%ebx
   8:	85 db                	test   %ebx,%ebx
   a:	75 4e                	jne    5a <find_cb_table+0x5a>
   c:	ba 00 10 00 00       	mov    $0x1000,%edx
  11:	31 c0                	xor    %eax,%eax
  13:	e8 fc ff ff ff       	call   14 <find_cb_table+0x14>
  18:	a3 00 00 00 00       	mov    %eax,0x0
  1d:	85 c0                	test   %eax,%eax
  1f:	74 39                	je     5a <find_cb_table+0x5a>
  21:	ba 11 00 00 00       	mov    $0x11,%edx
  26:	e8 fc ff ff ff       	call   27 <find_cb_table+0x27>
  2b:	89 c6                	mov    %eax,%esi
  2d:	85 c0                	test   %eax,%eax
  2f:	75 08                	jne    39 <find_cb_table+0x39>
  31:	8b 1d 00 00 00 00    	mov    0x0,%ebx
  37:	eb 21                	jmp    5a <find_cb_table+0x5a>
  39:	68 00 00 00 00       	push   $0x0
  3e:	e8 fc ff ff ff       	call   3f <find_cb_table+0x3f>
  43:	8b 46 08             	mov    0x8(%esi),%eax
  46:	ba 00 01 00 00       	mov    $0x100,%edx
  4b:	e8 fc ff ff ff       	call   4c <find_cb_table+0x4c>
  50:	a3 00 00 00 00       	mov    %eax,0x0
  55:	5a                   	pop    %edx
  56:	85 c0                	test   %eax,%eax
  58:	75 d7                	jne    31 <find_cb_table+0x31>
  5a:	89 d8                	mov    %ebx,%eax
  5c:	5b                   	pop    %ebx
  5d:	5e                   	pop    %esi
  5e:	c3                   	ret    

Disassembly of section .text.coreboot_preinit:

00000000 <coreboot_preinit>:
   0:	c3                   	ret    

Disassembly of section .text.coreboot_debug_putc:

00000000 <coreboot_debug_putc>:
   0:	c3                   	ret    

Disassembly of section .text.coreboot_platform_setup:

00000000 <coreboot_platform_setup>:
   0:	c3                   	ret    

Disassembly of section .text.coreboot_cbfs_init:

00000000 <coreboot_cbfs_init>:
   0:	c3                   	ret    

Disassembly of section .text.cbfs_run_payload:

00000000 <cbfs_run_payload>:
   0:	c3                   	ret    

Disassembly of section .text.cbfs_payload_setup:

00000000 <cbfs_payload_setup>:
   0:	c3                   	ret    
