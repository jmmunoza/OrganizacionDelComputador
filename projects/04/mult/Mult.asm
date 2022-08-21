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

// Reiniciar el D
D=0

// Reiniciar la salida del segundo espacio de memoria
@2
M=0

(LOOP)
    // Decrementar el valor del primer numero y asignarlo a D
    @1
    M=M-1
    D=M
    
    // Ver si el valor es menor a 0
    @END
    D;JLT
    
    // Asignar el valor del numero 0 a D
    @0
    D=M

    // Sumarlo a la salida en 2
    @2
    M=M+D

    // GOTO LOOP
    @LOOP
    0;JMP
(END)
