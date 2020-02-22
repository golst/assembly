.code64
.file "stack.s"
.section .text
.global _start

_start:
    mov $0x1234, %rdx
    push %rdx
    push $0x5678
    pop %rdi
    pop %rsi

    mov $60, %rax
    mov $0, %rdi
    syscall
.section .data
