; JNS → Jump if Not Sign

section .data
    msg_neg db "Hello. This is Sylvia Wambati, student number 159819",10
    len_equal equ $ - msg_neg
    msg_nonneg db "Non-Negative (SF=0)",10

section .text
    global _start
_start:
    mov ax,5
    test ax,ax
    jns nonneg

    mov ecx, msg_neg
    jmp print

nonneg:
    mov ecx, msg_neg

print:
    mov eax,4
    mov ebx,1
    mov edx,len_equal
    int 0x80

    mov eax,1
    xor ebx,ebx
    int 0x80
