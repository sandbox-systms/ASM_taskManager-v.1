; ==================================
; main.asm
; ==================================

global _start

extern list_processes          ; declaração da função para listar os processos     
extern sys_exit                ; declaração do código de saída do sistema 

section .text

_start:

    call list_processes         ; chama a função para listar os processos

    xor rdi, rdi                ; código de saída 0    
    call sys_exit               ; chama a função de saída do sistema