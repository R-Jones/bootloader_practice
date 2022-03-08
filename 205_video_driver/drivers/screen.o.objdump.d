
screen.o:     file format elf32-i386


Disassembly of section .text:

00000000 <kprint_at>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
   a:	78 1c                	js     28 <kprint_at+0x28>
   c:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  10:	78 16                	js     28 <kprint_at+0x28>
  12:	83 ec 08             	sub    $0x8,%esp
  15:	ff 75 10             	push   0x10(%ebp)
  18:	ff 75 0c             	push   0xc(%ebp)
  1b:	e8 fc ff ff ff       	call   1c <kprint_at+0x1c>
  20:	83 c4 10             	add    $0x10,%esp
  23:	89 45 f0             	mov    %eax,-0x10(%ebp)
  26:	eb 2a                	jmp    52 <kprint_at+0x52>
  28:	e8 fc ff ff ff       	call   29 <kprint_at+0x29>
  2d:	89 45 f0             	mov    %eax,-0x10(%ebp)
  30:	83 ec 0c             	sub    $0xc,%esp
  33:	ff 75 f0             	push   -0x10(%ebp)
  36:	e8 fc ff ff ff       	call   37 <kprint_at+0x37>
  3b:	83 c4 10             	add    $0x10,%esp
  3e:	89 45 10             	mov    %eax,0x10(%ebp)
  41:	83 ec 0c             	sub    $0xc,%esp
  44:	ff 75 f0             	push   -0x10(%ebp)
  47:	e8 fc ff ff ff       	call   48 <kprint_at+0x48>
  4c:	83 c4 10             	add    $0x10,%esp
  4f:	89 45 0c             	mov    %eax,0xc(%ebp)
  52:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  59:	eb 4b                	jmp    a6 <kprint_at+0xa6>
  5b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  5e:	8d 50 01             	lea    0x1(%eax),%edx
  61:	89 55 f4             	mov    %edx,-0xc(%ebp)
  64:	89 c2                	mov    %eax,%edx
  66:	8b 45 08             	mov    0x8(%ebp),%eax
  69:	01 d0                	add    %edx,%eax
  6b:	8a 00                	mov    (%eax),%al
  6d:	0f be c0             	movsbl %al,%eax
  70:	6a 0f                	push   $0xf
  72:	ff 75 10             	push   0x10(%ebp)
  75:	ff 75 0c             	push   0xc(%ebp)
  78:	50                   	push   %eax
  79:	e8 fc ff ff ff       	call   7a <kprint_at+0x7a>
  7e:	83 c4 10             	add    $0x10,%esp
  81:	89 45 f0             	mov    %eax,-0x10(%ebp)
  84:	83 ec 0c             	sub    $0xc,%esp
  87:	ff 75 f0             	push   -0x10(%ebp)
  8a:	e8 fc ff ff ff       	call   8b <kprint_at+0x8b>
  8f:	83 c4 10             	add    $0x10,%esp
  92:	89 45 10             	mov    %eax,0x10(%ebp)
  95:	83 ec 0c             	sub    $0xc,%esp
  98:	ff 75 f0             	push   -0x10(%ebp)
  9b:	e8 fc ff ff ff       	call   9c <kprint_at+0x9c>
  a0:	83 c4 10             	add    $0x10,%esp
  a3:	89 45 0c             	mov    %eax,0xc(%ebp)
  a6:	8b 55 f4             	mov    -0xc(%ebp),%edx
  a9:	8b 45 08             	mov    0x8(%ebp),%eax
  ac:	01 d0                	add    %edx,%eax
  ae:	8a 00                	mov    (%eax),%al
  b0:	84 c0                	test   %al,%al
  b2:	75 a7                	jne    5b <kprint_at+0x5b>
  b4:	c9                   	leave  
  b5:	c3                   	ret    

000000b6 <kprint>:
  b6:	55                   	push   %ebp
  b7:	89 e5                	mov    %esp,%ebp
  b9:	83 ec 08             	sub    $0x8,%esp
  bc:	83 ec 04             	sub    $0x4,%esp
  bf:	6a ff                	push   $0xffffffff
  c1:	6a ff                	push   $0xffffffff
  c3:	ff 75 08             	push   0x8(%ebp)
  c6:	e8 fc ff ff ff       	call   c7 <kprint+0x11>
  cb:	83 c4 10             	add    $0x10,%esp
  ce:	c9                   	leave  
  cf:	c3                   	ret    

000000d0 <print_char>:
  d0:	55                   	push   %ebp
  d1:	89 e5                	mov    %esp,%ebp
  d3:	83 ec 28             	sub    $0x28,%esp
  d6:	8b 55 08             	mov    0x8(%ebp),%edx
  d9:	8b 45 14             	mov    0x14(%ebp),%eax
  dc:	88 55 e4             	mov    %dl,-0x1c(%ebp)
  df:	88 45 e0             	mov    %al,-0x20(%ebp)
  e2:	c7 45 f0 00 80 0b 00 	movl   $0xb8000,-0x10(%ebp)
  e9:	80 7d e0 00          	cmpb   $0x0,-0x20(%ebp)
  ed:	75 04                	jne    f3 <print_char+0x23>
  ef:	c6 45 e0 0f          	movb   $0xf,-0x20(%ebp)
  f3:	83 7d 0c 4f          	cmpl   $0x4f,0xc(%ebp)
  f7:	7f 06                	jg     ff <print_char+0x2f>
  f9:	83 7d 10 18          	cmpl   $0x18,0x10(%ebp)
  fd:	7e 2c                	jle    12b <print_char+0x5b>
  ff:	8b 45 f0             	mov    -0x10(%ebp),%eax
 102:	05 9e 0f 00 00       	add    $0xf9e,%eax
 107:	c6 00 45             	movb   $0x45,(%eax)
 10a:	8b 45 f0             	mov    -0x10(%ebp),%eax
 10d:	05 9f 0f 00 00       	add    $0xf9f,%eax
 112:	c6 00 f4             	movb   $0xf4,(%eax)
 115:	83 ec 08             	sub    $0x8,%esp
 118:	ff 75 10             	push   0x10(%ebp)
 11b:	ff 75 0c             	push   0xc(%ebp)
 11e:	e8 fc ff ff ff       	call   11f <print_char+0x4f>
 123:	83 c4 10             	add    $0x10,%esp
 126:	e9 8a 00 00 00       	jmp    1b5 <print_char+0xe5>
 12b:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 12f:	78 1c                	js     14d <print_char+0x7d>
 131:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
 135:	78 16                	js     14d <print_char+0x7d>
 137:	83 ec 08             	sub    $0x8,%esp
 13a:	ff 75 10             	push   0x10(%ebp)
 13d:	ff 75 0c             	push   0xc(%ebp)
 140:	e8 fc ff ff ff       	call   141 <print_char+0x71>
 145:	83 c4 10             	add    $0x10,%esp
 148:	89 45 f4             	mov    %eax,-0xc(%ebp)
 14b:	eb 08                	jmp    155 <print_char+0x85>
 14d:	e8 fc ff ff ff       	call   14e <print_char+0x7e>
 152:	89 45 f4             	mov    %eax,-0xc(%ebp)
 155:	80 7d e4 0a          	cmpb   $0xa,-0x1c(%ebp)
 159:	75 28                	jne    183 <print_char+0xb3>
 15b:	83 ec 0c             	sub    $0xc,%esp
 15e:	ff 75 f4             	push   -0xc(%ebp)
 161:	e8 fc ff ff ff       	call   162 <print_char+0x92>
 166:	83 c4 10             	add    $0x10,%esp
 169:	89 45 10             	mov    %eax,0x10(%ebp)
 16c:	8b 45 10             	mov    0x10(%ebp),%eax
 16f:	40                   	inc    %eax
 170:	83 ec 08             	sub    $0x8,%esp
 173:	50                   	push   %eax
 174:	6a 00                	push   $0x0
 176:	e8 fc ff ff ff       	call   177 <print_char+0xa7>
 17b:	83 c4 10             	add    $0x10,%esp
 17e:	89 45 f4             	mov    %eax,-0xc(%ebp)
 181:	eb 21                	jmp    1a4 <print_char+0xd4>
 183:	8b 55 f4             	mov    -0xc(%ebp),%edx
 186:	8b 45 f0             	mov    -0x10(%ebp),%eax
 189:	01 c2                	add    %eax,%edx
 18b:	8a 45 e4             	mov    -0x1c(%ebp),%al
 18e:	88 02                	mov    %al,(%edx)
 190:	8b 45 f4             	mov    -0xc(%ebp),%eax
 193:	8d 50 01             	lea    0x1(%eax),%edx
 196:	8b 45 f0             	mov    -0x10(%ebp),%eax
 199:	01 c2                	add    %eax,%edx
 19b:	8a 45 e0             	mov    -0x20(%ebp),%al
 19e:	88 02                	mov    %al,(%edx)
 1a0:	83 45 f4 02          	addl   $0x2,-0xc(%ebp)
 1a4:	83 ec 0c             	sub    $0xc,%esp
 1a7:	ff 75 f4             	push   -0xc(%ebp)
 1aa:	e8 fc ff ff ff       	call   1ab <print_char+0xdb>
 1af:	83 c4 10             	add    $0x10,%esp
 1b2:	8b 45 f4             	mov    -0xc(%ebp),%eax
 1b5:	c9                   	leave  
 1b6:	c3                   	ret    

000001b7 <get_cursor_offset>:
 1b7:	55                   	push   %ebp
 1b8:	89 e5                	mov    %esp,%ebp
 1ba:	83 ec 18             	sub    $0x18,%esp
 1bd:	83 ec 08             	sub    $0x8,%esp
 1c0:	6a 0e                	push   $0xe
 1c2:	68 d4 03 00 00       	push   $0x3d4
 1c7:	e8 fc ff ff ff       	call   1c8 <get_cursor_offset+0x11>
 1cc:	83 c4 10             	add    $0x10,%esp
 1cf:	83 ec 0c             	sub    $0xc,%esp
 1d2:	68 d5 03 00 00       	push   $0x3d5
 1d7:	e8 fc ff ff ff       	call   1d8 <get_cursor_offset+0x21>
 1dc:	83 c4 10             	add    $0x10,%esp
 1df:	0f b6 c0             	movzbl %al,%eax
 1e2:	89 45 f4             	mov    %eax,-0xc(%ebp)
 1e5:	83 ec 08             	sub    $0x8,%esp
 1e8:	6a 0f                	push   $0xf
 1ea:	68 d4 03 00 00       	push   $0x3d4
 1ef:	e8 fc ff ff ff       	call   1f0 <get_cursor_offset+0x39>
 1f4:	83 c4 10             	add    $0x10,%esp
 1f7:	83 ec 0c             	sub    $0xc,%esp
 1fa:	68 d5 03 00 00       	push   $0x3d5
 1ff:	e8 fc ff ff ff       	call   200 <get_cursor_offset+0x49>
 204:	83 c4 10             	add    $0x10,%esp
 207:	0f b6 c0             	movzbl %al,%eax
 20a:	89 45 f0             	mov    %eax,-0x10(%ebp)
 20d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 210:	c1 e0 08             	shl    $0x8,%eax
 213:	89 c2                	mov    %eax,%edx
 215:	8b 45 f0             	mov    -0x10(%ebp),%eax
 218:	01 d0                	add    %edx,%eax
 21a:	89 45 ec             	mov    %eax,-0x14(%ebp)
 21d:	8b 45 ec             	mov    -0x14(%ebp),%eax
 220:	01 c0                	add    %eax,%eax
 222:	c9                   	leave  
 223:	c3                   	ret    

00000224 <set_cursor_offset>:
 224:	55                   	push   %ebp
 225:	89 e5                	mov    %esp,%ebp
 227:	83 ec 08             	sub    $0x8,%esp
 22a:	8b 45 08             	mov    0x8(%ebp),%eax
 22d:	89 c2                	mov    %eax,%edx
 22f:	c1 ea 1f             	shr    $0x1f,%edx
 232:	01 d0                	add    %edx,%eax
 234:	d1 f8                	sar    %eax
 236:	89 45 08             	mov    %eax,0x8(%ebp)
 239:	83 ec 08             	sub    $0x8,%esp
 23c:	6a 0e                	push   $0xe
 23e:	68 d4 03 00 00       	push   $0x3d4
 243:	e8 fc ff ff ff       	call   244 <set_cursor_offset+0x20>
 248:	83 c4 10             	add    $0x10,%esp
 24b:	8b 45 08             	mov    0x8(%ebp),%eax
 24e:	c1 f8 08             	sar    $0x8,%eax
 251:	0f b6 c0             	movzbl %al,%eax
 254:	83 ec 08             	sub    $0x8,%esp
 257:	50                   	push   %eax
 258:	68 d5 03 00 00       	push   $0x3d5
 25d:	e8 fc ff ff ff       	call   25e <set_cursor_offset+0x3a>
 262:	83 c4 10             	add    $0x10,%esp
 265:	83 ec 08             	sub    $0x8,%esp
 268:	6a 0f                	push   $0xf
 26a:	68 d4 03 00 00       	push   $0x3d4
 26f:	e8 fc ff ff ff       	call   270 <set_cursor_offset+0x4c>
 274:	83 c4 10             	add    $0x10,%esp
 277:	8b 45 08             	mov    0x8(%ebp),%eax
 27a:	0f b6 c0             	movzbl %al,%eax
 27d:	83 ec 08             	sub    $0x8,%esp
 280:	50                   	push   %eax
 281:	68 d5 03 00 00       	push   $0x3d5
 286:	e8 fc ff ff ff       	call   287 <set_cursor_offset+0x63>
 28b:	83 c4 10             	add    $0x10,%esp
 28e:	c9                   	leave  
 28f:	c3                   	ret    

00000290 <clear_screen>:
 290:	55                   	push   %ebp
 291:	89 e5                	mov    %esp,%ebp
 293:	83 ec 18             	sub    $0x18,%esp
 296:	c7 45 f0 d0 07 00 00 	movl   $0x7d0,-0x10(%ebp)
 29d:	c7 45 ec 00 80 0b 00 	movl   $0xb8000,-0x14(%ebp)
 2a4:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 2ab:	eb 22                	jmp    2cf <clear_screen+0x3f>
 2ad:	8b 45 f4             	mov    -0xc(%ebp),%eax
 2b0:	01 c0                	add    %eax,%eax
 2b2:	89 c2                	mov    %eax,%edx
 2b4:	8b 45 ec             	mov    -0x14(%ebp),%eax
 2b7:	01 d0                	add    %edx,%eax
 2b9:	c6 00 20             	movb   $0x20,(%eax)
 2bc:	8b 45 f4             	mov    -0xc(%ebp),%eax
 2bf:	01 c0                	add    %eax,%eax
 2c1:	8d 50 01             	lea    0x1(%eax),%edx
 2c4:	8b 45 ec             	mov    -0x14(%ebp),%eax
 2c7:	01 d0                	add    %edx,%eax
 2c9:	c6 00 0f             	movb   $0xf,(%eax)
 2cc:	ff 45 f4             	incl   -0xc(%ebp)
 2cf:	8b 45 f4             	mov    -0xc(%ebp),%eax
 2d2:	3b 45 f0             	cmp    -0x10(%ebp),%eax
 2d5:	7c d6                	jl     2ad <clear_screen+0x1d>
 2d7:	83 ec 08             	sub    $0x8,%esp
 2da:	6a 00                	push   $0x0
 2dc:	6a 00                	push   $0x0
 2de:	e8 fc ff ff ff       	call   2df <clear_screen+0x4f>
 2e3:	83 c4 10             	add    $0x10,%esp
 2e6:	83 ec 0c             	sub    $0xc,%esp
 2e9:	50                   	push   %eax
 2ea:	e8 fc ff ff ff       	call   2eb <clear_screen+0x5b>
 2ef:	83 c4 10             	add    $0x10,%esp
 2f2:	c9                   	leave  
 2f3:	c3                   	ret    

000002f4 <get_offset>:
 2f4:	55                   	push   %ebp
 2f5:	89 e5                	mov    %esp,%ebp
 2f7:	8b 55 0c             	mov    0xc(%ebp),%edx
 2fa:	89 d0                	mov    %edx,%eax
 2fc:	c1 e0 02             	shl    $0x2,%eax
 2ff:	01 d0                	add    %edx,%eax
 301:	c1 e0 04             	shl    $0x4,%eax
 304:	89 c2                	mov    %eax,%edx
 306:	8b 45 08             	mov    0x8(%ebp),%eax
 309:	01 d0                	add    %edx,%eax
 30b:	01 c0                	add    %eax,%eax
 30d:	5d                   	pop    %ebp
 30e:	c3                   	ret    

0000030f <get_offset_row>:
 30f:	55                   	push   %ebp
 310:	89 e5                	mov    %esp,%ebp
 312:	8b 4d 08             	mov    0x8(%ebp),%ecx
 315:	b8 67 66 66 66       	mov    $0x66666667,%eax
 31a:	f7 e9                	imul   %ecx
 31c:	c1 fa 06             	sar    $0x6,%edx
 31f:	89 c8                	mov    %ecx,%eax
 321:	c1 f8 1f             	sar    $0x1f,%eax
 324:	29 c2                	sub    %eax,%edx
 326:	89 d0                	mov    %edx,%eax
 328:	5d                   	pop    %ebp
 329:	c3                   	ret    

0000032a <get_offset_col>:
 32a:	55                   	push   %ebp
 32b:	89 e5                	mov    %esp,%ebp
 32d:	ff 75 08             	push   0x8(%ebp)
 330:	e8 fc ff ff ff       	call   331 <get_offset_col+0x7>
 335:	83 c4 04             	add    $0x4,%esp
 338:	89 c2                	mov    %eax,%edx
 33a:	89 d0                	mov    %edx,%eax
 33c:	c1 e0 02             	shl    $0x2,%eax
 33f:	01 d0                	add    %edx,%eax
 341:	c1 e0 05             	shl    $0x5,%eax
 344:	f7 d8                	neg    %eax
 346:	89 c2                	mov    %eax,%edx
 348:	8b 45 08             	mov    0x8(%ebp),%eax
 34b:	01 d0                	add    %edx,%eax
 34d:	89 c2                	mov    %eax,%edx
 34f:	c1 ea 1f             	shr    $0x1f,%edx
 352:	01 d0                	add    %edx,%eax
 354:	d1 f8                	sar    %eax
 356:	c9                   	leave  
 357:	c3                   	ret    
