
kernel.o:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	51                   	push   %ecx
   e:	83 ec 04             	sub    $0x4,%esp
  11:	e8 fc ff ff ff       	call   12 <main+0x12>
  16:	83 ec 04             	sub    $0x4,%esp
  19:	6a 06                	push   $0x6
  1b:	6a 01                	push   $0x1
  1d:	68 00 00 00 00       	push   $0x0
  22:	e8 fc ff ff ff       	call   23 <main+0x23>
  27:	83 c4 10             	add    $0x10,%esp
  2a:	83 ec 04             	sub    $0x4,%esp
  2d:	6a 0a                	push   $0xa
  2f:	6a 4b                	push   $0x4b
  31:	68 04 00 00 00       	push   $0x4
  36:	e8 fc ff ff ff       	call   37 <main+0x37>
  3b:	83 c4 10             	add    $0x10,%esp
  3e:	83 ec 04             	sub    $0x4,%esp
  41:	6a 14                	push   $0x14
  43:	6a 00                	push   $0x0
  45:	68 23 00 00 00       	push   $0x23
  4a:	e8 fc ff ff ff       	call   4b <main+0x4b>
  4f:	83 c4 10             	add    $0x10,%esp
  52:	83 ec 0c             	sub    $0xc,%esp
  55:	68 23 00 00 00       	push   $0x23
  5a:	e8 fc ff ff ff       	call   5b <main+0x5b>
  5f:	83 c4 10             	add    $0x10,%esp
  62:	83 ec 0c             	sub    $0xc,%esp
  65:	68 39 00 00 00       	push   $0x39
  6a:	e8 fc ff ff ff       	call   6b <main+0x6b>
  6f:	83 c4 10             	add    $0x10,%esp
  72:	83 ec 0c             	sub    $0xc,%esp
  75:	68 39 00 00 00       	push   $0x39
  7a:	e8 fc ff ff ff       	call   7b <main+0x7b>
  7f:	83 c4 10             	add    $0x10,%esp
  82:	83 ec 0c             	sub    $0xc,%esp
  85:	68 39 00 00 00       	push   $0x39
  8a:	e8 fc ff ff ff       	call   8b <main+0x8b>
  8f:	83 c4 10             	add    $0x10,%esp
  92:	83 ec 0c             	sub    $0xc,%esp
  95:	68 39 00 00 00       	push   $0x39
  9a:	e8 fc ff ff ff       	call   9b <main+0x9b>
  9f:	83 c4 10             	add    $0x10,%esp
  a2:	83 ec 0c             	sub    $0xc,%esp
  a5:	68 39 00 00 00       	push   $0x39
  aa:	e8 fc ff ff ff       	call   ab <main+0xab>
  af:	83 c4 10             	add    $0x10,%esp
  b2:	83 ec 0c             	sub    $0xc,%esp
  b5:	68 39 00 00 00       	push   $0x39
  ba:	e8 fc ff ff ff       	call   bb <main+0xbb>
  bf:	83 c4 10             	add    $0x10,%esp
  c2:	83 ec 0c             	sub    $0xc,%esp
  c5:	68 39 00 00 00       	push   $0x39
  ca:	e8 fc ff ff ff       	call   cb <main+0xcb>
  cf:	83 c4 10             	add    $0x10,%esp
  d2:	83 ec 0c             	sub    $0xc,%esp
  d5:	68 39 00 00 00       	push   $0x39
  da:	e8 fc ff ff ff       	call   db <main+0xdb>
  df:	83 c4 10             	add    $0x10,%esp
  e2:	83 ec 0c             	sub    $0xc,%esp
  e5:	68 39 00 00 00       	push   $0x39
  ea:	e8 fc ff ff ff       	call   eb <main+0xeb>
  ef:	83 c4 10             	add    $0x10,%esp
  f2:	83 ec 04             	sub    $0x4,%esp
  f5:	6a 18                	push   $0x18
  f7:	6a 2d                	push   $0x2d
  f9:	68 58 00 00 00       	push   $0x58
  fe:	e8 fc ff ff ff       	call   ff <main+0xff>
 103:	83 c4 10             	add    $0x10,%esp
 106:	8b 4d fc             	mov    -0x4(%ebp),%ecx
 109:	c9                   	leave  
 10a:	8d 61 fc             	lea    -0x4(%ecx),%esp
 10d:	c3                   	ret    
