; Unordered Data from 2000h to 2003h

mvi c, 04h
dcr c
nextpass: mov d, c
lxi h, 2000h
next: mov a, m
inx h
cmp m
jc go
mov b, m
mov m, a
dcx h
mov m,b
inx h
go: dcr d
jnz next
dcr c
jnz nextpass
hlt