; Count the number of even numbers in an "array" of bytes

mvi d, 00h
mvi c, 07h
lxi h, 2000h
next: mov a,m
ani 01h
jnz go
inr d
go: inx h
dcr c
jnz next
mov a, d
sta 2007h
hlt