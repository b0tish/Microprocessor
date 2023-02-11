.model small
.stack

.data
num DW 49

.code
main proc
    .startup 
    mov bl,0
    
    again:
        inc bl
        mov ax,num
        div bl
        cmp al,bl
        jne again

    aam
    add ax,30h
    mov bl,al
    mov dl,ah
    mov ah,02h
    mov dl,bl
    int 21h
    .exit
main endp
end main