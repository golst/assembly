.code64
.file "hello.s"

.section .data

.section .text
.global _start

_start:
    jmp code 
 HELLO:
    .ascii "hello world\n"
 code:
    mov $1, %al
    xor %rdi, %rdi 
    add $1, %rdi
    lea HELLO(%rip), %rsi
    xor %rdx,%rdx
    add $12, %rdx
    syscall
    xor %rax,%rax
    add $60,%rax
    xor %rdi,%rdi
    add $1, %rdi
    syscall
