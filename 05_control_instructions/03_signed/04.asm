; JLE / JNG → Jump if Less or Equal
section .data
    msg_le db "Hello, this is Sylvia Wambati, student number 159819",10
    len_equal equ $ - msg_le
    msg_greater db "AX > BX (Greater)",10

section .text
    global _start
_start:
    mov ax,5
    mov bx,5
    cmp ax,bx
    jle le_label

    mov ecx, msg_le
    jmp print

le_label:
    mov ecx, msg_le

print:
    mov eax,4
    mov ebx,1
    mov edx, len_equal
    int 0x80

    mov eax,1
    xor ebx,ebx
    int 0x80
