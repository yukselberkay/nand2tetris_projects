// Set D register to 10
@10
D=A

// D++
@D
D=D+1

// D=RAM[17]
@17
D=M

// RAM[17] = 0
@17
M=0

// RAM[17] = 10
@10
D=A
@17
M=D

// RAM[3] = RAM[5]
@3
D=M
@5
M=D


