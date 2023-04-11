global saveUserNickname
section     .text

saveUserNickname:
    mov rdi, promptWriteYourName
    call puts

    mov rdi, userNickNameBuffer
    call fgets
    
    ret