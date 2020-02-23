.code64
.file "hello_stack.s"

.section .text
.global _start

_start:
    xor %rax,%rax
    mov $1, %al
    xor %rdi,%rdi
    add $1, %rdi
    push $0x0a646c72
    mov $0x6f77206f6c6c6568, %rbx
    push %rbx
    mov %rsp, %rsi
    xor %rdx, %rdx
    add $12, %rdx
    syscall 
    mov $60,%rax
    mov $0, %rdi
    syscall
