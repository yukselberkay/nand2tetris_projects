// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

// listens to the keyboard once the user touches any key,
// all the screen pixels will be drawn and the screen 
// becomes black.
// tips:
// - listen to the keyboard
// - to blacken / clear the screen, write code that fills
// the entire screen memory map with either "white" or "black" pixels.
// - Addressing the memory requires working with pointers.

// first step: listen to the keyboard.
// if the value in the keyboard register is more than 0.
// turn screen black
// else
// make it white

//addr = SCREEN
@SCREEN
D=A
@addr
M=D     // addr=16384

// infinite loop
(LOOP)
    @LOOP

    @KBD
    D=M
    @PRESSED
    D;JGT   // if kbd > 0 goto PRESSED

    @IDLE   // if kbd < 0 goto IDLE
    D;JEQ


    0;JMP

(PRESSED)

    @PRESSED
    //set -1 to all of the registers of SCREEN

    //RAM[addr] = -1
    @addr
    A=M
    M=-1

    @i
    M=M+1 // i=i+1
    @1
    D=A
    @addr
    M=D+M   //addr=addr+32
    @LOOP
    0;JMP   // goto LOOP
    
    0;JMP

(IDLE)

    @IDLE
    // set 0 to all of the registers of SCREEN

    //RAM[addr] = 0
    @addr
    A=M
    M=0

    @i
    M=M+1 // i=i+1
    @1
    D=A
    @addr
    M=D+M   //addr=addr+32
    @LOOP
    0;JMP   // goto LOOP

    0;JMP