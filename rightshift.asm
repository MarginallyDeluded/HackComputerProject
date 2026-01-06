@R0
D=M 
@a 
M=D // a = RAM[0]

@POS
D;JGE
@NEG
D;JLT 

(POS)
@DIV
0;JMP 

(NEG)
@a 
M=M-1
M=-M
@DIV 
0;JMP  

(DIV)
@2 
D=A  
@b
M=D // b = 2 
@count
M=0

(LOOP)
@a 
D=M 
@b
D=D-M
@END
D;JLT // if a < b goto END 

@a 
M=D // a = a - b
@count
M=M+1 // count = count + 1
@LOOP 
0;JMP // goto LOOP

(END)
@count
D=M 
@R2
M=D //QUOTIENT
@a 
D=M 
@R3 
M=D // REMAINDER 

@R0
D=M 
@ENDNEG
D;JLT 

(STOP)
@STOP
0;JMP 

(ENDNEG)
@R2
M=-M

@STOP
0;JMP
