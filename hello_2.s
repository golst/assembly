.code64
.file "hello_2.s"

.section .text
.global _start

_start:
    jmp string

code:
    pop %rsi
    mov $1, %al
    xor %rdi, %rdi
    add $1, %rdi 
    mov $12, %rdx
    syscall

    mov $60, %rax
    mov $0, %rdi
    syscall 
string:
    call code
    .ascii "hello world\n"
