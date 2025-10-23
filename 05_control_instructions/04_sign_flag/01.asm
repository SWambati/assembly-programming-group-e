; JS → Jump if Sign
section .data
    msg_neg db "Hello. This is Sylvia Wambati, student number 159819",10
    len_equal equ $ - msg_neg
    msg_pos db "Number is Positive (SF=0)",10

section .text
    global _start
_start:
    mov ax,-5
    test ax,ax
    js negative

    mov ecx, msg_neg
    jmp print

negative:
    mov ecx, msg_neg

print:
    mov eax,4
    mov ebx,1
    mov edx,len_equal
    int 0x80

    mov eax,1
    xor ebx,ebx
    int 0x80
