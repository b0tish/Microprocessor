;Concatenation of Two Strings

.model small

.stack

.data
str1 db "Microprocessor$"
str2 db " Assembly Language$"
str3 db ?

.code
main proc
    .startup
    
    mov di, offset str3
    mov si, offset str1
    mov cx, 14
    
    again1:
        mov bx, [si]
        mov [di], bx
        inc si
        inc di
        loop again1
    
    mov si, offset str2
    mov cx, 18
    again2:
        mov bx, [si]
        mov [di], bx
        inc si
        inc di 
        loop again2
    mov [di], "$"
    mov dx, offset str3
    
    mov ah, 09h
    int 21h
    
    mov ah, 4ch
    int 21h
main endp
end main