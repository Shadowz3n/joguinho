%include        'domain/data.asm'
%include        'domain/usecases/logo/print.logo.asm'
%include        'domain/usecases/user/save.user.nickname.asm'

global      main

section     .text

main:
    call printLogo
    call saveUserNickname
    call exit