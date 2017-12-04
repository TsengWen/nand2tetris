// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

// i = 0
    @i
    M=0
// R2 =0
    @2
    M=0
// if R0 == 0
    @0
    D=M
    @END
    D;JEQ
// if R1 == 0
    @1
    D=M
    @END
    D;JEQ
    
(LOOP)
//D = i
    @i
    D=M
//D = i - R1
    @1
    D=D-M
//if i - R1 < 0
    @END
    D;JEQ
// R2 += R0
    @0
    D=M
    @2
    M=M+D
// i++
    @i
    M=M+1
//Goto LOOP
    @LOOP
    0;JMP   
(END)
    @END
    0;JMP //Infinite loop

