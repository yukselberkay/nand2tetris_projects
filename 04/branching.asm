// Computes:    if R0>0
//                  R1=1
//              else
//                  R1=0

// D = RAM[0]
@R0
D=M

// if R0>0 goto 8
@8
D;JGT

@R1
M=0     // RAM[1] = 0
@10
0;JMP   // end of program

// R1 = 1
@R1
M=1

@10
0;JMP