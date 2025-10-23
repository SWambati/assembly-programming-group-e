; JNC → Jump if No Carry
section .data
    msg_carry db "Hello. This is Sylvia Wambati, student number 159819",10
    len_equal equ $ - msg_carry
    msg_nocarry db "No carry (CF=0)",10

section .text
    global _start
_start:
    mov ax,5
    add ax,2       ; no carry
    jnc nocarry

    mov ecx, msg_carry
    jmp print

nocarry:
    mov ecx, msg_carry

print:
    mov eax,4
    mov ebx,1
    mov edx,len_equal
    int 0x80

    mov eax,1
    xor ebx,ebx
    int 0x80
