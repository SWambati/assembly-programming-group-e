; JP / JPE → Jump if Parity Even
section .data
    msg_even db "Hello, this is Sylvia Wambati, student number 159819",10
    len_equal equ $ - msg_even
    msg_odd db "Parity Odd (PF=0)",10

section .text
    global _start
_start:
    mov al,3       ; 00000011b → two 1s → even parity
    test al,al
    jp even

    mov ecx, msg_even
    jmp print

even:
    mov ecx, msg_even

print:
    mov eax,4
    mov ebx,1
    mov edx,len_equal
    int 0x80

    mov eax,1
    xor ebx,ebx
    int 0x80
