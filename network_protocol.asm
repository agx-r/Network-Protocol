section .data
    ; Protocol constants
    MSG_HELLO       db  "Hello, server!"
    MSG_ACK         db  "ACK"
    MSG_GOODBYE     db  "Goodbye!"
    MSG_BUF_SIZE    equ 32

section .bss
    ; Protocol variables
    buffer          resb MSG_BUF_SIZE

section .text
    global _start

_start:
    ; Establish network connection and initialize

    ; Send "Hello, server!" message
    mov eax, 4      ; Syscall: write
    mov ebx, 1      ; File descriptor: STDOUT
    mov ecx, MSG_HELLO
    mov edx, 14     ; Message length
    int 0x80        ; Perform system call

    ; Receive acknowledgment message from the server
    mov eax, 3      ; Syscall: read
    mov ebx, 0      ; File descriptor: STDIN
    mov ecx, buffer ; Buffer to store the received message
    mov edx, MSG_BUF_SIZE
    int 0x80        ; Perform system call

    ; Process the received acknowledgment message

    ; Send "Goodbye!" message
    mov eax, 4      ; Syscall: write
    mov ebx, 1      ; File descriptor: STDOUT
    mov ecx, MSG_GOODBYE
    mov edx, 9      ; Message length
    int 0x80        ; Perform system call

    ; Close the network connection and clean up

    ; Terminate the program
    mov eax, 1      ; Syscall: exit
    xor ebx, ebx    ; Exit code: 0
    int 0x80        ; Perform system call
