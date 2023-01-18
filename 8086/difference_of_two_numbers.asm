.data
string1 db "Enter the first number: $"
string2 db 13,10,"Enter the second number: $"
string3 db 13,10,"The difference is: $"   


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
    
    ;Comparing if the diff is -ve
    cmp bh,bl
    jae Go      ;Jump when result is above or equal(CY=0,Z=1)
    
    ;Swapping the datas
    mov al,bh
    mov bh,bl
    mov bl,al
    mov dl,"-"
    int 21h
    
    ;Subtracting the numbers
    Go:
    sub bh,bl
    add bh,30h 
    
    mov dl,bh
    int 21h
    
    ;Halt Function
    mov ah,4ch
    int 21h
main endp
end main