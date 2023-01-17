; Multiplying two 8bit might give 16bit result
jmp start

;code
start: nop

LDA 0000H   	; multiplier
MOV B, A
LDA 0001H   	; multiplicand
MOV C, A

MVI A, 00H	    ; empty accumulator
MVI D, 00H	    ; empty register to hold carry

ADDER: ADD B	; add multiplier
JNC NOCARRY		; if no carry, go to "nocarry"
INR D

NOCARRY: DCR C	; decrease multiplicand by 1
JNZ ADDER		; if multiplcand != 0, goto "adder"
				; Ex: In 4 * 3, 4 will get added 3 tijme
STA 0003H		; Store the sum
MOV A, D		; Carry
STA 0002H		; Store the carry

HLT

;Using opcode
	0000: 05
	0001: 05
	0002: 00
	0003: 00
	0004: 3A 
	0005: 00
	0006: 00
	0007: 47
	0008: 3A
	0009: 01
	000A: 00
	000B: 4F
	000C: 3E
	000D: 00
	000E: 16
	000F: 00
	0010: 80 
	0011: D2
	0012: 15
	0013: 00
	0014: 14
	0015: 0D 
	0016: C2
	0017: 10
	0018: 00
	0019: 32
	001A: 03
	001B: 00
	001C: 7A
	001D: 32
	001E: 02
	001F: 00
	0020: 76