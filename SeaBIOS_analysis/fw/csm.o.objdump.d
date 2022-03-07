
./csm.o:     file format elf32-i386


Disassembly of section .text.csm_prio_to_seabios:

00000000 <csm_prio_to_seabios>:
   0:	0f b7 c8             	movzwl %ax,%ecx
   3:	83 ca ff             	or     $0xffffffff,%edx
   6:	66 83 f8 fc          	cmp    $0xfffc,%ax
   a:	74 07                	je     13 <csm_prio_to_seabios+0x13>
   c:	66 40                	inc    %ax
   e:	74 03                	je     13 <csm_prio_to_seabios+0x13>
  10:	8d 51 01             	lea    0x1(%ecx),%edx
  13:	89 d0                	mov    %edx,%eax
  15:	c3                   	ret    

Disassembly of section .text.init.src/fw/csm.c.293:

00000000 <handle_csm>:
   0:	c3                   	ret    

Disassembly of section .text.csm_bootprio_ata:

00000000 <csm_bootprio_ata>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	8b 35 00 00 00 00    	mov    0x0,%esi
   8:	85 f6                	test   %esi,%esi
   a:	74 32                	je     3e <csm_bootprio_ata+0x3e>
   c:	89 d0                	mov    %edx,%eax
   e:	89 ca                	mov    %ecx,%edx
  10:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
  13:	8d 4c 0a 01          	lea    0x1(%edx,%ecx,1),%ecx
  17:	6b d9 45             	imul   $0x45,%ecx,%ebx
  1a:	03 9e ed 20 00 00    	add    0x20ed(%esi),%ebx
  20:	0f b7 33             	movzwl (%ebx),%esi
  23:	56                   	push   %esi
  24:	51                   	push   %ecx
  25:	52                   	push   %edx
  26:	50                   	push   %eax
  27:	68 00 00 00 00       	push   $0x0
  2c:	e8 fc ff ff ff       	call   2d <csm_bootprio_ata+0x2d>
  31:	83 c4 14             	add    $0x14,%esp
  34:	0f b7 03             	movzwl (%ebx),%eax
  37:	5b                   	pop    %ebx
  38:	5e                   	pop    %esi
  39:	e9 fc ff ff ff       	jmp    3a <csm_bootprio_ata+0x3a>
  3e:	83 c8 ff             	or     $0xffffffff,%eax
  41:	5b                   	pop    %ebx
  42:	5e                   	pop    %esi
  43:	c3                   	ret    

Disassembly of section .text.csm_bootprio_fdc:

00000000 <csm_bootprio_fdc>:
   0:	a1 00 00 00 00       	mov    0x0,%eax
   5:	85 c0                	test   %eax,%eax
   7:	74 20                	je     29 <csm_bootprio_fdc+0x29>
   9:	53                   	push   %ebx
   a:	8b 98 ed 20 00 00    	mov    0x20ed(%eax),%ebx
  10:	0f b7 03             	movzwl (%ebx),%eax
  13:	50                   	push   %eax
  14:	68 2c 00 00 00       	push   $0x2c
  19:	e8 fc ff ff ff       	call   1a <csm_bootprio_fdc+0x1a>
  1e:	58                   	pop    %eax
  1f:	5a                   	pop    %edx
  20:	0f b7 03             	movzwl (%ebx),%eax
  23:	5b                   	pop    %ebx
  24:	e9 fc ff ff ff       	jmp    25 <csm_bootprio_fdc+0x25>
  29:	83 c8 ff             	or     $0xffffffff,%eax
  2c:	c3                   	ret    

Disassembly of section .text.csm_bootprio_pci:

00000000 <csm_bootprio_pci>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 0c             	sub    $0xc,%esp
   7:	89 c5                	mov    %eax,%ebp
   9:	a1 00 00 00 00       	mov    0x0,%eax
   e:	85 c0                	test   %eax,%eax
  10:	74 6c                	je     7e <csm_bootprio_pci+0x7e>
  12:	8b 88 ed 20 00 00    	mov    0x20ed(%eax),%ecx
  18:	89 0c 24             	mov    %ecx,(%esp)
  1b:	8b 80 e9 20 00 00    	mov    0x20e9(%eax),%eax
  21:	89 44 24 04          	mov    %eax,0x4(%esp)
  25:	ba 05 00 00 00       	mov    $0x5,%edx
  2a:	3b 54 24 04          	cmp    0x4(%esp),%edx
  2e:	73 4e                	jae    7e <csm_bootprio_pci+0x7e>
  30:	6b da 45             	imul   $0x45,%edx,%ebx
  33:	03 1c 24             	add    (%esp),%ebx
  36:	8b 7b 0a             	mov    0xa(%ebx),%edi
  39:	8b 73 06             	mov    0x6(%ebx),%esi
  3c:	8b 4b 02             	mov    0x2(%ebx),%ecx
  3f:	89 c8                	mov    %ecx,%eax
  41:	c1 e0 08             	shl    $0x8,%eax
  44:	89 44 24 08          	mov    %eax,0x8(%esp)
  48:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
  4f:	0b 44 24 08          	or     0x8(%esp),%eax
  53:	09 f8                	or     %edi,%eax
  55:	66 39 45 00          	cmp    %ax,0x0(%ebp)
  59:	75 20                	jne    7b <csm_bootprio_pci+0x7b>
  5b:	0f b7 03             	movzwl (%ebx),%eax
  5e:	50                   	push   %eax
  5f:	57                   	push   %edi
  60:	56                   	push   %esi
  61:	51                   	push   %ecx
  62:	68 48 00 00 00       	push   $0x48
  67:	e8 fc ff ff ff       	call   68 <csm_bootprio_pci+0x68>
  6c:	0f b7 03             	movzwl (%ebx),%eax
  6f:	83 c4 20             	add    $0x20,%esp
  72:	5b                   	pop    %ebx
  73:	5e                   	pop    %esi
  74:	5f                   	pop    %edi
  75:	5d                   	pop    %ebp
  76:	e9 fc ff ff ff       	jmp    77 <csm_bootprio_pci+0x77>
  7b:	42                   	inc    %edx
  7c:	eb ac                	jmp    2a <csm_bootprio_pci+0x2a>
  7e:	83 c8 ff             	or     $0xffffffff,%eax
  81:	83 c4 0c             	add    $0xc,%esp
  84:	5b                   	pop    %ebx
  85:	5e                   	pop    %esi
  86:	5f                   	pop    %edi
  87:	5d                   	pop    %ebp
  88:	c3                   	ret    
