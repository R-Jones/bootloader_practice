
./x86.o:     file format elf32-i386


Disassembly of section .text.cpuid:

00000000 <cpuid>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	89 d7                	mov    %edx,%edi
   6:	89 ce                	mov    %ecx,%esi
   8:	8b 6c 24 14          	mov    0x14(%esp),%ebp
   c:	9c                   	pushf  
   d:	59                   	pop    %ecx
   e:	89 ca                	mov    %ecx,%edx
  10:	81 f2 00 00 20 00    	xor    $0x200000,%edx
  16:	52                   	push   %edx
  17:	9d                   	popf   
  18:	9c                   	pushf  
  19:	5a                   	pop    %edx
  1a:	51                   	push   %ecx
  1b:	9d                   	popf   
  1c:	31 ca                	xor    %ecx,%edx
  1e:	0f ba e2 15          	bt     $0x15,%edx
  22:	72 1f                	jb     43 <cpuid+0x43>
  24:	8b 44 24 18          	mov    0x18(%esp),%eax
  28:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  2e:	c7 45 00 00 00 00 00 	movl   $0x0,0x0(%ebp)
  35:	c7 06 00 00 00 00    	movl   $0x0,(%esi)
  3b:	c7 07 00 00 00 00    	movl   $0x0,(%edi)
  41:	eb 0f                	jmp    52 <cpuid+0x52>
  43:	0f a2                	cpuid  
  45:	89 07                	mov    %eax,(%edi)
  47:	89 1e                	mov    %ebx,(%esi)
  49:	89 4d 00             	mov    %ecx,0x0(%ebp)
  4c:	8b 44 24 18          	mov    0x18(%esp),%eax
  50:	89 10                	mov    %edx,(%eax)
  52:	5b                   	pop    %ebx
  53:	5e                   	pop    %esi
  54:	5f                   	pop    %edi
  55:	5d                   	pop    %ebp
  56:	c3                   	ret    
