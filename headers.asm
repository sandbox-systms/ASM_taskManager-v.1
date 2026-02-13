; ==================================
; Headers.asm
; ==================================

%include sys_read           0 
%include sys_write          1
%include sys_open           2
%include sys_close          3
%include sys_getdents64     217
%include sys_exit           60
%include sys_kill           62

%include stdout             1
%include o_rdonly           0   

%include buffer_size        4096 