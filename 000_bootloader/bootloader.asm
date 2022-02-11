[bits 16]
mov ah, 0x0e ; tty mode
mov al, 'H'
int 0x10
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
int 0x10 ; 'l' is still on al, remember?
mov al, 'o'
int 0x10
mov al, '!'
int 0x10

jmp $ ; jump to current address = infinite loop

; padding and magic number
times 510-($-$$) db 0 ;times is nasm specific. It causes the instruction to be assembled multiple times. This is filling out the necessary 512 bootloader bytes.
dw 0xaa55 ;Bootloader magic number
