;Addition using 2's complement
	MVI C,00H
    LDA 2051H
    MOV B,A
    LDA 2050H
    CMA
   	INR A
    ADD B
    JC LAST
    CMA
    INR A
    INR C
    LAST:STA 2052H
       MOV A,C
       STA 2053H
       HLT

;Using opcodes
	2050: 19  
	2051: 10
	2052: 00
	2053: 00
	2054: 0E
	2055: 00
	2056: 3A
	2057: 51
	2058: 20
	2059: 47
	205A: 3A
	205B: 50
	205C: 20
	205D: 2F
	205E: 3C
	205F: 80
	2060: DA
	2061: 66
	2062: 20
	2063: 2F
	2064: 3C
	2065: 0C
	2066: 32
	2067: 52
	2068: 20
	2069: 79
	206A: 32
	206B: 53
	206C: 20
	206D: 76