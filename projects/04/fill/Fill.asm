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

(LOOP)
    @24576
    D=M
    
    @KEYPRESSED
    D;JNE

    @KEYUNPRESSED
    D;JEQ

    @LOOP
    0;JMP

(KEYUNPRESSED)
    @SCREEN
    D=A

    @UNFILL
    0;JMP

(KEYPRESSED)
    @SCREEN
    D=A

    @FILL
    0;JMP

(UNFILL)
    A=D
    M=0
    D=D+1

    @R0
    M=D
    
    @24576
    D=D-A
    @LOOP
    D;JEQ

    @R0
    D=M

    @UNFILL
    0;JMP

(FILL)
    A=D
    M=-1
    D=D+1

    @R0
    M=D
    
    @24576
    D=D-A
    @LOOP
    D;JEQ

    @R0
    D=M

    @FILL
    0;JMP

