%include        'functions.asm'

SECTION .data
breakLine           db      0xA, 0h
writeYourName       db      'Digite seu nickname: ', 0h
hello               db      'Olá, ', 0h
howAreYou           db      'Tudo bem com você?', 0h

SECTION .bss
sinput:     resb    255

SECTION .text
global  _start

_start:
    mov     eax, writeYourName
    call    sprint

    mov     edx, 255
    mov     ecx, sinput
    mov     ebx, 0
    mov     eax, 3
    int     80h

    mov     eax, hello
    call    sprint

    mov     eax, sinput
    call    sprint

    mov     eax, howAreYou
    call    sprint

    mov     eax, breakLine
    call    sprint

    call    quit
