mvi c, 00h	;quotient
lda 2050h	; divisor
mov b, a
lda 2051h	;dividend
next: cmp b	;comparing dividend and divisor
jc go		;if carry, jump to 'go'
sub b		;else, subtract dividend by divisor
inr c		;increase quotient
jmp next	;go to 'next'

go: sta 2060h	;store the remainder
mov a, c		
sta 2061h		;store the quotient

hlt