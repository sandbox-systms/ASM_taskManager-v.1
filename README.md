# ASM_TaskManager-v.1

[![Platform](https://img.shields.io/badge/platform-Linux%20x86_64-blue.svg)]()
[![Assembler](https://img.shields.io/badge/assembler-NASM-green.svg)]()
[![License](https://img.shields.io/badge/license-MIT-lightgrey.svg)]()

Gerenciador de tarefas desenvolvido em **Assembly (x86_64)** para Linux, utilizando **syscalls diretas** ao kernel.  
O projeto demonstra leitura do pseudo-filesystem `/proc`, listagem de processos ativos e envio de sinais para controle de execução.

Repositório hospedado no **GitHub**.

---

## Objetivo

Implementar um gerenciador básico de processos sem dependência de libc, operando exclusivamente via chamadas de sistema Linux.

O projeto tem foco educacional e técnico, visando:

- Compreensão da ABI System V (x86_64)
- Manipulação manual de estruturas retornadas por syscalls
- Parsing de arquivos do `/proc`
- Controle direto de processos via `kill`

---

## Funcionalidades

- Leitura de diretório `/proc` via `getdents64`
- Identificação de diretórios numéricos (PIDs)
- Leitura de `/proc/[PID]/stat` e `/proc/[PID]/cmdline`
- Exibição de PID e nome do processo
- Envio de sinal (`SIGKILL`) para PID informado

---

## Requisitos

- Linux x86_64
- NASM (Netwide Assembler)
- GNU ld
- Make (opcional)

Verificar versões:

```bash
nasm -v
ld -v
uname -m