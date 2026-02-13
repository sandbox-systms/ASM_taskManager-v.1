; ==================================
; Syscalls.asm
; ==================================

global sys_write
global sys_open
global sys_getdents64
global sys_exit

section .text

sys_write:
    mov rax, sys_write
    syscall 
    ret

sys_open:
    mov rax, sys_open
    syscall 
    ret

sys_getdents64:
    mov rax, sys_getdents64
    syscall 
    ret

sys_exit:
    mov rax, sys_exit
    syscall 