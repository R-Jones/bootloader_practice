
./vgahooks.o:     file format elf32-i386


Disassembly of section .text.getFBSize.isra.0:

00000000 <getFBSize.isra.0>:
   0:	0f b7 c0             	movzwl %ax,%eax
   3:	ba a1 00 00 00       	mov    $0xa1,%edx
   8:	e8 fc ff ff ff       	call   9 <getFBSize.isra.0+0x9>
   d:	84 c0                	test   %al,%al
   f:	79 0e                	jns    1f <getFBSize.isra.0+0x1f>
  11:	c0 e8 04             	shr    $0x4,%al
  14:	83 e0 07             	and    $0x7,%eax
  17:	0f b6 80 00 00 00 00 	movzbl 0x0(%eax),%eax
  1e:	c3                   	ret    
  1f:	83 c8 ff             	or     $0xffffffff,%eax
  22:	c3                   	ret    

Disassembly of section .text.handle_155f:

00000000 <handle_155f>:
   0:	8b 15 00 00 00 00    	mov    0x0,%edx
   6:	83 fa 01             	cmp    $0x1,%edx
   9:	74 0e                	je     19 <handle_155f+0x19>
   b:	83 fa 02             	cmp    $0x2,%edx
   e:	0f 84 c1 00 00 00    	je     d5 <handle_155f+0xd5>
  14:	e9 fb 00 00 00       	jmp    114 <handle_155f+0x114>
  19:	53                   	push   %ebx
  1a:	8a 50 1c             	mov    0x1c(%eax),%dl
  1d:	80 fa 18             	cmp    $0x18,%dl
  20:	74 64                	je     86 <handle_155f+0x86>
  22:	77 33                	ja     57 <handle_155f+0x57>
  24:	80 fa 01             	cmp    $0x1,%dl
  27:	74 3d                	je     66 <handle_155f+0x66>
  29:	80 fa 02             	cmp    $0x2,%dl
  2c:	0f 85 96 00 00 00    	jne    c8 <handle_155f+0xc8>
  32:	c7 40 1c 5f 00 00 00 	movl   $0x5f,0x1c(%eax)
  39:	66 c7 40 10 02 00    	movw   $0x2,0x10(%eax)
  3f:	66 c7 40 18 01 04    	movw   $0x401,0x18(%eax)
  45:	66 c7 40 14 00 00    	movw   $0x0,0x14(%eax)
  4b:	66 83 60 24 fe       	andw   $0xfffe,0x24(%eax)
  50:	68 26 00 00 00       	push   $0x26
  55:	eb 24                	jmp    7b <handle_155f+0x7b>
  57:	80 fa 19             	cmp    $0x19,%dl
  5a:	75 6c                	jne    c8 <handle_155f+0xc8>
  5c:	66 83 48 24 01       	orw    $0x1,0x24(%eax)
  61:	e9 ac 00 00 00       	jmp    112 <handle_155f+0x112>
  66:	c7 40 1c 5f 00 00 00 	movl   $0x5f,0x1c(%eax)
  6d:	c6 40 18 02          	movb   $0x2,0x18(%eax)
  71:	66 83 60 24 fe       	andw   $0xfffe,0x24(%eax)
  76:	68 00 00 00 00       	push   $0x0
  7b:	e8 fc ff ff ff       	call   7c <handle_155f+0x7c>
  80:	58                   	pop    %eax
  81:	e9 8c 00 00 00       	jmp    112 <handle_155f+0x112>
  86:	8b 0d 00 00 00 00    	mov    0x0,%ecx
  8c:	8b 15 00 00 00 00    	mov    0x0,%edx
  92:	89 cb                	mov    %ecx,%ebx
  94:	09 d3                	or     %edx,%ebx
  96:	79 10                	jns    a8 <handle_155f+0xa8>
  98:	b9 00 00 00 00       	mov    $0x0,%ecx
  9d:	ba 86 43 00 00       	mov    $0x4386,%edx
  a2:	5b                   	pop    %ebx
  a3:	e9 fc ff ff ff       	jmp    a4 <handle_155f+0xa4>
  a8:	c7 40 1c 5f 00 00 00 	movl   $0x5f,0x1c(%eax)
  af:	c1 e2 04             	shl    $0x4,%edx
  b2:	09 ca                	or     %ecx,%edx
  b4:	80 ce 05             	or     $0x5,%dh
  b7:	89 50 10             	mov    %edx,0x10(%eax)
  ba:	c7 40 18 60 00 00 00 	movl   $0x60,0x18(%eax)
  c1:	66 83 60 24 fe       	andw   $0xfffe,0x24(%eax)
  c6:	eb 4a                	jmp    112 <handle_155f+0x112>
  c8:	b9 00 00 00 00       	mov    $0x0,%ecx
  cd:	ba 86 1b 00 00       	mov    $0x1b86,%edx
  d2:	5b                   	pop    %ebx
  d3:	eb 49                	jmp    11e <handle_155f+0x11e>
  d5:	8a 50 1c             	mov    0x1c(%eax),%dl
  d8:	80 fa 40             	cmp    $0x40,%dl
  db:	74 18                	je     f5 <handle_155f+0xf5>
  dd:	80 fa 50             	cmp    $0x50,%dl
  e0:	74 24                	je     106 <handle_155f+0x106>
  e2:	80 fa 35             	cmp    $0x35,%dl
  e5:	75 2d                	jne    114 <handle_155f+0x114>
  e7:	66 c7 40 1c 5f 00    	movw   $0x5f,0x1c(%eax)
  ed:	8a 15 00 00 00 00    	mov    0x0,%dl
  f3:	eb 0c                	jmp    101 <handle_155f+0x101>
  f5:	66 c7 40 1c 5f 00    	movw   $0x5f,0x1c(%eax)
  fb:	8a 15 00 00 00 00    	mov    0x0,%dl
 101:	88 50 18             	mov    %dl,0x18(%eax)
 104:	eb 06                	jmp    10c <handle_155f+0x10c>
 106:	66 c7 40 1c 5f 00    	movw   $0x5f,0x1c(%eax)
 10c:	66 83 60 24 fe       	andw   $0xfffe,0x24(%eax)
 111:	c3                   	ret    
 112:	5b                   	pop    %ebx
 113:	c3                   	ret    
 114:	b9 00 00 00 00       	mov    $0x0,%ecx
 119:	ba 86 1b 00 00       	mov    $0x1b86,%edx
 11e:	e9 fc ff ff ff       	jmp    11f <handle_155f+0x11f>

Disassembly of section .text.handle_157f:

00000000 <handle_157f>:
   0:	83 3d 00 00 00 00 03 	cmpl   $0x3,0x0
   7:	75 2e                	jne    37 <handle_157f+0x37>
   9:	8a 50 1c             	mov    0x1c(%eax),%dl
   c:	80 fa 02             	cmp    $0x2,%dl
   f:	74 11                	je     22 <handle_157f+0x22>
  11:	80 fa 14             	cmp    $0x14,%dl
  14:	75 21                	jne    37 <handle_157f+0x37>
  16:	66 c7 40 1c 7f 00    	movw   $0x7f,0x1c(%eax)
  1c:	c6 40 10 00          	movb   $0x0,0x10(%eax)
  20:	eb 0f                	jmp    31 <handle_157f+0x31>
  22:	66 c7 40 1c 7f 00    	movw   $0x7f,0x1c(%eax)
  28:	8a 15 00 00 00 00    	mov    0x0,%dl
  2e:	88 50 10             	mov    %dl,0x10(%eax)
  31:	66 83 60 24 fe       	andw   $0xfffe,0x24(%eax)
  36:	c3                   	ret    
  37:	b9 00 00 00 00       	mov    $0x0,%ecx
  3c:	ba 86 21 00 00       	mov    $0x2186,%edx
  41:	e9 fc ff ff ff       	jmp    42 <handle_157f+0x42>

Disassembly of section .text.vgahook_setup:

00000000 <vgahook_setup>:
   0:	53                   	push   %ebx
   1:	89 c3                	mov    %eax,%ebx
   3:	ba 54 00 00 00       	mov    $0x54,%edx
   8:	a1 00 00 00 00       	mov    0x0,%eax
   d:	e8 fc ff ff ff       	call   e <vgahook_setup+0xe>
  12:	85 c0                	test   %eax,%eax
  14:	75 29                	jne    3f <vgahook_setup+0x3f>
  16:	ba 5c 00 00 00       	mov    $0x5c,%edx
  1b:	a1 00 00 00 00       	mov    0x0,%eax
  20:	e8 fc ff ff ff       	call   21 <vgahook_setup+0x21>
  25:	85 c0                	test   %eax,%eax
  27:	75 16                	jne    3f <vgahook_setup+0x3f>
  29:	c7 05 00 00 00 00 02 	movl   $0x2,0x0
  30:	00 00 00 
  33:	c6 05 00 00 00 00 01 	movb   $0x1,0x0
  3a:	e9 81 01 00 00       	jmp    1c0 <vgahook_setup+0x1c0>
  3f:	ba 65 00 00 00       	mov    $0x65,%edx
  44:	a1 00 00 00 00       	mov    0x0,%eax
  49:	e8 fc ff ff ff       	call   4a <vgahook_setup+0x4a>
  4e:	85 c0                	test   %eax,%eax
  50:	74 15                	je     67 <vgahook_setup+0x67>
  52:	ba 6b 00 00 00       	mov    $0x6b,%edx
  57:	a1 00 00 00 00       	mov    0x0,%eax
  5c:	e8 fc ff ff ff       	call   5d <vgahook_setup+0x5d>
  61:	85 c0                	test   %eax,%eax
  63:	74 1a                	je     7f <vgahook_setup+0x7f>
  65:	eb 41                	jmp    a8 <vgahook_setup+0xa8>
  67:	ba 70 00 00 00       	mov    $0x70,%edx
  6c:	a1 00 00 00 00       	mov    0x0,%eax
  71:	e8 fc ff ff ff       	call   72 <vgahook_setup+0x72>
  76:	85 c0                	test   %eax,%eax
  78:	75 d8                	jne    52 <vgahook_setup+0x52>
  7a:	e9 48 01 00 00       	jmp    1c7 <vgahook_setup+0x1c7>
  7f:	ba 75 00 00 00       	mov    $0x75,%edx
  84:	a1 00 00 00 00       	mov    0x0,%eax
  89:	e8 fc ff ff ff       	call   8a <vgahook_setup+0x8a>
  8e:	85 c0                	test   %eax,%eax
  90:	75 16                	jne    a8 <vgahook_setup+0xa8>
  92:	c7 05 00 00 00 00 02 	movl   $0x2,0x0
  99:	00 00 00 
  9c:	c6 05 00 00 00 00 08 	movb   $0x8,0x0
  a3:	e9 18 01 00 00       	jmp    1c0 <vgahook_setup+0x1c0>
  a8:	ba 7d 00 00 00       	mov    $0x7d,%edx
  ad:	a1 00 00 00 00       	mov    0x0,%eax
  b2:	e8 fc ff ff ff       	call   b3 <vgahook_setup+0xb3>
  b7:	85 c0                	test   %eax,%eax
  b9:	75 29                	jne    e4 <vgahook_setup+0xe4>
  bb:	ba 8c 00 00 00       	mov    $0x8c,%edx
  c0:	a1 00 00 00 00       	mov    0x0,%eax
  c5:	e8 fc ff ff ff       	call   c6 <vgahook_setup+0xc6>
  ca:	85 c0                	test   %eax,%eax
  cc:	75 16                	jne    e4 <vgahook_setup+0xe4>
  ce:	c7 05 00 00 00 00 03 	movl   $0x3,0x0
  d5:	00 00 00 
  d8:	c6 05 00 00 00 00 02 	movb   $0x2,0x0
  df:	e9 e3 00 00 00       	jmp    1c7 <vgahook_setup+0x1c7>
  e4:	8b 43 10             	mov    0x10(%ebx),%eax
  e7:	66 3d 06 11          	cmp    $0x1106,%ax
  eb:	0f 85 b8 00 00 00    	jne    1a9 <vgahook_setup+0x1a9>
  f1:	c7 05 00 00 00 00 01 	movl   $0x1,0x0
  f8:	00 00 00 
  fb:	ba 36 33 00 00       	mov    $0x3336,%edx
 100:	b8 06 11 00 00       	mov    $0x1106,%eax
 105:	e8 fc ff ff ff       	call   106 <vgahook_setup+0x106>
 10a:	85 c0                	test   %eax,%eax
 10c:	74 3e                	je     14c <vgahook_setup+0x14c>
 10e:	66 8b 00             	mov    (%eax),%ax
 111:	e8 fc ff ff ff       	call   112 <vgahook_setup+0x112>
 116:	a3 00 00 00 00       	mov    %eax,0x0
 11b:	ba 02 11 00 00       	mov    $0x1102,%edx
 120:	b8 22 10 00 00       	mov    $0x1022,%eax
 125:	e8 fc ff ff ff       	call   126 <vgahook_setup+0x126>
 12a:	83 ca ff             	or     $0xffffffff,%edx
 12d:	85 c0                	test   %eax,%eax
 12f:	74 13                	je     144 <vgahook_setup+0x144>
 131:	0f b7 00             	movzwl (%eax),%eax
 134:	ba 94 00 00 00       	mov    $0x94,%edx
 139:	e8 fc ff ff ff       	call   13a <vgahook_setup+0x13a>
 13e:	83 e0 07             	and    $0x7,%eax
 141:	8d 50 06             	lea    0x6(%eax),%edx
 144:	89 15 00 00 00 00    	mov    %edx,0x0
 14a:	eb 7b                	jmp    1c7 <vgahook_setup+0x1c7>
 14c:	ba 09 34 00 00       	mov    $0x3409,%edx
 151:	b8 06 11 00 00       	mov    $0x1106,%eax
 156:	e8 fc ff ff ff       	call   157 <vgahook_setup+0x157>
 15b:	89 c3                	mov    %eax,%ebx
 15d:	85 c0                	test   %eax,%eax
 15f:	74 27                	je     188 <vgahook_setup+0x188>
 161:	66 8b 00             	mov    (%eax),%ax
 164:	e8 fc ff ff ff       	call   165 <vgahook_setup+0x165>
 169:	a3 00 00 00 00       	mov    %eax,0x0
 16e:	0f b7 03             	movzwl (%ebx),%eax
 171:	ba 90 00 00 00       	mov    $0x90,%edx
 176:	e8 fc ff ff ff       	call   177 <vgahook_setup+0x177>
 17b:	83 e0 07             	and    $0x7,%eax
 17e:	83 c0 03             	add    $0x3,%eax
 181:	a3 00 00 00 00       	mov    %eax,0x0
 186:	eb 3f                	jmp    1c7 <vgahook_setup+0x1c7>
 188:	68 93 00 00 00       	push   $0x93
 18d:	e8 fc ff ff ff       	call   18e <vgahook_setup+0x18e>
 192:	c7 05 00 00 00 00 05 	movl   $0x5,0x0
 199:	00 00 00 
 19c:	c7 05 00 00 00 00 04 	movl   $0x4,0x0
 1a3:	00 00 00 
 1a6:	58                   	pop    %eax
 1a7:	eb 1e                	jmp    1c7 <vgahook_setup+0x1c7>
 1a9:	66 3d 86 80          	cmp    $0x8086,%ax
 1ad:	75 18                	jne    1c7 <vgahook_setup+0x1c7>
 1af:	c7 05 00 00 00 00 02 	movl   $0x2,0x0
 1b6:	00 00 00 
 1b9:	c6 05 00 00 00 00 00 	movb   $0x0,0x0
 1c0:	c6 05 00 00 00 00 03 	movb   $0x3,0x0
 1c7:	5b                   	pop    %ebx
 1c8:	c3                   	ret    
