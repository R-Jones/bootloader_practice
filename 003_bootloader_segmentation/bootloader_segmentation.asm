mov ah, 0x0e ;tty

mov al, 'A'
int 0x10
mov al, [foo]
int 0x10 ; already saw this doesn't work

mov bx, 0x7c0 ; remember, the segment is automatically <<4 ?
mov ds, bx
; WARNING: from now on all memory references will be offset by 'ds' implicitly

mov al, 'B'
int 0x10
mov al, [foo]
int 0x10

mov al, 'C'
int 0x10
mov al, [es:foo]
int 0x10 ; doesn't look right... isn't 'es' currently 0x000?

mov al, 'D'
int 0x10
mov bx, 0x7c0
mov es, bx
mov al, [es:foo]
int 0x10
mov al, 'E'
int 0x10

jmp $

foo:
    db "^"

times 510 - ($-$$) db 0
dw 0xaa55
