// Write a program to add two 2-digit decimal numbers available in memory and store the result in memory without the H in the input data.
// Basically P3 without the H in the input data

DATA SEGMENT
ORG 1000H
NUM1 DB 89 
NUM2 DB 78 
RES DW ?
DATA ENDS
CODE SEGMENT
ASSUME CS: CODE, DS: DATA
START:
MOV AX, DATA
MOV DS, AX
MOV AH, 0
MOV AL, NUM1 
ADD AL, NUM2 
DAA 
ADC AH, 0 
MOV RES, AX
INT 3 
CODE ENDS
END START
