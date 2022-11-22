// R2 = 0
@R2
M=0

(LOOP)
// if R1 == 0 goto END
@R1
D=M
@END
D;JEQ

// R2 = R2 + R0
@R0
D=M
@R2
M=D+M

// R1 = R1 - 1
@R1
M=M-1

// Goto LOOP
@LOOP
0;JMP

// Program Ends.
(END)
@END
0;JMP