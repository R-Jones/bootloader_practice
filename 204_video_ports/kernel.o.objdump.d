
kernel/kernel.o:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	51                   	push   %ecx
   e:	83 ec 14             	sub    $0x14,%esp
  11:	83 ec 08             	sub    $0x8,%esp
  14:	6a 0e                	push   $0xe
  16:	68 d4 03 00 00       	push   $0x3d4
  1b:	e8 fc ff ff ff       	call   1c <main+0x1c>
  20:	83 c4 10             	add    $0x10,%esp
  23:	83 ec 0c             	sub    $0xc,%esp
  26:	68 d5 03 00 00       	push   $0x3d5
  2b:	e8 fc ff ff ff       	call   2c <main+0x2c>
  30:	83 c4 10             	add    $0x10,%esp
  33:	0f b6 c0             	movzbl %al,%eax
  36:	89 45 f4             	mov    %eax,-0xc(%ebp)
  39:	c1 65 f4 08          	shll   $0x8,-0xc(%ebp)
  3d:	83 ec 08             	sub    $0x8,%esp
  40:	6a 0f                	push   $0xf
  42:	68 d4 03 00 00       	push   $0x3d4
  47:	e8 fc ff ff ff       	call   48 <main+0x48>
  4c:	83 c4 10             	add    $0x10,%esp
  4f:	83 ec 0c             	sub    $0xc,%esp
  52:	68 d5 03 00 00       	push   $0x3d5
  57:	e8 fc ff ff ff       	call   58 <main+0x58>
  5c:	83 c4 10             	add    $0x10,%esp
  5f:	0f b6 c0             	movzbl %al,%eax
  62:	01 45 f4             	add    %eax,-0xc(%ebp)
  65:	8b 45 f4             	mov    -0xc(%ebp),%eax
  68:	01 c0                	add    %eax,%eax
  6a:	89 45 f0             	mov    %eax,-0x10(%ebp)
  6d:	c7 45 ec 00 80 0b 00 	movl   $0xb8000,-0x14(%ebp)
  74:	8b 55 f0             	mov    -0x10(%ebp),%edx
  77:	8b 45 ec             	mov    -0x14(%ebp),%eax
  7a:	01 d0                	add    %edx,%eax
  7c:	c6 00 58             	movb   $0x58,(%eax)
  7f:	8b 45 f0             	mov    -0x10(%ebp),%eax
  82:	8d 50 01             	lea    0x1(%eax),%edx
  85:	8b 45 ec             	mov    -0x14(%ebp),%eax
  88:	01 d0                	add    %edx,%eax
  8a:	c6 00 0f             	movb   $0xf,(%eax)
  8d:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  90:	c9                   	leave  
  91:	8d 61 fc             	lea    -0x4(%ecx),%esp
  94:	c3                   	ret    
