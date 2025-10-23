; JB / JNAE → Jump if Below

section .data
    str_below     db "Hello, this is Sylvia Wambati, student number: 159819",10
    len_equal equ $ - str_below
    str_not_below db "AX >= BX (Not Below)",10

section .text
    global _start
_start:
    mov ax,2
    mov bx,5
    cmp ax,bx
    jb below

    mov ecx, str_below
    jmp print

below:
    mov ecx, str_below

print:
    mov eax,4
    mov ebx,1
    mov edx,len_equal
    int 0x80

    mov eax,1
    xor ebx,ebx
    int 0x80
