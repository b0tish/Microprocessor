;8-bit Addition

	LDA 2000H
	MOV B,A
	LDA 2001H
	ADD B
	STA 2002H
	HLT

;Using opcode
	2000: 1A
	2001: 18
	2002: 00
	2003: 3A
	2004: 00
	2005: 20
	2006: 47
	2007: 3A
	2008: 01
	2009: 20
	200A: 80
	200B: 32
	200C: 02
	200D: 20
	200E: 76