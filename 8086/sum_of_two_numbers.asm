.data
string1 db "Enter the first number: $"
string2 db 13,10,"Enter the second number: $"
string3 db 13,10,"The sum is: $"   


.code

main proc
    mov ax,@data
    mov ds,ax
    
    ;Printing string1
    lea dx,string1
    mov ah,9
    int 21h  
    
    ;Taking the input
    mov ah,1
    int 21h
    
    ;Moving the given input in BH
    mov bh,al

    ;Printing string2    
    lea dx,string2
    mov ah,9
    int 21h  
    
    ;Taking the input
    mov ah,1
    int 21h
    
    ;Moving the given input in BL
    mov bl,al

    ;Printing string3    
    lea dx,string3
    mov ah,9
    int 21h
     
    ;Display function 
    mov ah,2
    
    ;Adding the numbers
    add bl,bh
    sub bl,30h 
    
    ;Compare whether the sum > 9
    cmp bl,"9"
    jbe Go          ;Jump when result is below or equal(CY=1,Z=1)
    mov dl,"1"
    int 21h
    sub bl,10
    
    Go:
    mov dl,bl
    int 21h
    
    ;Halt Function
    mov ah,4ch
    int 21h
main endp
end main