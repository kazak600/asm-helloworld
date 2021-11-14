; hello_world.asm
;
; Author: Anton K
; Date: 11-11-2021

global _start

section .text

_start:
    mov eax, 0x4            ; use the write syscall
    mov ebx, 1              ; use stdout as the file descriptor
    mov ecx, message        ; user the message as the buffer
    mov edx, message_length ; supply the length
    int 0x80                ; invoke syscall

    ; now gracefully exit

    mov eax, 0x1
    mov ebx, 0
    int 0x80

section .data:
    message: db "Hello world!", 0xA
    message_length equ $-message