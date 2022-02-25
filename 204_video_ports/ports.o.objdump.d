
drivers/ports.o:     file format elf32-i386


Disassembly of section .text:

00000000 <port_byte_in>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 14             	sub    $0x14,%esp
   6:	8b 45 08             	mov    0x8(%ebp),%eax
   9:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
   d:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10:	89 c2                	mov    %eax,%edx
  12:	ec                   	in     (%dx),%al
  13:	88 45 ff             	mov    %al,-0x1(%ebp)
  16:	8a 45 ff             	mov    -0x1(%ebp),%al
  19:	c9                   	leave  
  1a:	c3                   	ret    

0000001b <port_byte_out>:
  1b:	55                   	push   %ebp
  1c:	89 e5                	mov    %esp,%ebp
  1e:	83 ec 08             	sub    $0x8,%esp
  21:	8b 45 08             	mov    0x8(%ebp),%eax
  24:	8b 55 0c             	mov    0xc(%ebp),%edx
  27:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  2b:	88 55 f8             	mov    %dl,-0x8(%ebp)
  2e:	8a 45 f8             	mov    -0x8(%ebp),%al
  31:	8b 55 fc             	mov    -0x4(%ebp),%edx
  34:	ee                   	out    %al,(%dx)
  35:	c9                   	leave  
  36:	c3                   	ret    

00000037 <port_word_in>:
  37:	55                   	push   %ebp
  38:	89 e5                	mov    %esp,%ebp
  3a:	83 ec 14             	sub    $0x14,%esp
  3d:	8b 45 08             	mov    0x8(%ebp),%eax
  40:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  44:	8b 45 ec             	mov    -0x14(%ebp),%eax
  47:	89 c2                	mov    %eax,%edx
  49:	66 ed                	in     (%dx),%ax
  4b:	66 89 45 fe          	mov    %ax,-0x2(%ebp)
  4f:	66 8b 45 fe          	mov    -0x2(%ebp),%ax
  53:	c9                   	leave  
  54:	c3                   	ret    

00000055 <port_word_out>:
  55:	55                   	push   %ebp
  56:	89 e5                	mov    %esp,%ebp
  58:	83 ec 08             	sub    $0x8,%esp
  5b:	8b 55 08             	mov    0x8(%ebp),%edx
  5e:	8b 45 0c             	mov    0xc(%ebp),%eax
  61:	66 89 55 fc          	mov    %dx,-0x4(%ebp)
  65:	66 89 45 f8          	mov    %ax,-0x8(%ebp)
  69:	8b 45 f8             	mov    -0x8(%ebp),%eax
  6c:	8b 55 fc             	mov    -0x4(%ebp),%edx
  6f:	66 ef                	out    %ax,(%dx)
  71:	c9                   	leave  
  72:	c3                   	ret    
