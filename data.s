#.code64
.file "data.s"

.section .data

onebyte:
    .byte 0xff
twobyte:
    .short 0xffff
fourbyte:
    .4byte 0x10000000
dqbyte:
    .8byte 0x1234567891234567
.section .text

.global _start

_start:
    push $1
    mov $0x1111111111111111, %rax
    mov $0x1111111111111111, %rbx
    mov $0x1111111111111111, %rcx
    mov $0x1111111111111111, %rdx
    movb onebyte(,1), %al
    movw twobyte(,1), %bx
  /*  push %rcx
    mov %rsp, %rdi
    mov fourbyte(,1), %rsi
    movl %esi,(%rdi)
    pop %rcx
    */
    movl fourbyte(,1), %ecx
    movq dqbyte(,1), %rdx
    

    mov $60, %rax
    mov $0, %rdi
    syscall
