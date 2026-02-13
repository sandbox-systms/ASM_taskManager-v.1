nasm -f elf64 main.asm 
nasm -f elf64 syscalls.asm
nasm -f elf64 proc_reader.asm
nasm -f elf64 utils.asm

ld -o main main.o syscalls.o proc_reader.o utils.o