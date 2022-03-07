
./usb.o:     file format elf32-i386


Disassembly of section .text.usb_realloc_pipe:

00000000 <usb_realloc_pipe>:
   0:	53                   	push   %ebx
   1:	8b 18                	mov    (%eax),%ebx
   3:	8b 5b 08             	mov    0x8(%ebx),%ebx
   6:	8a 5b 10             	mov    0x10(%ebx),%bl
   9:	80 fb 03             	cmp    $0x3,%bl
   c:	74 16                	je     24 <usb_realloc_pipe+0x24>
   e:	80 fb 04             	cmp    $0x4,%bl
  11:	74 17                	je     2a <usb_realloc_pipe+0x2a>
  13:	80 fb 02             	cmp    $0x2,%bl
  16:	74 06                	je     1e <usb_realloc_pipe+0x1e>
  18:	5b                   	pop    %ebx
  19:	e9 fc ff ff ff       	jmp    1a <usb_realloc_pipe+0x1a>
  1e:	5b                   	pop    %ebx
  1f:	e9 fc ff ff ff       	jmp    20 <usb_realloc_pipe+0x20>
  24:	5b                   	pop    %ebx
  25:	e9 fc ff ff ff       	jmp    26 <usb_realloc_pipe+0x26>
  2a:	5b                   	pop    %ebx
  2b:	e9 fc ff ff ff       	jmp    2c <usb_realloc_pipe+0x2c>

Disassembly of section .text.usb_send_pipe:

00000000 <usb_send_pipe>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	8b 74 24 10          	mov    0x10(%esp),%esi
   7:	8b 7c 24 14          	mov    0x14(%esp),%edi
   b:	8a 58 04             	mov    0x4(%eax),%bl
   e:	80 fb 03             	cmp    $0x3,%bl
  11:	74 22                	je     35 <usb_send_pipe+0x35>
  13:	80 fb 04             	cmp    $0x4,%bl
  16:	74 2d                	je     45 <usb_send_pipe+0x45>
  18:	80 fb 02             	cmp    $0x2,%bl
  1b:	74 08                	je     25 <usb_send_pipe+0x25>
  1d:	5b                   	pop    %ebx
  1e:	5e                   	pop    %esi
  1f:	5f                   	pop    %edi
  20:	e9 fc ff ff ff       	jmp    21 <usb_send_pipe+0x21>
  25:	89 7c 24 14          	mov    %edi,0x14(%esp)
  29:	89 74 24 10          	mov    %esi,0x10(%esp)
  2d:	5b                   	pop    %ebx
  2e:	5e                   	pop    %esi
  2f:	5f                   	pop    %edi
  30:	e9 fc ff ff ff       	jmp    31 <usb_send_pipe+0x31>
  35:	89 7c 24 14          	mov    %edi,0x14(%esp)
  39:	89 74 24 10          	mov    %esi,0x10(%esp)
  3d:	5b                   	pop    %ebx
  3e:	5e                   	pop    %esi
  3f:	5f                   	pop    %edi
  40:	e9 fc ff ff ff       	jmp    41 <usb_send_pipe+0x41>
  45:	89 7c 24 14          	mov    %edi,0x14(%esp)
  49:	89 74 24 10          	mov    %esi,0x10(%esp)
  4d:	5b                   	pop    %ebx
  4e:	5e                   	pop    %esi
  4f:	5f                   	pop    %edi
  50:	e9 fc ff ff ff       	jmp    51 <usb_send_pipe+0x51>

Disassembly of section .text.usb_poll_intr:

00000000 <usb_poll_intr>:
   0:	e8 fc ff ff ff       	call   1 <usb_poll_intr+0x1>

Disassembly of section .text.usb_32bit_pipe:

00000000 <usb_32bit_pipe>:
   0:	8a 40 04             	mov    0x4(%eax),%al
   3:	83 e8 02             	sub    $0x2,%eax
   6:	a8 fd                	test   $0xfd,%al
   8:	0f 94 c0             	sete   %al
   b:	0f b6 c0             	movzbl %al,%eax
   e:	c3                   	ret    

Disassembly of section .text.usb_alloc_pipe:

00000000 <usb_alloc_pipe>:
   0:	89 d1                	mov    %edx,%ecx
   2:	31 d2                	xor    %edx,%edx
   4:	e9 fc ff ff ff       	jmp    5 <usb_alloc_pipe+0x5>

Disassembly of section .text.usb_free_pipe:

00000000 <usb_free_pipe>:
   0:	85 d2                	test   %edx,%edx
   2:	74 07                	je     b <usb_free_pipe+0xb>
   4:	31 c9                	xor    %ecx,%ecx
   6:	e9 fc ff ff ff       	jmp    7 <usb_free_pipe+0x7>
   b:	c3                   	ret    

Disassembly of section .text.usb_send_default_control:

00000000 <usb_send_default_control>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 d3                	mov    %edx,%ebx
   4:	8a 12                	mov    (%edx),%dl
   6:	81 e2 80 00 00 00    	and    $0x80,%edx
   c:	0f b7 73 06          	movzwl 0x6(%ebx),%esi
  10:	56                   	push   %esi
  11:	51                   	push   %ecx
  12:	89 d9                	mov    %ebx,%ecx
  14:	e8 fc ff ff ff       	call   15 <usb_send_default_control+0x15>
  19:	5a                   	pop    %edx
  1a:	59                   	pop    %ecx
  1b:	5b                   	pop    %ebx
  1c:	5e                   	pop    %esi
  1d:	c3                   	ret    

Disassembly of section .text.usb_hub_port_setup:

00000000 <usb_hub_port_setup>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 34             	sub    $0x34,%esp
   7:	89 c3                	mov    %eax,%ebx
   9:	8b 30                	mov    (%eax),%esi
   b:	8b 40 08             	mov    0x8(%eax),%eax
   e:	89 04 24             	mov    %eax,(%esp)
  11:	8b 0e                	mov    (%esi),%ecx
  13:	8b 14 24             	mov    (%esp),%edx
  16:	89 f0                	mov    %esi,%eax
  18:	ff 11                	call   *(%ecx)
  1a:	85 c0                	test   %eax,%eax
  1c:	7f 22                	jg     40 <usb_hub_port_setup+0x40>
  1e:	0f 85 4a 03 00 00    	jne    36e <usb_hub_port_setup+0x36e>
  24:	8b 46 10             	mov    0x10(%esi),%eax
  27:	e8 fc ff ff ff       	call   28 <usb_hub_port_setup+0x28>
  2c:	85 c0                	test   %eax,%eax
  2e:	0f 85 3a 03 00 00    	jne    36e <usb_hub_port_setup+0x36e>
  34:	b8 05 00 00 00       	mov    $0x5,%eax
  39:	e8 fc ff ff ff       	call   3a <usb_hub_port_setup+0x3a>
  3e:	eb d1                	jmp    11 <usb_hub_port_setup+0x11>
  40:	8b 46 08             	mov    0x8(%esi),%eax
  43:	83 c0 04             	add    $0x4,%eax
  46:	e8 fc ff ff ff       	call   47 <usb_hub_port_setup+0x47>
  4b:	8b 0e                	mov    (%esi),%ecx
  4d:	8b 14 24             	mov    (%esp),%edx
  50:	89 f0                	mov    %esi,%eax
  52:	ff 51 04             	call   *0x4(%ecx)
  55:	85 c0                	test   %eax,%eax
  57:	0f 88 22 03 00 00    	js     37f <usb_hub_port_setup+0x37f>
  5d:	88 43 18             	mov    %al,0x18(%ebx)
  60:	8b 03                	mov    (%ebx),%eax
  62:	8b 68 08             	mov    0x8(%eax),%ebp
  65:	55                   	push   %ebp
  66:	68 00 00 00 00       	push   $0x0
  6b:	e8 fc ff ff ff       	call   6c <usb_hub_port_setup+0x6c>
  70:	5f                   	pop    %edi
  71:	58                   	pop    %eax
  72:	80 7d 11 7e          	cmpb   $0x7e,0x11(%ebp)
  76:	0f 87 df 00 00 00    	ja     15b <usb_hub_port_setup+0x15b>
  7c:	b8 0a 00 00 00       	mov    $0xa,%eax
  81:	e8 fc ff ff ff       	call   82 <usb_hub_port_setup+0x82>
  86:	8d 7c 24 19          	lea    0x19(%esp),%edi
  8a:	b9 07 00 00 00       	mov    $0x7,%ecx
  8f:	31 c0                	xor    %eax,%eax
  91:	f3 aa                	rep stos %al,%es:(%edi)
  93:	0f b6 43 18          	movzbl 0x18(%ebx),%eax
  97:	8b 04 85 00 00 00 00 	mov    0x0(,%eax,4),%eax
  9e:	66 89 44 24 1d       	mov    %ax,0x1d(%esp)
  a3:	8d 54 24 19          	lea    0x19(%esp),%edx
  a7:	89 d8                	mov    %ebx,%eax
  a9:	e8 fc ff ff ff       	call   aa <usb_hub_port_setup+0xaa>
  ae:	89 43 04             	mov    %eax,0x4(%ebx)
  b1:	85 c0                	test   %eax,%eax
  b3:	0f 84 a2 00 00 00    	je     15b <usb_hub_port_setup+0x15b>
  b9:	66 c7 44 24 22 00 05 	movw   $0x500,0x22(%esp)
  c0:	0f b6 55 11          	movzbl 0x11(%ebp),%edx
  c4:	42                   	inc    %edx
  c5:	66 89 54 24 24       	mov    %dx,0x24(%esp)
  ca:	c7 44 24 26 00 00 00 	movl   $0x0,0x26(%esp)
  d1:	00 
  d2:	31 c9                	xor    %ecx,%ecx
  d4:	8d 54 24 22          	lea    0x22(%esp),%edx
  d8:	e8 fc ff ff ff       	call   d9 <usb_hub_port_setup+0xd9>
  dd:	89 c7                	mov    %eax,%edi
  df:	85 c0                	test   %eax,%eax
  e1:	74 0c                	je     ef <usb_hub_port_setup+0xef>
  e3:	8b 53 04             	mov    0x4(%ebx),%edx
  e6:	89 d8                	mov    %ebx,%eax
  e8:	e8 fc ff ff ff       	call   e9 <usb_hub_port_setup+0xe9>
  ed:	eb 6c                	jmp    15b <usb_hub_port_setup+0x15b>
  ef:	b8 02 00 00 00       	mov    $0x2,%eax
  f4:	e8 fc ff ff ff       	call   f5 <usb_hub_port_setup+0xf5>
  f9:	8a 45 11             	mov    0x11(%ebp),%al
  fc:	40                   	inc    %eax
  fd:	88 45 11             	mov    %al,0x11(%ebp)
 100:	88 43 19             	mov    %al,0x19(%ebx)
 103:	8b 53 04             	mov    0x4(%ebx),%edx
 106:	8d 4c 24 19          	lea    0x19(%esp),%ecx
 10a:	89 d8                	mov    %ebx,%eax
 10c:	e8 fc ff ff ff       	call   10d <usb_hub_port_setup+0x10d>
 111:	89 43 04             	mov    %eax,0x4(%ebx)
 114:	85 c0                	test   %eax,%eax
 116:	74 43                	je     15b <usb_hub_port_setup+0x15b>
 118:	8b 46 08             	mov    0x8(%esi),%eax
 11b:	83 c0 04             	add    $0x4,%eax
 11e:	e8 fc ff ff ff       	call   11f <usb_hub_port_setup+0x11f>
 123:	ff 73 04             	push   0x4(%ebx)
 126:	68 10 00 00 00       	push   $0x10
 12b:	e8 fc ff ff ff       	call   12c <usb_hub_port_setup+0x12c>
 130:	8b 43 04             	mov    0x4(%ebx),%eax
 133:	c7 44 24 21 80 06 00 	movl   $0x1000680,0x21(%esp)
 13a:	01 
 13b:	c7 44 24 25 00 00 08 	movl   $0x80000,0x25(%esp)
 142:	00 
 143:	8d 4c 24 2a          	lea    0x2a(%esp),%ecx
 147:	8d 54 24 21          	lea    0x21(%esp),%edx
 14b:	e8 fc ff ff ff       	call   14c <usb_hub_port_setup+0x14c>
 150:	5a                   	pop    %edx
 151:	59                   	pop    %ecx
 152:	85 c0                	test   %eax,%eax
 154:	74 14                	je     16a <usb_hub_port_setup+0x16a>
 156:	e9 f8 01 00 00       	jmp    353 <usb_hub_port_setup+0x353>
 15b:	8b 0e                	mov    (%esi),%ecx
 15d:	8b 14 24             	mov    (%esp),%edx
 160:	89 f0                	mov    %esi,%eax
 162:	ff 51 0c             	call   *0xc(%ecx)
 165:	e9 15 02 00 00       	jmp    37f <usb_hub_port_setup+0x37f>
 16a:	8a 4c 24 29          	mov    0x29(%esp),%cl
 16e:	0f b7 44 24 24       	movzwl 0x24(%esp),%eax
 173:	0f b6 e9             	movzbl %cl,%ebp
 176:	66 3d ff 02          	cmp    $0x2ff,%ax
 17a:	76 07                	jbe    183 <usb_hub_port_setup+0x183>
 17c:	bd 01 00 00 00       	mov    $0x1,%ebp
 181:	d3 e5                	shl    %cl,%ebp
 183:	0f b7 d5             	movzwl %bp,%edx
 186:	52                   	push   %edx
 187:	0f b6 54 24 2c       	movzbl 0x2c(%esp),%edx
 18c:	52                   	push   %edx
 18d:	0f b6 54 24 2f       	movzbl 0x2f(%esp),%edx
 192:	52                   	push   %edx
 193:	0f b6 54 24 32       	movzbl 0x32(%esp),%edx
 198:	52                   	push   %edx
 199:	50                   	push   %eax
 19a:	68 20 00 00 00       	push   $0x20
 19f:	e8 fc ff ff ff       	call   1a0 <usb_hub_port_setup+0x1a0>
 1a4:	83 c4 18             	add    $0x18,%esp
 1a7:	66 83 fd 07          	cmp    $0x7,%bp
 1ab:	0f 86 a2 01 00 00    	jbe    353 <usb_hub_port_setup+0x353>
 1b1:	8d 7c 24 0a          	lea    0xa(%esp),%edi
 1b5:	b9 07 00 00 00       	mov    $0x7,%ecx
 1ba:	31 c0                	xor    %eax,%eax
 1bc:	f3 aa                	rep stos %al,%es:(%edi)
 1be:	66 89 6c 24 0e       	mov    %bp,0xe(%esp)
 1c3:	8b 53 04             	mov    0x4(%ebx),%edx
 1c6:	8d 4c 24 0a          	lea    0xa(%esp),%ecx
 1ca:	89 d8                	mov    %ebx,%eax
 1cc:	e8 fc ff ff ff       	call   1cd <usb_hub_port_setup+0x1cd>
 1d1:	89 44 24 04          	mov    %eax,0x4(%esp)
 1d5:	89 43 04             	mov    %eax,0x4(%ebx)
 1d8:	83 cf ff             	or     $0xffffffff,%edi
 1db:	85 c0                	test   %eax,%eax
 1dd:	0f 84 70 01 00 00    	je     353 <usb_hub_port_setup+0x353>
 1e3:	c7 44 24 11 80 06 00 	movl   $0x2000680,0x11(%esp)
 1ea:	02 
 1eb:	c7 44 24 15 00 00 09 	movl   $0x90000,0x15(%esp)
 1f2:	00 
 1f3:	8d 4c 24 19          	lea    0x19(%esp),%ecx
 1f7:	8d 54 24 11          	lea    0x11(%esp),%edx
 1fb:	e8 fc ff ff ff       	call   1fc <usb_hub_port_setup+0x1fc>
 200:	89 c7                	mov    %eax,%edi
 202:	85 c0                	test   %eax,%eax
 204:	0f 85 47 01 00 00    	jne    351 <usb_hub_port_setup+0x351>
 20a:	0f b7 54 24 1b       	movzwl 0x1b(%esp),%edx
 20f:	b9 10 00 00 00       	mov    $0x10,%ecx
 214:	b8 00 00 00 00       	mov    $0x0,%eax
 219:	e8 fc ff ff ff       	call   21a <usb_hub_port_setup+0x21a>
 21e:	89 c5                	mov    %eax,%ebp
 220:	85 c0                	test   %eax,%eax
 222:	75 14                	jne    238 <usb_hub_port_setup+0x238>
 224:	ba 00 00 00 00       	mov    $0x0,%edx
 229:	b8 fd 00 00 00       	mov    $0xfd,%eax
 22e:	e8 fc ff ff ff       	call   22f <usb_hub_port_setup+0x22f>
 233:	e9 1b 01 00 00       	jmp    353 <usb_hub_port_setup+0x353>
 238:	66 8b 44 24 1b       	mov    0x1b(%esp),%ax
 23d:	66 89 44 24 17       	mov    %ax,0x17(%esp)
 242:	89 e9                	mov    %ebp,%ecx
 244:	8d 54 24 11          	lea    0x11(%esp),%edx
 248:	8b 44 24 04          	mov    0x4(%esp),%eax
 24c:	e8 fc ff ff ff       	call   24d <usb_hub_port_setup+0x24d>
 251:	85 c0                	test   %eax,%eax
 253:	75 0b                	jne    260 <usb_hub_port_setup+0x260>
 255:	66 8b 44 24 1b       	mov    0x1b(%esp),%ax
 25a:	66 39 45 02          	cmp    %ax,0x2(%ebp)
 25e:	74 0c                	je     26c <usb_hub_port_setup+0x26c>
 260:	89 e8                	mov    %ebp,%eax
 262:	e8 fc ff ff ff       	call   263 <usb_hub_port_setup+0x263>
 267:	e9 e7 00 00 00       	jmp    353 <usb_hub_port_setup+0x353>
 26c:	0f b7 45 02          	movzwl 0x2(%ebp),%eax
 270:	01 e8                	add    %ebp,%eax
 272:	89 44 24 04          	mov    %eax,0x4(%esp)
 276:	8d 7d 09             	lea    0x9(%ebp),%edi
 279:	0f b6 55 04          	movzbl 0x4(%ebp),%edx
 27d:	85 d2                	test   %edx,%edx
 27f:	0f 84 c5 00 00 00    	je     34a <usb_hub_port_setup+0x34a>
 285:	0f b6 07             	movzbl (%edi),%eax
 288:	01 f8                	add    %edi,%eax
 28a:	39 44 24 04          	cmp    %eax,0x4(%esp)
 28e:	0f 82 b6 00 00 00    	jb     34a <usb_hub_port_setup+0x34a>
 294:	80 7f 01 04          	cmpb   $0x4,0x1(%edi)
 298:	74 05                	je     29f <usb_hub_port_setup+0x29f>
 29a:	4a                   	dec    %edx
 29b:	89 c7                	mov    %eax,%edi
 29d:	eb de                	jmp    27d <usb_hub_port_setup+0x27d>
 29f:	8a 4f 05             	mov    0x5(%edi),%cl
 2a2:	80 f9 09             	cmp    $0x9,%cl
 2a5:	74 1d                	je     2c4 <usb_hub_port_setup+0x2c4>
 2a7:	80 f9 08             	cmp    $0x8,%cl
 2aa:	75 0d                	jne    2b9 <usb_hub_port_setup+0x2b9>
 2ac:	8a 4f 07             	mov    0x7(%edi),%cl
 2af:	80 f9 50             	cmp    $0x50,%cl
 2b2:	74 10                	je     2c4 <usb_hub_port_setup+0x2c4>
 2b4:	80 f9 62             	cmp    $0x62,%cl
 2b7:	eb 09                	jmp    2c2 <usb_hub_port_setup+0x2c2>
 2b9:	80 f9 03             	cmp    $0x3,%cl
 2bc:	75 dc                	jne    29a <usb_hub_port_setup+0x29a>
 2be:	80 7f 06 01          	cmpb   $0x1,0x6(%edi)
 2c2:	75 d6                	jne    29a <usb_hub_port_setup+0x29a>
 2c4:	8b 43 04             	mov    0x4(%ebx),%eax
 2c7:	0f b6 55 05          	movzbl 0x5(%ebp),%edx
 2cb:	66 c7 44 24 19 00 09 	movw   $0x900,0x19(%esp)
 2d2:	66 89 54 24 1b       	mov    %dx,0x1b(%esp)
 2d7:	c7 44 24 1d 00 00 00 	movl   $0x0,0x1d(%esp)
 2de:	00 
 2df:	31 c9                	xor    %ecx,%ecx
 2e1:	8d 54 24 19          	lea    0x19(%esp),%edx
 2e5:	e8 fc ff ff ff       	call   2e6 <usb_hub_port_setup+0x2e6>
 2ea:	85 c0                	test   %eax,%eax
 2ec:	75 5c                	jne    34a <usb_hub_port_setup+0x34a>
 2ee:	89 6b 0c             	mov    %ebp,0xc(%ebx)
 2f1:	89 7b 10             	mov    %edi,0x10(%ebx)
 2f4:	0f b7 55 02          	movzwl 0x2(%ebp),%edx
 2f8:	01 ea                	add    %ebp,%edx
 2fa:	29 fa                	sub    %edi,%edx
 2fc:	89 53 14             	mov    %edx,0x14(%ebx)
 2ff:	8a 57 05             	mov    0x5(%edi),%dl
 302:	80 fa 09             	cmp    $0x9,%dl
 305:	75 09                	jne    310 <usb_hub_port_setup+0x310>
 307:	89 d8                	mov    %ebx,%eax
 309:	e8 fc ff ff ff       	call   30a <usb_hub_port_setup+0x30a>
 30e:	eb 28                	jmp    338 <usb_hub_port_setup+0x338>
 310:	80 fa 08             	cmp    $0x8,%dl
 313:	75 1c                	jne    331 <usb_hub_port_setup+0x331>
 315:	80 7f 07 50          	cmpb   $0x50,0x7(%edi)
 319:	75 07                	jne    322 <usb_hub_port_setup+0x322>
 31b:	89 d8                	mov    %ebx,%eax
 31d:	e8 fc ff ff ff       	call   31e <usb_hub_port_setup+0x31e>
 322:	80 7f 07 62          	cmpb   $0x62,0x7(%edi)
 326:	75 10                	jne    338 <usb_hub_port_setup+0x338>
 328:	89 d8                	mov    %ebx,%eax
 32a:	e8 fc ff ff ff       	call   32b <usb_hub_port_setup+0x32b>
 32f:	eb 07                	jmp    338 <usb_hub_port_setup+0x338>
 331:	89 d8                	mov    %ebx,%eax
 333:	e8 fc ff ff ff       	call   334 <usb_hub_port_setup+0x334>
 338:	85 c0                	test   %eax,%eax
 33a:	75 0e                	jne    34a <usb_hub_port_setup+0x34a>
 33c:	89 e8                	mov    %ebp,%eax
 33e:	e8 fc ff ff ff       	call   33f <usb_hub_port_setup+0x33f>
 343:	bf 01 00 00 00       	mov    $0x1,%edi
 348:	eb 09                	jmp    353 <usb_hub_port_setup+0x353>
 34a:	89 e8                	mov    %ebp,%eax
 34c:	e8 fc ff ff ff       	call   34d <usb_hub_port_setup+0x34d>
 351:	31 ff                	xor    %edi,%edi
 353:	8b 53 04             	mov    0x4(%ebx),%edx
 356:	89 d8                	mov    %ebx,%eax
 358:	e8 fc ff ff ff       	call   359 <usb_hub_port_setup+0x359>
 35d:	85 ff                	test   %edi,%edi
 35f:	75 0a                	jne    36b <usb_hub_port_setup+0x36b>
 361:	8b 0e                	mov    (%esi),%ecx
 363:	8b 14 24             	mov    (%esp),%edx
 366:	89 f0                	mov    %esi,%eax
 368:	ff 51 0c             	call   *0xc(%ecx)
 36b:	01 7e 20             	add    %edi,0x20(%esi)
 36e:	ff 4e 18             	decl   0x18(%esi)
 371:	89 d8                	mov    %ebx,%eax
 373:	83 c4 34             	add    $0x34,%esp
 376:	5b                   	pop    %ebx
 377:	5e                   	pop    %esi
 378:	5f                   	pop    %edi
 379:	5d                   	pop    %ebp
 37a:	e9 fc ff ff ff       	jmp    37b <usb_hub_port_setup+0x37b>
 37f:	8b 46 08             	mov    0x8(%esi),%eax
 382:	83 c0 04             	add    $0x4,%eax
 385:	e8 fc ff ff ff       	call   386 <usb_hub_port_setup+0x386>
 38a:	eb e2                	jmp    36e <usb_hub_port_setup+0x36e>

Disassembly of section .text.usb_send_bulk:

00000000 <usb_send_bulk>:
   0:	ff 74 24 04          	push   0x4(%esp)
   4:	51                   	push   %ecx
   5:	31 c9                	xor    %ecx,%ecx
   7:	e8 fc ff ff ff       	call   8 <usb_send_bulk+0x8>
   c:	5a                   	pop    %edx
   d:	59                   	pop    %ecx
   e:	c3                   	ret    

Disassembly of section .text.usb_is_freelist:

00000000 <usb_is_freelist>:
   0:	39 02                	cmp    %eax,(%edx)
   2:	0f 95 c0             	setne  %al
   5:	0f b6 c0             	movzbl %al,%eax
   8:	c3                   	ret    

Disassembly of section .text.usb_add_freelist:

00000000 <usb_add_freelist>:
   0:	85 c0                	test   %eax,%eax
   2:	74 08                	je     c <usb_add_freelist+0xc>
   4:	8b 10                	mov    (%eax),%edx
   6:	8b 0a                	mov    (%edx),%ecx
   8:	89 08                	mov    %ecx,(%eax)
   a:	89 02                	mov    %eax,(%edx)
   c:	c3                   	ret    

Disassembly of section .text.usb_get_freelist:

00000000 <usb_get_freelist>:
   0:	89 c1                	mov    %eax,%ecx
   2:	8b 00                	mov    (%eax),%eax
   4:	85 c0                	test   %eax,%eax
   6:	75 01                	jne    9 <usb_get_freelist+0x9>
   8:	c3                   	ret    
   9:	53                   	push   %ebx
   a:	8b 18                	mov    (%eax),%ebx
   c:	38 50 0a             	cmp    %dl,0xa(%eax)
   f:	74 0a                	je     1b <usb_get_freelist+0x1b>
  11:	89 c1                	mov    %eax,%ecx
  13:	89 d8                	mov    %ebx,%eax
  15:	85 db                	test   %ebx,%ebx
  17:	75 f1                	jne    a <usb_get_freelist+0xa>
  19:	eb 02                	jmp    1d <usb_get_freelist+0x1d>
  1b:	89 19                	mov    %ebx,(%ecx)
  1d:	5b                   	pop    %ebx
  1e:	c3                   	ret    

Disassembly of section .text.usb_desc2pipe:

00000000 <usb_desc2pipe>:
   0:	53                   	push   %ebx
   1:	89 d3                	mov    %edx,%ebx
   3:	89 ca                	mov    %ecx,%edx
   5:	8b 0b                	mov    (%ebx),%ecx
   7:	8b 49 08             	mov    0x8(%ecx),%ecx
   a:	89 08                	mov    %ecx,(%eax)
   c:	8a 49 10             	mov    0x10(%ecx),%cl
   f:	88 48 04             	mov    %cl,0x4(%eax)
  12:	8a 4a 02             	mov    0x2(%edx),%cl
  15:	83 e1 0f             	and    $0xf,%ecx
  18:	88 48 05             	mov    %cl,0x5(%eax)
  1b:	8a 4b 19             	mov    0x19(%ebx),%cl
  1e:	88 48 06             	mov    %cl,0x6(%eax)
  21:	8a 4b 18             	mov    0x18(%ebx),%cl
  24:	88 48 07             	mov    %cl,0x7(%eax)
  27:	66 8b 4a 04          	mov    0x4(%edx),%cx
  2b:	66 89 48 08          	mov    %cx,0x8(%eax)
  2f:	8a 52 03             	mov    0x3(%edx),%dl
  32:	83 e2 03             	and    $0x3,%edx
  35:	88 50 0a             	mov    %dl,0xa(%eax)
  38:	5b                   	pop    %ebx
  39:	c3                   	ret    

Disassembly of section .text.usb_get_period:

00000000 <usb_get_period>:
   0:	89 c1                	mov    %eax,%ecx
   2:	0f b6 42 06          	movzbl 0x6(%edx),%eax
   6:	80 79 18 02          	cmpb   $0x2,0x18(%ecx)
   a:	74 08                	je     14 <usb_get_period+0x14>
   c:	85 c0                	test   %eax,%eax
   e:	74 11                	je     21 <usb_get_period+0x21>
  10:	0f bd c0             	bsr    %eax,%eax
  13:	c3                   	ret    
  14:	83 f8 04             	cmp    $0x4,%eax
  17:	7d 05                	jge    1e <usb_get_period+0x1e>
  19:	b8 04 00 00 00       	mov    $0x4,%eax
  1e:	83 e8 04             	sub    $0x4,%eax
  21:	c3                   	ret    

Disassembly of section .text.usb_xfer_time:

00000000 <usb_xfer_time>:
   0:	80 78 06 01          	cmpb   $0x1,0x6(%eax)
   4:	19 c0                	sbb    %eax,%eax
   6:	25 aa ec ff ff       	and    $0xffffecaa,%eax
   b:	05 ec 13 00 00       	add    $0x13ec,%eax
  10:	c3                   	ret    

Disassembly of section .text.usb_find_desc:

00000000 <usb_find_desc>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	89 c3                	mov    %eax,%ebx
   5:	89 d6                	mov    %edx,%esi
   7:	89 cf                	mov    %ecx,%edi
   9:	8b 50 10             	mov    0x10(%eax),%edx
   c:	8d 42 09             	lea    0x9(%edx),%eax
   f:	03 53 14             	add    0x14(%ebx),%edx
  12:	39 c2                	cmp    %eax,%edx
  14:	76 2b                	jbe    41 <usb_find_desc+0x41>
  16:	8a 48 01             	mov    0x1(%eax),%cl
  19:	80 f9 04             	cmp    $0x4,%cl
  1c:	74 23                	je     41 <usb_find_desc+0x41>
  1e:	80 f9 05             	cmp    $0x5,%cl
  21:	75 17                	jne    3a <usb_find_desc+0x3a>
  23:	8a 48 02             	mov    0x2(%eax),%cl
  26:	81 e1 80 00 00 00    	and    $0x80,%ecx
  2c:	39 f9                	cmp    %edi,%ecx
  2e:	75 0a                	jne    3a <usb_find_desc+0x3a>
  30:	8a 48 03             	mov    0x3(%eax),%cl
  33:	83 e1 03             	and    $0x3,%ecx
  36:	39 f1                	cmp    %esi,%ecx
  38:	74 09                	je     43 <usb_find_desc+0x43>
  3a:	0f b6 08             	movzbl (%eax),%ecx
  3d:	01 c8                	add    %ecx,%eax
  3f:	eb d1                	jmp    12 <usb_find_desc+0x12>
  41:	31 c0                	xor    %eax,%eax
  43:	5b                   	pop    %ebx
  44:	5e                   	pop    %esi
  45:	5f                   	pop    %edi
  46:	c3                   	ret    

Disassembly of section .text.usb_enumerate:

00000000 <usb_enumerate>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 c3                	mov    %eax,%ebx
   6:	8b 68 1c             	mov    0x1c(%eax),%ebp
   9:	89 68 18             	mov    %ebp,0x18(%eax)
   c:	a1 00 00 00 00       	mov    0x0,%eax
  11:	e8 fc ff ff ff       	call   12 <usb_enumerate+0x12>
  16:	89 43 10             	mov    %eax,0x10(%ebx)
  19:	31 ff                	xor    %edi,%edi
  1b:	39 ef                	cmp    %ebp,%edi
  1d:	74 4b                	je     6a <usb_enumerate+0x6a>
  1f:	b9 10 00 00 00       	mov    $0x10,%ecx
  24:	ba 1c 00 00 00       	mov    $0x1c,%edx
  29:	b8 00 00 00 00       	mov    $0x0,%eax
  2e:	e8 fc ff ff ff       	call   2f <usb_enumerate+0x2f>
  33:	89 c6                	mov    %eax,%esi
  35:	85 c0                	test   %eax,%eax
  37:	75 11                	jne    4a <usb_enumerate+0x4a>
  39:	ba 00 00 00 00       	mov    $0x0,%edx
  3e:	b8 e4 01 00 00       	mov    $0x1e4,%eax
  43:	e8 fc ff ff ff       	call   44 <usb_enumerate+0x44>
  48:	eb 1d                	jmp    67 <usb_enumerate+0x67>
  4a:	b9 1c 00 00 00       	mov    $0x1c,%ecx
  4f:	31 d2                	xor    %edx,%edx
  51:	e8 fc ff ff ff       	call   52 <usb_enumerate+0x52>
  56:	89 1e                	mov    %ebx,(%esi)
  58:	89 7e 08             	mov    %edi,0x8(%esi)
  5b:	89 f2                	mov    %esi,%edx
  5d:	b8 00 00 00 00       	mov    $0x0,%eax
  62:	e8 fc ff ff ff       	call   63 <usb_enumerate+0x63>
  67:	47                   	inc    %edi
  68:	eb b1                	jmp    1b <usb_enumerate+0x1b>
  6a:	83 7b 18 00          	cmpl   $0x0,0x18(%ebx)
  6e:	74 07                	je     77 <usb_enumerate+0x77>
  70:	e8 fc ff ff ff       	call   71 <usb_enumerate+0x71>
  75:	eb f3                	jmp    6a <usb_enumerate+0x6a>
  77:	5b                   	pop    %ebx
  78:	5e                   	pop    %esi
  79:	5f                   	pop    %edi
  7a:	5d                   	pop    %ebp
  7b:	c3                   	ret    

Disassembly of section .text.usb_setup:

00000000 <usb_setup>:
   0:	68 56 00 00 00       	push   $0x56
   5:	e8 fc ff ff ff       	call   6 <usb_setup+0x6>
   a:	ba 64 00 00 00       	mov    $0x64,%edx
   f:	31 c9                	xor    %ecx,%ecx
  11:	b8 60 00 00 00       	mov    $0x60,%eax
  16:	e8 fc ff ff ff       	call   17 <usb_setup+0x17>
  1b:	a3 00 00 00 00       	mov    %eax,0x0
  20:	e8 fc ff ff ff       	call   21 <usb_setup+0x21>
  25:	e8 fc ff ff ff       	call   26 <usb_setup+0x26>
  2a:	e8 fc ff ff ff       	call   2b <usb_setup+0x2b>
  2f:	58                   	pop    %eax
  30:	e9 fc ff ff ff       	jmp    31 <usb_setup+0x31>
