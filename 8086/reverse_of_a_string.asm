.model small
.stack

.data
string db "microprocessor$"

.code
main proc
    .startup
    mov cx, 14
    mov si, offset string
    add si, 13
    
    REPEAT:
        mov dl, [si]
        mov ah, 02h
        int 21h
        dec si
    loop REPEAT
    .exit
main endp
end main