
kernel.elf:     file format elf32-i386


Disassembly of section .text:

00001000 <main-0x7>:
    1000:	e8 02 00 00 00       	call   1007 <main>
    1005:	eb fe                	jmp    1005 <main-0x2>

00001007 <main>:
    1007:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    100b:	83 e4 f0             	and    $0xfffffff0,%esp
    100e:	ff 71 fc             	push   -0x4(%ecx)
    1011:	55                   	push   %ebp
    1012:	89 e5                	mov    %esp,%ebp
    1014:	51                   	push   %ecx
    1015:	83 ec 14             	sub    $0x14,%esp
    1018:	83 ec 08             	sub    $0x8,%esp
    101b:	6a 0e                	push   $0xe
    101d:	68 d4 03 00 00       	push   $0x3d4
    1022:	e8 90 00 00 00       	call   10b7 <port_byte_out>
    1027:	83 c4 10             	add    $0x10,%esp
    102a:	83 ec 0c             	sub    $0xc,%esp
    102d:	68 d5 03 00 00       	push   $0x3d5
    1032:	e8 65 00 00 00       	call   109c <port_byte_in>
    1037:	83 c4 10             	add    $0x10,%esp
    103a:	0f b6 c0             	movzbl %al,%eax
    103d:	89 45 f4             	mov    %eax,-0xc(%ebp)
    1040:	c1 65 f4 08          	shll   $0x8,-0xc(%ebp)
    1044:	83 ec 08             	sub    $0x8,%esp
    1047:	6a 0f                	push   $0xf
    1049:	68 d4 03 00 00       	push   $0x3d4
    104e:	e8 64 00 00 00       	call   10b7 <port_byte_out>
    1053:	83 c4 10             	add    $0x10,%esp
    1056:	83 ec 0c             	sub    $0xc,%esp
    1059:	68 d5 03 00 00       	push   $0x3d5
    105e:	e8 39 00 00 00       	call   109c <port_byte_in>
    1063:	83 c4 10             	add    $0x10,%esp
    1066:	0f b6 c0             	movzbl %al,%eax
    1069:	01 45 f4             	add    %eax,-0xc(%ebp)
    106c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    106f:	01 c0                	add    %eax,%eax
    1071:	89 45 f0             	mov    %eax,-0x10(%ebp)
    1074:	c7 45 ec 00 80 0b 00 	movl   $0xb8000,-0x14(%ebp)
    107b:	8b 55 f0             	mov    -0x10(%ebp),%edx
    107e:	8b 45 ec             	mov    -0x14(%ebp),%eax
    1081:	01 d0                	add    %edx,%eax
    1083:	c6 00 58             	movb   $0x58,(%eax)
    1086:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1089:	8d 50 01             	lea    0x1(%eax),%edx
    108c:	8b 45 ec             	mov    -0x14(%ebp),%eax
    108f:	01 d0                	add    %edx,%eax
    1091:	c6 00 0f             	movb   $0xf,(%eax)
    1094:	8b 4d fc             	mov    -0x4(%ebp),%ecx
    1097:	c9                   	leave  
    1098:	8d 61 fc             	lea    -0x4(%ecx),%esp
    109b:	c3                   	ret    

0000109c <port_byte_in>:
    109c:	55                   	push   %ebp
    109d:	89 e5                	mov    %esp,%ebp
    109f:	83 ec 14             	sub    $0x14,%esp
    10a2:	8b 45 08             	mov    0x8(%ebp),%eax
    10a5:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
    10a9:	8b 45 ec             	mov    -0x14(%ebp),%eax
    10ac:	89 c2                	mov    %eax,%edx
    10ae:	ec                   	in     (%dx),%al
    10af:	88 45 ff             	mov    %al,-0x1(%ebp)
    10b2:	8a 45 ff             	mov    -0x1(%ebp),%al
    10b5:	c9                   	leave  
    10b6:	c3                   	ret    

000010b7 <port_byte_out>:
    10b7:	55                   	push   %ebp
    10b8:	89 e5                	mov    %esp,%ebp
    10ba:	83 ec 08             	sub    $0x8,%esp
    10bd:	8b 45 08             	mov    0x8(%ebp),%eax
    10c0:	8b 55 0c             	mov    0xc(%ebp),%edx
    10c3:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
    10c7:	88 55 f8             	mov    %dl,-0x8(%ebp)
    10ca:	8a 45 f8             	mov    -0x8(%ebp),%al
    10cd:	8b 55 fc             	mov    -0x4(%ebp),%edx
    10d0:	ee                   	out    %al,(%dx)
    10d1:	c9                   	leave  
    10d2:	c3                   	ret    

000010d3 <port_word_in>:
    10d3:	55                   	push   %ebp
    10d4:	89 e5                	mov    %esp,%ebp
    10d6:	83 ec 14             	sub    $0x14,%esp
    10d9:	8b 45 08             	mov    0x8(%ebp),%eax
    10dc:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
    10e0:	8b 45 ec             	mov    -0x14(%ebp),%eax
    10e3:	89 c2                	mov    %eax,%edx
    10e5:	66 ed                	in     (%dx),%ax
    10e7:	66 89 45 fe          	mov    %ax,-0x2(%ebp)
    10eb:	66 8b 45 fe          	mov    -0x2(%ebp),%ax
    10ef:	c9                   	leave  
    10f0:	c3                   	ret    

000010f1 <port_word_out>:
    10f1:	55                   	push   %ebp
    10f2:	89 e5                	mov    %esp,%ebp
    10f4:	83 ec 08             	sub    $0x8,%esp
    10f7:	8b 55 08             	mov    0x8(%ebp),%edx
    10fa:	8b 45 0c             	mov    0xc(%ebp),%eax
    10fd:	66 89 55 fc          	mov    %dx,-0x4(%ebp)
    1101:	66 89 45 f8          	mov    %ax,-0x8(%ebp)
    1105:	8b 45 f8             	mov    -0x8(%ebp),%eax
    1108:	8b 55 fc             	mov    -0x4(%ebp),%edx
    110b:	66 ef                	out    %ax,(%dx)
    110d:	c9                   	leave  
    110e:	c3                   	ret    
