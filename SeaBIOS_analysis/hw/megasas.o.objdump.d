
./megasas.o:     file format elf32-i386


Disassembly of section .text.megasas_fire_cmd:

00000000 <megasas_fire_cmd>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	89 c7                	mov    %eax,%edi
   5:	89 d3                	mov    %edx,%ebx
   7:	89 ce                	mov    %ecx,%esi
   9:	51                   	push   %ecx
   a:	68 00 00 00 00       	push   $0x0
   f:	e8 fc ff ff ff       	call   10 <megasas_fire_cmd+0x10>
  14:	89 f8                	mov    %edi,%eax
  16:	83 e0 fd             	and    $0xfffffffd,%eax
  19:	5a                   	pop    %edx
  1a:	59                   	pop    %ecx
  1b:	66 83 f8 71          	cmp    $0x71,%ax
  1f:	75 16                	jne    37 <megasas_fire_cmd+0x37>
  21:	8d 93 c4 00 00 00    	lea    0xc4(%ebx),%edx
  27:	31 c0                	xor    %eax,%eax
  29:	ef                   	out    %eax,(%dx)
  2a:	89 f0                	mov    %esi,%eax
  2c:	83 c8 03             	or     $0x3,%eax
  2f:	8d 93 c0 00 00 00    	lea    0xc0(%ebx),%edx
  35:	eb 1e                	jmp    55 <megasas_fire_cmd+0x55>
  37:	8d 53 40             	lea    0x40(%ebx),%edx
  3a:	66 83 ff 15          	cmp    $0x15,%di
  3e:	74 06                	je     46 <megasas_fire_cmd+0x46>
  40:	66 3d 11 04          	cmp    $0x411,%ax
  44:	75 0a                	jne    50 <megasas_fire_cmd+0x50>
  46:	89 f0                	mov    %esi,%eax
  48:	c1 e8 03             	shr    $0x3,%eax
  4b:	83 c8 01             	or     $0x1,%eax
  4e:	eb 05                	jmp    55 <megasas_fire_cmd+0x55>
  50:	89 f0                	mov    %esi,%eax
  52:	83 c8 03             	or     $0x3,%eax
  55:	ef                   	out    %eax,(%dx)
  56:	b8 60 ea 00 00       	mov    $0xea60,%eax
  5b:	e8 fc ff ff ff       	call   5c <megasas_fire_cmd+0x5c>
  60:	89 c3                	mov    %eax,%ebx
  62:	0f b6 56 02          	movzbl 0x2(%esi),%edx
  66:	80 fa ff             	cmp    $0xff,%dl
  69:	75 23                	jne    8e <megasas_fire_cmd+0x8e>
  6b:	89 d8                	mov    %ebx,%eax
  6d:	e8 fc ff ff ff       	call   6e <megasas_fire_cmd+0x6e>
  72:	85 c0                	test   %eax,%eax
  74:	74 11                	je     87 <megasas_fire_cmd+0x87>
  76:	ba 00 00 00 00       	mov    $0x0,%edx
  7b:	b8 93 00 00 00       	mov    $0x93,%eax
  80:	e8 fc ff ff ff       	call   81 <megasas_fire_cmd+0x81>
  85:	eb 1f                	jmp    a6 <megasas_fire_cmd+0xa6>
  87:	e8 fc ff ff ff       	call   88 <megasas_fire_cmd+0x88>
  8c:	eb d4                	jmp    62 <megasas_fire_cmd+0x62>
  8e:	80 fa 2d             	cmp    $0x2d,%dl
  91:	74 18                	je     ab <megasas_fire_cmd+0xab>
  93:	84 d2                	test   %dl,%dl
  95:	74 14                	je     ab <megasas_fire_cmd+0xab>
  97:	52                   	push   %edx
  98:	56                   	push   %esi
  99:	68 0c 00 00 00       	push   $0xc
  9e:	e8 fc ff ff ff       	call   9f <megasas_fire_cmd+0x9f>
  a3:	83 c4 0c             	add    $0xc,%esp
  a6:	83 c8 ff             	or     $0xffffffff,%eax
  a9:	eb 02                	jmp    ad <megasas_fire_cmd+0xad>
  ab:	31 c0                	xor    %eax,%eax
  ad:	5b                   	pop    %ebx
  ae:	5e                   	pop    %esi
  af:	5f                   	pop    %edi
  b0:	c3                   	ret    

Disassembly of section .text.megasas_scan_target:

00000000 <megasas_scan_target>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	81 ec 1c 04 00 00    	sub    $0x41c,%esp
   a:	89 c5                	mov    %eax,%ebp
   c:	89 54 24 10          	mov    %edx,0x10(%esp)
  10:	b9 00 01 00 00       	mov    $0x100,%ecx
  15:	ba 38 00 00 00       	mov    $0x38,%edx
  1a:	b8 00 00 00 00       	mov    $0x0,%eax
  1f:	e8 fc ff ff ff       	call   20 <megasas_scan_target+0x20>
  24:	89 c3                	mov    %eax,%ebx
  26:	85 c0                	test   %eax,%eax
  28:	75 33                	jne    5d <megasas_scan_target+0x5d>
  2a:	b9 00 01 00 00       	mov    $0x100,%ecx
  2f:	ba 38 00 00 00       	mov    $0x38,%edx
  34:	b8 00 00 00 00       	mov    $0x0,%eax
  39:	e8 fc ff ff ff       	call   3a <megasas_scan_target+0x3a>
  3e:	89 c3                	mov    %eax,%ebx
  40:	85 c0                	test   %eax,%eax
  42:	75 19                	jne    5d <megasas_scan_target+0x5d>
  44:	ba 00 00 00 00       	mov    $0x0,%edx
  49:	b8 f8 00 00 00       	mov    $0xf8,%eax
  4e:	81 c4 1c 04 00 00    	add    $0x41c,%esp
  54:	5b                   	pop    %ebx
  55:	5e                   	pop    %esi
  56:	5f                   	pop    %edi
  57:	5d                   	pop    %ebp
  58:	e9 fc ff ff ff       	jmp    59 <megasas_scan_target+0x59>
  5d:	b9 08 04 00 00       	mov    $0x408,%ecx
  62:	31 d2                	xor    %edx,%edx
  64:	8d 44 24 14          	lea    0x14(%esp),%eax
  68:	e8 fc ff ff ff       	call   69 <megasas_scan_target+0x69>
  6d:	b9 38 00 00 00       	mov    $0x38,%ecx
  72:	31 d2                	xor    %edx,%edx
  74:	89 d8                	mov    %ebx,%eax
  76:	e8 fc ff ff ff       	call   77 <megasas_scan_target+0x77>
  7b:	c6 03 05             	movb   $0x5,(%ebx)
  7e:	c6 43 02 ff          	movb   $0xff,0x2(%ebx)
  82:	c6 43 07 01          	movb   $0x1,0x7(%ebx)
  86:	66 c7 43 10 11 00    	movw   $0x11,0x10(%ebx)
  8c:	c7 43 14 08 04 00 00 	movl   $0x408,0x14(%ebx)
  93:	c7 43 18 00 00 01 03 	movl   $0x3010000,0x18(%ebx)
  9a:	8d 7c 24 14          	lea    0x14(%esp),%edi
  9e:	89 7b 28             	mov    %edi,0x28(%ebx)
  a1:	c7 43 2c 08 04 00 00 	movl   $0x408,0x2c(%ebx)
  a8:	89 5b 08             	mov    %ebx,0x8(%ebx)
  ab:	0f b7 45 12          	movzwl 0x12(%ebp),%eax
  af:	89 d9                	mov    %ebx,%ecx
  b1:	8b 54 24 10          	mov    0x10(%esp),%edx
  b5:	e8 fc ff ff ff       	call   b6 <megasas_scan_target+0xb6>
  ba:	89 c3                	mov    %eax,%ebx
  bc:	85 c0                	test   %eax,%eax
  be:	0f 85 5b 01 00 00    	jne    21f <megasas_scan_target+0x21f>
  c4:	ff 74 24 14          	push   0x14(%esp)
  c8:	68 2c 00 00 00       	push   $0x2c
  cd:	e8 fc ff ff ff       	call   ce <megasas_scan_target+0xce>
  d2:	58                   	pop    %eax
  d3:	5a                   	pop    %edx
  d4:	39 5c 24 14          	cmp    %ebx,0x14(%esp)
  d8:	0f 86 41 01 00 00    	jbe    21f <megasas_scan_target+0x21f>
  de:	0f b6 47 0c          	movzbl 0xc(%edi),%eax
  e2:	50                   	push   %eax
  e3:	0f b6 47 09          	movzbl 0x9(%edi),%eax
  e7:	50                   	push   %eax
  e8:	0f b6 47 08          	movzbl 0x8(%edi),%eax
  ec:	50                   	push   %eax
  ed:	68 39 00 00 00       	push   $0x39
  f2:	e8 fc ff ff ff       	call   f3 <megasas_scan_target+0xf3>
  f7:	83 c4 10             	add    $0x10,%esp
  fa:	80 7f 0c 00          	cmpb   $0x0,0xc(%edi)
  fe:	0f 84 12 01 00 00    	je     216 <megasas_scan_target+0x216>
 104:	0f b6 47 09          	movzbl 0x9(%edi),%eax
 108:	88 44 24 08          	mov    %al,0x8(%esp)
 10c:	89 04 24             	mov    %eax,(%esp)
 10f:	0f b6 47 08          	movzbl 0x8(%edi),%eax
 113:	88 44 24 0f          	mov    %al,0xf(%esp)
 117:	89 44 24 04          	mov    %eax,0x4(%esp)
 11b:	b9 10 00 00 00       	mov    $0x10,%ecx
 120:	ba 30 00 00 00       	mov    $0x30,%edx
 125:	b8 00 00 00 00       	mov    $0x0,%eax
 12a:	e8 fc ff ff ff       	call   12b <megasas_scan_target+0x12b>
 12f:	89 c6                	mov    %eax,%esi
 131:	85 c0                	test   %eax,%eax
 133:	75 14                	jne    149 <megasas_scan_target+0x149>
 135:	ba 00 00 00 00       	mov    $0x0,%edx
 13a:	b8 d4 00 00 00       	mov    $0xd4,%eax
 13f:	e8 fc ff ff ff       	call   140 <megasas_scan_target+0x140>
 144:	e9 cd 00 00 00       	jmp    216 <megasas_scan_target+0x216>
 149:	b9 30 00 00 00       	mov    $0x30,%ecx
 14e:	31 d2                	xor    %edx,%edx
 150:	e8 fc ff ff ff       	call   151 <megasas_scan_target+0x151>
 155:	c6 06 82             	movb   $0x82,(%esi)
 158:	0f b7 45 00          	movzwl 0x0(%ebp),%eax
 15c:	89 46 14             	mov    %eax,0x14(%esi)
 15f:	66 8b 45 12          	mov    0x12(%ebp),%ax
 163:	66 89 46 2c          	mov    %ax,0x2c(%esi)
 167:	8a 44 24 0f          	mov    0xf(%esp),%al
 16b:	88 46 2e             	mov    %al,0x2e(%esi)
 16e:	8a 44 24 08          	mov    0x8(%esp),%al
 172:	88 46 2f             	mov    %al,0x2f(%esi)
 175:	8b 44 24 10          	mov    0x10(%esp),%eax
 179:	89 46 28             	mov    %eax,0x28(%esi)
 17c:	b9 00 01 00 00       	mov    $0x100,%ecx
 181:	ba 38 00 00 00       	mov    $0x38,%edx
 186:	b8 00 00 00 00       	mov    $0x0,%eax
 18b:	e8 fc ff ff ff       	call   18c <megasas_scan_target+0x18c>
 190:	89 46 24             	mov    %eax,0x24(%esi)
 193:	85 c0                	test   %eax,%eax
 195:	75 11                	jne    1a8 <megasas_scan_target+0x1a8>
 197:	ba 00 00 00 00       	mov    $0x0,%edx
 19c:	b8 e0 00 00 00       	mov    $0xe0,%eax
 1a1:	e8 fc ff ff ff       	call   1a2 <megasas_scan_target+0x1a2>
 1a6:	eb 67                	jmp    20f <megasas_scan_target+0x20f>
 1a8:	8d 46 02             	lea    0x2(%esi),%eax
 1ab:	50                   	push   %eax
 1ac:	8b 4c 24 04          	mov    0x4(%esp),%ecx
 1b0:	8b 54 24 08          	mov    0x8(%esp),%edx
 1b4:	89 e8                	mov    %ebp,%eax
 1b6:	e8 fc ff ff ff       	call   1b7 <megasas_scan_target+0x1b7>
 1bb:	ff 74 24 04          	push   0x4(%esp)
 1bf:	ff 74 24 0c          	push   0xc(%esp)
 1c3:	55                   	push   %ebp
 1c4:	68 4e 00 00 00       	push   $0x4e
 1c9:	6a 50                	push   $0x50
 1cb:	e8 fc ff ff ff       	call   1cc <megasas_scan_target+0x1cc>
 1d0:	89 44 24 20          	mov    %eax,0x20(%esp)
 1d4:	8b 4c 24 18          	mov    0x18(%esp),%ecx
 1d8:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 1dc:	89 e8                	mov    %ebp,%eax
 1de:	e8 fc ff ff ff       	call   1df <megasas_scan_target+0x1df>
 1e3:	89 c1                	mov    %eax,%ecx
 1e5:	8b 54 24 20          	mov    0x20(%esp),%edx
 1e9:	89 f0                	mov    %esi,%eax
 1eb:	e8 fc ff ff ff       	call   1ec <megasas_scan_target+0x1ec>
 1f0:	89 44 24 18          	mov    %eax,0x18(%esp)
 1f4:	8b 44 24 20          	mov    0x20(%esp),%eax
 1f8:	e8 fc ff ff ff       	call   1f9 <megasas_scan_target+0x1f9>
 1fd:	83 c4 18             	add    $0x18,%esp
 200:	8b 14 24             	mov    (%esp),%edx
 203:	85 d2                	test   %edx,%edx
 205:	74 0f                	je     216 <megasas_scan_target+0x216>
 207:	8b 46 24             	mov    0x24(%esi),%eax
 20a:	e8 fc ff ff ff       	call   20b <megasas_scan_target+0x20b>
 20f:	89 f0                	mov    %esi,%eax
 211:	e8 fc ff ff ff       	call   212 <megasas_scan_target+0x212>
 216:	43                   	inc    %ebx
 217:	83 c7 10             	add    $0x10,%edi
 21a:	e9 b5 fe ff ff       	jmp    d4 <megasas_scan_target+0xd4>
 21f:	81 c4 1c 04 00 00    	add    $0x41c,%esp
 225:	5b                   	pop    %ebx
 226:	5e                   	pop    %esi
 227:	5f                   	pop    %edi
 228:	5d                   	pop    %ebp
 229:	c3                   	ret    

Disassembly of section .text.init_megasas:

00000000 <init_megasas>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 0c             	sub    $0xc,%esp
   7:	89 c7                	mov    %eax,%edi
   9:	0f b7 00             	movzwl (%eax),%eax
   c:	ba 18 00 00 00       	mov    $0x18,%edx
  11:	e8 fc ff ff ff       	call   12 <init_megasas+0x12>
  16:	83 e0 fc             	and    $0xfffffffc,%eax
  19:	83 f8 01             	cmp    $0x1,%eax
  1c:	19 d2                	sbb    %edx,%edx
  1e:	83 e2 f8             	and    $0xfffffff8,%edx
  21:	83 c2 18             	add    $0x18,%edx
  24:	89 f8                	mov    %edi,%eax
  26:	e8 fc ff ff ff       	call   27 <init_megasas+0x27>
  2b:	89 c6                	mov    %eax,%esi
  2d:	0f b7 c0             	movzwl %ax,%eax
  30:	89 04 24             	mov    %eax,(%esp)
  33:	85 c0                	test   %eax,%eax
  35:	0f 84 9e 01 00 00    	je     1d9 <init_megasas+0x1d9>
  3b:	89 f8                	mov    %edi,%eax
  3d:	e8 fc ff ff ff       	call   3e <init_megasas+0x3e>
  42:	ff 34 24             	push   (%esp)
  45:	57                   	push   %edi
  46:	68 6e 00 00 00       	push   $0x6e
  4b:	e8 fc ff ff ff       	call   4c <init_megasas+0x4c>
  50:	66 8b 47 12          	mov    0x12(%edi),%ax
  54:	83 c4 0c             	add    $0xc,%esp
  57:	66 83 f8 15          	cmp    $0x15,%ax
  5b:	74 0c                	je     69 <init_megasas+0x69>
  5d:	8d 96 b0 00 00 00    	lea    0xb0(%esi),%edx
  63:	66 3d 11 04          	cmp    $0x411,%ax
  67:	75 03                	jne    6c <init_megasas+0x6c>
  69:	8d 56 18             	lea    0x18(%esi),%edx
  6c:	ed                   	in     (%dx),%eax
  6d:	25 00 00 00 f0       	and    $0xf0000000,%eax
  72:	89 c3                	mov    %eax,%ebx
  74:	31 ed                	xor    %ebp,%ebp
  76:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  7d:	00 
  7e:	3b 5c 24 04          	cmp    0x4(%esp),%ebx
  82:	0f 84 44 01 00 00    	je     1cc <init_megasas+0x1cc>
  88:	81 fb 00 00 00 b0    	cmp    $0xb0000000,%ebx
  8e:	0f 84 ca 00 00 00    	je     15e <init_megasas+0x15e>
  94:	77 15                	ja     ab <init_megasas+0xab>
  96:	81 fb 00 00 00 60    	cmp    $0x60000000,%ebx
  9c:	74 31                	je     cf <init_megasas+0xcf>
  9e:	81 fb 00 00 00 90    	cmp    $0x90000000,%ebx
  a4:	74 2e                	je     d4 <init_megasas+0xd4>
  a6:	e9 cf 00 00 00       	jmp    17a <init_megasas+0x17a>
  ab:	81 fb 00 00 00 c0    	cmp    $0xc0000000,%ebx
  b1:	74 50                	je     103 <init_megasas+0x103>
  b3:	81 fb 00 00 00 f0    	cmp    $0xf0000000,%ebx
  b9:	0f 85 bb 00 00 00    	jne    17a <init_megasas+0x17a>
  bf:	68 92 00 00 00       	push   $0x92
  c4:	e8 fc ff ff ff       	call   c5 <init_megasas+0xc5>
  c9:	59                   	pop    %ecx
  ca:	e9 0a 01 00 00       	jmp    1d9 <init_megasas+0x1d9>
  cf:	bd 08 00 00 00       	mov    $0x8,%ebp
  d4:	83 cd 10             	or     $0x10,%ebp
  d7:	66 8b 4f 12          	mov    0x12(%edi),%cx
  db:	66 83 f9 71          	cmp    $0x71,%cx
  df:	74 14                	je     f5 <init_megasas+0xf5>
  e1:	83 e9 5b             	sub    $0x5b,%ecx
  e4:	66 83 f9 18          	cmp    $0x18,%cx
  e8:	77 11                	ja     fb <init_megasas+0xfb>
  ea:	b8 05 00 00 01       	mov    $0x1000005,%eax
  ef:	d3 e8                	shr    %cl,%eax
  f1:	a8 01                	test   $0x1,%al
  f3:	74 06                	je     fb <init_megasas+0xfb>
  f5:	89 e8                	mov    %ebp,%eax
  f7:	89 f2                	mov    %esi,%edx
  f9:	eb 05                	jmp    100 <init_megasas+0x100>
  fb:	8d 56 20             	lea    0x20(%esi),%edx
  fe:	89 e8                	mov    %ebp,%eax
 100:	ef                   	out    %eax,(%dx)
 101:	eb 77                	jmp    17a <init_megasas+0x17a>
 103:	66 8b 6f 12          	mov    0x12(%edi),%bp
 107:	66 83 fd 71          	cmp    $0x71,%bp
 10b:	74 14                	je     121 <init_megasas+0x121>
 10d:	8d 4d a5             	lea    -0x5b(%ebp),%ecx
 110:	66 83 f9 18          	cmp    $0x18,%cx
 114:	77 38                	ja     14e <init_megasas+0x14e>
 116:	b8 05 00 00 01       	mov    $0x1000005,%eax
 11b:	d3 e8                	shr    %cl,%eax
 11d:	a8 01                	test   $0x1,%al
 11f:	74 2d                	je     14e <init_megasas+0x14e>
 121:	b8 07 00 00 00       	mov    $0x7,%eax
 126:	89 f2                	mov    %esi,%edx
 128:	ef                   	out    %eax,(%dx)
 129:	83 ed 5b             	sub    $0x5b,%ebp
 12c:	66 f7 c5 fd ff       	test   $0xfffd,%bp
 131:	75 24                	jne    157 <init_megasas+0x157>
 133:	bd 60 ea 00 00       	mov    $0xea60,%ebp
 138:	89 f2                	mov    %esi,%edx
 13a:	ed                   	in     (%dx),%eax
 13b:	a8 01                	test   $0x1,%al
 13d:	74 18                	je     157 <init_megasas+0x157>
 13f:	b8 14 00 00 00       	mov    $0x14,%eax
 144:	e8 fc ff ff ff       	call   145 <init_megasas+0x145>
 149:	4d                   	dec    %ebp
 14a:	75 ec                	jne    138 <init_megasas+0x138>
 14c:	eb 09                	jmp    157 <init_megasas+0x157>
 14e:	8d 56 20             	lea    0x20(%esi),%edx
 151:	b8 07 00 00 00       	mov    $0x7,%eax
 156:	ef                   	out    %eax,(%dx)
 157:	bd 07 00 00 00       	mov    $0x7,%ebp
 15c:	eb 1c                	jmp    17a <init_megasas+0x17a>
 15e:	68 ac 00 00 00       	push   $0xac
 163:	e8 fc ff ff ff       	call   164 <init_megasas+0x164>
 168:	8b 54 24 04          	mov    0x4(%esp),%edx
 16c:	89 f8                	mov    %edi,%eax
 16e:	83 c4 10             	add    $0x10,%esp
 171:	5b                   	pop    %ebx
 172:	5e                   	pop    %esi
 173:	5f                   	pop    %edi
 174:	5d                   	pop    %ebp
 175:	e9 fc ff ff ff       	jmp    176 <init_megasas+0x176>
 17a:	b8 60 ea 00 00       	mov    $0xea60,%eax
 17f:	e8 fc ff ff ff       	call   180 <init_megasas+0x180>
 184:	89 44 24 08          	mov    %eax,0x8(%esp)
 188:	8b 44 24 08          	mov    0x8(%esp),%eax
 18c:	e8 fc ff ff ff       	call   18d <init_megasas+0x18d>
 191:	85 c0                	test   %eax,%eax
 193:	75 2e                	jne    1c3 <init_megasas+0x1c3>
 195:	e8 fc ff ff ff       	call   196 <init_megasas+0x196>
 19a:	66 8b 47 12          	mov    0x12(%edi),%ax
 19e:	66 3d 11 04          	cmp    $0x411,%ax
 1a2:	74 0c                	je     1b0 <init_megasas+0x1b0>
 1a4:	8d 96 b0 00 00 00    	lea    0xb0(%esi),%edx
 1aa:	66 83 f8 15          	cmp    $0x15,%ax
 1ae:	75 03                	jne    1b3 <init_megasas+0x1b3>
 1b0:	8d 56 18             	lea    0x18(%esi),%edx
 1b3:	ed                   	in     (%dx),%eax
 1b4:	25 00 00 00 f0       	and    $0xf0000000,%eax
 1b9:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 1bd:	39 c3                	cmp    %eax,%ebx
 1bf:	74 c7                	je     188 <init_megasas+0x188>
 1c1:	eb 02                	jmp    1c5 <init_megasas+0x1c5>
 1c3:	89 d8                	mov    %ebx,%eax
 1c5:	89 c3                	mov    %eax,%ebx
 1c7:	e9 b2 fe ff ff       	jmp    7e <init_megasas+0x7e>
 1cc:	53                   	push   %ebx
 1cd:	68 c3 00 00 00       	push   $0xc3
 1d2:	e8 fc ff ff ff       	call   1d3 <init_megasas+0x1d3>
 1d7:	58                   	pop    %eax
 1d8:	5a                   	pop    %edx
 1d9:	83 c4 0c             	add    $0xc,%esp
 1dc:	5b                   	pop    %ebx
 1dd:	5e                   	pop    %esi
 1de:	5f                   	pop    %edi
 1df:	5d                   	pop    %ebp
 1e0:	c3                   	ret    

Disassembly of section .text.megasas_process_op:

00000000 <megasas_process_op>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 14             	sub    $0x14,%esp
   7:	89 c3                	mov    %eax,%ebx
   9:	b9 10 00 00 00       	mov    $0x10,%ecx
   e:	8d 54 24 04          	lea    0x4(%esp),%edx
  12:	e8 fc ff ff ff       	call   13 <megasas_process_op+0x13>
  17:	85 c0                	test   %eax,%eax
  19:	79 0c                	jns    27 <megasas_process_op+0x27>
  1b:	89 d8                	mov    %ebx,%eax
  1d:	e8 fc ff ff ff       	call   1e <megasas_process_op+0x1e>
  22:	e9 b3 00 00 00       	jmp    da <megasas_process_op+0xda>
  27:	89 c6                	mov    %eax,%esi
  29:	8b 7b 04             	mov    0x4(%ebx),%edi
  2c:	8b 6f 24             	mov    0x24(%edi),%ebp
  2f:	66 8b 47 2c          	mov    0x2c(%edi),%ax
  33:	66 89 44 24 02       	mov    %ax,0x2(%esp)
  38:	b9 38 00 00 00       	mov    $0x38,%ecx
  3d:	31 d2                	xor    %edx,%edx
  3f:	89 e8                	mov    %ebp,%eax
  41:	e8 fc ff ff ff       	call   42 <megasas_process_op+0x42>
  46:	c6 45 00 03          	movb   $0x3,0x0(%ebp)
  4a:	c6 45 02 ff          	movb   $0xff,0x2(%ebp)
  4e:	8a 57 2e             	mov    0x2e(%edi),%dl
  51:	88 55 04             	mov    %dl,0x4(%ebp)
  54:	8a 57 2f             	mov    0x2f(%edi),%dl
  57:	88 55 05             	mov    %dl,0x5(%ebp)
  5a:	66 c7 45 10 01 00    	movw   $0x1,0x10(%ebp)
  60:	0f b7 4b 0a          	movzwl 0xa(%ebx),%ecx
  64:	89 ca                	mov    %ecx,%edx
  66:	0f af d6             	imul   %esi,%edx
  69:	89 55 14             	mov    %edx,0x14(%ebp)
  6c:	c6 45 06 10          	movb   $0x10,0x6(%ebp)
  70:	31 d2                	xor    %edx,%edx
  72:	8a 44 14 04          	mov    0x4(%esp,%edx,1),%al
  76:	88 44 15 20          	mov    %al,0x20(%ebp,%edx,1)
  7a:	42                   	inc    %edx
  7b:	83 fa 10             	cmp    $0x10,%edx
  7e:	75 f2                	jne    72 <megasas_process_op+0x72>
  80:	56                   	push   %esi
  81:	51                   	push   %ecx
  82:	0f b6 54 24 0c       	movzbl 0xc(%esp),%edx
  87:	52                   	push   %edx
  88:	68 da 00 00 00       	push   $0xda
  8d:	e8 fc ff ff ff       	call   8e <megasas_process_op+0x8e>
  92:	0f b7 53 0a          	movzwl 0xa(%ebx),%edx
  96:	83 c4 10             	add    $0x10,%esp
  99:	66 85 d2             	test   %dx,%dx
  9c:	74 0f                	je     ad <megasas_process_op+0xad>
  9e:	8b 0b                	mov    (%ebx),%ecx
  a0:	89 4d 30             	mov    %ecx,0x30(%ebp)
  a3:	0f af d6             	imul   %esi,%edx
  a6:	89 55 34             	mov    %edx,0x34(%ebp)
  a9:	c6 45 07 01          	movb   $0x1,0x7(%ebp)
  ad:	89 6d 08             	mov    %ebp,0x8(%ebp)
  b0:	8b 57 28             	mov    0x28(%edi),%edx
  b3:	0f b7 44 24 02       	movzwl 0x2(%esp),%eax
  b8:	89 e9                	mov    %ebp,%ecx
  ba:	e8 fc ff ff ff       	call   bb <megasas_process_op+0xbb>
  bf:	85 c0                	test   %eax,%eax
  c1:	74 17                	je     da <megasas_process_op+0xda>
  c3:	0f b6 44 24 04       	movzbl 0x4(%esp),%eax
  c8:	50                   	push   %eax
  c9:	68 f9 00 00 00       	push   $0xf9
  ce:	e8 fc ff ff ff       	call   cf <megasas_process_op+0xcf>
  d3:	58                   	pop    %eax
  d4:	5a                   	pop    %edx
  d5:	b8 0c 00 00 00       	mov    $0xc,%eax
  da:	83 c4 14             	add    $0x14,%esp
  dd:	5b                   	pop    %ebx
  de:	5e                   	pop    %esi
  df:	5f                   	pop    %edi
  e0:	5d                   	pop    %ebp
  e1:	c3                   	ret    

Disassembly of section .text.megasas_setup:

00000000 <megasas_setup>:
   0:	53                   	push   %ebx
   1:	68 10 01 00 00       	push   $0x110
   6:	e8 fc ff ff ff       	call   7 <megasas_setup+0x7>
   b:	a1 00 00 00 00       	mov    0x0,%eax
  10:	8d 58 fc             	lea    -0x4(%eax),%ebx
  13:	58                   	pop    %eax
  14:	83 fb fc             	cmp    $0xfffffffc,%ebx
  17:	74 60                	je     79 <megasas_setup+0x79>
  19:	8b 43 10             	mov    0x10(%ebx),%eax
  1c:	66 3d 00 10          	cmp    $0x1000,%ax
  20:	74 06                	je     28 <megasas_setup+0x28>
  22:	66 3d 28 10          	cmp    $0x1028,%ax
  26:	75 49                	jne    71 <megasas_setup+0x71>
  28:	66 8b 4b 12          	mov    0x12(%ebx),%cx
  2c:	66 81 f9 11 04       	cmp    $0x411,%cx
  31:	74 32                	je     65 <megasas_setup+0x65>
  33:	66 83 f9 7c          	cmp    $0x7c,%cx
  37:	77 25                	ja     5e <megasas_setup+0x5e>
  39:	66 83 f9 5f          	cmp    $0x5f,%cx
  3d:	77 0f                	ja     4e <megasas_setup+0x4e>
  3f:	8d 41 a5             	lea    -0x5b(%ecx),%eax
  42:	66 a9 fd ff          	test   $0xfffd,%ax
  46:	74 1d                	je     65 <megasas_setup+0x65>
  48:	66 83 f9 15          	cmp    $0x15,%cx
  4c:	eb 15                	jmp    63 <megasas_setup+0x63>
  4e:	83 e9 60             	sub    $0x60,%ecx
  51:	b8 01 00 0a 13       	mov    $0x130a0001,%eax
  56:	d3 e8                	shr    %cl,%eax
  58:	a8 01                	test   $0x1,%al
  5a:	74 15                	je     71 <megasas_setup+0x71>
  5c:	eb 07                	jmp    65 <megasas_setup+0x65>
  5e:	66 81 f9 13 04       	cmp    $0x413,%cx
  63:	75 0c                	jne    71 <megasas_setup+0x71>
  65:	89 da                	mov    %ebx,%edx
  67:	b8 00 00 00 00       	mov    $0x0,%eax
  6c:	e8 fc ff ff ff       	call   6d <megasas_setup+0x6d>
  71:	8b 5b 04             	mov    0x4(%ebx),%ebx
  74:	83 eb 04             	sub    $0x4,%ebx
  77:	eb 9b                	jmp    14 <megasas_setup+0x14>
  79:	5b                   	pop    %ebx
  7a:	c3                   	ret    
