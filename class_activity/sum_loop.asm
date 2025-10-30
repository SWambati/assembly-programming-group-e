#Write a Assembly assembly program that adds numbers from 15 to 25 using a loop.

.section .data
    msg:    .asciz "The sum from 15 to 25 is: %d\n"

.section .text
    .global main
    .extern printf

main:
    pushq %rbp              
    movq %rsp, %rbp

    movl $15, %ecx          # counter = 15
    movl $0, %eax           # sum = 0

loop_start:
    addl %ecx, %eax         # sum += counter
    incl %ecx               # counter++
    cmpl $26, %ecx          # compare counter with 26
    jl loop_start           # if counter < 26, repeat loop

    # print result using printf
    movl %eax, %esi         # move sum into 2nd argument register
    leaq msg(%rip), %rdi    # move address of msg into 1st argument register
    movl $0, %eax           # 0 floating-point args for printf
    call printf

    # exit
    movl $0, %eax
    leave
    ret
.section .note.GNU-stack,"",@progbits
