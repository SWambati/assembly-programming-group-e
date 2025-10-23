; JG / JNLE → Jump if Greater
section .data
    msg_greater db "Hello. This is Sylvia Wambati, Student Number 159819",10
    len_equal equ $ - msg_greater
    msg_not_greater db "AX <= BX (Not Greater)",10,

section .text
    global _start
_start:
    mov ax,7
    mov bx,3
    cmp ax,bx
    jg greater

    mov ecx, msg_greater
    jmp print

greater:
    mov ecx, msg_greater

print:
    mov eax,4
    mov ebx,1
    mov edx,len_equal
    int 0x80

    mov eax,1
    xor ebx,ebx
    int 0x80
