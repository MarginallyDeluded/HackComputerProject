// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

//// Replace this comment with your code.
@R0
D=M 
@a 
M=D 
@R1
D=M 
@b
M=D 
@i 
M=1

(LOOP)
@i
D=M 
@b
D=M-D
@STOP
D;JMP

@R0
D=M 
@a 
M=D+M  
@i 
M=M+1 
@LOOP 
0;JMP 

(STOP)
@a 
D=M 
@R2
M=D //PRODUCT
@STOP
0;JMP
