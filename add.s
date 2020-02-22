.code64
.file "add.s"

.section .text

.global _start

addition:
    add %bl,%al
    ret

_start:
    mov $0b00000001, %al 
    mov $0x2, %bl 
    call addition 

    mov $0x4, %r8
    mov $0x5, %r9
    call addition 

    mov $60,%rax
    mov $0,%rdi
    syscall

