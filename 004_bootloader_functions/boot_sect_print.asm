print:
    pusha ;pushes current registers to the stack so we don't overwrite the current register state for the code that invoked this routine

; while (string[i] != 0) { print string[i]; i++ }

; the comparison for string end (null byte)
start:
    mov al, [bx] ; 'bx' is the base address for the string
    cmp al, 0
    je done

    ; the part where we print with the BIOS help
    mov ah, 0x0e ; tty mode
    int 0x10 ; 'al' already contains the char

    ; increment pointer and do next loop
    add bx, 1
    jmp start

done:
    popa ; pops register values back from stack, restoring cpu state
    ret


print_nl:
    pusha
    
    mov ah, 0x0e ; tty mode
    mov al, 0x0a ; newline char
    int 0x10
    mov al, 0x0d
    int 0x10

    popa
    ret
