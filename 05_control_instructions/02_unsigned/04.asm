; JBE / JNA → Jump if Below or Equal

section .data
    str_be db "Hello, this is Sylvia Wambati, Student Number: 159819",10
    len_equal equ $ - str_be
    str_above db "AX > BX (Above)",10

section .text
    global _start
_start:
    mov ax,5
    mov bx,5
    cmp ax,bx
    jbe below_equal

    mov ecx, str_be
    jmp print

below_equal:
    mov ecx, str_be

print:
    mov eax,4
    mov ebx,1
    mov edx,len_equal
    int 0x80

    mov eax,1
    xor ebx,ebx
    int 0x80
