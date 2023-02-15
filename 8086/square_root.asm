.model small
.stack

.data
num dw 25 
string1 db "Square root:$"

.code
main proc
    .startup
    mov dx,offset string1
    mov ah,09h
    int 21h
    
    again:
        inc bl
        mov ax,num
        div bl
        cmp al,bl
    jne again
        
    aam
    add al,30h
    mov dl,al
    mov ah,02h
    int 21h
    .exit
main endp
end main