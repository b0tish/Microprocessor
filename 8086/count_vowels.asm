.model small
.stack

.data
string db "microprocessor$"
string2 db "Vowels:$"

.code
main proc
    .startup
    mov cx, 14
    mov si, offset string
    
    AGAIN:
        mov al, [si]
        cmp al, 'a'
        je COUNT
                
        cmp al, 'e'
        je COUNT
        
        cmp al, 'i'
        je COUNT
        
        cmp al, 'o'
        je COUNT 
        
        cmp al, 'u'
        jne SKIP
        
        COUNT:
            inc bl
        SKIP:
            inc si
    loop AGAIN
     
    
     
     lea dx,string2
     mov ah,09h
     int 21h
     
     add bl, 30h 
     mov dl, bl
 
     mov ah, 02h
     
     int 21h
     .exit  
main endp
end main