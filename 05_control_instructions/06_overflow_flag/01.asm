; JO → Jump if Overflow
section .data
    msg_ov db "Hello. This is Sylvia Wambati, student number 159819",10
    len_equal equ $ - msg_ov
    msg_noov db "No overflow (OF=0)",10

section .text
    global _start
_start:
    mov ax,7FFFh
    add ax,1       ; causes signed overflow
    jo overflow

    mov ecx, msg_ov
    jmp print

overflow:
    mov ecx, msg_ov

print:
    mov eax,4
    mov ebx,1
    mov edx,len_equal
    int 0x80

    mov eax,1
    xor ebx,ebx
    int 0x80
