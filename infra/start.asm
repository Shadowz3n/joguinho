%include        'domain/usecases/user/save.user.nickname.asm'

SECTION .bss
userNickName:     resb    255

SECTION .text
global  _start

_start:
    mov     eax, writeYourName
    call    sprint

    call saveUserNickname

    mov     eax, hello
    call    sprint

    mov     eax, userNickName
    call    sprint

    mov     eax, howAreYou
    call    sprint

    mov     eax, breakLine
    call    sprint

    call    quit