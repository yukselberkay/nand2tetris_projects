// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

// We wanna calculate -> R2 = R0 * R1
// tips:
// use a loop

// number = R0
// n = R1
// i = 0
// res = 0

// LOOP:
//     if i > n goto END
//     res = res + number
//     i = i + 1
//     goto LOOP

// END:
//     goto END

@R0
D=M
@number
M=D

@R1
D=M
@n
M=D

@i
M=0

@res
M=0

(LOOP)
    @i
    D=M
    @n
    D=D-M
    @END
    D;JEQ   // if i=n goto END

    // res = res + number
    @number
    D=M
    @res
    M=D+M

    // i = i + 1
    @i
    M=M+1
    @LOOP
    0;JMP

(END)
    // put res to RAM[2]
    @res
    D=M
    @R2
    M=D
    @END
    0;JMP