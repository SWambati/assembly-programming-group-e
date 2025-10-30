#Write another Assembly program that adds numbers from 25 down to 15 using a  decrementing loop (dec). 


.section .data
    msg:    .asciz "The sum from 25 down to 15 is: %d\n"

.section .text
    .global main
    .extern printf

main:
    pushq %rbp
    movq %rsp, %rbp

    movl $25, %ecx          # counter = 25
    movl $0, %eax           # sum = 0

loop_start:
    addl %ecx, %eax         # sum += counter
    decl %ecx               # counter--
    cmpl $14, %ecx          # compare counter with 14
    jg loop_start           # if counter > 14, loop again

    movl %eax, %esi         # 2nd arg: sum
    leaq msg(%rip), %rdi    # 1st arg: message string
    movl $0, %eax           # no floating-point args
    call printf

    movl $0, %eax           # return 0
    leave
    ret

# Mark stack as non-executable to silence linker warning
.section .note.GNU-stack,"",@progbits
