
./mouse.o:     file format elf32-i386


Disassembly of section .text.set_code_success:

00000000 <set_code_success>:
   0:	c6 40 1d 00          	movb   $0x0,0x1d(%eax)
   4:	66 83 60 24 fe       	andw   $0xfffe,0x24(%eax)
   9:	c3                   	ret    

Disassembly of section .text.mouse_command:

00000000 <mouse_command>:
   0:	53                   	push   %ebx
   1:	51                   	push   %ecx
   2:	89 c3                	mov    %eax,%ebx
   4:	89 14 24             	mov    %edx,(%esp)
   7:	e8 fc ff ff ff       	call   8 <mouse_command+0x8>
   c:	85 c0                	test   %eax,%eax
   e:	8b 14 24             	mov    (%esp),%edx
  11:	89 d8                	mov    %ebx,%eax
  13:	74 07                	je     1c <mouse_command+0x1c>
  15:	5b                   	pop    %ebx
  16:	5b                   	pop    %ebx
  17:	e9 fc ff ff ff       	jmp    18 <mouse_command+0x18>
  1c:	59                   	pop    %ecx
  1d:	5b                   	pop    %ebx
  1e:	e9 fc ff ff ff       	jmp    1f <mouse_command+0x1f>

Disassembly of section .text.mouse_15c201:

00000000 <mouse_15c201>:
   0:	53                   	push   %ebx
   1:	53                   	push   %ebx
   2:	89 c3                	mov    %eax,%ebx
   4:	8d 54 24 02          	lea    0x2(%esp),%edx
   8:	b8 ff 02 00 00       	mov    $0x2ff,%eax
   d:	e8 fc ff ff ff       	call   e <mouse_15c201+0xe>
  12:	85 c0                	test   %eax,%eax
  14:	74 14                	je     2a <mouse_15c201+0x2a>
  16:	b9 00 00 00 00       	mov    $0x0,%ecx
  1b:	ba 04 5e 00 00       	mov    $0x5e04,%edx
  20:	89 d8                	mov    %ebx,%eax
  22:	e8 fc ff ff ff       	call   23 <mouse_15c201+0x23>
  27:	59                   	pop    %ecx
  28:	5b                   	pop    %ebx
  29:	c3                   	ret    
  2a:	66 8b 44 24 02       	mov    0x2(%esp),%ax
  2f:	66 89 43 10          	mov    %ax,0x10(%ebx)
  33:	89 d8                	mov    %ebx,%eax
  35:	5a                   	pop    %edx
  36:	5b                   	pop    %ebx
  37:	e9 fc ff ff ff       	jmp    38 <mouse_15c201+0x38>

Disassembly of section .text.mouse_init:

00000000 <mouse_init>:
   0:	68 00 00 00 00       	push   $0x0
   5:	e8 fc ff ff ff       	call   6 <mouse_init+0x6>
   a:	66 83 0d 10 04 00 00 	orw    $0x4,0x410
  11:	04 
  12:	58                   	pop    %eax
  13:	c3                   	ret    

Disassembly of section .text.handle_15c2:

00000000 <handle_15c2>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	83 ec 08             	sub    $0x8,%esp
   6:	89 c3                	mov    %eax,%ebx
   8:	80 78 1c 07          	cmpb   $0x7,0x1c(%eax)
   c:	0f 87 62 02 00 00    	ja     274 <handle_15c2+0x274>
  12:	0f b6 40 1c          	movzbl 0x1c(%eax),%eax
  16:	ff 24 85 00 00 00 00 	jmp    *0x0(,%eax,4)
  1d:	8a 43 11             	mov    0x11(%ebx),%al
  20:	84 c0                	test   %al,%al
  22:	74 06                	je     2a <handle_15c2+0x2a>
  24:	fe c8                	dec    %al
  26:	74 22                	je     4a <handle_15c2+0x4a>
  28:	eb 67                	jmp    91 <handle_15c2+0x91>
  2a:	31 d2                	xor    %edx,%edx
  2c:	b8 f5 00 00 00       	mov    $0xf5,%eax
  31:	e8 fc ff ff ff       	call   32 <handle_15c2+0x32>
  36:	85 c0                	test   %eax,%eax
  38:	0f 84 29 02 00 00    	je     267 <handle_15c2+0x267>
  3e:	b9 00 00 00 00       	mov    $0x0,%ecx
  43:	ba 04 2f 00 00       	mov    $0x2f04,%edx
  48:	eb 1a                	jmp    64 <handle_15c2+0x64>
  4a:	0f b7 05 0e 04 00 00 	movzwl 0x40e,%eax
  51:	c1 e0 04             	shl    $0x4,%eax
  54:	80 78 27 00          	cmpb   $0x0,0x27(%eax)
  58:	78 17                	js     71 <handle_15c2+0x71>
  5a:	b9 00 00 00 00       	mov    $0x0,%ecx
  5f:	ba 05 3b 00 00       	mov    $0x3b05,%edx
  64:	89 d8                	mov    %ebx,%eax
  66:	83 c4 08             	add    $0x8,%esp
  69:	5b                   	pop    %ebx
  6a:	5e                   	pop    %esi
  6b:	5f                   	pop    %edi
  6c:	e9 fc ff ff ff       	jmp    6d <handle_15c2+0x6d>
  71:	31 d2                	xor    %edx,%edx
  73:	b8 f4 00 00 00       	mov    $0xf4,%eax
  78:	e8 fc ff ff ff       	call   79 <handle_15c2+0x79>
  7d:	85 c0                	test   %eax,%eax
  7f:	0f 84 e2 01 00 00    	je     267 <handle_15c2+0x267>
  85:	b9 00 00 00 00       	mov    $0x0,%ecx
  8a:	ba 04 41 00 00       	mov    $0x4104,%edx
  8f:	eb d3                	jmp    64 <handle_15c2+0x64>
  91:	b9 00 00 00 00       	mov    $0x0,%ecx
  96:	ba 01 49 00 00       	mov    $0x4901,%edx
  9b:	e9 de 01 00 00       	jmp    27e <handle_15c2+0x27e>
  a0:	0f b6 43 11          	movzbl 0x11(%ebx),%eax
  a4:	3c 06                	cmp    $0x6,%al
  a6:	76 0c                	jbe    b4 <handle_15c2+0xb4>
  a8:	b9 00 00 00 00       	mov    $0x0,%ecx
  ad:	ba 02 6c 00 00       	mov    $0x6c02,%edx
  b2:	eb b0                	jmp    64 <handle_15c2+0x64>
  b4:	8a 80 00 00 00 00    	mov    0x0(%eax),%al
  ba:	88 44 24 05          	mov    %al,0x5(%esp)
  be:	8d 54 24 05          	lea    0x5(%esp),%edx
  c2:	b8 f3 10 00 00       	mov    $0x10f3,%eax
  c7:	e8 fc ff ff ff       	call   c8 <handle_15c2+0xc8>
  cc:	85 c0                	test   %eax,%eax
  ce:	0f 84 93 01 00 00    	je     267 <handle_15c2+0x267>
  d4:	b9 00 00 00 00       	mov    $0x0,%ecx
  d9:	ba 04 72 00 00       	mov    $0x7204,%edx
  de:	e9 ce 00 00 00       	jmp    1b1 <handle_15c2+0x1b1>
  e3:	8a 43 11             	mov    0x11(%ebx),%al
  e6:	3c 03                	cmp    $0x3,%al
  e8:	76 0f                	jbe    f9 <handle_15c2+0xf9>
  ea:	b9 00 00 00 00       	mov    $0x0,%ecx
  ef:	ba 02 81 00 00       	mov    $0x8102,%edx
  f4:	e9 6b ff ff ff       	jmp    64 <handle_15c2+0x64>
  f9:	88 44 24 05          	mov    %al,0x5(%esp)
  fd:	8d 54 24 05          	lea    0x5(%esp),%edx
 101:	b8 e8 10 00 00       	mov    $0x10e8,%eax
 106:	e8 fc ff ff ff       	call   107 <handle_15c2+0x107>
 10b:	85 c0                	test   %eax,%eax
 10d:	0f 84 54 01 00 00    	je     267 <handle_15c2+0x267>
 113:	b9 00 00 00 00       	mov    $0x0,%ecx
 118:	ba 04 87 00 00       	mov    $0x8704,%edx
 11d:	e9 8f 00 00 00       	jmp    1b1 <handle_15c2+0x1b1>
 122:	8d 54 24 05          	lea    0x5(%esp),%edx
 126:	b8 f2 02 00 00       	mov    $0x2f2,%eax
 12b:	e8 fc ff ff ff       	call   12c <handle_15c2+0x12c>
 130:	85 c0                	test   %eax,%eax
 132:	74 0c                	je     140 <handle_15c2+0x140>
 134:	b9 00 00 00 00       	mov    $0x0,%ecx
 139:	ba 04 93 00 00       	mov    $0x9304,%edx
 13e:	eb 71                	jmp    1b1 <handle_15c2+0x1b1>
 140:	8a 44 24 05          	mov    0x5(%esp),%al
 144:	88 43 11             	mov    %al,0x11(%ebx)
 147:	e9 1b 01 00 00       	jmp    267 <handle_15c2+0x267>
 14c:	80 7b 11 03          	cmpb   $0x3,0x11(%ebx)
 150:	74 0f                	je     161 <handle_15c2+0x161>
 152:	b9 00 00 00 00       	mov    $0x0,%ecx
 157:	ba 03 9f 00 00       	mov    $0x9f03,%edx
 15c:	e9 03 ff ff ff       	jmp    64 <handle_15c2+0x64>
 161:	0f b7 05 0e 04 00 00 	movzwl 0x40e,%eax
 168:	c1 e0 04             	shl    $0x4,%eax
 16b:	c6 40 26 00          	movb   $0x0,0x26(%eax)
 16f:	8a 53 11             	mov    0x11(%ebx),%dl
 172:	88 50 27             	mov    %dl,0x27(%eax)
 175:	89 d8                	mov    %ebx,%eax
 177:	83 c4 08             	add    $0x8,%esp
 17a:	5b                   	pop    %ebx
 17b:	5e                   	pop    %esi
 17c:	5f                   	pop    %edi
 17d:	e9 fc ff ff ff       	jmp    17e <handle_15c2+0x17e>
 182:	8a 43 11             	mov    0x11(%ebx),%al
 185:	3c 01                	cmp    $0x1,%al
 187:	74 50                	je     1d9 <handle_15c2+0x1d9>
 189:	3c 02                	cmp    $0x2,%al
 18b:	74 6b                	je     1f8 <handle_15c2+0x1f8>
 18d:	84 c0                	test   %al,%al
 18f:	0f 85 82 00 00 00    	jne    217 <handle_15c2+0x217>
 195:	8d 54 24 05          	lea    0x5(%esp),%edx
 199:	b8 e9 03 00 00       	mov    $0x3e9,%eax
 19e:	e8 fc ff ff ff       	call   19f <handle_15c2+0x19f>
 1a3:	85 c0                	test   %eax,%eax
 1a5:	74 18                	je     1bf <handle_15c2+0x1bf>
 1a7:	b9 00 00 00 00       	mov    $0x0,%ecx
 1ac:	ba 04 b1 00 00       	mov    $0xb104,%edx
 1b1:	89 d8                	mov    %ebx,%eax
 1b3:	e8 fc ff ff ff       	call   1b4 <handle_15c2+0x1b4>
 1b8:	83 c4 08             	add    $0x8,%esp
 1bb:	5b                   	pop    %ebx
 1bc:	5e                   	pop    %esi
 1bd:	5f                   	pop    %edi
 1be:	c3                   	ret    
 1bf:	8a 44 24 05          	mov    0x5(%esp),%al
 1c3:	88 43 10             	mov    %al,0x10(%ebx)
 1c6:	8a 44 24 06          	mov    0x6(%esp),%al
 1ca:	88 43 18             	mov    %al,0x18(%ebx)
 1cd:	8a 44 24 07          	mov    0x7(%esp),%al
 1d1:	88 43 14             	mov    %al,0x14(%ebx)
 1d4:	e9 8e 00 00 00       	jmp    267 <handle_15c2+0x267>
 1d9:	31 d2                	xor    %edx,%edx
 1db:	b8 e6 00 00 00       	mov    $0xe6,%eax
 1e0:	e8 fc ff ff ff       	call   1e1 <handle_15c2+0x1e1>
 1e5:	85 c0                	test   %eax,%eax
 1e7:	74 7e                	je     267 <handle_15c2+0x267>
 1e9:	b9 00 00 00 00       	mov    $0x0,%ecx
 1ee:	ba 04 c0 00 00       	mov    $0xc004,%edx
 1f3:	e9 6c fe ff ff       	jmp    64 <handle_15c2+0x64>
 1f8:	31 d2                	xor    %edx,%edx
 1fa:	b8 e7 00 00 00       	mov    $0xe7,%eax
 1ff:	e8 fc ff ff ff       	call   200 <handle_15c2+0x200>
 204:	85 c0                	test   %eax,%eax
 206:	74 5f                	je     267 <handle_15c2+0x267>
 208:	b9 00 00 00 00       	mov    $0x0,%ecx
 20d:	ba 04 cb 00 00       	mov    $0xcb04,%edx
 212:	e9 4d fe ff ff       	jmp    64 <handle_15c2+0x64>
 217:	b9 00 00 00 00       	mov    $0x0,%ecx
 21c:	ba 01 d3 00 00       	mov    $0xd301,%edx
 221:	eb 5b                	jmp    27e <handle_15c2+0x27e>
 223:	0f b7 53 02          	movzwl 0x2(%ebx),%edx
 227:	c1 e2 10             	shl    $0x10,%edx
 22a:	0f b7 43 10          	movzwl 0x10(%ebx),%eax
 22e:	0f b7 35 0e 04 00 00 	movzwl 0x40e,%esi
 235:	c1 e6 04             	shl    $0x4,%esi
 238:	8a 4e 27             	mov    0x27(%esi),%cl
 23b:	09 d0                	or     %edx,%eax
 23d:	89 c7                	mov    %eax,%edi
 23f:	75 1d                	jne    25e <handle_15c2+0x25e>
 241:	84 c9                	test   %cl,%cl
 243:	79 1c                	jns    261 <handle_15c2+0x261>
 245:	83 e1 7f             	and    $0x7f,%ecx
 248:	88 4c 24 03          	mov    %cl,0x3(%esp)
 24c:	31 d2                	xor    %edx,%edx
 24e:	b8 f5 00 00 00       	mov    $0xf5,%eax
 253:	e8 fc ff ff ff       	call   254 <handle_15c2+0x254>
 258:	8a 4c 24 03          	mov    0x3(%esp),%cl
 25c:	eb 03                	jmp    261 <handle_15c2+0x261>
 25e:	83 c9 80             	or     $0xffffff80,%ecx
 261:	88 4e 27             	mov    %cl,0x27(%esi)
 264:	89 7e 22             	mov    %edi,0x22(%esi)
 267:	89 d8                	mov    %ebx,%eax
 269:	83 c4 08             	add    $0x8,%esp
 26c:	5b                   	pop    %ebx
 26d:	5e                   	pop    %esi
 26e:	5f                   	pop    %edi
 26f:	e9 fc ff ff ff       	jmp    270 <handle_15c2+0x270>
 274:	b9 00 00 00 00       	mov    $0x0,%ecx
 279:	ba 01 fb 00 00       	mov    $0xfb01,%edx
 27e:	89 d8                	mov    %ebx,%eax
 280:	83 c4 08             	add    $0x8,%esp
 283:	5b                   	pop    %ebx
 284:	5e                   	pop    %esi
 285:	5f                   	pop    %edi
 286:	e9 fc ff ff ff       	jmp    287 <handle_15c2+0x287>

Disassembly of section .text.invoke_mouse_handler:

00000000 <invoke_mouse_handler>:
   0:	b9 00 00 00 00       	mov    $0x0,%ecx
   5:	31 d2                	xor    %edx,%edx
   7:	31 c0                	xor    %eax,%eax
   9:	e9 fc ff ff ff       	jmp    a <invoke_mouse_handler+0xa>

Disassembly of section .text.process_mouse:

00000000 <process_mouse>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	0f b7 15 0e 04 00 00 	movzwl 0x40e,%edx
   a:	c1 e2 04             	shl    $0x4,%edx
   d:	8a 5a 27             	mov    0x27(%edx),%bl
  10:	84 db                	test   %bl,%bl
  12:	79 2d                	jns    41 <process_mouse+0x41>
  14:	8a 4a 26             	mov    0x26(%edx),%cl
  17:	89 ce                	mov    %ecx,%esi
  19:	83 e6 07             	and    $0x7,%esi
  1c:	89 cf                	mov    %ecx,%edi
  1e:	83 e7 07             	and    $0x7,%edi
  21:	88 44 3a 28          	mov    %al,0x28(%edx,%edi,1)
  25:	83 e3 07             	and    $0x7,%ebx
  28:	8d 46 01             	lea    0x1(%esi),%eax
  2b:	38 c3                	cmp    %al,%bl
  2d:	76 06                	jbe    35 <process_mouse+0x35>
  2f:	41                   	inc    %ecx
  30:	88 4a 26             	mov    %cl,0x26(%edx)
  33:	eb 0c                	jmp    41 <process_mouse+0x41>
  35:	c6 42 26 00          	movb   $0x0,0x26(%edx)
  39:	5b                   	pop    %ebx
  3a:	5e                   	pop    %esi
  3b:	5f                   	pop    %edi
  3c:	e9 fc ff ff ff       	jmp    3d <process_mouse+0x3d>
  41:	5b                   	pop    %ebx
  42:	5e                   	pop    %esi
  43:	5f                   	pop    %edi
  44:	c3                   	ret    
