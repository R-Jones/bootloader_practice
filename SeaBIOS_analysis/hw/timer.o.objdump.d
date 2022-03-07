
./timer.o:     file format elf32-i386


Disassembly of section .text.timer_read:

00000000 <timer_read>:
   0:	66 8b 15 00 00 00 00 	mov    0x0,%dx
   7:	66 85 d2             	test   %dx,%dx
   a:	75 18                	jne    24 <timer_read+0x24>
   c:	0f 31                	rdtsc  
   e:	0f b6 0d 00 00 00 00 	movzbl 0x0,%ecx
  15:	0f ad d0             	shrd   %cl,%edx,%eax
  18:	d3 ea                	shr    %cl,%edx
  1a:	f6 c1 20             	test   $0x20,%cl
  1d:	74 04                	je     23 <timer_read+0x23>
  1f:	89 d0                	mov    %edx,%eax
  21:	31 d2                	xor    %edx,%edx
  23:	c3                   	ret    
  24:	8b 0d 00 00 00 00    	mov    0x0,%ecx
  2a:	66 83 fa 40          	cmp    $0x40,%dx
  2e:	74 15                	je     45 <timer_read+0x45>
  30:	ed                   	in     (%dx),%eax
  31:	31 c8                	xor    %ecx,%eax
  33:	25 ff ff ff 00       	and    $0xffffff,%eax
  38:	31 c8                	xor    %ecx,%eax
  3a:	39 c8                	cmp    %ecx,%eax
  3c:	73 2c                	jae    6a <timer_read+0x6a>
  3e:	05 00 00 00 01       	add    $0x1000000,%eax
  43:	eb 25                	jmp    6a <timer_read+0x6a>
  45:	b0 d2                	mov    $0xd2,%al
  47:	e6 43                	out    %al,$0x43
  49:	e4 40                	in     $0x40,%al
  4b:	0f b6 d0             	movzbl %al,%edx
  4e:	e4 40                	in     $0x40,%al
  50:	c1 e0 08             	shl    $0x8,%eax
  53:	09 d0                	or     %edx,%eax
  55:	0f b7 c0             	movzwl %ax,%eax
  58:	f7 d8                	neg    %eax
  5a:	31 c8                	xor    %ecx,%eax
  5c:	0f b7 c0             	movzwl %ax,%eax
  5f:	31 c8                	xor    %ecx,%eax
  61:	39 c8                	cmp    %ecx,%eax
  63:	73 05                	jae    6a <timer_read+0x6a>
  65:	05 00 00 01 00       	add    $0x10000,%eax
  6a:	a3 00 00 00 00       	mov    %eax,0x0
  6f:	c3                   	ret    

Disassembly of section .text.timer_calc_nsec:

00000000 <timer_calc_nsec>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 c3                	mov    %eax,%ebx
   4:	e8 fc ff ff ff       	call   5 <timer_calc_nsec+0x5>
   9:	89 c1                	mov    %eax,%ecx
   b:	8b 35 00 00 00 00    	mov    0x0,%esi
  11:	81 fb 20 a1 07 00    	cmp    $0x7a120,%ebx
  17:	76 14                	jbe    2d <timer_calc_nsec+0x2d>
  19:	8d 83 3f 42 0f 00    	lea    0xf423f(%ebx),%eax
  1f:	bb 40 42 0f 00       	mov    $0xf4240,%ebx
  24:	31 d2                	xor    %edx,%edx
  26:	f7 f3                	div    %ebx
  28:	0f af c6             	imul   %esi,%eax
  2b:	eb 12                	jmp    3f <timer_calc_nsec+0x3f>
  2d:	0f af f3             	imul   %ebx,%esi
  30:	8d 86 3f 42 0f 00    	lea    0xf423f(%esi),%eax
  36:	bb 40 42 0f 00       	mov    $0xf4240,%ebx
  3b:	31 d2                	xor    %edx,%edx
  3d:	f7 f3                	div    %ebx
  3f:	01 c8                	add    %ecx,%eax
  41:	5b                   	pop    %ebx
  42:	5e                   	pop    %esi
  43:	c3                   	ret    

Disassembly of section .text.timer_setup:

00000000 <timer_setup>:
   0:	66 83 3d 00 00 00 00 	cmpw   $0x40,0x0
   7:	40 
   8:	0f 85 3c 01 00 00    	jne    14a <timer_setup+0x14a>
   e:	55                   	push   %ebp
   f:	57                   	push   %edi
  10:	56                   	push   %esi
  11:	53                   	push   %ebx
  12:	83 ec 1c             	sub    $0x1c,%esp
  15:	c7 44 24 18 00 00 00 	movl   $0x0,0x18(%esp)
  1c:	00 
  1d:	8d 44 24 14          	lea    0x14(%esp),%eax
  21:	50                   	push   %eax
  22:	8d 5c 24 14          	lea    0x14(%esp),%ebx
  26:	53                   	push   %ebx
  27:	8d 4c 24 14          	lea    0x14(%esp),%ecx
  2b:	8d 54 24 10          	lea    0x10(%esp),%edx
  2f:	31 c0                	xor    %eax,%eax
  31:	e8 fc ff ff ff       	call   32 <timer_setup+0x32>
  36:	5e                   	pop    %esi
  37:	5f                   	pop    %edi
  38:	83 7c 24 08 00       	cmpl   $0x0,0x8(%esp)
  3d:	74 1a                	je     59 <timer_setup+0x59>
  3f:	8d 44 24 18          	lea    0x18(%esp),%eax
  43:	50                   	push   %eax
  44:	53                   	push   %ebx
  45:	8d 4c 24 14          	lea    0x14(%esp),%ecx
  49:	8d 54 24 10          	lea    0x10(%esp),%edx
  4d:	b8 01 00 00 00       	mov    $0x1,%eax
  52:	e8 fc ff ff ff       	call   53 <timer_setup+0x53>
  57:	59                   	pop    %ecx
  58:	5b                   	pop    %ebx
  59:	f6 44 24 18 10       	testb  $0x10,0x18(%esp)
  5e:	0f 84 de 00 00 00    	je     142 <timer_setup+0x142>
  64:	e4 61                	in     $0x61,%al
  66:	89 c5                	mov    %eax,%ebp
  68:	83 e0 fc             	and    $0xfffffffc,%eax
  6b:	83 c8 01             	or     $0x1,%eax
  6e:	e6 61                	out    %al,$0x61
  70:	b0 b0                	mov    $0xb0,%al
  72:	e6 43                	out    %al,$0x43
  74:	31 c0                	xor    %eax,%eax
  76:	e6 42                	out    %al,$0x42
  78:	b0 08                	mov    $0x8,%al
  7a:	e6 42                	out    %al,$0x42
  7c:	0f 31                	rdtsc  
  7e:	89 c1                	mov    %eax,%ecx
  80:	89 d3                	mov    %edx,%ebx
  82:	e4 61                	in     $0x61,%al
  84:	a8 20                	test   $0x20,%al
  86:	74 fa                	je     82 <timer_setup+0x82>
  88:	0f 31                	rdtsc  
  8a:	89 c6                	mov    %eax,%esi
  8c:	89 e8                	mov    %ebp,%eax
  8e:	e6 61                	out    %al,$0x61
  90:	89 f0                	mov    %esi,%eax
  92:	29 c8                	sub    %ecx,%eax
  94:	19 da                	sbb    %ebx,%edx
  96:	89 04 24             	mov    %eax,(%esp)
  99:	89 54 24 04          	mov    %edx,0x4(%esp)
  9d:	ff 34 24             	push   (%esp)
  a0:	56                   	push   %esi
  a1:	51                   	push   %ecx
  a2:	68 00 00 00 00       	push   $0x0
  a7:	e8 fc ff ff ff       	call   a8 <timer_setup+0xa8>
  ac:	69 4c 24 14 99 9e 36 	imul   $0x369e99,0x14(%esp),%ecx
  b3:	00 
  b4:	b8 99 9e 36 00       	mov    $0x369e99,%eax
  b9:	f7 64 24 10          	mull   0x10(%esp)
  bd:	01 ca                	add    %ecx,%edx
  bf:	05 ff 07 00 00       	add    $0x7ff,%eax
  c4:	83 d2 00             	adc    $0x0,%edx
  c7:	0f ac d0 0b          	shrd   $0xb,%edx,%eax
  cb:	c1 ea 0b             	shr    $0xb,%edx
  ce:	8a 0d 00 00 00 00    	mov    0x0,%cl
  d4:	83 c4 10             	add    $0x10,%esp
  d7:	31 db                	xor    %ebx,%ebx
  d9:	31 f6                	xor    %esi,%esi
  db:	8d 69 01             	lea    0x1(%ecx),%ebp
  de:	bf ff ff ff 00       	mov    $0xffffff,%edi
  e3:	39 c7                	cmp    %eax,%edi
  e5:	89 f7                	mov    %esi,%edi
  e7:	19 d7                	sbb    %edx,%edi
  e9:	73 12                	jae    fd <timer_setup+0xfd>
  eb:	83 c0 01             	add    $0x1,%eax
  ee:	83 d2 00             	adc    $0x0,%edx
  f1:	0f ac d0 01          	shrd   $0x1,%edx,%eax
  f5:	d1 ea                	shr    %edx
  f7:	89 e9                	mov    %ebp,%ecx
  f9:	b3 01                	mov    $0x1,%bl
  fb:	eb de                	jmp    db <timer_setup+0xdb>
  fd:	84 db                	test   %bl,%bl
  ff:	74 06                	je     107 <timer_setup+0x107>
 101:	88 0d 00 00 00 00    	mov    %cl,0x0
 107:	05 b7 0b 00 00       	add    $0xbb7,%eax
 10c:	b9 b8 0b 00 00       	mov    $0xbb8,%ecx
 111:	31 d2                	xor    %edx,%edx
 113:	f7 f1                	div    %ecx
 115:	a3 00 00 00 00       	mov    %eax,0x0
 11a:	66 c7 05 00 00 00 00 	movw   $0x0,0x0
 121:	00 00 
 123:	0f b6 0d 00 00 00 00 	movzbl 0x0,%ecx
 12a:	d3 e0                	shl    %cl,%eax
 12c:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
 131:	31 d2                	xor    %edx,%edx
 133:	f7 f1                	div    %ecx
 135:	50                   	push   %eax
 136:	68 27 00 00 00       	push   $0x27
 13b:	e8 fc ff ff ff       	call   13c <timer_setup+0x13c>
 140:	58                   	pop    %eax
 141:	5a                   	pop    %edx
 142:	83 c4 1c             	add    $0x1c,%esp
 145:	5b                   	pop    %ebx
 146:	5e                   	pop    %esi
 147:	5f                   	pop    %edi
 148:	5d                   	pop    %ebp
 149:	c3                   	ret    
 14a:	c3                   	ret    

Disassembly of section .text.tsctimer_setfreq:

00000000 <tsctimer_setfreq>:
   0:	66 83 3d 00 00 00 00 	cmpw   $0x40,0x0
   7:	40 
   8:	75 61                	jne    6b <tsctimer_setfreq+0x6b>
   a:	56                   	push   %esi
   b:	53                   	push   %ebx
   c:	a3 00 00 00 00       	mov    %eax,0x0
  11:	c6 05 00 00 00 00 00 	movb   $0x0,0x0
  18:	31 c9                	xor    %ecx,%ecx
  1a:	31 db                	xor    %ebx,%ebx
  1c:	89 ce                	mov    %ecx,%esi
  1e:	41                   	inc    %ecx
  1f:	3d 6f 17 00 00       	cmp    $0x176f,%eax
  24:	76 07                	jbe    2d <tsctimer_setfreq+0x2d>
  26:	40                   	inc    %eax
  27:	d1 e8                	shr    %eax
  29:	b3 01                	mov    $0x1,%bl
  2b:	eb ef                	jmp    1c <tsctimer_setfreq+0x1c>
  2d:	84 db                	test   %bl,%bl
  2f:	74 0d                	je     3e <tsctimer_setfreq+0x3e>
  31:	a3 00 00 00 00       	mov    %eax,0x0
  36:	89 f3                	mov    %esi,%ebx
  38:	88 1d 00 00 00 00    	mov    %bl,0x0
  3e:	66 c7 05 00 00 00 00 	movw   $0x0,0x0
  45:	00 00 
  47:	52                   	push   %edx
  48:	0f b6 0d 00 00 00 00 	movzbl 0x0,%ecx
  4f:	d3 e0                	shl    %cl,%eax
  51:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
  56:	31 d2                	xor    %edx,%edx
  58:	f7 f1                	div    %ecx
  5a:	50                   	push   %eax
  5b:	68 33 00 00 00       	push   $0x33
  60:	e8 fc ff ff ff       	call   61 <tsctimer_setfreq+0x61>
  65:	83 c4 0c             	add    $0xc,%esp
  68:	5b                   	pop    %ebx
  69:	5e                   	pop    %esi
  6a:	c3                   	ret    
  6b:	c3                   	ret    

Disassembly of section .text.pmtimer_setup:

00000000 <pmtimer_setup>:
   0:	66 83 3d 00 00 00 00 	cmpw   $0x40,0x0
   7:	40 
   8:	75 26                	jne    30 <pmtimer_setup+0x30>
   a:	53                   	push   %ebx
   b:	89 c3                	mov    %eax,%ebx
   d:	0f b7 c0             	movzwl %ax,%eax
  10:	50                   	push   %eax
  11:	68 44 00 00 00       	push   $0x44
  16:	e8 fc ff ff ff       	call   17 <pmtimer_setup+0x17>
  1b:	66 89 1d 00 00 00 00 	mov    %bx,0x0
  22:	c7 05 00 00 00 00 fc 	movl   $0xdfc,0x0
  29:	0d 00 00 
  2c:	58                   	pop    %eax
  2d:	5a                   	pop    %edx
  2e:	5b                   	pop    %ebx
  2f:	c3                   	ret    
  30:	c3                   	ret    

Disassembly of section .text.timer_calc:

00000000 <timer_calc>:
   0:	53                   	push   %ebx
   1:	89 c3                	mov    %eax,%ebx
   3:	e8 fc ff ff ff       	call   4 <timer_calc+0x4>
   8:	0f af 1d 00 00 00 00 	imul   0x0,%ebx
   f:	01 d8                	add    %ebx,%eax
  11:	5b                   	pop    %ebx
  12:	c3                   	ret    

Disassembly of section .text.timer_calc_usec:

00000000 <timer_calc_usec>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 c3                	mov    %eax,%ebx
   4:	e8 fc ff ff ff       	call   5 <timer_calc_usec+0x5>
   9:	89 c1                	mov    %eax,%ecx
   b:	8b 35 00 00 00 00    	mov    0x0,%esi
  11:	81 fb 20 a1 07 00    	cmp    $0x7a120,%ebx
  17:	76 14                	jbe    2d <timer_calc_usec+0x2d>
  19:	8d 83 e7 03 00 00    	lea    0x3e7(%ebx),%eax
  1f:	bb e8 03 00 00       	mov    $0x3e8,%ebx
  24:	31 d2                	xor    %edx,%edx
  26:	f7 f3                	div    %ebx
  28:	0f af c6             	imul   %esi,%eax
  2b:	eb 12                	jmp    3f <timer_calc_usec+0x3f>
  2d:	0f af f3             	imul   %ebx,%esi
  30:	8d 86 e7 03 00 00    	lea    0x3e7(%esi),%eax
  36:	bb e8 03 00 00       	mov    $0x3e8,%ebx
  3b:	31 d2                	xor    %edx,%edx
  3d:	f7 f3                	div    %ebx
  3f:	01 c8                	add    %ecx,%eax
  41:	5b                   	pop    %ebx
  42:	5e                   	pop    %esi
  43:	c3                   	ret    

Disassembly of section .text.timer_check:

00000000 <timer_check>:
   0:	53                   	push   %ebx
   1:	89 c3                	mov    %eax,%ebx
   3:	e8 fc ff ff ff       	call   4 <timer_check+0x4>
   8:	29 d8                	sub    %ebx,%eax
   a:	85 c0                	test   %eax,%eax
   c:	0f 9f c0             	setg   %al
   f:	0f b6 c0             	movzbl %al,%eax
  12:	5b                   	pop    %ebx
  13:	c3                   	ret    

Disassembly of section .text.timer_delay:

00000000 <timer_delay>:
   0:	53                   	push   %ebx
   1:	89 c3                	mov    %eax,%ebx
   3:	89 d8                	mov    %ebx,%eax
   5:	e8 fc ff ff ff       	call   6 <timer_delay+0x6>
   a:	85 c0                	test   %eax,%eax
   c:	75 04                	jne    12 <timer_delay+0x12>
   e:	f3 90                	pause  
  10:	eb f1                	jmp    3 <timer_delay+0x3>
  12:	5b                   	pop    %ebx
  13:	c3                   	ret    

Disassembly of section .text.timer_sleep:

00000000 <timer_sleep>:
   0:	53                   	push   %ebx
   1:	89 c3                	mov    %eax,%ebx
   3:	89 d8                	mov    %ebx,%eax
   5:	e8 fc ff ff ff       	call   6 <timer_sleep+0x6>
   a:	85 c0                	test   %eax,%eax
   c:	75 07                	jne    15 <timer_sleep+0x15>
   e:	e8 fc ff ff ff       	call   f <timer_sleep+0xf>
  13:	eb ee                	jmp    3 <timer_sleep+0x3>
  15:	5b                   	pop    %ebx
  16:	c3                   	ret    

Disassembly of section .text.ndelay:

00000000 <ndelay>:
   0:	e8 fc ff ff ff       	call   1 <ndelay+0x1>
   5:	e9 fc ff ff ff       	jmp    6 <ndelay+0x6>

Disassembly of section .text.udelay:

00000000 <udelay>:
   0:	e8 fc ff ff ff       	call   1 <udelay+0x1>
   5:	e9 fc ff ff ff       	jmp    6 <udelay+0x6>

Disassembly of section .text.mdelay:

00000000 <mdelay>:
   0:	e8 fc ff ff ff       	call   1 <mdelay+0x1>
   5:	e9 fc ff ff ff       	jmp    6 <mdelay+0x6>

Disassembly of section .text.nsleep:

00000000 <nsleep>:
   0:	e8 fc ff ff ff       	call   1 <nsleep+0x1>
   5:	e9 fc ff ff ff       	jmp    6 <nsleep+0x6>

Disassembly of section .text.usleep:

00000000 <usleep>:
   0:	e8 fc ff ff ff       	call   1 <usleep+0x1>
   5:	e9 fc ff ff ff       	jmp    6 <usleep+0x6>

Disassembly of section .text.msleep:

00000000 <msleep>:
   0:	e8 fc ff ff ff       	call   1 <msleep+0x1>
   5:	e9 fc ff ff ff       	jmp    6 <msleep+0x6>

Disassembly of section .text.ticks_to_ms:

00000000 <ticks_to_ms>:
   0:	69 c0 00 00 b8 0b    	imul   $0xbb80000,%eax,%eax
   6:	05 98 9e 36 00       	add    $0x369e98,%eax
   b:	b9 99 9e 36 00       	mov    $0x369e99,%ecx
  10:	31 d2                	xor    %edx,%edx
  12:	f7 f1                	div    %ecx
  14:	c3                   	ret    

Disassembly of section .text.ticks_from_ms:

00000000 <ticks_from_ms>:
   0:	ba 99 9e 36 00       	mov    $0x369e99,%edx
   5:	f7 e2                	mul    %edx
   7:	05 ff ff 00 00       	add    $0xffff,%eax
   c:	83 d2 00             	adc    $0x0,%edx
   f:	0f ac d0 10          	shrd   $0x10,%edx,%eax
  13:	c1 ea 10             	shr    $0x10,%edx
  16:	05 b7 0b 00 00       	add    $0xbb7,%eax
  1b:	b9 b8 0b 00 00       	mov    $0xbb8,%ecx
  20:	31 d2                	xor    %edx,%edx
  22:	f7 f1                	div    %ecx
  24:	c3                   	ret    

Disassembly of section .text.pit_setup:

00000000 <pit_setup>:
   0:	b0 34                	mov    $0x34,%al
   2:	e6 43                	out    %al,$0x43
   4:	31 c0                	xor    %eax,%eax
   6:	e6 40                	out    %al,$0x40
   8:	e6 40                	out    %al,$0x40
   a:	c3                   	ret    
