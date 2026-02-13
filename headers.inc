; ==================================
; Headers.asm
; ==================================

%define sys_read           0 
%define sys_write          1
%define sys_open           2
%define sys_close          3
%define sys_getdents64     217
%define sys_exit           60
%define sys_kill           62

%define stdout             1
%define o_rdonly           0   

%define buffer_size        4096 
%define sys_getdents64     24

; ==================================
; Correção de Headers.inc 
; Exclusão e substituição do conteúdo do arquivo.
; Substituido %include por %define devido ao uso no makefile.
; ==================================