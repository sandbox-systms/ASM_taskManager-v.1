; ==================================
; Proc_reader.asm
; ==================================

global list_processes

extern sys_open 
extern sys_getdents
extern print_string
extern ls_numeric

%include "headers.inc"

section .data 
    proc_path db "/proc", 0
    newline db 10
    newline equ $ - newline

section .bss
    dirfd resq 1
    buffer resb buffer_size

section .text

list_processes:
    ; Abre o diretório /proc
    mov rdi, proc_path          ; Ponteiro para o caminho do diretório /proc   
    mov rsi, o_rdonly           ; Modo de abertura somente leitura
    call sys_open               ; Abre o diretório e retorna um descritor de arquivo em rax

    mov [dirfd], rax

.read_loop:                         

    mov rdi, [dirfd]            ; Descritor do diretório aberto
    mov rsi, buffer
    mov rdx, buffer_size        ; Tamanho do buffer para leitura das entradas do diretório
    call sys_getdents           ; Lê as entradas do diretório    

    cmp rax, 0
    jle .done                   ; Se não houver mais entradas, termina a leitura

    mov rbx, buffer             ; Ponteiro para o início do buffer

.next_entry:
    ; Verifica se o nome do arquivo é numérico (PID)
    mov rcx, [rbx + 16]
    mov rdx, rbx
    add rdx, 19

    mov rdi, rdx
    call ls_numeric
    cmp rax, 1
    jne .skip

    mov rdi, rdx
    mov rsi,16
    call print_string

.skip:
    add rbx, rcx                
    cmp rbx, buffer 
    jb .next_entry

    jmp .read_loop

.done:
    ret