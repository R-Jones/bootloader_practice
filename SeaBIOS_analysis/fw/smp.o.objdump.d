
./smp.o:     file format elf32-i386


Disassembly of section .text.smp_write_msrs:

00000000 <smp_write_msrs>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	53                   	push   %ebx
   3:	bb 00 00 00 00       	mov    $0x0,%ebx
   8:	8b 3d 00 00 00 00    	mov    0x0,%edi
   e:	31 f6                	xor    %esi,%esi
  10:	39 fe                	cmp    %edi,%esi
  12:	74 10                	je     24 <smp_write_msrs+0x24>
  14:	8b 0b                	mov    (%ebx),%ecx
  16:	8b 43 04             	mov    0x4(%ebx),%eax
  19:	8b 53 08             	mov    0x8(%ebx),%edx
  1c:	0f 30                	wrmsr  
  1e:	46                   	inc    %esi
  1f:	83 c3 0c             	add    $0xc,%ebx
  22:	eb ec                	jmp    10 <smp_write_msrs+0x10>
  24:	5b                   	pop    %ebx
  25:	5e                   	pop    %esi
  26:	5f                   	pop    %edi
  27:	c3                   	ret    

Disassembly of section .text.apic_id_init:

00000000 <apic_id_init>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	83 ec 10             	sub    $0x10,%esp
   5:	8d 44 24 0c          	lea    0xc(%esp),%eax
   9:	50                   	push   %eax
   a:	8d 44 24 0c          	lea    0xc(%esp),%eax
   e:	50                   	push   %eax
   f:	8d 4c 24 0c          	lea    0xc(%esp),%ecx
  13:	8d 54 24 08          	lea    0x8(%esp),%edx
  17:	b8 01 00 00 00       	mov    $0x1,%eax
  1c:	e8 fc ff ff ff       	call   1d <apic_id_init+0x1d>
  21:	58                   	pop    %eax
  22:	5a                   	pop    %edx
  23:	81 3d 00 00 00 00 ff 	cmpl   $0xff,0x0
  2a:	00 00 00 
  2d:	77 1e                	ja     4d <apic_id_init+0x4d>
  2f:	8b 54 24 04          	mov    0x4(%esp),%edx
  33:	89 d0                	mov    %edx,%eax
  35:	c1 e8 18             	shr    $0x18,%eax
  38:	c1 ea 1d             	shr    $0x1d,%edx
  3b:	bb 01 00 00 00       	mov    $0x1,%ebx
  40:	88 c1                	mov    %al,%cl
  42:	d3 e3                	shl    %cl,%ebx
  44:	09 1c 95 00 00 00 00 	or     %ebx,0x0(,%edx,4)
  4b:	eb 24                	jmp    71 <apic_id_init+0x71>
  4d:	83 c8 ff             	or     $0xffffffff,%eax
  50:	f6 44 24 0a 20       	testb  $0x20,0xa(%esp)
  55:	74 1a                	je     71 <apic_id_init+0x71>
  57:	b9 1b 00 00 00       	mov    $0x1b,%ecx
  5c:	0f 32                	rdmsr  
  5e:	89 c6                	mov    %eax,%esi
  60:	81 ce 00 04 00 00    	or     $0x400,%esi
  66:	89 f0                	mov    %esi,%eax
  68:	0f 30                	wrmsr  
  6a:	b9 02 08 00 00       	mov    $0x802,%ecx
  6f:	0f 32                	rdmsr  
  71:	83 c4 10             	add    $0x10,%esp
  74:	5b                   	pop    %ebx
  75:	5e                   	pop    %esi
  76:	c3                   	ret    

Disassembly of section .text.smp_scan:

00000000 <smp_scan>:
   0:	57                   	push   %edi
   1:	56                   	push   %esi
   2:	83 ec 10             	sub    $0x10,%esp
   5:	8d 44 24 0c          	lea    0xc(%esp),%eax
   9:	50                   	push   %eax
   a:	8d 44 24 0c          	lea    0xc(%esp),%eax
   e:	50                   	push   %eax
   f:	8d 4c 24 0c          	lea    0xc(%esp),%ecx
  13:	8d 54 24 08          	lea    0x8(%esp),%edx
  17:	b8 01 00 00 00       	mov    $0x1,%eax
  1c:	e8 fc ff ff ff       	call   1d <smp_scan+0x1d>
  21:	5a                   	pop    %edx
  22:	59                   	pop    %ecx
  23:	83 3c 24 00          	cmpl   $0x0,(%esp)
  27:	74 07                	je     30 <smp_scan+0x30>
  29:	f6 44 24 0d 02       	testb  $0x2,0xd(%esp)
  2e:	75 1a                	jne    4a <smp_scan+0x4a>
  30:	68 00 00 00 00       	push   $0x0
  35:	e8 fc ff ff ff       	call   36 <smp_scan+0x36>
  3a:	c7 05 00 00 00 00 01 	movl   $0x1,0x0
  41:	00 00 00 
  44:	58                   	pop    %eax
  45:	e9 cc 00 00 00       	jmp    116 <smp_scan+0x116>
  4a:	c7 05 00 00 00 00 01 	movl   $0x1,0x0
  51:	00 00 00 
  54:	8b 35 00 00 01 00    	mov    0x10000,%esi
  5a:	8b 3d 04 00 01 00    	mov    0x10004,%edi
  60:	b8 00 00 f1 ff       	mov    $0xfff10000,%eax
  65:	c1 e0 08             	shl    $0x8,%eax
  68:	0c ea                	or     $0xea,%al
  6a:	a3 00 00 01 00       	mov    %eax,0x10000
  6f:	c7 05 04 00 01 00 f0 	movl   $0xf0,0x10004
  76:	00 00 00 
  79:	a1 f0 00 e0 fe       	mov    0xfee000f0,%eax
  7e:	80 cc 01             	or     $0x1,%ah
  81:	a3 f0 00 e0 fe       	mov    %eax,0xfee000f0
  86:	c7 05 50 03 e0 fe 00 	movl   $0x8700,0xfee00350
  8d:	87 00 00 
  90:	c7 05 60 03 e0 fe 00 	movl   $0x8400,0xfee00360
  97:	84 00 00 
  9a:	c7 05 00 00 00 00 01 	movl   $0x1,0x0
  a1:	00 00 00 
  a4:	c7 05 00 03 e0 fe 00 	movl   $0xc4500,0xfee00300
  ab:	45 0c 00 
  ae:	c7 05 00 03 e0 fe 10 	movl   $0xc4610,0xfee00300
  b5:	46 0c 00 
  b8:	e8 fc ff ff ff       	call   b9 <smp_scan+0xb9>
  bd:	e8 fc ff ff ff       	call   be <smp_scan+0xbe>
  c2:	0f b7 c0             	movzwl %ax,%eax
  c5:	3b 05 00 00 00 00    	cmp    0x0,%eax
  cb:	74 1f                	je     ec <smp_scan+0xec>
  cd:	89 25 00 00 00 00    	mov    %esp,0x0
  d3:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
  da:	00 00 00 
  dd:	f3 90                	pause  
  df:	f0 0f ba 2d 00 00 00 	lock btsl $0x0,0x0
  e6:	00 00 
  e8:	72 f3                	jb     dd <smp_scan+0xdd>
  ea:	eb d9                	jmp    c5 <smp_scan+0xc5>
  ec:	e8 fc ff ff ff       	call   ed <smp_scan+0xed>
  f1:	89 35 00 00 01 00    	mov    %esi,0x10000
  f7:	89 3d 04 00 01 00    	mov    %edi,0x10004
  fd:	ff 35 00 00 00 00    	push   0x0
 103:	ff 35 00 00 00 00    	push   0x0
 109:	68 29 00 00 00       	push   $0x29
 10e:	e8 fc ff ff ff       	call   10f <smp_scan+0x10f>
 113:	83 c4 0c             	add    $0xc,%esp
 116:	83 c4 10             	add    $0x10,%esp
 119:	5e                   	pop    %esi
 11a:	5f                   	pop    %edi
 11b:	c3                   	ret    

Disassembly of section .text.wrmsr_smp:

00000000 <wrmsr_smp>:
   0:	56                   	push   %esi
   1:	53                   	push   %ebx
   2:	89 c6                	mov    %eax,%esi
   4:	89 d0                	mov    %edx,%eax
   6:	89 ca                	mov    %ecx,%edx
   8:	89 f1                	mov    %esi,%ecx
   a:	0f 30                	wrmsr  
   c:	8b 1d 00 00 00 00    	mov    0x0,%ebx
  12:	83 fb 1f             	cmp    $0x1f,%ebx
  15:	76 11                	jbe    28 <wrmsr_smp+0x28>
  17:	ba 00 00 00 00       	mov    $0x0,%edx
  1c:	b8 23 00 00 00       	mov    $0x23,%eax
  21:	5b                   	pop    %ebx
  22:	5e                   	pop    %esi
  23:	e9 fc ff ff ff       	jmp    24 <wrmsr_smp+0x24>
  28:	6b cb 0c             	imul   $0xc,%ebx,%ecx
  2b:	89 b1 00 00 00 00    	mov    %esi,0x0(%ecx)
  31:	89 81 04 00 00 00    	mov    %eax,0x4(%ecx)
  37:	89 91 08 00 00 00    	mov    %edx,0x8(%ecx)
  3d:	43                   	inc    %ebx
  3e:	89 1d 00 00 00 00    	mov    %ebx,0x0
  44:	5b                   	pop    %ebx
  45:	5e                   	pop    %esi
  46:	c3                   	ret    

Disassembly of section .text.apic_id_is_present:

00000000 <apic_id_is_present>:
   0:	89 c1                	mov    %eax,%ecx
   2:	c0 e8 05             	shr    $0x5,%al
   5:	0f b6 c0             	movzbl %al,%eax
   8:	8b 04 85 00 00 00 00 	mov    0x0(,%eax,4),%eax
   f:	d3 e8                	shr    %cl,%eax
  11:	83 e0 01             	and    $0x1,%eax
  14:	c3                   	ret    

Disassembly of section .text.runtime.src/fw/smp.c.83:

00000000 <handle_smp>:
   0:	e8 fc ff ff ff       	call   1 <handle_smp+0x1>
   5:	50                   	push   %eax
   6:	68 52 00 00 00       	push   $0x52
   b:	e8 fc ff ff ff       	call   c <handle_smp+0xc>
  10:	e8 fc ff ff ff       	call   11 <handle_smp+0x11>
  15:	ff 05 00 00 00 00    	incl   0x0
  1b:	58                   	pop    %eax
  1c:	5a                   	pop    %edx
  1d:	c3                   	ret    

Disassembly of section .text.smp_setup:

00000000 <smp_setup>:
   0:	31 d2                	xor    %edx,%edx
   2:	31 c9                	xor    %ecx,%ecx
   4:	b8 6c 00 00 00       	mov    $0x6c,%eax
   9:	e8 fc ff ff ff       	call   a <smp_setup+0xa>
   e:	a3 00 00 00 00       	mov    %eax,0x0
  13:	e8 fc ff ff ff       	call   14 <smp_setup+0x14>
  18:	0f b7 c0             	movzwl %ax,%eax
  1b:	3b 05 00 00 00 00    	cmp    0x0,%eax
  21:	76 05                	jbe    28 <smp_setup+0x28>
  23:	a3 00 00 00 00       	mov    %eax,0x0
  28:	e9 fc ff ff ff       	jmp    29 <smp_setup+0x29>

Disassembly of section .text.smp_resume:

00000000 <smp_resume>:
   0:	e8 fc ff ff ff       	call   1 <smp_resume+0x1>
   5:	e9 fc ff ff ff       	jmp    6 <smp_resume+0x6>
