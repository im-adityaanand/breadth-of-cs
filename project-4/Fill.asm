(KEYBOARD)

// fill = 0000.0000 0000.0000
@fill
M=0

// if KBD != 0 goto PAINT
@KBD
D=M
@PAINT
D;JEQ

// fill = 1111.1111 1111.1111
@fill
M=-1

(PAINT)

// address = SCREEN
@SCREEN
D=A
@address
M=D

(LOOP)
// if address == 24576 goto KEYBOARD
// SCREEN + SCREENSIZE = 24576
@address
D=M
@24576
D=D-A
@KEYBOARD
D;JEQ

// @address = fill
@fill
D=M
@address
A=M
M=D

// address = address + 1
@address
M=M+1

// goto LOOP
@LOOP
0;JMP