
./virtio-pci.o:     file format elf32-i386


Disassembly of section .text._vp_read:

00000000 <_vp_read>:
   0:	57                   	push   %edi
   1:	8d 7c 24 08          	lea    0x8(%esp),%edi
   5:	83 e4 f8             	and    $0xfffffff8,%esp
   8:	ff 77 fc             	push   -0x4(%edi)
   b:	55                   	push   %ebp
   c:	89 e5                	mov    %esp,%ebp
   e:	57                   	push   %edi
   f:	56                   	push   %esi
  10:	53                   	push   %ebx
  11:	83 ec 1c             	sub    $0x1c,%esp
  14:	89 c3                	mov    %eax,%ebx
  16:	89 55 e8             	mov    %edx,-0x18(%ebp)
  19:	89 4d ec             	mov    %ecx,-0x14(%ebp)
  1c:	8a 40 09             	mov    0x9(%eax),%al
  1f:	8b 33                	mov    (%ebx),%esi
  21:	3c 02                	cmp    $0x2,%al
  23:	74 61                	je     86 <_vp_read+0x86>
  25:	3c 03                	cmp    $0x3,%al
  27:	0f 84 a2 00 00 00    	je     cf <_vp_read+0xcf>
  2d:	fe c8                	dec    %al
  2f:	74 07                	je     38 <_vp_read+0x38>
  31:	31 f6                	xor    %esi,%esi
  33:	e9 8e 01 00 00       	jmp    1c6 <_vp_read+0x1c6>
  38:	8b 45 e8             	mov    -0x18(%ebp),%eax
  3b:	8d 14 30             	lea    (%eax,%esi,1),%edx
  3e:	80 7d ec 04          	cmpb   $0x4,-0x14(%ebp)
  42:	74 36                	je     7a <_vp_read+0x7a>
  44:	77 13                	ja     59 <_vp_read+0x59>
  46:	80 7d ec 01          	cmpb   $0x1,-0x14(%ebp)
  4a:	74 34                	je     80 <_vp_read+0x80>
  4c:	80 7d ec 02          	cmpb   $0x2,-0x14(%ebp)
  50:	75 df                	jne    31 <_vp_read+0x31>
  52:	66 ed                	in     (%dx),%ax
  54:	e9 55 01 00 00       	jmp    1ae <_vp_read+0x1ae>
  59:	80 7d ec 08          	cmpb   $0x8,-0x14(%ebp)
  5d:	75 d2                	jne    31 <_vp_read+0x31>
  5f:	ed                   	in     (%dx),%eax
  60:	89 c1                	mov    %eax,%ecx
  62:	89 45 e0             	mov    %eax,-0x20(%ebp)
  65:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  6c:	83 c2 04             	add    $0x4,%edx
  6f:	ed                   	in     (%dx),%eax
  70:	89 ce                	mov    %ecx,%esi
  72:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
  75:	e9 1a 01 00 00       	jmp    194 <_vp_read+0x194>
  7a:	ed                   	in     (%dx),%eax
  7b:	e9 2a 01 00 00       	jmp    1aa <_vp_read+0x1aa>
  80:	ec                   	in     (%dx),%al
  81:	e9 3d 01 00 00       	jmp    1c3 <_vp_read+0x1c3>
  86:	03 75 e8             	add    -0x18(%ebp),%esi
  89:	80 7d ec 04          	cmpb   $0x4,-0x14(%ebp)
  8d:	74 34                	je     c3 <_vp_read+0xc3>
  8f:	77 11                	ja     a2 <_vp_read+0xa2>
  91:	80 7d ec 01          	cmpb   $0x1,-0x14(%ebp)
  95:	74 30                	je     c7 <_vp_read+0xc7>
  97:	80 7d ec 02          	cmpb   $0x2,-0x14(%ebp)
  9b:	75 94                	jne    31 <_vp_read+0x31>
  9d:	0f b7 36             	movzwl (%esi),%esi
  a0:	eb 28                	jmp    ca <_vp_read+0xca>
  a2:	80 7d ec 08          	cmpb   $0x8,-0x14(%ebp)
  a6:	75 89                	jne    31 <_vp_read+0x31>
  a8:	8b 06                	mov    (%esi),%eax
  aa:	89 45 e0             	mov    %eax,-0x20(%ebp)
  ad:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  b4:	8b 56 04             	mov    0x4(%esi),%edx
  b7:	89 c6                	mov    %eax,%esi
  b9:	0b 55 e4             	or     -0x1c(%ebp),%edx
  bc:	89 d7                	mov    %edx,%edi
  be:	e9 05 01 00 00       	jmp    1c8 <_vp_read+0x1c8>
  c3:	8b 36                	mov    (%esi),%esi
  c5:	eb 03                	jmp    ca <_vp_read+0xca>
  c7:	0f b6 36             	movzbl (%esi),%esi
  ca:	e9 f7 00 00 00       	jmp    1c6 <_vp_read+0x1c6>
  cf:	03 75 e8             	add    -0x18(%ebp),%esi
  d2:	0f b6 4b 08          	movzbl 0x8(%ebx),%ecx
  d6:	0f b6 53 07          	movzbl 0x7(%ebx),%edx
  da:	83 c2 04             	add    $0x4,%edx
  dd:	0f b7 43 04          	movzwl 0x4(%ebx),%eax
  e1:	e8 fc ff ff ff       	call   e2 <_vp_read+0xe2>
  e6:	0f b6 53 07          	movzbl 0x7(%ebx),%edx
  ea:	83 c2 08             	add    $0x8,%edx
  ed:	0f b7 43 04          	movzwl 0x4(%ebx),%eax
  f1:	89 f1                	mov    %esi,%ecx
  f3:	e8 fc ff ff ff       	call   f4 <_vp_read+0xf4>
  f8:	0f b6 4d ec          	movzbl -0x14(%ebp),%ecx
  fc:	80 f9 04             	cmp    $0x4,%cl
  ff:	76 05                	jbe    106 <_vp_read+0x106>
 101:	b9 04 00 00 00       	mov    $0x4,%ecx
 106:	0f b6 53 07          	movzbl 0x7(%ebx),%edx
 10a:	83 c2 0c             	add    $0xc,%edx
 10d:	0f b7 43 04          	movzwl 0x4(%ebx),%eax
 111:	e8 fc ff ff ff       	call   112 <_vp_read+0x112>
 116:	80 7d ec 04          	cmpb   $0x4,-0x14(%ebp)
 11a:	74 7e                	je     19a <_vp_read+0x19a>
 11c:	77 26                	ja     144 <_vp_read+0x144>
 11e:	80 7d ec 01          	cmpb   $0x1,-0x14(%ebp)
 122:	0f 84 8b 00 00 00    	je     1b3 <_vp_read+0x1b3>
 128:	80 7d ec 02          	cmpb   $0x2,-0x14(%ebp)
 12c:	0f 85 ff fe ff ff    	jne    31 <_vp_read+0x31>
 132:	0f b6 53 07          	movzbl 0x7(%ebx),%edx
 136:	83 c2 10             	add    $0x10,%edx
 139:	0f b7 43 04          	movzwl 0x4(%ebx),%eax
 13d:	e8 fc ff ff ff       	call   13e <_vp_read+0x13e>
 142:	eb 6a                	jmp    1ae <_vp_read+0x1ae>
 144:	80 7d ec 08          	cmpb   $0x8,-0x14(%ebp)
 148:	0f 85 e3 fe ff ff    	jne    31 <_vp_read+0x31>
 14e:	0f b6 53 07          	movzbl 0x7(%ebx),%edx
 152:	83 c2 10             	add    $0x10,%edx
 155:	0f b7 43 04          	movzwl 0x4(%ebx),%eax
 159:	e8 fc ff ff ff       	call   15a <_vp_read+0x15a>
 15e:	89 45 e0             	mov    %eax,-0x20(%ebp)
 161:	89 45 d8             	mov    %eax,-0x28(%ebp)
 164:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
 16b:	8d 4e 04             	lea    0x4(%esi),%ecx
 16e:	0f b6 53 07          	movzbl 0x7(%ebx),%edx
 172:	83 c2 08             	add    $0x8,%edx
 175:	0f b7 43 04          	movzwl 0x4(%ebx),%eax
 179:	e8 fc ff ff ff       	call   17a <_vp_read+0x17a>
 17e:	0f b6 53 07          	movzbl 0x7(%ebx),%edx
 182:	83 c2 10             	add    $0x10,%edx
 185:	0f b7 43 04          	movzwl 0x4(%ebx),%eax
 189:	e8 fc ff ff ff       	call   18a <_vp_read+0x18a>
 18e:	8b 75 e0             	mov    -0x20(%ebp),%esi
 191:	8b 4d dc             	mov    -0x24(%ebp),%ecx
 194:	09 c1                	or     %eax,%ecx
 196:	89 cf                	mov    %ecx,%edi
 198:	eb 2e                	jmp    1c8 <_vp_read+0x1c8>
 19a:	0f b6 53 07          	movzbl 0x7(%ebx),%edx
 19e:	83 c2 10             	add    $0x10,%edx
 1a1:	0f b7 43 04          	movzwl 0x4(%ebx),%eax
 1a5:	e8 fc ff ff ff       	call   1a6 <_vp_read+0x1a6>
 1aa:	89 c6                	mov    %eax,%esi
 1ac:	eb 18                	jmp    1c6 <_vp_read+0x1c6>
 1ae:	0f b7 f0             	movzwl %ax,%esi
 1b1:	eb 13                	jmp    1c6 <_vp_read+0x1c6>
 1b3:	0f b6 53 07          	movzbl 0x7(%ebx),%edx
 1b7:	83 c2 10             	add    $0x10,%edx
 1ba:	0f b7 43 04          	movzwl 0x4(%ebx),%eax
 1be:	e8 fc ff ff ff       	call   1bf <_vp_read+0x1bf>
 1c3:	0f b6 f0             	movzbl %al,%esi
 1c6:	31 ff                	xor    %edi,%edi
 1c8:	57                   	push   %edi
 1c9:	56                   	push   %esi
 1ca:	0f b6 45 ec          	movzbl -0x14(%ebp),%eax
 1ce:	50                   	push   %eax
 1cf:	8b 45 e8             	mov    -0x18(%ebp),%eax
 1d2:	03 03                	add    (%ebx),%eax
 1d4:	50                   	push   %eax
 1d5:	68 00 00 00 00       	push   $0x0
 1da:	e8 fc ff ff ff       	call   1db <_vp_read+0x1db>
 1df:	83 c4 14             	add    $0x14,%esp
 1e2:	89 f0                	mov    %esi,%eax
 1e4:	89 fa                	mov    %edi,%edx
 1e6:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1e9:	5b                   	pop    %ebx
 1ea:	5e                   	pop    %esi
 1eb:	5f                   	pop    %edi
 1ec:	5d                   	pop    %ebp
 1ed:	8d 67 f8             	lea    -0x8(%edi),%esp
 1f0:	5f                   	pop    %edi
 1f1:	c3                   	ret    

Disassembly of section .text._vp_write:

00000000 <_vp_write>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	55                   	push   %ebp
   5:	89 c5                	mov    %eax,%ebp
   7:	89 cb                	mov    %ecx,%ebx
   9:	8b 74 24 18          	mov    0x18(%esp),%esi
   d:	8b 7c 24 1c          	mov    0x1c(%esp),%edi
  11:	57                   	push   %edi
  12:	56                   	push   %esi
  13:	0f b6 c1             	movzbl %cl,%eax
  16:	89 44 24 08          	mov    %eax,0x8(%esp)
  1a:	50                   	push   %eax
  1b:	89 d0                	mov    %edx,%eax
  1d:	89 54 24 0c          	mov    %edx,0xc(%esp)
  21:	03 45 00             	add    0x0(%ebp),%eax
  24:	50                   	push   %eax
  25:	68 1d 00 00 00       	push   $0x1d
  2a:	e8 fc ff ff ff       	call   2b <_vp_write+0x2b>
  2f:	8a 45 09             	mov    0x9(%ebp),%al
  32:	83 c4 14             	add    $0x14,%esp
  35:	3c 02                	cmp    $0x2,%al
  37:	8b 14 24             	mov    (%esp),%edx
  3a:	74 3a                	je     76 <_vp_write+0x76>
  3c:	3c 03                	cmp    $0x3,%al
  3e:	74 63                	je     a3 <_vp_write+0xa3>
  40:	fe c8                	dec    %al
  42:	0f 85 f2 00 00 00    	jne    13a <_vp_write+0x13a>
  48:	03 55 00             	add    0x0(%ebp),%edx
  4b:	80 fb 02             	cmp    $0x2,%bl
  4e:	74 1d                	je     6d <_vp_write+0x6d>
  50:	80 fb 04             	cmp    $0x4,%bl
  53:	74 10                	je     65 <_vp_write+0x65>
  55:	fe cb                	dec    %bl
  57:	0f 85 dd 00 00 00    	jne    13a <_vp_write+0x13a>
  5d:	89 f0                	mov    %esi,%eax
  5f:	ee                   	out    %al,(%dx)
  60:	e9 d5 00 00 00       	jmp    13a <_vp_write+0x13a>
  65:	89 f0                	mov    %esi,%eax
  67:	ef                   	out    %eax,(%dx)
  68:	e9 cd 00 00 00       	jmp    13a <_vp_write+0x13a>
  6d:	89 f0                	mov    %esi,%eax
  6f:	66 ef                	out    %ax,(%dx)
  71:	e9 c4 00 00 00       	jmp    13a <_vp_write+0x13a>
  76:	03 55 00             	add    0x0(%ebp),%edx
  79:	80 fb 02             	cmp    $0x2,%bl
  7c:	74 1d                	je     9b <_vp_write+0x9b>
  7e:	80 fb 04             	cmp    $0x4,%bl
  81:	74 11                	je     94 <_vp_write+0x94>
  83:	fe cb                	dec    %bl
  85:	0f 85 af 00 00 00    	jne    13a <_vp_write+0x13a>
  8b:	89 f0                	mov    %esi,%eax
  8d:	88 02                	mov    %al,(%edx)
  8f:	e9 a6 00 00 00       	jmp    13a <_vp_write+0x13a>
  94:	89 32                	mov    %esi,(%edx)
  96:	e9 9f 00 00 00       	jmp    13a <_vp_write+0x13a>
  9b:	66 89 32             	mov    %si,(%edx)
  9e:	e9 97 00 00 00       	jmp    13a <_vp_write+0x13a>
  a3:	03 55 00             	add    0x0(%ebp),%edx
  a6:	89 14 24             	mov    %edx,(%esp)
  a9:	0f b6 4d 08          	movzbl 0x8(%ebp),%ecx
  ad:	0f b6 55 07          	movzbl 0x7(%ebp),%edx
  b1:	83 c2 04             	add    $0x4,%edx
  b4:	0f b7 45 04          	movzwl 0x4(%ebp),%eax
  b8:	e8 fc ff ff ff       	call   b9 <_vp_write+0xb9>
  bd:	0f b6 55 07          	movzbl 0x7(%ebp),%edx
  c1:	83 c2 08             	add    $0x8,%edx
  c4:	0f b7 45 04          	movzwl 0x4(%ebp),%eax
  c8:	8b 0c 24             	mov    (%esp),%ecx
  cb:	e8 fc ff ff ff       	call   cc <_vp_write+0xcc>
  d0:	0f b6 55 07          	movzbl 0x7(%ebp),%edx
  d4:	83 c2 0c             	add    $0xc,%edx
  d7:	0f b7 45 04          	movzwl 0x4(%ebp),%eax
  db:	0f b6 cb             	movzbl %bl,%ecx
  de:	e8 fc ff ff ff       	call   df <_vp_write+0xdf>
  e3:	80 fb 02             	cmp    $0x2,%bl
  e6:	74 3a                	je     122 <_vp_write+0x122>
  e8:	80 fb 04             	cmp    $0x4,%bl
  eb:	74 1e                	je     10b <_vp_write+0x10b>
  ed:	fe cb                	dec    %bl
  ef:	75 49                	jne    13a <_vp_write+0x13a>
  f1:	89 f0                	mov    %esi,%eax
  f3:	0f b6 c8             	movzbl %al,%ecx
  f6:	0f b6 55 07          	movzbl 0x7(%ebp),%edx
  fa:	83 c2 10             	add    $0x10,%edx
  fd:	0f b7 45 04          	movzwl 0x4(%ebp),%eax
 101:	5b                   	pop    %ebx
 102:	5b                   	pop    %ebx
 103:	5e                   	pop    %esi
 104:	5f                   	pop    %edi
 105:	5d                   	pop    %ebp
 106:	e9 fc ff ff ff       	jmp    107 <_vp_write+0x107>
 10b:	0f b6 55 07          	movzbl 0x7(%ebp),%edx
 10f:	83 c2 10             	add    $0x10,%edx
 112:	0f b7 45 04          	movzwl 0x4(%ebp),%eax
 116:	89 f1                	mov    %esi,%ecx
 118:	5f                   	pop    %edi
 119:	5b                   	pop    %ebx
 11a:	5e                   	pop    %esi
 11b:	5f                   	pop    %edi
 11c:	5d                   	pop    %ebp
 11d:	e9 fc ff ff ff       	jmp    11e <_vp_write+0x11e>
 122:	0f b7 ce             	movzwl %si,%ecx
 125:	0f b6 55 07          	movzbl 0x7(%ebp),%edx
 129:	83 c2 10             	add    $0x10,%edx
 12c:	0f b7 45 04          	movzwl 0x4(%ebp),%eax
 130:	5e                   	pop    %esi
 131:	5b                   	pop    %ebx
 132:	5e                   	pop    %esi
 133:	5f                   	pop    %edi
 134:	5d                   	pop    %ebp
 135:	e9 fc ff ff ff       	jmp    136 <_vp_write+0x136>
 13a:	58                   	pop    %eax
 13b:	5b                   	pop    %ebx
 13c:	5e                   	pop    %esi
 13d:	5f                   	pop    %edi
 13e:	5d                   	pop    %ebp
 13f:	c3                   	ret    

Disassembly of section .text.vp_get_features:

00000000 <vp_get_features>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	57                   	push   %edi
   4:	56                   	push   %esi
   5:	53                   	push   %ebx
   6:	89 c3                	mov    %eax,%ebx
   8:	80 78 41 00          	cmpb   $0x0,0x41(%eax)
   c:	74 2a                	je     38 <vp_get_features+0x38>
   e:	6a 00                	push   $0x0
  10:	6a 00                	push   $0x0
  12:	b9 04 00 00 00       	mov    $0x4,%ecx
  17:	ba 14 00 00 00       	mov    $0x14,%edx
  1c:	e8 fc ff ff ff       	call   1d <vp_get_features+0x1d>
  21:	b9 04 00 00 00       	mov    $0x4,%ecx
  26:	ba 10 00 00 00       	mov    $0x10,%edx
  2b:	89 d8                	mov    %ebx,%eax
  2d:	e8 fc ff ff ff       	call   2e <vp_get_features+0x2e>
  32:	89 c6                	mov    %eax,%esi
  34:	58                   	pop    %eax
  35:	5a                   	pop    %edx
  36:	eb 62                	jmp    9a <vp_get_features+0x9a>
  38:	80 78 40 00          	cmpb   $0x0,0x40(%eax)
  3c:	74 4b                	je     89 <vp_get_features+0x89>
  3e:	6a 00                	push   $0x0
  40:	6a 00                	push   $0x0
  42:	b9 04 00 00 00       	mov    $0x4,%ecx
  47:	31 d2                	xor    %edx,%edx
  49:	e8 fc ff ff ff       	call   4a <vp_get_features+0x4a>
  4e:	b9 04 00 00 00       	mov    $0x4,%ecx
  53:	ba 04 00 00 00       	mov    $0x4,%edx
  58:	89 d8                	mov    %ebx,%eax
  5a:	e8 fc ff ff ff       	call   5b <vp_get_features+0x5b>
  5f:	89 c6                	mov    %eax,%esi
  61:	6a 00                	push   $0x0
  63:	6a 01                	push   $0x1
  65:	b9 04 00 00 00       	mov    $0x4,%ecx
  6a:	31 d2                	xor    %edx,%edx
  6c:	89 d8                	mov    %ebx,%eax
  6e:	e8 fc ff ff ff       	call   6f <vp_get_features+0x6f>
  73:	b9 04 00 00 00       	mov    $0x4,%ecx
  78:	ba 04 00 00 00       	mov    $0x4,%edx
  7d:	89 d8                	mov    %ebx,%eax
  7f:	e8 fc ff ff ff       	call   80 <vp_get_features+0x80>
  84:	83 c4 10             	add    $0x10,%esp
  87:	eb 13                	jmp    9c <vp_get_features+0x9c>
  89:	8d 40 30             	lea    0x30(%eax),%eax
  8c:	b9 04 00 00 00       	mov    $0x4,%ecx
  91:	31 d2                	xor    %edx,%edx
  93:	e8 fc ff ff ff       	call   94 <vp_get_features+0x94>
  98:	89 c6                	mov    %eax,%esi
  9a:	31 c0                	xor    %eax,%eax
  9c:	89 c2                	mov    %eax,%edx
  9e:	89 f0                	mov    %esi,%eax
  a0:	8d 65 f4             	lea    -0xc(%ebp),%esp
  a3:	5b                   	pop    %ebx
  a4:	5e                   	pop    %esi
  a5:	5f                   	pop    %edi
  a6:	5d                   	pop    %ebp
  a7:	c3                   	ret    

Disassembly of section .text.vp_set_features:

00000000 <vp_set_features>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	53                   	push   %ebx
   4:	89 d6                	mov    %edx,%esi
   6:	31 ff                	xor    %edi,%edi
   8:	80 78 41 00          	cmpb   $0x0,0x41(%eax)
   c:	74 2f                	je     3d <vp_set_features+0x3d>
   e:	57                   	push   %edi
   f:	52                   	push   %edx
  10:	b9 04 00 00 00       	mov    $0x4,%ecx
  15:	ba 24 00 00 00       	mov    $0x24,%edx
  1a:	89 44 24 08          	mov    %eax,0x8(%esp)
  1e:	e8 fc ff ff ff       	call   1f <vp_set_features+0x1f>
  23:	57                   	push   %edi
  24:	56                   	push   %esi
  25:	b9 04 00 00 00       	mov    $0x4,%ecx
  2a:	ba 20 00 00 00       	mov    $0x20,%edx
  2f:	8b 44 24 10          	mov    0x10(%esp),%eax
  33:	e8 fc ff ff ff       	call   34 <vp_set_features+0x34>
  38:	83 c4 10             	add    $0x10,%esp
  3b:	eb 7d                	jmp    ba <vp_set_features+0xba>
  3d:	80 78 40 00          	cmpb   $0x0,0x40(%eax)
  41:	74 61                	je     a4 <vp_set_features+0xa4>
  43:	89 cb                	mov    %ecx,%ebx
  45:	6a 00                	push   $0x0
  47:	6a 00                	push   $0x0
  49:	b9 04 00 00 00       	mov    $0x4,%ecx
  4e:	ba 08 00 00 00       	mov    $0x8,%edx
  53:	89 44 24 08          	mov    %eax,0x8(%esp)
  57:	e8 fc ff ff ff       	call   58 <vp_set_features+0x58>
  5c:	57                   	push   %edi
  5d:	56                   	push   %esi
  5e:	b9 04 00 00 00       	mov    $0x4,%ecx
  63:	ba 0c 00 00 00       	mov    $0xc,%edx
  68:	8b 44 24 10          	mov    0x10(%esp),%eax
  6c:	e8 fc ff ff ff       	call   6d <vp_set_features+0x6d>
  71:	6a 00                	push   $0x0
  73:	6a 01                	push   $0x1
  75:	b9 04 00 00 00       	mov    $0x4,%ecx
  7a:	ba 08 00 00 00       	mov    $0x8,%edx
  7f:	8b 44 24 18          	mov    0x18(%esp),%eax
  83:	e8 fc ff ff ff       	call   84 <vp_set_features+0x84>
  88:	31 ff                	xor    %edi,%edi
  8a:	57                   	push   %edi
  8b:	53                   	push   %ebx
  8c:	b9 04 00 00 00       	mov    $0x4,%ecx
  91:	ba 0c 00 00 00       	mov    $0xc,%edx
  96:	8b 44 24 20          	mov    0x20(%esp),%eax
  9a:	e8 fc ff ff ff       	call   9b <vp_set_features+0x9b>
  9f:	83 c4 20             	add    $0x20,%esp
  a2:	eb 16                	jmp    ba <vp_set_features+0xba>
  a4:	83 c0 30             	add    $0x30,%eax
  a7:	57                   	push   %edi
  a8:	52                   	push   %edx
  a9:	b9 04 00 00 00       	mov    $0x4,%ecx
  ae:	ba 04 00 00 00       	mov    $0x4,%edx
  b3:	e8 fc ff ff ff       	call   b4 <vp_set_features+0xb4>
  b8:	5a                   	pop    %edx
  b9:	59                   	pop    %ecx
  ba:	58                   	pop    %eax
  bb:	5b                   	pop    %ebx
  bc:	5e                   	pop    %esi
  bd:	5f                   	pop    %edi
  be:	c3                   	ret    

Disassembly of section .text.vp_get_status:

00000000 <vp_get_status>:
   0:	80 78 41 00          	cmpb   $0x0,0x41(%eax)
   4:	74 0c                	je     12 <vp_get_status+0x12>
   6:	b9 04 00 00 00       	mov    $0x4,%ecx
   b:	ba 70 00 00 00       	mov    $0x70,%edx
  10:	eb 1f                	jmp    31 <vp_get_status+0x31>
  12:	80 78 40 00          	cmpb   $0x0,0x40(%eax)
  16:	74 0c                	je     24 <vp_get_status+0x24>
  18:	b9 01 00 00 00       	mov    $0x1,%ecx
  1d:	ba 14 00 00 00       	mov    $0x14,%edx
  22:	eb 0d                	jmp    31 <vp_get_status+0x31>
  24:	83 c0 30             	add    $0x30,%eax
  27:	b9 01 00 00 00       	mov    $0x1,%ecx
  2c:	ba 12 00 00 00       	mov    $0x12,%edx
  31:	e8 fc ff ff ff       	call   32 <vp_get_status+0x32>
  36:	c3                   	ret    

Disassembly of section .text.vp_set_status:

00000000 <vp_set_status>:
   0:	84 d2                	test   %dl,%dl
   2:	74 46                	je     4a <vp_set_status+0x4a>
   4:	53                   	push   %ebx
   5:	0f b6 ca             	movzbl %dl,%ecx
   8:	31 db                	xor    %ebx,%ebx
   a:	80 78 41 00          	cmpb   $0x0,0x41(%eax)
   e:	74 0e                	je     1e <vp_set_status+0x1e>
  10:	53                   	push   %ebx
  11:	51                   	push   %ecx
  12:	b9 04 00 00 00       	mov    $0x4,%ecx
  17:	ba 70 00 00 00       	mov    $0x70,%edx
  1c:	eb 23                	jmp    41 <vp_set_status+0x41>
  1e:	80 78 40 00          	cmpb   $0x0,0x40(%eax)
  22:	74 0e                	je     32 <vp_set_status+0x32>
  24:	53                   	push   %ebx
  25:	51                   	push   %ecx
  26:	b9 01 00 00 00       	mov    $0x1,%ecx
  2b:	ba 14 00 00 00       	mov    $0x14,%edx
  30:	eb 0f                	jmp    41 <vp_set_status+0x41>
  32:	83 c0 30             	add    $0x30,%eax
  35:	53                   	push   %ebx
  36:	51                   	push   %ecx
  37:	b9 01 00 00 00       	mov    $0x1,%ecx
  3c:	ba 12 00 00 00       	mov    $0x12,%edx
  41:	e8 fc ff ff ff       	call   42 <vp_set_status+0x42>
  46:	58                   	pop    %eax
  47:	5a                   	pop    %edx
  48:	5b                   	pop    %ebx
  49:	c3                   	ret    
  4a:	c3                   	ret    

Disassembly of section .text.vp_get_isr:

00000000 <vp_get_isr>:
   0:	80 78 41 00          	cmpb   $0x0,0x41(%eax)
   4:	74 0c                	je     12 <vp_get_isr+0x12>
   6:	b9 04 00 00 00       	mov    $0x4,%ecx
   b:	ba 60 00 00 00       	mov    $0x60,%edx
  10:	eb 1f                	jmp    31 <vp_get_isr+0x31>
  12:	80 78 40 00          	cmpb   $0x0,0x40(%eax)
  16:	74 0c                	je     24 <vp_get_isr+0x24>
  18:	83 c0 18             	add    $0x18,%eax
  1b:	b9 01 00 00 00       	mov    $0x1,%ecx
  20:	31 d2                	xor    %edx,%edx
  22:	eb 0d                	jmp    31 <vp_get_isr+0x31>
  24:	83 c0 30             	add    $0x30,%eax
  27:	b9 01 00 00 00       	mov    $0x1,%ecx
  2c:	ba 13 00 00 00       	mov    $0x13,%edx
  31:	e8 fc ff ff ff       	call   32 <vp_get_isr+0x32>
  36:	c3                   	ret    

Disassembly of section .text.vp_reset:

00000000 <vp_reset>:
   0:	52                   	push   %edx
   1:	80 78 41 00          	cmpb   $0x0,0x41(%eax)
   5:	74 23                	je     2a <vp_reset+0x2a>
   7:	6a 00                	push   $0x0
   9:	6a 00                	push   $0x0
   b:	b9 04 00 00 00       	mov    $0x4,%ecx
  10:	ba 70 00 00 00       	mov    $0x70,%edx
  15:	89 44 24 08          	mov    %eax,0x8(%esp)
  19:	e8 fc ff ff ff       	call   1a <vp_reset+0x1a>
  1e:	b9 04 00 00 00       	mov    $0x4,%ecx
  23:	ba 60 00 00 00       	mov    $0x60,%edx
  28:	eb 51                	jmp    7b <vp_reset+0x7b>
  2a:	80 78 40 00          	cmpb   $0x0,0x40(%eax)
  2e:	74 27                	je     57 <vp_reset+0x57>
  30:	6a 00                	push   $0x0
  32:	6a 00                	push   $0x0
  34:	b9 01 00 00 00       	mov    $0x1,%ecx
  39:	ba 14 00 00 00       	mov    $0x14,%edx
  3e:	89 44 24 08          	mov    %eax,0x8(%esp)
  42:	e8 fc ff ff ff       	call   43 <vp_reset+0x43>
  47:	8b 44 24 08          	mov    0x8(%esp),%eax
  4b:	83 c0 18             	add    $0x18,%eax
  4e:	b9 01 00 00 00       	mov    $0x1,%ecx
  53:	31 d2                	xor    %edx,%edx
  55:	eb 28                	jmp    7f <vp_reset+0x7f>
  57:	83 c0 30             	add    $0x30,%eax
  5a:	6a 00                	push   $0x0
  5c:	6a 00                	push   $0x0
  5e:	b9 01 00 00 00       	mov    $0x1,%ecx
  63:	ba 12 00 00 00       	mov    $0x12,%edx
  68:	89 44 24 08          	mov    %eax,0x8(%esp)
  6c:	e8 fc ff ff ff       	call   6d <vp_reset+0x6d>
  71:	b9 01 00 00 00       	mov    $0x1,%ecx
  76:	ba 13 00 00 00       	mov    $0x13,%edx
  7b:	8b 44 24 08          	mov    0x8(%esp),%eax
  7f:	83 c4 0c             	add    $0xc,%esp
  82:	e9 fc ff ff ff       	jmp    83 <vp_reset+0x83>

Disassembly of section .text.vp_notify:

00000000 <vp_notify>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	89 c3                	mov    %eax,%ebx
   5:	89 d7                	mov    %edx,%edi
   7:	80 78 41 00          	cmpb   $0x0,0x41(%eax)
   b:	74 1a                	je     27 <vp_notify+0x27>
   d:	8b 82 18 2a 00 00    	mov    0x2a18(%edx),%eax
  13:	99                   	cltd   
  14:	52                   	push   %edx
  15:	50                   	push   %eax
  16:	b9 04 00 00 00       	mov    $0x4,%ecx
  1b:	ba 50 00 00 00       	mov    $0x50,%edx
  20:	89 d8                	mov    %ebx,%eax
  22:	e9 c9 00 00 00       	jmp    f0 <vp_notify+0xf0>
  27:	80 78 40 00          	cmpb   $0x0,0x40(%eax)
  2b:	0f 84 a5 00 00 00    	je     d6 <vp_notify+0xd6>
  31:	8b b2 1c 2a 00 00    	mov    0x2a1c(%edx),%esi
  37:	0f af 70 3c          	imul   0x3c(%eax),%esi
  3b:	8a 40 15             	mov    0x15(%eax),%al
  3e:	3c 02                	cmp    $0x2,%al
  40:	74 17                	je     59 <vp_notify+0x59>
  42:	3c 03                	cmp    $0x3,%al
  44:	74 21                	je     67 <vp_notify+0x67>
  46:	fe c8                	dec    %al
  48:	75 72                	jne    bc <vp_notify+0xbc>
  4a:	8b 82 18 2a 00 00    	mov    0x2a18(%edx),%eax
  50:	89 f2                	mov    %esi,%edx
  52:	03 53 0c             	add    0xc(%ebx),%edx
  55:	66 ef                	out    %ax,(%dx)
  57:	eb 63                	jmp    bc <vp_notify+0xbc>
  59:	8b 82 18 2a 00 00    	mov    0x2a18(%edx),%eax
  5f:	03 73 0c             	add    0xc(%ebx),%esi
  62:	66 89 06             	mov    %ax,(%esi)
  65:	eb 55                	jmp    bc <vp_notify+0xbc>
  67:	0f b6 4b 14          	movzbl 0x14(%ebx),%ecx
  6b:	0f b6 53 13          	movzbl 0x13(%ebx),%edx
  6f:	83 c2 04             	add    $0x4,%edx
  72:	0f b7 43 10          	movzwl 0x10(%ebx),%eax
  76:	e8 fc ff ff ff       	call   77 <vp_notify+0x77>
  7b:	03 73 0c             	add    0xc(%ebx),%esi
  7e:	89 f1                	mov    %esi,%ecx
  80:	0f b6 53 13          	movzbl 0x13(%ebx),%edx
  84:	83 c2 08             	add    $0x8,%edx
  87:	0f b7 43 10          	movzwl 0x10(%ebx),%eax
  8b:	e8 fc ff ff ff       	call   8c <vp_notify+0x8c>
  90:	0f b6 53 13          	movzbl 0x13(%ebx),%edx
  94:	83 c2 0c             	add    $0xc,%edx
  97:	0f b7 43 10          	movzwl 0x10(%ebx),%eax
  9b:	b9 02 00 00 00       	mov    $0x2,%ecx
  a0:	e8 fc ff ff ff       	call   a1 <vp_notify+0xa1>
  a5:	0f b7 8f 18 2a 00 00 	movzwl 0x2a18(%edi),%ecx
  ac:	0f b6 53 13          	movzbl 0x13(%ebx),%edx
  b0:	83 c2 10             	add    $0x10,%edx
  b3:	0f b7 43 10          	movzwl 0x10(%ebx),%eax
  b7:	e8 fc ff ff ff       	call   b8 <vp_notify+0xb8>
  bc:	ff b7 18 2a 00 00    	push   0x2a18(%edi)
  c2:	6a 02                	push   $0x2
  c4:	ff 73 0c             	push   0xc(%ebx)
  c7:	68 3a 00 00 00       	push   $0x3a
  cc:	e8 fc ff ff ff       	call   cd <vp_notify+0xcd>
  d1:	83 c4 10             	add    $0x10,%esp
  d4:	eb 21                	jmp    f7 <vp_notify+0xf7>
  d6:	8d 40 30             	lea    0x30(%eax),%eax
  d9:	8b 8a 18 2a 00 00    	mov    0x2a18(%edx),%ecx
  df:	89 cb                	mov    %ecx,%ebx
  e1:	c1 fb 1f             	sar    $0x1f,%ebx
  e4:	53                   	push   %ebx
  e5:	51                   	push   %ecx
  e6:	b9 02 00 00 00       	mov    $0x2,%ecx
  eb:	ba 10 00 00 00       	mov    $0x10,%edx
  f0:	e8 fc ff ff ff       	call   f1 <vp_notify+0xf1>
  f5:	58                   	pop    %eax
  f6:	5a                   	pop    %edx
  f7:	5b                   	pop    %ebx
  f8:	5e                   	pop    %esi
  f9:	5f                   	pop    %edi
  fa:	c3                   	ret    

Disassembly of section .text.vp_find_vq:

00000000 <vp_find_vq>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	53                   	push   %ebx
   5:	89 c3                	mov    %eax,%ebx
   7:	89 d5                	mov    %edx,%ebp
   9:	89 0c 24             	mov    %ecx,(%esp)
   c:	b9 00 10 00 00       	mov    $0x1000,%ecx
  11:	ba 20 2a 00 00       	mov    $0x2a20,%edx
  16:	b8 00 00 00 00       	mov    $0x0,%eax
  1b:	e8 fc ff ff ff       	call   1c <vp_find_vq+0x1c>
  20:	89 c7                	mov    %eax,%edi
  22:	8b 04 24             	mov    (%esp),%eax
  25:	89 38                	mov    %edi,(%eax)
  27:	85 ff                	test   %edi,%edi
  29:	75 14                	jne    3f <vp_find_vq+0x3f>
  2b:	ba 00 00 00 00       	mov    $0x0,%edx
  30:	b8 40 01 00 00       	mov    $0x140,%eax
  35:	e8 fc ff ff ff       	call   36 <vp_find_vq+0x36>
  3a:	e9 d2 03 00 00       	jmp    411 <vp_find_vq+0x411>
  3f:	b9 20 2a 00 00       	mov    $0x2a20,%ecx
  44:	31 d2                	xor    %edx,%edx
  46:	89 f8                	mov    %edi,%eax
  48:	e8 fc ff ff ff       	call   49 <vp_find_vq+0x49>
  4d:	89 e9                	mov    %ebp,%ecx
  4f:	c1 f9 1f             	sar    $0x1f,%ecx
  52:	80 7b 41 00          	cmpb   $0x0,0x41(%ebx)
  56:	74 0e                	je     66 <vp_find_vq+0x66>
  58:	51                   	push   %ecx
  59:	55                   	push   %ebp
  5a:	b9 04 00 00 00       	mov    $0x4,%ecx
  5f:	ba 30 00 00 00       	mov    $0x30,%edx
  64:	eb 12                	jmp    78 <vp_find_vq+0x78>
  66:	80 7b 40 00          	cmpb   $0x0,0x40(%ebx)
  6a:	74 10                	je     7c <vp_find_vq+0x7c>
  6c:	51                   	push   %ecx
  6d:	55                   	push   %ebp
  6e:	b9 02 00 00 00       	mov    $0x2,%ecx
  73:	ba 16 00 00 00       	mov    $0x16,%edx
  78:	89 d8                	mov    %ebx,%eax
  7a:	eb 0f                	jmp    8b <vp_find_vq+0x8b>
  7c:	8d 43 30             	lea    0x30(%ebx),%eax
  7f:	51                   	push   %ecx
  80:	55                   	push   %ebp
  81:	b9 02 00 00 00       	mov    $0x2,%ecx
  86:	ba 0e 00 00 00       	mov    $0xe,%edx
  8b:	e8 fc ff ff ff       	call   8c <vp_find_vq+0x8c>
  90:	58                   	pop    %eax
  91:	5a                   	pop    %edx
  92:	80 7b 41 00          	cmpb   $0x0,0x41(%ebx)
  96:	74 3d                	je     d5 <vp_find_vq+0xd5>
  98:	b9 04 00 00 00       	mov    $0x4,%ecx
  9d:	ba 34 00 00 00       	mov    $0x34,%edx
  a2:	89 d8                	mov    %ebx,%eax
  a4:	e8 fc ff ff ff       	call   a5 <vp_find_vq+0xa5>
  a9:	89 c6                	mov    %eax,%esi
  ab:	66 3d 00 01          	cmp    $0x100,%ax
  af:	76 05                	jbe    b6 <vp_find_vq+0xb6>
  b1:	be 00 01 00 00       	mov    $0x100,%esi
  b6:	0f b7 c6             	movzwl %si,%eax
  b9:	31 d2                	xor    %edx,%edx
  bb:	52                   	push   %edx
  bc:	50                   	push   %eax
  bd:	b9 04 00 00 00       	mov    $0x4,%ecx
  c2:	ba 38 00 00 00       	mov    $0x38,%edx
  c7:	89 d8                	mov    %ebx,%eax
  c9:	e8 fc ff ff ff       	call   ca <vp_find_vq+0xca>
  ce:	59                   	pop    %ecx
  cf:	58                   	pop    %eax
  d0:	e9 8f 00 00 00       	jmp    164 <vp_find_vq+0x164>
  d5:	80 7b 40 00          	cmpb   $0x0,0x40(%ebx)
  d9:	74 49                	je     124 <vp_find_vq+0x124>
  db:	b9 02 00 00 00       	mov    $0x2,%ecx
  e0:	ba 18 00 00 00       	mov    $0x18,%edx
  e5:	89 d8                	mov    %ebx,%eax
  e7:	e8 fc ff ff ff       	call   e8 <vp_find_vq+0xe8>
  ec:	89 c6                	mov    %eax,%esi
  ee:	66 3d 00 01          	cmp    $0x100,%ax
  f2:	76 70                	jbe    164 <vp_find_vq+0x164>
  f4:	6a 00                	push   $0x0
  f6:	68 00 01 00 00       	push   $0x100
  fb:	b9 02 00 00 00       	mov    $0x2,%ecx
 100:	ba 18 00 00 00       	mov    $0x18,%edx
 105:	89 d8                	mov    %ebx,%eax
 107:	e8 fc ff ff ff       	call   108 <vp_find_vq+0x108>
 10c:	b9 02 00 00 00       	mov    $0x2,%ecx
 111:	ba 18 00 00 00       	mov    $0x18,%edx
 116:	89 d8                	mov    %ebx,%eax
 118:	e8 fc ff ff ff       	call   119 <vp_find_vq+0x119>
 11d:	0f b7 f0             	movzwl %ax,%esi
 120:	58                   	pop    %eax
 121:	5a                   	pop    %edx
 122:	eb 15                	jmp    139 <vp_find_vq+0x139>
 124:	8d 43 30             	lea    0x30(%ebx),%eax
 127:	b9 02 00 00 00       	mov    $0x2,%ecx
 12c:	ba 0c 00 00 00       	mov    $0xc,%edx
 131:	e8 fc ff ff ff       	call   132 <vp_find_vq+0x132>
 136:	0f b7 f0             	movzwl %ax,%esi
 139:	66 85 f6             	test   %si,%si
 13c:	75 07                	jne    145 <vp_find_vq+0x145>
 13e:	68 55 00 00 00       	push   $0x55
 143:	eb 4a                	jmp    18f <vp_find_vq+0x18f>
 145:	66 81 fe 00 01       	cmp    $0x100,%si
 14a:	76 1d                	jbe    169 <vp_find_vq+0x169>
 14c:	68 00 01 00 00       	push   $0x100
 151:	56                   	push   %esi
 152:	68 6d 00 00 00       	push   $0x6d
 157:	e8 fc ff ff ff       	call   158 <vp_find_vq+0x158>
 15c:	83 c4 0c             	add    $0xc,%esp
 15f:	e9 ad 02 00 00       	jmp    411 <vp_find_vq+0x411>
 164:	66 85 f6             	test   %si,%si
 167:	74 d5                	je     13e <vp_find_vq+0x13e>
 169:	80 7b 41 00          	cmpb   $0x0,0x41(%ebx)
 16d:	75 3a                	jne    1a9 <vp_find_vq+0x1a9>
 16f:	80 7b 40 00          	cmpb   $0x0,0x40(%ebx)
 173:	74 25                	je     19a <vp_find_vq+0x19a>
 175:	b9 02 00 00 00       	mov    $0x2,%ecx
 17a:	ba 1c 00 00 00       	mov    $0x1c,%edx
 17f:	89 d8                	mov    %ebx,%eax
 181:	e8 fc ff ff ff       	call   182 <vp_find_vq+0x182>
 186:	09 c2                	or     %eax,%edx
 188:	74 1f                	je     1a9 <vp_find_vq+0x1a9>
 18a:	68 88 00 00 00       	push   $0x88
 18f:	e8 fc ff ff ff       	call   190 <vp_find_vq+0x190>
 194:	5e                   	pop    %esi
 195:	e9 77 02 00 00       	jmp    411 <vp_find_vq+0x411>
 19a:	8d 43 30             	lea    0x30(%ebx),%eax
 19d:	b9 04 00 00 00       	mov    $0x4,%ecx
 1a2:	ba 08 00 00 00       	mov    $0x8,%edx
 1a7:	eb d8                	jmp    181 <vp_find_vq+0x181>
 1a9:	89 af 18 2a 00 00    	mov    %ebp,0x2a18(%edi)
 1af:	0f b7 ce             	movzwl %si,%ecx
 1b2:	89 8f 04 28 00 00    	mov    %ecx,0x2804(%edi)
 1b8:	8d 87 ff 0f 00 00    	lea    0xfff(%edi),%eax
 1be:	25 00 f0 ff ff       	and    $0xfffff000,%eax
 1c3:	89 87 08 28 00 00    	mov    %eax,0x2808(%edi)
 1c9:	89 ca                	mov    %ecx,%edx
 1cb:	c1 e2 04             	shl    $0x4,%edx
 1ce:	01 c2                	add    %eax,%edx
 1d0:	89 97 0c 28 00 00    	mov    %edx,0x280c(%edi)
 1d6:	66 83 0a 01          	orw    $0x1,(%edx)
 1da:	8d 94 4a 03 10 00 00 	lea    0x1003(%edx,%ecx,2),%edx
 1e1:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
 1e7:	89 97 10 28 00 00    	mov    %edx,0x2810(%edi)
 1ed:	31 d2                	xor    %edx,%edx
 1ef:	49                   	dec    %ecx
 1f0:	89 0c 24             	mov    %ecx,(%esp)
 1f3:	89 d1                	mov    %edx,%ecx
 1f5:	c1 e1 04             	shl    $0x4,%ecx
 1f8:	01 c1                	add    %eax,%ecx
 1fa:	3b 14 24             	cmp    (%esp),%edx
 1fd:	73 0a                	jae    209 <vp_find_vq+0x209>
 1ff:	8d 6a 01             	lea    0x1(%edx),%ebp
 202:	66 89 69 0e          	mov    %bp,0xe(%ecx)
 206:	42                   	inc    %edx
 207:	eb ea                	jmp    1f3 <vp_find_vq+0x1f3>
 209:	8b 14 24             	mov    (%esp),%edx
 20c:	c1 e2 04             	shl    $0x4,%edx
 20f:	66 c7 44 10 0e 00 00 	movw   $0x0,0xe(%eax,%edx,1)
 216:	80 7b 41 00          	cmpb   $0x0,0x41(%ebx)
 21a:	0f 84 07 01 00 00    	je     327 <vp_find_vq+0x327>
 220:	b9 04 00 00 00       	mov    $0x4,%ecx
 225:	ba 04 00 00 00       	mov    $0x4,%edx
 22a:	89 d8                	mov    %ebx,%eax
 22c:	e8 fc ff ff ff       	call   22d <vp_find_vq+0x22d>
 231:	83 f0 02             	xor    $0x2,%eax
 234:	09 d0                	or     %edx,%eax
 236:	0f 85 ad 00 00 00    	jne    2e9 <vp_find_vq+0x2e9>
 23c:	8b 87 08 28 00 00    	mov    0x2808(%edi),%eax
 242:	31 d2                	xor    %edx,%edx
 244:	52                   	push   %edx
 245:	50                   	push   %eax
 246:	b9 04 00 00 00       	mov    $0x4,%ecx
 24b:	ba 80 00 00 00       	mov    $0x80,%edx
 250:	89 d8                	mov    %ebx,%eax
 252:	e8 fc ff ff ff       	call   253 <vp_find_vq+0x253>
 257:	6a 00                	push   $0x0
 259:	6a 00                	push   $0x0
 25b:	b9 04 00 00 00       	mov    $0x4,%ecx
 260:	ba 84 00 00 00       	mov    $0x84,%edx
 265:	89 d8                	mov    %ebx,%eax
 267:	e8 fc ff ff ff       	call   268 <vp_find_vq+0x268>
 26c:	8b 87 0c 28 00 00    	mov    0x280c(%edi),%eax
 272:	31 d2                	xor    %edx,%edx
 274:	52                   	push   %edx
 275:	50                   	push   %eax
 276:	b9 04 00 00 00       	mov    $0x4,%ecx
 27b:	ba 90 00 00 00       	mov    $0x90,%edx
 280:	89 d8                	mov    %ebx,%eax
 282:	e8 fc ff ff ff       	call   283 <vp_find_vq+0x283>
 287:	6a 00                	push   $0x0
 289:	6a 00                	push   $0x0
 28b:	b9 04 00 00 00       	mov    $0x4,%ecx
 290:	ba 94 00 00 00       	mov    $0x94,%edx
 295:	89 d8                	mov    %ebx,%eax
 297:	e8 fc ff ff ff       	call   298 <vp_find_vq+0x298>
 29c:	83 c4 20             	add    $0x20,%esp
 29f:	8b 87 10 28 00 00    	mov    0x2810(%edi),%eax
 2a5:	31 d2                	xor    %edx,%edx
 2a7:	52                   	push   %edx
 2a8:	50                   	push   %eax
 2a9:	b9 04 00 00 00       	mov    $0x4,%ecx
 2ae:	ba a0 00 00 00       	mov    $0xa0,%edx
 2b3:	89 d8                	mov    %ebx,%eax
 2b5:	e8 fc ff ff ff       	call   2b6 <vp_find_vq+0x2b6>
 2ba:	6a 00                	push   $0x0
 2bc:	6a 00                	push   $0x0
 2be:	b9 04 00 00 00       	mov    $0x4,%ecx
 2c3:	ba a4 00 00 00       	mov    $0xa4,%edx
 2c8:	89 d8                	mov    %ebx,%eax
 2ca:	e8 fc ff ff ff       	call   2cb <vp_find_vq+0x2cb>
 2cf:	6a 00                	push   $0x0
 2d1:	6a 01                	push   $0x1
 2d3:	b9 04 00 00 00       	mov    $0x4,%ecx
 2d8:	ba 44 00 00 00       	mov    $0x44,%edx
 2dd:	89 d8                	mov    %ebx,%eax
 2df:	e8 fc ff ff ff       	call   2e0 <vp_find_vq+0x2e0>
 2e4:	e9 01 01 00 00       	jmp    3ea <vp_find_vq+0x3ea>
 2e9:	6a 00                	push   $0x0
 2eb:	68 00 10 00 00       	push   $0x1000
 2f0:	b9 04 00 00 00       	mov    $0x4,%ecx
 2f5:	ba 28 00 00 00       	mov    $0x28,%edx
 2fa:	89 d8                	mov    %ebx,%eax
 2fc:	e8 fc ff ff ff       	call   2fd <vp_find_vq+0x2fd>
 301:	8b 87 08 28 00 00    	mov    0x2808(%edi),%eax
 307:	c1 e8 0c             	shr    $0xc,%eax
 30a:	31 d2                	xor    %edx,%edx
 30c:	52                   	push   %edx
 30d:	50                   	push   %eax
 30e:	b9 04 00 00 00       	mov    $0x4,%ecx
 313:	ba 40 00 00 00       	mov    $0x40,%edx
 318:	89 d8                	mov    %ebx,%eax
 31a:	e8 fc ff ff ff       	call   31b <vp_find_vq+0x31b>
 31f:	83 c4 10             	add    $0x10,%esp
 322:	e9 e5 00 00 00       	jmp    40c <vp_find_vq+0x40c>
 327:	80 7b 40 00          	cmpb   $0x0,0x40(%ebx)
 32b:	0f 84 be 00 00 00    	je     3ef <vp_find_vq+0x3ef>
 331:	31 d2                	xor    %edx,%edx
 333:	52                   	push   %edx
 334:	50                   	push   %eax
 335:	b9 04 00 00 00       	mov    $0x4,%ecx
 33a:	ba 20 00 00 00       	mov    $0x20,%edx
 33f:	89 d8                	mov    %ebx,%eax
 341:	e8 fc ff ff ff       	call   342 <vp_find_vq+0x342>
 346:	6a 00                	push   $0x0
 348:	6a 00                	push   $0x0
 34a:	b9 04 00 00 00       	mov    $0x4,%ecx
 34f:	ba 24 00 00 00       	mov    $0x24,%edx
 354:	89 d8                	mov    %ebx,%eax
 356:	e8 fc ff ff ff       	call   357 <vp_find_vq+0x357>
 35b:	8b 87 0c 28 00 00    	mov    0x280c(%edi),%eax
 361:	31 d2                	xor    %edx,%edx
 363:	52                   	push   %edx
 364:	50                   	push   %eax
 365:	b9 04 00 00 00       	mov    $0x4,%ecx
 36a:	ba 28 00 00 00       	mov    $0x28,%edx
 36f:	89 d8                	mov    %ebx,%eax
 371:	e8 fc ff ff ff       	call   372 <vp_find_vq+0x372>
 376:	6a 00                	push   $0x0
 378:	6a 00                	push   $0x0
 37a:	b9 04 00 00 00       	mov    $0x4,%ecx
 37f:	ba 2c 00 00 00       	mov    $0x2c,%edx
 384:	89 d8                	mov    %ebx,%eax
 386:	e8 fc ff ff ff       	call   387 <vp_find_vq+0x387>
 38b:	83 c4 20             	add    $0x20,%esp
 38e:	8b 87 10 28 00 00    	mov    0x2810(%edi),%eax
 394:	31 d2                	xor    %edx,%edx
 396:	52                   	push   %edx
 397:	50                   	push   %eax
 398:	b9 04 00 00 00       	mov    $0x4,%ecx
 39d:	ba 30 00 00 00       	mov    $0x30,%edx
 3a2:	89 d8                	mov    %ebx,%eax
 3a4:	e8 fc ff ff ff       	call   3a5 <vp_find_vq+0x3a5>
 3a9:	6a 00                	push   $0x0
 3ab:	6a 00                	push   $0x0
 3ad:	b9 04 00 00 00       	mov    $0x4,%ecx
 3b2:	ba 34 00 00 00       	mov    $0x34,%edx
 3b7:	89 d8                	mov    %ebx,%eax
 3b9:	e8 fc ff ff ff       	call   3ba <vp_find_vq+0x3ba>
 3be:	6a 00                	push   $0x0
 3c0:	6a 01                	push   $0x1
 3c2:	b9 02 00 00 00       	mov    $0x2,%ecx
 3c7:	ba 1c 00 00 00       	mov    $0x1c,%edx
 3cc:	89 d8                	mov    %ebx,%eax
 3ce:	e8 fc ff ff ff       	call   3cf <vp_find_vq+0x3cf>
 3d3:	b9 02 00 00 00       	mov    $0x2,%ecx
 3d8:	ba 1e 00 00 00       	mov    $0x1e,%edx
 3dd:	89 d8                	mov    %ebx,%eax
 3df:	e8 fc ff ff ff       	call   3e0 <vp_find_vq+0x3e0>
 3e4:	89 87 1c 2a 00 00    	mov    %eax,0x2a1c(%edi)
 3ea:	83 c4 18             	add    $0x18,%esp
 3ed:	eb 1d                	jmp    40c <vp_find_vq+0x40c>
 3ef:	83 c3 30             	add    $0x30,%ebx
 3f2:	c1 e8 0c             	shr    $0xc,%eax
 3f5:	31 d2                	xor    %edx,%edx
 3f7:	52                   	push   %edx
 3f8:	50                   	push   %eax
 3f9:	b9 04 00 00 00       	mov    $0x4,%ecx
 3fe:	ba 08 00 00 00       	mov    $0x8,%edx
 403:	89 d8                	mov    %ebx,%eax
 405:	e8 fc ff ff ff       	call   406 <vp_find_vq+0x406>
 40a:	59                   	pop    %ecx
 40b:	5b                   	pop    %ebx
 40c:	0f b7 c6             	movzwl %si,%eax
 40f:	eb 13                	jmp    424 <vp_find_vq+0x424>
 411:	89 f8                	mov    %edi,%eax
 413:	e8 fc ff ff ff       	call   414 <vp_find_vq+0x414>
 418:	8b 04 24             	mov    (%esp),%eax
 41b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 421:	83 c8 ff             	or     $0xffffffff,%eax
 424:	5a                   	pop    %edx
 425:	5b                   	pop    %ebx
 426:	5e                   	pop    %esi
 427:	5f                   	pop    %edi
 428:	5d                   	pop    %ebp
 429:	c3                   	ret    

Disassembly of section .text.vp_init_simple:

00000000 <vp_init_simple>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 14             	sub    $0x14,%esp
   7:	89 c3                	mov    %eax,%ebx
   9:	89 d6                	mov    %edx,%esi
   b:	0f b7 02             	movzwl (%edx),%eax
   e:	31 c9                	xor    %ecx,%ecx
  10:	ba 09 00 00 00       	mov    $0x9,%edx
  15:	e8 fc ff ff ff       	call   16 <vp_init_simple+0x16>
  1a:	88 44 24 0e          	mov    %al,0xe(%esp)
  1e:	b9 44 00 00 00       	mov    $0x44,%ecx
  23:	31 d2                	xor    %edx,%edx
  25:	89 d8                	mov    %ebx,%eax
  27:	e8 fc ff ff ff       	call   28 <vp_init_simple+0x28>
  2c:	80 7c 24 0e 00       	cmpb   $0x0,0xe(%esp)
  31:	0f 84 cc 01 00 00    	je     203 <vp_init_simple+0x203>
  37:	0f b6 6c 24 0e       	movzbl 0xe(%esp),%ebp
  3c:	8d 55 03             	lea    0x3(%ebp),%edx
  3f:	0f b7 06             	movzwl (%esi),%eax
  42:	e8 fc ff ff ff       	call   43 <vp_init_simple+0x43>
  47:	88 44 24 0f          	mov    %al,0xf(%esp)
  4b:	48                   	dec    %eax
  4c:	3c 04                	cmp    $0x4,%al
  4e:	0f 87 94 01 00 00    	ja     1e8 <vp_init_simple+0x1e8>
  54:	0f b6 c0             	movzbl %al,%eax
  57:	ff 24 85 00 00 00 00 	jmp    *0x0(,%eax,4)
  5e:	89 df                	mov    %ebx,%edi
  60:	85 db                	test   %ebx,%ebx
  62:	0f 84 80 01 00 00    	je     1e8 <vp_init_simple+0x1e8>
  68:	eb 59                	jmp    c3 <vp_init_simple+0xc3>
  6a:	8d 7b 0c             	lea    0xc(%ebx),%edi
  6d:	8d 55 10             	lea    0x10(%ebp),%edx
  70:	0f b7 06             	movzwl (%esi),%eax
  73:	e8 fc ff ff ff       	call   74 <vp_init_simple+0x74>
  78:	89 43 3c             	mov    %eax,0x3c(%ebx)
  7b:	eb 46                	jmp    c3 <vp_init_simple+0xc3>
  7d:	8d 7b 18             	lea    0x18(%ebx),%edi
  80:	eb 41                	jmp    c3 <vp_init_simple+0xc3>
  82:	8d 7b 24             	lea    0x24(%ebx),%edi
  85:	eb 3c                	jmp    c3 <vp_init_simple+0xc3>
  87:	8a 44 24 0e          	mov    0xe(%esp),%al
  8b:	88 43 07             	mov    %al,0x7(%ebx)
  8e:	8b 06                	mov    (%esi),%eax
  90:	66 89 43 04          	mov    %ax,0x4(%ebx)
  94:	8a 4c 24 0e          	mov    0xe(%esp),%cl
  98:	88 4b 13             	mov    %cl,0x13(%ebx)
  9b:	66 89 43 10          	mov    %ax,0x10(%ebx)
  9f:	88 4b 1f             	mov    %cl,0x1f(%ebx)
  a2:	66 89 43 1c          	mov    %ax,0x1c(%ebx)
  a6:	88 4b 2b             	mov    %cl,0x2b(%ebx)
  a9:	66 89 43 28          	mov    %ax,0x28(%ebx)
  ad:	6a 05                	push   $0x5
  af:	55                   	push   %ebp
  b0:	56                   	push   %esi
  b1:	68 b9 00 00 00       	push   $0xb9
  b6:	e8 fc ff ff ff       	call   b7 <vp_init_simple+0xb7>
  bb:	83 c4 10             	add    $0x10,%esp
  be:	e9 25 01 00 00       	jmp    1e8 <vp_init_simple+0x1e8>
  c3:	0f b7 06             	movzwl (%esi),%eax
  c6:	80 7f 06 00          	cmpb   $0x0,0x6(%edi)
  ca:	0f 85 18 01 00 00    	jne    1e8 <vp_init_simple+0x1e8>
  d0:	8a 4c 24 0e          	mov    0xe(%esp),%cl
  d4:	88 4f 06             	mov    %cl,0x6(%edi)
  d7:	8d 55 04             	lea    0x4(%ebp),%edx
  da:	e8 fc ff ff ff       	call   db <vp_init_simple+0xdb>
  df:	88 47 08             	mov    %al,0x8(%edi)
  e2:	8d 55 08             	lea    0x8(%ebp),%edx
  e5:	0f b7 06             	movzwl (%esi),%eax
  e8:	e8 fc ff ff ff       	call   e9 <vp_init_simple+0xe9>
  ed:	89 c5                	mov    %eax,%ebp
  ef:	0f b6 47 08          	movzbl 0x8(%edi),%eax
  f3:	8d 04 85 10 00 00 00 	lea    0x10(,%eax,4),%eax
  fa:	89 44 24 08          	mov    %eax,0x8(%esp)
  fe:	0f b7 06             	movzwl (%esi),%eax
 101:	8b 54 24 08          	mov    0x8(%esp),%edx
 105:	e8 fc ff ff ff       	call   106 <vp_init_simple+0x106>
 10a:	a8 01                	test   $0x1,%al
 10c:	74 12                	je     120 <vp_init_simple+0x120>
 10e:	83 e0 fc             	and    $0xfffffffc,%eax
 111:	89 04 24             	mov    %eax,(%esp)
 114:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 11b:	00 
 11c:	b2 01                	mov    $0x1,%dl
 11e:	eb 44                	jmp    164 <vp_init_simple+0x164>
 120:	89 c1                	mov    %eax,%ecx
 122:	83 e1 f0             	and    $0xfffffff0,%ecx
 125:	89 4c 24 10          	mov    %ecx,0x10(%esp)
 129:	89 0c 24             	mov    %ecx,(%esp)
 12c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 133:	00 
 134:	83 e0 06             	and    $0x6,%eax
 137:	b2 02                	mov    $0x2,%dl
 139:	83 f8 04             	cmp    $0x4,%eax
 13c:	75 26                	jne    164 <vp_init_simple+0x164>
 13e:	8b 44 24 08          	mov    0x8(%esp),%eax
 142:	8d 50 04             	lea    0x4(%eax),%edx
 145:	0f b7 06             	movzwl (%esi),%eax
 148:	e8 fc ff ff ff       	call   149 <vp_init_simple+0x149>
 14d:	0b 44 24 04          	or     0x4(%esp),%eax
 151:	8b 4c 24 10          	mov    0x10(%esp),%ecx
 155:	89 0c 24             	mov    %ecx,(%esp)
 158:	89 44 24 04          	mov    %eax,0x4(%esp)
 15c:	83 f8 01             	cmp    $0x1,%eax
 15f:	19 d2                	sbb    %edx,%edx
 161:	83 c2 03             	add    $0x3,%edx
 164:	88 57 09             	mov    %dl,0x9(%edi)
 167:	80 fa 02             	cmp    $0x2,%dl
 16a:	74 2f                	je     19b <vp_init_simple+0x19b>
 16c:	80 fa 03             	cmp    $0x3,%dl
 16f:	74 48                	je     1b9 <vp_init_simple+0x1b9>
 171:	b8 ad 00 00 00       	mov    $0xad,%eax
 176:	fe ca                	dec    %dl
 178:	75 46                	jne    1c0 <vp_init_simple+0x1c0>
 17a:	8b 54 24 08          	mov    0x8(%esp),%edx
 17e:	89 f0                	mov    %esi,%eax
 180:	e8 fc ff ff ff       	call   181 <vp_init_simple+0x181>
 185:	0f b7 c0             	movzwl %ax,%eax
 188:	85 c0                	test   %eax,%eax
 18a:	0f 84 ea 00 00 00    	je     27a <vp_init_simple+0x27a>
 190:	01 e8                	add    %ebp,%eax
 192:	89 07                	mov    %eax,(%edi)
 194:	b8 aa 00 00 00       	mov    $0xaa,%eax
 199:	eb 25                	jmp    1c0 <vp_init_simple+0x1c0>
 19b:	8b 54 24 08          	mov    0x8(%esp),%edx
 19f:	89 f0                	mov    %esi,%eax
 1a1:	e8 fc ff ff ff       	call   1a2 <vp_init_simple+0x1a2>
 1a6:	85 c0                	test   %eax,%eax
 1a8:	0f 84 cc 00 00 00    	je     27a <vp_init_simple+0x27a>
 1ae:	01 e8                	add    %ebp,%eax
 1b0:	89 07                	mov    %eax,(%edi)
 1b2:	b8 a5 00 00 00       	mov    $0xa5,%eax
 1b7:	eb 07                	jmp    1c0 <vp_init_simple+0x1c0>
 1b9:	89 2f                	mov    %ebp,(%edi)
 1bb:	b8 b2 00 00 00       	mov    $0xb2,%eax
 1c0:	50                   	push   %eax
 1c1:	55                   	push   %ebp
 1c2:	ff 74 24 0c          	push   0xc(%esp)
 1c6:	ff 74 24 0c          	push   0xc(%esp)
 1ca:	0f b6 47 08          	movzbl 0x8(%edi),%eax
 1ce:	50                   	push   %eax
 1cf:	0f b6 44 24 23       	movzbl 0x23(%esp),%eax
 1d4:	50                   	push   %eax
 1d5:	0f b6 47 06          	movzbl 0x6(%edi),%eax
 1d9:	50                   	push   %eax
 1da:	56                   	push   %esi
 1db:	68 f2 00 00 00       	push   $0xf2
 1e0:	e8 fc ff ff ff       	call   1e1 <vp_init_simple+0x1e1>
 1e5:	83 c4 24             	add    $0x24,%esp
 1e8:	0f b6 4c 24 0e       	movzbl 0xe(%esp),%ecx
 1ed:	0f b7 06             	movzwl (%esi),%eax
 1f0:	ba 09 00 00 00       	mov    $0x9,%edx
 1f5:	e8 fc ff ff ff       	call   1f6 <vp_init_simple+0x1f6>
 1fa:	88 44 24 0e          	mov    %al,0xe(%esp)
 1fe:	e9 29 fe ff ff       	jmp    2c <vp_init_simple+0x2c>
 203:	80 7b 06 00          	cmpb   $0x0,0x6(%ebx)
 207:	74 25                	je     22e <vp_init_simple+0x22e>
 209:	80 7b 12 00          	cmpb   $0x0,0x12(%ebx)
 20d:	74 1f                	je     22e <vp_init_simple+0x22e>
 20f:	80 7b 1e 00          	cmpb   $0x0,0x1e(%ebx)
 213:	74 19                	je     22e <vp_init_simple+0x22e>
 215:	80 7b 2a 00          	cmpb   $0x0,0x2a(%ebx)
 219:	74 13                	je     22e <vp_init_simple+0x22e>
 21b:	56                   	push   %esi
 21c:	68 3e 01 00 00       	push   $0x13e
 221:	e8 fc ff ff ff       	call   222 <vp_init_simple+0x222>
 226:	c6 43 40 01          	movb   $0x1,0x40(%ebx)
 22a:	5f                   	pop    %edi
 22b:	5d                   	pop    %ebp
 22c:	eb 2b                	jmp    259 <vp_init_simple+0x259>
 22e:	56                   	push   %esi
 22f:	68 6a 01 00 00       	push   $0x16a
 234:	e8 fc ff ff ff       	call   235 <vp_init_simple+0x235>
 239:	c6 43 38 00          	movb   $0x0,0x38(%ebx)
 23d:	ba 10 00 00 00       	mov    $0x10,%edx
 242:	89 f0                	mov    %esi,%eax
 244:	e8 fc ff ff ff       	call   245 <vp_init_simple+0x245>
 249:	0f b7 c0             	movzwl %ax,%eax
 24c:	89 43 30             	mov    %eax,0x30(%ebx)
 24f:	5a                   	pop    %edx
 250:	59                   	pop    %ecx
 251:	85 c0                	test   %eax,%eax
 253:	74 25                	je     27a <vp_init_simple+0x27a>
 255:	c6 43 39 01          	movb   $0x1,0x39(%ebx)
 259:	89 d8                	mov    %ebx,%eax
 25b:	e8 fc ff ff ff       	call   25c <vp_init_simple+0x25c>
 260:	89 f0                	mov    %esi,%eax
 262:	e8 fc ff ff ff       	call   263 <vp_init_simple+0x263>
 267:	ba 03 00 00 00       	mov    $0x3,%edx
 26c:	89 d8                	mov    %ebx,%eax
 26e:	83 c4 14             	add    $0x14,%esp
 271:	5b                   	pop    %ebx
 272:	5e                   	pop    %esi
 273:	5f                   	pop    %edi
 274:	5d                   	pop    %ebp
 275:	e9 fc ff ff ff       	jmp    276 <vp_init_simple+0x276>
 27a:	83 c4 14             	add    $0x14,%esp
 27d:	5b                   	pop    %ebx
 27e:	5e                   	pop    %esi
 27f:	5f                   	pop    %edi
 280:	5d                   	pop    %ebp
 281:	c3                   	ret    
