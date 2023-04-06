%include        'functions.asm'
 
SECTION .data
msg1        db      'Digite seu nickname: ', 0h
msg2        db      'Olá, ', 0h
msg3        db      'Tudo bem com você?', 0h

SECTION .bss
sinput:     resb    255

SECTION .text
global  _start

_start:
    mov     eax, msg1
    call    sprint
 
    mov     edx, 255
    mov     ecx, sinput
    mov     ebx, 0
    mov     eax, 3
    int     80h
 
    mov     eax, msg2
    call    sprint

    mov     eax, sinput
    call    sprint

    mov     eax, msg3
    call    sprint
 
    call    quit