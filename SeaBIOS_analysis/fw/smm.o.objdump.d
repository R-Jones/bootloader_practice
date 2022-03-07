
./smm.o:     file format elf32-i386


Disassembly of section .text.set_a20:

00000000 <set_a20>:
   0:	89 c2                	mov    %eax,%edx
   2:	e4 92                	in     $0x92,%al
   4:	88 c1                	mov    %al,%cl
   6:	d0 e9                	shr    %cl
   8:	83 e1 01             	and    $0x1,%ecx
   b:	83 e2 01             	and    $0x1,%edx
   e:	38 d1                	cmp    %dl,%cl
  10:	74 05                	je     17 <set_a20+0x17>
  12:	83 f0 02             	xor    $0x2,%eax
  15:	e6 92                	out    %al,$0x92
  17:	88 c8                	mov    %cl,%al
  19:	c3                   	ret    

Disassembly of section .text.smm_save_and_copy:

00000000 <smm_save_and_copy>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	b8 00 fe 0a 00       	mov    $0xafe00,%eax
   7:	be 00 fe 03 00       	mov    $0x3fe00,%esi
   c:	b9 80 00 00 00       	mov    $0x80,%ecx
  11:	89 c7                	mov    %eax,%edi
  13:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  15:	a1 00 80 03 00       	mov    0x38000,%eax
  1a:	8b 15 04 80 03 00    	mov    0x38004,%edx
  20:	a3 00 80 0a 00       	mov    %eax,0xa8000
  25:	89 15 04 80 0a 00    	mov    %edx,0xa8004
  2b:	b8 00 00 f1 ff       	mov    $0xfff10000,%eax
  30:	31 d2                	xor    %edx,%edx
  32:	0f a4 c2 18          	shld   $0x18,%eax,%edx
  36:	c1 e0 18             	shl    $0x18,%eax
  39:	0d 8c c8 ea 00       	or     $0xeac88c,%eax
  3e:	a3 00 80 03 00       	mov    %eax,0x38000
  43:	89 d0                	mov    %edx,%eax
  45:	0d 00 00 f0 00       	or     $0xf00000,%eax
  4a:	a3 04 80 03 00       	mov    %eax,0x38004
  4f:	5e                   	pop    %esi
  50:	5f                   	pop    %edi
  51:	c3                   	ret    

Disassembly of section .text.smm_relocate_and_restore:

00000000 <smm_relocate_and_restore>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	b0 01                	mov    $0x1,%al
   4:	e6 b3                	out    %al,$0xb3
   6:	31 c0                	xor    %eax,%eax
   8:	e6 b2                	out    %al,$0xb2
   a:	e4 b3                	in     $0xb3,%al
   c:	84 c0                	test   %al,%al
   e:	75 fa                	jne    a <smm_relocate_and_restore+0xa>
  10:	b8 00 fe 03 00       	mov    $0x3fe00,%eax
  15:	be 00 fe 0a 00       	mov    $0xafe00,%esi
  1a:	b9 80 00 00 00       	mov    $0x80,%ecx
  1f:	89 c7                	mov    %eax,%edi
  21:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  23:	a1 00 80 0a 00       	mov    0xa8000,%eax
  28:	8b 15 04 80 0a 00    	mov    0xa8004,%edx
  2e:	a3 00 80 03 00       	mov    %eax,0x38000
  33:	89 15 04 80 03 00    	mov    %edx,0x38004
  39:	b8 00 00 f1 ff       	mov    $0xfff10000,%eax
  3e:	31 d2                	xor    %edx,%edx
  40:	0f a4 c2 18          	shld   $0x18,%eax,%edx
  44:	c1 e0 18             	shl    $0x18,%eax
  47:	0d 8c c8 ea 00       	or     $0xeac88c,%eax
  4c:	a3 00 80 0a 00       	mov    %eax,0xa8000
  51:	89 d0                	mov    %edx,%eax
  53:	0d 00 00 f0 00       	or     $0xf00000,%eax
  58:	a3 04 80 0a 00       	mov    %eax,0xa8004
  5d:	0f 09                	wbinvd 
  5f:	5e                   	pop    %esi
  60:	5f                   	pop    %edi
  61:	c3                   	ret    

Disassembly of section .text.runtime.src/fw/smm.c.62:

00000000 <handle_smi>:
   0:	57                   	push   %edi
   1:	8d 7c 24 08          	lea    0x8(%esp),%edi
   5:	83 e4 f8             	and    $0xfffffff8,%esp
   8:	ff 77 fc             	push   -0x4(%edi)
   b:	55                   	push   %ebp
   c:	89 e5                	mov    %esp,%ebp
   e:	57                   	push   %edi
   f:	56                   	push   %esi
  10:	53                   	push   %ebx
  11:	83 ec 4c             	sub    $0x4c,%esp
  14:	89 c2                	mov    %eax,%edx
  16:	e4 b2                	in     $0xb2,%al
  18:	88 45 ac             	mov    %al,-0x54(%ebp)
  1b:	0f b7 d2             	movzwl %dx,%edx
  1e:	c1 e2 04             	shl    $0x4,%edx
  21:	89 d3                	mov    %edx,%ebx
  23:	8b b2 fc fe 00 00    	mov    0xfefc(%edx),%esi
  29:	81 e6 ff ff 02 00    	and    $0x2ffff,%esi
  2f:	52                   	push   %edx
  30:	0f b6 c0             	movzbl %al,%eax
  33:	50                   	push   %eax
  34:	68 00 00 00 00       	push   $0x0
  39:	e8 fc ff ff ff       	call   3a <handle_smi+0x3a>
  3e:	83 c4 0c             	add    $0xc,%esp
  41:	81 fb 00 00 03 00    	cmp    $0x30000,%ebx
  47:	75 73                	jne    bc <handle_smi+0xbc>
  49:	81 fe 00 00 02 00    	cmp    $0x20000,%esi
  4f:	75 0c                	jne    5d <handle_smi+0x5d>
  51:	c7 05 f8 fe 03 00 00 	movl   $0xa0000,0x3fef8
  58:	00 0a 00 
  5b:	eb 2e                	jmp    8b <handle_smi+0x8b>
  5d:	81 fe 64 00 02 00    	cmp    $0x20064,%esi
  63:	75 0c                	jne    71 <handle_smi+0x71>
  65:	c7 05 00 ff 03 00 00 	movl   $0xa0000,0x3ff00
  6c:	00 0a 00 
  6f:	eb 1a                	jmp    8b <handle_smi+0x8b>
  71:	ba 00 00 00 00       	mov    $0x0,%edx
  76:	b8 4f 00 00 00       	mov    $0x4f,%eax
  7b:	8d 65 f4             	lea    -0xc(%ebp),%esp
  7e:	5b                   	pop    %ebx
  7f:	5e                   	pop    %esi
  80:	5f                   	pop    %edi
  81:	5d                   	pop    %ebp
  82:	8d 67 f8             	lea    -0x8(%edi),%esp
  85:	5f                   	pop    %edi
  86:	e9 fc ff ff ff       	jmp    87 <handle_smi+0x87>
  8b:	31 c0                	xor    %eax,%eax
  8d:	e6 b3                	out    %al,$0xb3
  8f:	bb 00 00 0a 00       	mov    $0xa0000,%ebx
  94:	b8 00 fe 03 00       	mov    $0x3fe00,%eax
  99:	b9 80 00 00 00       	mov    $0x80,%ecx
  9e:	89 df                	mov    %ebx,%edi
  a0:	89 c6                	mov    %eax,%esi
  a2:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  a4:	b9 80 00 00 00       	mov    $0x80,%ecx
  a9:	89 c6                	mov    %eax,%esi
  ab:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  ad:	c7 05 00 00 00 00 01 	movl   $0x1,0x0
  b4:	00 00 00 
  b7:	e9 fa 01 00 00       	jmp    2b6 <handle_smi+0x2b6>
  bc:	80 7d ac b5          	cmpb   $0xb5,-0x54(%ebp)
  c0:	0f 85 f0 01 00 00    	jne    2b6 <handle_smi+0x2b6>
  c6:	81 fe 00 00 02 00    	cmp    $0x20000,%esi
  cc:	0f 85 fa 00 00 00    	jne    1cc <handle_smi+0x1cc>
  d2:	8d 7d b0             	lea    -0x50(%ebp),%edi
  d5:	8d b3 d0 ff 00 00    	lea    0xffd0(%ebx),%esi
  db:	b9 08 00 00 00       	mov    $0x8,%ecx
  e0:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  e2:	8b 83 dc ff 00 00    	mov    0xffdc(%ebx),%eax
  e8:	89 45 ac             	mov    %eax,-0x54(%ebp)
  eb:	8b 83 e0 ff 00 00    	mov    0xffe0(%ebx),%eax
  f1:	8b 93 d4 ff 00 00    	mov    0xffd4(%ebx),%edx
  f7:	81 fa 34 12 00 00    	cmp    $0x1234,%edx
  fd:	8d 8b d0 ff 00 00    	lea    0xffd0(%ebx),%ecx
 103:	89 4d a8             	mov    %ecx,-0x58(%ebp)
 106:	75 64                	jne    16c <handle_smi+0x16c>
 108:	50                   	push   %eax
 109:	ff 75 ac             	push   -0x54(%ebp)
 10c:	68 1d 00 00 00       	push   $0x1d
 111:	e8 fc ff ff ff       	call   112 <handle_smi+0x112>
 116:	8d 93 00 fe 00 00    	lea    0xfe00(%ebx),%edx
 11c:	8d 83 00 02 00 00    	lea    0x200(%ebx),%eax
 122:	b9 80 00 00 00       	mov    $0x80,%ecx
 127:	89 c7                	mov    %eax,%edi
 129:	89 d6                	mov    %edx,%esi
 12b:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 12d:	b9 80 00 00 00       	mov    $0x80,%ecx
 132:	89 d7                	mov    %edx,%edi
 134:	89 de                	mov    %ebx,%esi
 136:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 138:	b9 08 00 00 00       	mov    $0x8,%ecx
 13d:	8d bb d0 ff 00 00    	lea    0xffd0(%ebx),%edi
 143:	8d 75 b0             	lea    -0x50(%ebp),%esi
 146:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 148:	8b 45 ac             	mov    -0x54(%ebp),%eax
 14b:	89 83 f0 ff 00 00    	mov    %eax,0xfff0(%ebx)
 151:	b8 01 00 00 00       	mov    $0x1,%eax
 156:	e8 fc ff ff ff       	call   157 <handle_smi+0x157>
 15b:	0f b6 c0             	movzbl %al,%eax
 15e:	89 83 00 04 00 00    	mov    %eax,0x400(%ebx)
 164:	83 c4 0c             	add    $0xc,%esp
 167:	e9 4a 01 00 00       	jmp    2b6 <handle_smi+0x2b6>
 16c:	81 fa 78 56 00 00    	cmp    $0x5678,%edx
 172:	0f 85 3e 01 00 00    	jne    2b6 <handle_smi+0x2b6>
 178:	50                   	push   %eax
 179:	ff 75 ac             	push   -0x54(%ebp)
 17c:	68 38 00 00 00       	push   $0x38
 181:	e8 fc ff ff ff       	call   182 <handle_smi+0x182>
 186:	8d 83 00 fe 00 00    	lea    0xfe00(%ebx),%eax
 18c:	8d b3 00 02 00 00    	lea    0x200(%ebx),%esi
 192:	b9 80 00 00 00       	mov    $0x80,%ecx
 197:	89 c7                	mov    %eax,%edi
 199:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 19b:	b9 08 00 00 00       	mov    $0x8,%ecx
 1a0:	8d bb d0 ff 00 00    	lea    0xffd0(%ebx),%edi
 1a6:	8d 75 b0             	lea    -0x50(%ebp),%esi
 1a9:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 1ab:	83 c4 0c             	add    $0xc,%esp
 1ae:	83 bb 00 04 00 00 00 	cmpl   $0x0,0x400(%ebx)
 1b5:	75 07                	jne    1be <handle_smi+0x1be>
 1b7:	31 c0                	xor    %eax,%eax
 1b9:	e8 fc ff ff ff       	call   1ba <handle_smi+0x1ba>
 1be:	8b 45 ac             	mov    -0x54(%ebp),%eax
 1c1:	89 83 f0 ff 00 00    	mov    %eax,0xfff0(%ebx)
 1c7:	e9 ea 00 00 00       	jmp    2b6 <handle_smi+0x2b6>
 1cc:	81 fe 64 00 02 00    	cmp    $0x20064,%esi
 1d2:	0f 85 de 00 00 00    	jne    2b6 <handle_smi+0x2b6>
 1d8:	8d 7d b0             	lea    -0x50(%ebp),%edi
 1db:	8d b3 c0 ff 00 00    	lea    0xffc0(%ebx),%esi
 1e1:	b9 10 00 00 00       	mov    $0x10,%ecx
 1e6:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 1e8:	8b 83 e0 ff 00 00    	mov    0xffe0(%ebx),%eax
 1ee:	89 45 a8             	mov    %eax,-0x58(%ebp)
 1f1:	8b 83 f0 ff 00 00    	mov    0xfff0(%ebx),%eax
 1f7:	3d 34 12 00 00       	cmp    $0x1234,%eax
 1fc:	8d 55 b0             	lea    -0x50(%ebp),%edx
 1ff:	8d bb c0 ff 00 00    	lea    0xffc0(%ebx),%edi
 205:	89 7d ac             	mov    %edi,-0x54(%ebp)
 208:	75 5e                	jne    268 <handle_smi+0x268>
 20a:	8d 83 00 fe 00 00    	lea    0xfe00(%ebx),%eax
 210:	89 45 ac             	mov    %eax,-0x54(%ebp)
 213:	8d 83 00 02 00 00    	lea    0x200(%ebx),%eax
 219:	b9 80 00 00 00       	mov    $0x80,%ecx
 21e:	89 c7                	mov    %eax,%edi
 220:	8b 75 ac             	mov    -0x54(%ebp),%esi
 223:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 225:	b9 80 00 00 00       	mov    $0x80,%ecx
 22a:	8b 7d ac             	mov    -0x54(%ebp),%edi
 22d:	89 de                	mov    %ebx,%esi
 22f:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 231:	b9 10 00 00 00       	mov    $0x10,%ecx
 236:	8d bb c0 ff 00 00    	lea    0xffc0(%ebx),%edi
 23c:	89 d6                	mov    %edx,%esi
 23e:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 240:	8b 45 a8             	mov    -0x58(%ebp),%eax
 243:	89 83 78 ff 00 00    	mov    %eax,0xff78(%ebx)
 249:	c7 83 7c ff 00 00 00 	movl   $0x0,0xff7c(%ebx)
 250:	00 00 00 
 253:	b8 01 00 00 00       	mov    $0x1,%eax
 258:	e8 fc ff ff ff       	call   259 <handle_smi+0x259>
 25d:	0f b6 c0             	movzbl %al,%eax
 260:	89 83 00 04 00 00    	mov    %eax,0x400(%ebx)
 266:	eb 4e                	jmp    2b6 <handle_smi+0x2b6>
 268:	3d 78 56 00 00       	cmp    $0x5678,%eax
 26d:	75 47                	jne    2b6 <handle_smi+0x2b6>
 26f:	8d 83 00 fe 00 00    	lea    0xfe00(%ebx),%eax
 275:	8d b3 00 02 00 00    	lea    0x200(%ebx),%esi
 27b:	b9 80 00 00 00       	mov    $0x80,%ecx
 280:	89 c7                	mov    %eax,%edi
 282:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 284:	b9 10 00 00 00       	mov    $0x10,%ecx
 289:	8d bb c0 ff 00 00    	lea    0xffc0(%ebx),%edi
 28f:	89 d6                	mov    %edx,%esi
 291:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 293:	83 bb 00 04 00 00 00 	cmpl   $0x0,0x400(%ebx)
 29a:	75 07                	jne    2a3 <handle_smi+0x2a3>
 29c:	31 c0                	xor    %eax,%eax
 29e:	e8 fc ff ff ff       	call   29f <handle_smi+0x29f>
 2a3:	8b 45 a8             	mov    -0x58(%ebp),%eax
 2a6:	89 83 78 ff 00 00    	mov    %eax,0xff78(%ebx)
 2ac:	c7 83 7c ff 00 00 00 	movl   $0x0,0xff7c(%ebx)
 2b3:	00 00 00 
 2b6:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2b9:	5b                   	pop    %ebx
 2ba:	5e                   	pop    %esi
 2bb:	5f                   	pop    %edi
 2bc:	5d                   	pop    %ebp
 2bd:	8d 67 f8             	lea    -0x8(%edi),%esp
 2c0:	5f                   	pop    %edi
 2c1:	c3                   	ret    

Disassembly of section .text.ich9_lpc_apmc_smm_setup:

00000000 <ich9_lpc_apmc_smm_setup>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	89 c6                	mov    %eax,%esi
   5:	89 d3                	mov    %edx,%ebx
   7:	66 a1 00 00 00 00    	mov    0x0,%ax
   d:	8d 50 30             	lea    0x30(%eax),%edx
  10:	ed                   	in     (%dx),%eax
  11:	a8 20                	test   $0x20,%al
  13:	75 65                	jne    7a <ich9_lpc_apmc_smm_setup+0x7a>
  15:	89 c7                	mov    %eax,%edi
  17:	0f b7 db             	movzwl %bx,%ebx
  1a:	b9 4a 00 00 00       	mov    $0x4a,%ecx
  1f:	ba 9d 00 00 00       	mov    $0x9d,%edx
  24:	89 d8                	mov    %ebx,%eax
  26:	e8 fc ff ff ff       	call   27 <ich9_lpc_apmc_smm_setup+0x27>
  2b:	e8 fc ff ff ff       	call   2c <ich9_lpc_apmc_smm_setup+0x2c>
  30:	89 f8                	mov    %edi,%eax
  32:	83 c8 21             	or     $0x21,%eax
  35:	66 8b 3d 00 00 00 00 	mov    0x0,%di
  3c:	8d 57 30             	lea    0x30(%edi),%edx
  3f:	ef                   	out    %eax,(%dx)
  40:	0f b7 f6             	movzwl %si,%esi
  43:	ba a0 00 00 00       	mov    $0xa0,%edx
  48:	89 f0                	mov    %esi,%eax
  4a:	e8 fc ff ff ff       	call   4b <ich9_lpc_apmc_smm_setup+0x4b>
  4f:	83 c8 10             	or     $0x10,%eax
  52:	0f b7 c8             	movzwl %ax,%ecx
  55:	ba a0 00 00 00       	mov    $0xa0,%edx
  5a:	89 f0                	mov    %esi,%eax
  5c:	e8 fc ff ff ff       	call   5d <ich9_lpc_apmc_smm_setup+0x5d>
  61:	e8 fc ff ff ff       	call   62 <ich9_lpc_apmc_smm_setup+0x62>
  66:	b9 0a 00 00 00       	mov    $0xa,%ecx
  6b:	ba 9d 00 00 00       	mov    $0x9d,%edx
  70:	89 d8                	mov    %ebx,%eax
  72:	5b                   	pop    %ebx
  73:	5e                   	pop    %esi
  74:	5f                   	pop    %edi
  75:	e9 fc ff ff ff       	jmp    76 <ich9_lpc_apmc_smm_setup+0x76>
  7a:	5b                   	pop    %ebx
  7b:	5e                   	pop    %esi
  7c:	5f                   	pop    %edi
  7d:	c3                   	ret    

Disassembly of section .text.smm_device_setup:

00000000 <smm_device_setup>:
   0:	53                   	push   %ebx
   1:	ba 13 71 00 00       	mov    $0x7113,%edx
   6:	b8 86 80 00 00       	mov    $0x8086,%eax
   b:	e8 fc ff ff ff       	call   c <smm_device_setup+0xc>
  10:	89 c3                	mov    %eax,%ebx
  12:	ba 37 12 00 00       	mov    $0x1237,%edx
  17:	b8 86 80 00 00       	mov    $0x8086,%eax
  1c:	e8 fc ff ff ff       	call   1d <smm_device_setup+0x1d>
  21:	85 db                	test   %ebx,%ebx
  23:	74 04                	je     29 <smm_device_setup+0x29>
  25:	85 c0                	test   %eax,%eax
  27:	75 28                	jne    51 <smm_device_setup+0x51>
  29:	ba 18 29 00 00       	mov    $0x2918,%edx
  2e:	b8 86 80 00 00       	mov    $0x8086,%eax
  33:	e8 fc ff ff ff       	call   34 <smm_device_setup+0x34>
  38:	89 c3                	mov    %eax,%ebx
  3a:	ba c0 29 00 00       	mov    $0x29c0,%edx
  3f:	b8 86 80 00 00       	mov    $0x8086,%eax
  44:	e8 fc ff ff ff       	call   45 <smm_device_setup+0x45>
  49:	85 c0                	test   %eax,%eax
  4b:	74 15                	je     62 <smm_device_setup+0x62>
  4d:	85 db                	test   %ebx,%ebx
  4f:	74 11                	je     62 <smm_device_setup+0x62>
  51:	0f b7 13             	movzwl (%ebx),%edx
  54:	89 15 00 00 00 00    	mov    %edx,0x0
  5a:	0f b7 00             	movzwl (%eax),%eax
  5d:	a3 00 00 00 00       	mov    %eax,0x0
  62:	5b                   	pop    %ebx
  63:	c3                   	ret    

Disassembly of section .text.smm_setup:

00000000 <smm_setup>:
   0:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
   7:	0f 88 b1 00 00 00    	js     be <smm_setup+0xbe>
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	68 4f 00 00 00       	push   $0x4f
  15:	e8 fc ff ff ff       	call   16 <smm_setup+0x16>
  1a:	0f b7 05 00 00 00 00 	movzwl 0x0,%eax
  21:	ba 02 00 00 00       	mov    $0x2,%edx
  26:	e8 fc ff ff ff       	call   27 <smm_setup+0x27>
  2b:	5a                   	pop    %edx
  2c:	66 3d 13 71          	cmp    $0x7113,%ax
  30:	75 75                	jne    a7 <smm_setup+0xa7>
  32:	8b 3d 00 00 00 00    	mov    0x0,%edi
  38:	0f b7 35 00 00 00 00 	movzwl 0x0,%esi
  3f:	ba 58 00 00 00       	mov    $0x58,%edx
  44:	89 f0                	mov    %esi,%eax
  46:	e8 fc ff ff ff       	call   47 <smm_setup+0x47>
  4b:	89 c3                	mov    %eax,%ebx
  4d:	0f ba e0 19          	bt     $0x19,%eax
  51:	72 67                	jb     ba <smm_setup+0xba>
  53:	0f b7 ff             	movzwl %di,%edi
  56:	b9 4a 00 00 00       	mov    $0x4a,%ecx
  5b:	ba 72 00 00 00       	mov    $0x72,%edx
  60:	89 f8                	mov    %edi,%eax
  62:	e8 fc ff ff ff       	call   63 <smm_setup+0x63>
  67:	e8 fc ff ff ff       	call   68 <smm_setup+0x68>
  6c:	81 cb 00 00 00 02    	or     $0x2000000,%ebx
  72:	89 d9                	mov    %ebx,%ecx
  74:	ba 58 00 00 00       	mov    $0x58,%edx
  79:	89 f0                	mov    %esi,%eax
  7b:	e8 fc ff ff ff       	call   7c <smm_setup+0x7c>
  80:	66 a1 00 00 00 00    	mov    0x0,%ax
  86:	8d 50 28             	lea    0x28(%eax),%edx
  89:	ed                   	in     (%dx),%eax
  8a:	83 c8 01             	or     $0x1,%eax
  8d:	ef                   	out    %eax,(%dx)
  8e:	e8 fc ff ff ff       	call   8f <smm_setup+0x8f>
  93:	b9 0a 00 00 00       	mov    $0xa,%ecx
  98:	ba 72 00 00 00       	mov    $0x72,%edx
  9d:	89 f8                	mov    %edi,%eax
  9f:	5b                   	pop    %ebx
  a0:	5e                   	pop    %esi
  a1:	5f                   	pop    %edi
  a2:	e9 fc ff ff ff       	jmp    a3 <smm_setup+0xa3>
  a7:	8b 15 00 00 00 00    	mov    0x0,%edx
  ad:	a1 00 00 00 00       	mov    0x0,%eax
  b2:	5b                   	pop    %ebx
  b3:	5e                   	pop    %esi
  b4:	5f                   	pop    %edi
  b5:	e9 fc ff ff ff       	jmp    b6 <smm_setup+0xb6>
  ba:	5b                   	pop    %ebx
  bb:	5e                   	pop    %esi
  bc:	5f                   	pop    %edi
  bd:	c3                   	ret    
  be:	c3                   	ret    
