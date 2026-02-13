; ==================================
; utils.asm
; ==================================

global print_string
global ls_numeric

extern sys_write
%include "headers.inc"

section .text
print_string:
    ; RDI = Ponteiro para a string a ser impressa
    ; RDX = Tamanho da string a ser impressa
    mov rdx, rsi
    mov rsi, rdi
    mov rdi, stdout
    call sys_write
    ret

ls_numeric:
    ; RDI = Ponteiro para o buffer onde o número será armazenado
    mov al, [rdi]
    cmp al, '0'
    jl .false 
    cmp al, '9'
    jg .false
    mov rax, 1
    ret
.false:
    xor rax, rax
    ret