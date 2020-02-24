.code64
.file "execve.s"

.section .text
.global _start

_start:
    xor %rax,%rax
    push %rax
    mov %rsp,%rdx
    mov $0x68732f6e69622f, %rbx
    push %rbx
    mov %rsp,%rdi
    push %rax
    push %rdi
    mov %rsp, %rsi
    add $59,%rax
    syscall
    
