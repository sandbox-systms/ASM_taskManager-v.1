; ==================================
; main.asm
; ==================================

global _start

extern list_processes          ; declaração da função para listar os processos     
extern sys_exit                ; declaração do código de saída do sistema 

section .text

_start:

    call list_processes         ; chama a função para listar os processos

    mov rax, sys_exit           ; código de saída do sistema
    xor rdi, rdi                ; código de saída 0    
    syscall                     ; chamada do sistema para sair