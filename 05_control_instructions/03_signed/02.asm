; JGE / JNL → Jump if Greater or Equal
section .data
    msg_ge db "Hello. This is Sylvia Wambati, student number: 159819",10
    len_equal equ $ - msg_ge
    msg_less db "AX < BX (Signed Less)",10

section .text
    global _start
_start:
    mov ax,5
    mov bx,5
    cmp ax,bx
    jge ge_label

    mov ecx, msg_ge
    jmp print

ge_label:
    mov ecx, msg_ge

print:
    mov eax,4
    mov ebx,1
    mov edx,len_equal
    int 0x80

    mov eax,1
    xor ebx,ebx
    int 0x80
