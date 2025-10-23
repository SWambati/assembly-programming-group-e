; JAE / JNB → Jump if Above or Equal

section .data
    str_ae db "Hello, this is Sylvia Wambati, Student Number: 159819",10
    len_equal equ $ - str_ae
    str_below db "AX < BX (Below)",10

section .text
    global _start
_start:
    mov ax,5
    mov bx,5
    cmp ax,bx
    jae above_equal

    mov ecx, str_ae
    jmp print

above_equal:
    mov ecx, str_ae

print:
    mov eax,4
    mov ebx,1
    mov edx,len_equal
    int 0x80

    mov eax,1
    xor ebx,ebx
    int 0x80
