.code64
.file "loop.s"

.section .data

HELLO:
    .string "hello world\n"
.equ LENGTH, . - HELLO

.section .text
.global _start

_start:
    mov $5, %rcx

increment:
    push %rcx
    mov $1, %rdi 
    mov $HELLO, %rsi
    mov $LENGTH, %rdx
    mov $1, %rax
    syscall
    pop %rcx 

    loop increment

    mov $60, %rax
    mov $0, %rdi
    syscall
