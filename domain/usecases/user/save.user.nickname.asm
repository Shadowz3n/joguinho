saveUserNickname:
    mov     edx, 255
    mov     ecx, userNickName
    mov     ebx, 0
    mov     eax, 3
    int     80h
    
    ret