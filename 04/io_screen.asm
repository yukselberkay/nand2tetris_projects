// drawing rectangle
// writing pseudo code first is a must.
// usage: put a non negative number
// rectangle's height in RAM[0]

// for (i=0; i<n; i++) {
//     draw 16 black pixels at the beginning of
//     row i
// }


// addr = SCREEN
// n = RAM[0]
// i = 0

// LOOP:
//     if i > n goto END
//     RAM[addr] = -1 // 1111111111111111
//     //advances to the next row
//     addr = addr + 32
//     i = i + 1
//     goto LOOP

// END:
//     goto END


//addr = SCREEN
@SCREEN
D=A
@addr
M=D     //addr=16384

// n = RAM[0]
@0
D=M
@n
M=D

// i = 0
@i
M=0

(LOOP)
    @i
    D=M
    @n
    D=D-M
    @END
    D;JGT // if i>n goto END

    //RAM[addr] = -1
    @addr
    A=M
    M=-1

    @i
    M=M+1 // i=i+1
    @32
    D=A
    @addr
    M=D+M   //addr=addr+32
    @LOOP
    0;JMP   // goto LOOP

(END)
    @END
    0;JMP
