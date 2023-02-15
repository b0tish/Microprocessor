.model small
.stack

.data
name1 db "Pokhara University$"
name2 db 13,10,"Karki Nepal$"

.code
main proc
    .startup
    mov dx,offset name1
    mov ah,09h
    int 21h
    mov dx,offset name2
    int 21h
    .exit
main endp
end main