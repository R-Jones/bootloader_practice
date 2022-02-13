mov ah, 0x0e ;tty mode?

; Below, we set up a label("foo") after which we put ASCII code 0x58(an 'X')
; Now, we want to experiment with various ways of trying to reference it.
mov al, "A" ;attempt 1
int 0x10
mov al, foo
int 0x10

mov al, "B" ;attempt 2
int 0x10
mov al, [foo] ;This dereferences foo, but we'll need to have a look at the machine code to really appreciate what that means.
int 0x10

mov al, "C" ;attempt 3
int 0x10
mov bx, foo ; So, spoilers, foo should be "2d" for the reason below, with the assembler knowing to build that value according to the position of the foo: label in the script. 
add bx, 0x7c00 ; 0x7c00 is the location in main memory where the BIOS loads our bootloader.
mov al, [bx+1] ; Thus, if we instruct the cpu to grab the value in 0x7c00 + 2d, it should end up getting our "X"
int 0x10

mov al, "D" ;attempt 4
int 0x10
mov al, [0x7c2d] ;2d = 2 * 16 + 13 = 45 bytes offset from 0x7c00. That should be the total length of all of the instructions in this program up to foo:. 
int 0x10

jmp $ ; infinite loop

foo:
    db "X" ;defining an "X"(ASCII code 0x58) at this point in the file. "foo" then becomes a reference to this point.
    db "Y" ;defining an "X"(ASCII code 0x58) at this point in the file. "foo" then becomes a reference to this point.

times 510-($-$$) db 0 ;times is nasm specific. It causes the instruction to be assembled multiple times. This is filling out the necessary 512 bootloader bytes.
dw 0xaa55 ;Bootloader magic number
