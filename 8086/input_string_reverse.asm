.model small
.stack

.data
string db ?
len dw 6

.code
main proc
    .startup 
    mov cx,len
    mov bx,len
    mov si,offset string
    
    AGAIN:
        mov ah,01h
        int 21h
        mov [si],al
        inc si
        loop AGAIN

    mov cx,bx
    inc cx
    
    REPEAT:
        mov dl,[si]
        mov ah,02h
        int 21h
        dec si
        loop REPEAT
    .exit
main endp
end main