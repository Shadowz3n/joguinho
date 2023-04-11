extern      puts, fgets, scanf, fopen, fread, fclose, printf, exit

SECTION .bss
userNickName:               resw    1

SECTION .data
breakLine                   db      0xA, 0h
promptWriteYourName         db      'Digite seu nickname: ', 0h
hello                       db      'Olá, ', 0h
howAreYou                   db      ', tudo bem com você?', 0h
formatString                db      '%s', 10, 0
userNickNameBuffer          db      255
