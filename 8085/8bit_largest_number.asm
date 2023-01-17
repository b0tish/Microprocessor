lda 2050h
mvi c, 0ah
lxi h, 2050h
next: cmp m
jnc go
mov a, m
go: inx h
dcr c
jnz next
sta 2040h
hlt