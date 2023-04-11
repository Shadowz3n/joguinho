SECTION .data
logoFilePath        db      'domain/data/logo.md', 0h
readMode            db      'r', 0h
logoBuffer          db      255
currentPath         times   255 db 0

global printLogo
section     .text

printLogo:
    mov rdi, logoFilePath
    mov rsi, readMode
    call fopen
    mov rbx, rax

    mov rdi, logoBuffer
    mov rsi, 1
    mov rdx, 1000
    mov rcx, rbx
    call fread

    mov rdi, rbx
    call fclose

    mov rdi, logoBuffer
    call puts
    ret