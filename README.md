## This repo contains some codes 8085 and 8086 processors

# 8085
```
- Accumulator based Microprocessor
- 8bit processor
- 40 pins
- works on 5V DC power supply
- 16 address lines
- 74 instructions
- 5 addressing modes
- 8bit I/O address
- 7 programmer-controllable registers
```

## Registers
- ### Accumulator
```
- 8bit register
- part of ALU
- stores data to perform Arithmetic and Logical Operations
- result of the operation is stored here
- data to and from i/o ports are first stored in accumulator
```

- ### W,Z registers
```
- 8bit each
- temporary registers
- not accessible by the programmer
- Ex: Used by 'XCHG' instruction to temporarily hold data for swapping
```

- ### Instruction register
```
- 8bit
- receives the operation code for the instruction and passes it to decoder
- The Microprocessor doesnot understand the instruction that is in this register (It must first be decoded by the decoder)
```

- ## General Purpose Registers
    - ### B,C  D,E  H,L
    ```
    - 8bit each
    - Accessible by the programmer 
    - Can be accessed individually
    - Can be accessed in pair as well (Ex: B,C pair, D,E pair, H,L pair)
    ```
- ### Stack pointer
```
- 16bit
- hold address of the top of the stack
```

- ### Program Counter
```
- 16bit
- holds address of next instruction
- maintains the order of execution
```

## Flags
Five flags
- ### Carry(CY)
```
- stores carry/borrow of the operation
- '1' if there is a carry
- else '0'
```

- ### Auxiliary Carry(CY)
```
d7 d6 d5 d4  d3 d2 d1 d0 
0  1  0  1   1  0  1  0
0  1  0  1   1  0  1  0
There AC bit is set if there is a carry/borrow when adding bits from d3 
```

- ### Zero(Z)
```
- if the bit is set('1'), the result of the previous operation is zero
- if the bit is '0', the result was not zero
```

- ### Sign(S)
```
- indicates whether result of the operation is negative or positive
- '1' indicates negative
- '0' indivates positive
```

- ### Parity(P)
```
- if the number of 1's is even, the bit is set(i.e is '1')
- else '0'
```

# 8086
```
- Work in Progress
```