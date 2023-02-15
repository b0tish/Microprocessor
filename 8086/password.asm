.model small
.stack

.data
password db "secret$"
msg1 db "Enter the password:$"
msg2 db 10,13,"Welcome!!$"
msg3 db 10,13,"Invalid User$"

.code
main proc
    .startup 
    mov dx, offset msg1
    mov ah, 09h
    int 21h
    mov cx, 6 
    mov si, offset password
    
    AGAIN:
        mov ah, 01h
        int 21h
        cmp al, [si]
        jne SKIP
        inc bh
    
    SKIP:
        inc si
    loop AGAIN
    
    cmp bh, 6
    jne INVALID
    mov dx, offset msg2
    mov ah,09h
    int 21h
    jmp EXIT
    
    INVALID:
        mov dx, offset msg3
        mov ah, 09h
        int 21h
    EXIT:
        .exit
main endp
end main