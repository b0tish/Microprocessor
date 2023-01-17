; Sum of even numbers in an array
; Data from 6000h to 6009h

MVI B, 00H  ; holds carry
MVI C, 10H	; loop counter
MVI E, 00H  ; holds sum
LXI H, 6000H

ITER: MOV D, M
MOV A, D
ANI 01H
JNZ GO
MOV A, E
ADD D
JNC NOCARRY
INR B

NOCARRY: MOV E, A

GO: INX H
DCR C
JNZ ITER

MOV A, E	; SUM
STA 6011H
MOV A, B	; CARRY
STA 6010H

HLT