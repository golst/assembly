.code64
.file "hello.s"

.section .data
HELLO:
    .string "hello world\n"
    .equ LENGTH, . - HELLO
le:
    .int . - HELLO
one:
    .int 1
.global _start

.section .text

_start:
    mov $1, %rax
    mov $1, %rdi
    mov $HELLO, %rsi
    mov $LENGTH, %rdx
    syscall
    mov $60, %rax
    mov one(,1), %rdi
    syscall
