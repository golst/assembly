    .file "bubble32.s"
    .section .rodata
HELLO:
    .string "hello world\n"
    .text
    .global main
    .type main,@function
main:
    push %esp
    mov %esp,%ebp
    sub $32,%esp
    mov $HELLO, %eax 
    push %eax
    call printf
    add $4,%esp
    push %eax 
    call exit
