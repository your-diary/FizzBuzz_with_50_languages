; This is a comment.

;Since implementing the FizzBuzz game with Assembly is a bit complicated, this code just implements Hello World.

bits 64
global _start

;Program codes are written in this section.
section .text
_start:

    ;Calls `sys_write` system call.
    mov rax, 1      ;specifies the system call
    mov rdi, 1      ;specifies the input to the system call
    mov rsi, str    ;stores the data `str` to the register `rsi`
    mov rdx, length ;ditto
    syscall         ;finally calls the system call

    ;Calls `sys_exit` system call.
    mov rax, 60
    mov rdi, 0
    syscall

;Data is put in this section.
section .data
    str: db "Hello, World!", 10 ;defines a string whose length is `10`
    length equ $ - str          ;???

