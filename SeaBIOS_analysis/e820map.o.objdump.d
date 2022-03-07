
./e820map.o:     file format elf32-i386


Disassembly of section .text.remove_e820:

00000000 <remove_e820>:
   0:	53                   	push   %ebx
   1:	8b 1d 00 00 00 00    	mov    0x0,%ebx
   7:	8d 4b ff             	lea    -0x1(%ebx),%ecx
   a:	89 0d 00 00 00 00    	mov    %ecx,0x0
  10:	8d 50 01             	lea    0x1(%eax),%edx
  13:	6b d2 14             	imul   $0x14,%edx,%edx
  16:	29 c1                	sub    %eax,%ecx
  18:	6b c9 14             	imul   $0x14,%ecx,%ecx
  1b:	8d 9a 00 00 00 00    	lea    0x0(%edx),%ebx
  21:	8d 82 ec ff ff ff    	lea    -0x14(%edx),%eax
  27:	89 da                	mov    %ebx,%edx
  29:	5b                   	pop    %ebx
  2a:	e9 fc ff ff ff       	jmp    2b <remove_e820+0x2b>

Disassembly of section .text.insert_e820:

00000000 <insert_e820>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 0c             	sub    $0xc,%esp
   7:	89 cf                	mov    %ecx,%edi
   9:	8b 4c 24 20          	mov    0x20(%esp),%ecx
   d:	8b 5c 24 24          	mov    0x24(%esp),%ebx
  11:	89 0c 24             	mov    %ecx,(%esp)
  14:	89 5c 24 04          	mov    %ebx,0x4(%esp)
  18:	8b 6c 24 28          	mov    0x28(%esp),%ebp
  1c:	8b 0d 00 00 00 00    	mov    0x0,%ecx
  22:	83 f9 1f             	cmp    $0x1f,%ecx
  25:	7e 16                	jle    3d <insert_e820+0x3d>
  27:	ba 00 00 00 00       	mov    $0x0,%edx
  2c:	b8 23 00 00 00       	mov    $0x23,%eax
  31:	83 c4 0c             	add    $0xc,%esp
  34:	5b                   	pop    %ebx
  35:	5e                   	pop    %esi
  36:	5f                   	pop    %edi
  37:	5d                   	pop    %ebp
  38:	e9 fc ff ff ff       	jmp    39 <insert_e820+0x39>
  3d:	89 d6                	mov    %edx,%esi
  3f:	6b d8 14             	imul   $0x14,%eax,%ebx
  42:	29 c1                	sub    %eax,%ecx
  44:	6b c9 14             	imul   $0x14,%ecx,%ecx
  47:	8d 93 00 00 00 00    	lea    0x0(%ebx),%edx
  4d:	8d 83 14 00 00 00    	lea    0x14(%ebx),%eax
  53:	89 54 24 08          	mov    %edx,0x8(%esp)
  57:	e8 fc ff ff ff       	call   58 <insert_e820+0x58>
  5c:	ff 05 00 00 00 00    	incl   0x0
  62:	89 b3 00 00 00 00    	mov    %esi,0x0(%ebx)
  68:	89 bb 04 00 00 00    	mov    %edi,0x4(%ebx)
  6e:	8b 34 24             	mov    (%esp),%esi
  71:	8b 7c 24 04          	mov    0x4(%esp),%edi
  75:	8b 54 24 08          	mov    0x8(%esp),%edx
  79:	89 72 08             	mov    %esi,0x8(%edx)
  7c:	89 7a 0c             	mov    %edi,0xc(%edx)
  7f:	89 6a 10             	mov    %ebp,0x10(%edx)
  82:	83 c4 0c             	add    $0xc,%esp
  85:	5b                   	pop    %ebx
  86:	5e                   	pop    %esi
  87:	5f                   	pop    %edi
  88:	5d                   	pop    %ebp
  89:	c3                   	ret    

Disassembly of section .text.e820_add:

00000000 <e820_add>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 24             	sub    $0x24,%esp
   7:	89 44 24 0c          	mov    %eax,0xc(%esp)
   b:	89 54 24 10          	mov    %edx,0x10(%esp)
   f:	8b 44 24 38          	mov    0x38(%esp),%eax
  13:	8b 54 24 3c          	mov    0x3c(%esp),%edx
  17:	89 44 24 14          	mov    %eax,0x14(%esp)
  1b:	89 54 24 18          	mov    %edx,0x18(%esp)
  1f:	8b 6c 24 40          	mov    0x40(%esp),%ebp
  23:	55                   	push   %ebp
  24:	52                   	push   %edx
  25:	50                   	push   %eax
  26:	ff 74 24 1c          	push   0x1c(%esp)
  2a:	ff 74 24 1c          	push   0x1c(%esp)
  2e:	68 00 00 00 00       	push   $0x0
  33:	e8 fc ff ff ff       	call   34 <e820_add+0x34>
  38:	83 c4 18             	add    $0x18,%esp
  3b:	8b 44 24 18          	mov    0x18(%esp),%eax
  3f:	0b 44 24 14          	or     0x14(%esp),%eax
  43:	0f 84 a2 01 00 00    	je     1eb <e820_add+0x1eb>
  49:	8b 74 24 0c          	mov    0xc(%esp),%esi
  4d:	8b 7c 24 10          	mov    0x10(%esp),%edi
  51:	03 74 24 14          	add    0x14(%esp),%esi
  55:	13 7c 24 18          	adc    0x18(%esp),%edi
  59:	89 34 24             	mov    %esi,(%esp)
  5c:	89 7c 24 04          	mov    %edi,0x4(%esp)
  60:	8b 0d 00 00 00 00    	mov    0x0,%ecx
  66:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  6d:	00 
  6e:	39 4c 24 08          	cmp    %ecx,0x8(%esp)
  72:	0f 8d 42 01 00 00    	jge    1ba <e820_add+0x1ba>
  78:	6b 5c 24 08 14       	imul   $0x14,0x8(%esp),%ebx
  7d:	8b 83 00 00 00 00    	mov    0x0(%ebx),%eax
  83:	8b 93 04 00 00 00    	mov    0x4(%ebx),%edx
  89:	89 c6                	mov    %eax,%esi
  8b:	89 d7                	mov    %edx,%edi
  8d:	03 b3 08 00 00 00    	add    0x8(%ebx),%esi
  93:	13 bb 0c 00 00 00    	adc    0xc(%ebx),%edi
  99:	89 74 24 1c          	mov    %esi,0x1c(%esp)
  9d:	89 7c 24 20          	mov    %edi,0x20(%esp)
  a1:	8b 7c 24 1c          	mov    0x1c(%esp),%edi
  a5:	3b 7c 24 0c          	cmp    0xc(%esp),%edi
  a9:	8b 7c 24 20          	mov    0x20(%esp),%edi
  ad:	1b 7c 24 10          	sbb    0x10(%esp),%edi
  b1:	73 06                	jae    b9 <e820_add+0xb9>
  b3:	ff 44 24 08          	incl   0x8(%esp)
  b7:	eb b5                	jmp    6e <e820_add+0x6e>
  b9:	3b 44 24 0c          	cmp    0xc(%esp),%eax
  bd:	89 d7                	mov    %edx,%edi
  bf:	1b 7c 24 10          	sbb    0x10(%esp),%edi
  c3:	73 7d                	jae    142 <e820_add+0x142>
  c5:	8d bb 00 00 00 00    	lea    0x0(%ebx),%edi
  cb:	89 fe                	mov    %edi,%esi
  cd:	8b bb 10 00 00 00    	mov    0x10(%ebx),%edi
  d3:	39 fd                	cmp    %edi,%ebp
  d5:	75 1d                	jne    f4 <e820_add+0xf4>
  d7:	8b 34 24             	mov    (%esp),%esi
  da:	8b 7c 24 04          	mov    0x4(%esp),%edi
  de:	29 c6                	sub    %eax,%esi
  e0:	19 d7                	sbb    %edx,%edi
  e2:	89 74 24 14          	mov    %esi,0x14(%esp)
  e6:	89 7c 24 18          	mov    %edi,0x18(%esp)
  ea:	89 44 24 0c          	mov    %eax,0xc(%esp)
  ee:	89 54 24 10          	mov    %edx,0x10(%esp)
  f2:	eb 4e                	jmp    142 <e820_add+0x142>
  f4:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
  f8:	8b 5c 24 10          	mov    0x10(%esp),%ebx
  fc:	29 c1                	sub    %eax,%ecx
  fe:	19 d3                	sbb    %edx,%ebx
 100:	89 4e 08             	mov    %ecx,0x8(%esi)
 103:	89 5e 0c             	mov    %ebx,0xc(%esi)
 106:	ff 44 24 08          	incl   0x8(%esp)
 10a:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 10e:	39 04 24             	cmp    %eax,(%esp)
 111:	8b 44 24 04          	mov    0x4(%esp),%eax
 115:	1b 44 24 20          	sbb    0x20(%esp),%eax
 119:	73 27                	jae    142 <e820_add+0x142>
 11b:	57                   	push   %edi
 11c:	8b 44 24 20          	mov    0x20(%esp),%eax
 120:	8b 54 24 24          	mov    0x24(%esp),%edx
 124:	2b 44 24 04          	sub    0x4(%esp),%eax
 128:	1b 54 24 08          	sbb    0x8(%esp),%edx
 12c:	52                   	push   %edx
 12d:	50                   	push   %eax
 12e:	8b 54 24 0c          	mov    0xc(%esp),%edx
 132:	8b 4c 24 10          	mov    0x10(%esp),%ecx
 136:	8b 44 24 14          	mov    0x14(%esp),%eax
 13a:	e8 fc ff ff ff       	call   13b <e820_add+0x13b>
 13f:	83 c4 0c             	add    $0xc,%esp
 142:	6b 5c 24 08 14       	imul   $0x14,0x8(%esp),%ebx
 147:	8b 44 24 08          	mov    0x8(%esp),%eax
 14b:	3b 05 00 00 00 00    	cmp    0x0,%eax
 151:	7d 67                	jge    1ba <e820_add+0x1ba>
 153:	8d 8b 00 00 00 00    	lea    0x0(%ebx),%ecx
 159:	8b 83 00 00 00 00    	mov    0x0(%ebx),%eax
 15f:	8b 93 04 00 00 00    	mov    0x4(%ebx),%edx
 165:	39 04 24             	cmp    %eax,(%esp)
 168:	8b 74 24 04          	mov    0x4(%esp),%esi
 16c:	19 d6                	sbb    %edx,%esi
 16e:	72 4a                	jb     1ba <e820_add+0x1ba>
 170:	8d 79 08             	lea    0x8(%ecx),%edi
 173:	03 41 08             	add    0x8(%ecx),%eax
 176:	13 51 0c             	adc    0xc(%ecx),%edx
 179:	39 04 24             	cmp    %eax,(%esp)
 17c:	8b 74 24 04          	mov    0x4(%esp),%esi
 180:	19 d6                	sbb    %edx,%esi
 182:	72 0b                	jb     18f <e820_add+0x18f>
 184:	8b 44 24 08          	mov    0x8(%esp),%eax
 188:	e8 fc ff ff ff       	call   189 <e820_add+0x189>
 18d:	eb b8                	jmp    147 <e820_add+0x147>
 18f:	8b 1c 24             	mov    (%esp),%ebx
 192:	8b 74 24 04          	mov    0x4(%esp),%esi
 196:	89 19                	mov    %ebx,(%ecx)
 198:	89 71 04             	mov    %esi,0x4(%ecx)
 19b:	29 d8                	sub    %ebx,%eax
 19d:	19 f2                	sbb    %esi,%edx
 19f:	89 07                	mov    %eax,(%edi)
 1a1:	89 57 04             	mov    %edx,0x4(%edi)
 1a4:	3b 69 10             	cmp    0x10(%ecx),%ebp
 1a7:	75 11                	jne    1ba <e820_add+0x1ba>
 1a9:	01 44 24 14          	add    %eax,0x14(%esp)
 1ad:	11 54 24 18          	adc    %edx,0x18(%esp)
 1b1:	8b 44 24 08          	mov    0x8(%esp),%eax
 1b5:	e8 fc ff ff ff       	call   1b6 <e820_add+0x1b6>
 1ba:	83 fd ff             	cmp    $0xffffffff,%ebp
 1bd:	74 2c                	je     1eb <e820_add+0x1eb>
 1bf:	89 6c 24 40          	mov    %ebp,0x40(%esp)
 1c3:	8b 44 24 14          	mov    0x14(%esp),%eax
 1c7:	8b 54 24 18          	mov    0x18(%esp),%edx
 1cb:	89 44 24 38          	mov    %eax,0x38(%esp)
 1cf:	89 54 24 3c          	mov    %edx,0x3c(%esp)
 1d3:	8b 54 24 0c          	mov    0xc(%esp),%edx
 1d7:	8b 4c 24 10          	mov    0x10(%esp),%ecx
 1db:	8b 44 24 08          	mov    0x8(%esp),%eax
 1df:	83 c4 24             	add    $0x24,%esp
 1e2:	5b                   	pop    %ebx
 1e3:	5e                   	pop    %esi
 1e4:	5f                   	pop    %edi
 1e5:	5d                   	pop    %ebp
 1e6:	e9 fc ff ff ff       	jmp    1e7 <e820_add+0x1e7>
 1eb:	83 c4 24             	add    $0x24,%esp
 1ee:	5b                   	pop    %ebx
 1ef:	5e                   	pop    %esi
 1f0:	5f                   	pop    %edi
 1f1:	5d                   	pop    %ebp
 1f2:	c3                   	ret    

Disassembly of section .text.e820_remove:

00000000 <e820_remove>:
   0:	6a ff                	push   $0xffffffff
   2:	ff 74 24 0c          	push   0xc(%esp)
   6:	ff 74 24 0c          	push   0xc(%esp)
   a:	e8 fc ff ff ff       	call   b <e820_remove+0xb>
   f:	83 c4 0c             	add    $0xc,%esp
  12:	c3                   	ret    

Disassembly of section .text.e820_prepboot:

00000000 <e820_prepboot>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 08             	sub    $0x8,%esp
   7:	ff 35 00 00 00 00    	push   0x0
   d:	68 2b 00 00 00       	push   $0x2b
  12:	e8 fc ff ff ff       	call   13 <e820_prepboot+0x13>
  17:	bb 00 00 00 00       	mov    $0x0,%ebx
  1c:	5e                   	pop    %esi
  1d:	5f                   	pop    %edi
  1e:	31 f6                	xor    %esi,%esi
  20:	3b 35 00 00 00 00    	cmp    0x0,%esi
  26:	7d 4d                	jge    75 <e820_prepboot+0x75>
  28:	8b 03                	mov    (%ebx),%eax
  2a:	8b 53 04             	mov    0x4(%ebx),%edx
  2d:	89 c7                	mov    %eax,%edi
  2f:	89 d5                	mov    %edx,%ebp
  31:	03 7b 08             	add    0x8(%ebx),%edi
  34:	13 6b 0c             	adc    0xc(%ebx),%ebp
  37:	89 3c 24             	mov    %edi,(%esp)
  3a:	89 6c 24 04          	mov    %ebp,0x4(%esp)
  3e:	8b 4b 10             	mov    0x10(%ebx),%ecx
  41:	8d 69 ff             	lea    -0x1(%ecx),%ebp
  44:	bf 23 00 00 00       	mov    $0x23,%edi
  49:	83 fd 04             	cmp    $0x4,%ebp
  4c:	77 07                	ja     55 <e820_prepboot+0x55>
  4e:	8b 3c ad 00 00 00 00 	mov    0x0(,%ebp,4),%edi
  55:	57                   	push   %edi
  56:	51                   	push   %ecx
  57:	ff 74 24 0c          	push   0xc(%esp)
  5b:	ff 74 24 0c          	push   0xc(%esp)
  5f:	52                   	push   %edx
  60:	50                   	push   %eax
  61:	56                   	push   %esi
  62:	68 43 00 00 00       	push   $0x43
  67:	e8 fc ff ff ff       	call   68 <e820_prepboot+0x68>
  6c:	46                   	inc    %esi
  6d:	83 c3 14             	add    $0x14,%ebx
  70:	83 c4 20             	add    $0x20,%esp
  73:	eb ab                	jmp    20 <e820_prepboot+0x20>
  75:	83 c4 08             	add    $0x8,%esp
  78:	5b                   	pop    %ebx
  79:	5e                   	pop    %esi
  7a:	5f                   	pop    %edi
  7b:	5d                   	pop    %ebp
  7c:	c3                   	ret    
