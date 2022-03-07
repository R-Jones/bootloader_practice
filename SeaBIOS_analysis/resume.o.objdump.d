
./resume.o:     file format elf32-i386


Disassembly of section .text.handle_resume:

00000000 <handle_resume>:
   0:	e8 fc ff ff ff       	call   1 <handle_resume+0x1>

Disassembly of section .text.runtime.src/resume.c.146:

00000000 <handle_resume32>:
   0:	53                   	push   %ebx
   1:	83 ec 28             	sub    $0x28,%esp
   4:	89 c3                	mov    %eax,%ebx
   6:	68 00 00 00 00       	push   $0x0
   b:	e8 fc ff ff ff       	call   c <handle_resume32+0xc>
  10:	58                   	pop    %eax
  11:	81 fb fe 00 00 00    	cmp    $0xfe,%ebx
  17:	75 78                	jne    91 <handle_resume32+0x91>
  19:	e8 fc ff ff ff       	call   1a <handle_resume32+0x1a>
  1e:	89 c3                	mov    %eax,%ebx
  20:	85 c0                	test   %eax,%eax
  22:	75 0d                	jne    31 <handle_resume32+0x31>
  24:	68 11 00 00 00       	push   $0x11
  29:	e8 fc ff ff ff       	call   2a <handle_resume32+0x2a>
  2e:	59                   	pop    %ecx
  2f:	eb 60                	jmp    91 <handle_resume32+0x91>
  31:	e8 fc ff ff ff       	call   32 <handle_resume32+0x32>
  36:	e8 fc ff ff ff       	call   37 <handle_resume32+0x37>
  3b:	e8 fc ff ff ff       	call   3c <handle_resume32+0x3c>
  40:	e8 fc ff ff ff       	call   41 <handle_resume32+0x41>
  45:	e8 fc ff ff ff       	call   46 <handle_resume32+0x46>
  4a:	e8 fc ff ff ff       	call   4b <handle_resume32+0x4b>
  4f:	e8 fc ff ff ff       	call   50 <handle_resume32+0x50>
  54:	e8 fc ff ff ff       	call   55 <handle_resume32+0x55>
  59:	b9 26 00 00 00       	mov    $0x26,%ecx
  5e:	31 d2                	xor    %edx,%edx
  60:	8d 44 24 02          	lea    0x2(%esp),%eax
  64:	e8 fc ff ff ff       	call   65 <handle_resume32+0x65>
  69:	53                   	push   %ebx
  6a:	68 28 00 00 00       	push   $0x28
  6f:	e8 fc ff ff ff       	call   70 <handle_resume32+0x70>
  74:	89 d8                	mov    %ebx,%eax
  76:	83 e0 0f             	and    $0xf,%eax
  79:	66 89 44 24 2a       	mov    %ax,0x2a(%esp)
  7e:	c1 eb 04             	shr    $0x4,%ebx
  81:	66 89 5c 24 2c       	mov    %bx,0x2c(%esp)
  86:	8d 44 24 0a          	lea    0xa(%esp),%eax
  8a:	e8 fc ff ff ff       	call   8b <handle_resume32+0x8b>
  8f:	58                   	pop    %eax
  90:	5a                   	pop    %edx
  91:	68 44 00 00 00       	push   $0x44
  96:	e8 fc ff ff ff       	call   97 <handle_resume32+0x97>
  9b:	e8 fc ff ff ff       	call   9c <handle_resume32+0x9c>
  a0:	e8 fc ff ff ff       	call   a1 <handle_resume32+0xa1>
  a5:	e8 fc ff ff ff       	call   a6 <handle_resume32+0xa6>
  aa:	e8 fc ff ff ff       	call   ab <handle_resume32+0xab>
  af:	cc                   	int3   
  b0:	68 5e 00 00 00       	push   $0x5e
  b5:	e8 fc ff ff ff       	call   b6 <handle_resume32+0xb6>
