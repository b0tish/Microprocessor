.model small
.stack

.data   
string db ?
string1 db "Input the string: $"
string2 db 13,10,"Reverse:$"
len dw 6

.code
main proc
    .startup 
    mov cx,len
    mov bx,len
    mov si,offset string
    
    mov dx, offset string1
    mov ah,09h
    int 21h
    
    AGAIN:
        mov ah,01h
        int 21h
        mov [si],al
        inc si
    loop AGAIN

    mov cx,bx
    inc cx
    
    mov dx,offset string2
    mov ah,09h
    int 21h
    
    REPEAT:
        mov dl,[si]
        mov ah,02h
        int 21h
        dec si
    loop REPEAT
    .exit
main endp
end main