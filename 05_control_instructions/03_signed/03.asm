; JL / JNGE → Jump if Less
section .data
    msg_less db "Hello. This is Sylvia Wambati, student number 159819",10
    len_equal equ $ - msg_less
    msg_not_less db "AX >= BX (Not Less)",10

section .text
    global _start
_start:
    mov ax,2
    mov bx,5
    cmp ax,bx
    jl less

    mov ecx, msg_less
    jmp print

less:
    mov ecx, msg_less

print:
    mov eax,4
    mov ebx,1
    mov edx,len_equal
    int 0x80

    mov eax,1
    xor ebx,ebx
    int 0x80
