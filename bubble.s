    .code64
    .file "bubble.s"
    .section .rodata
PTEXT:
    .string "%d\n"
EXAMPLET:
    .string "hello world\n"
    .text
    .global main
    .type main, @function 
main:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    lea EXAMPLET(%rip), %rdi
    mov $0, %rax
    call printf
    add $4, %rsp  
    push %rax 
    call exit



