// Write a program to add two multi-byte binary numbers stored in memory and also store the result in memory.

.MODEL SMALL 
.STACK 20 
.DATA 
Org 1000H 
NUM1 DB 25H,35H,45H,32H,56H,98H,76H,76H 
NUM2 DB 90H,56H,43H,75H,89H,10H,34H,22H 
ANS DB 10 DUP (?) 
COUNT DW 8H 
.CODE 
START:
MOV AX, @DATA
MOV DS, AX 
MOV CX, COUNT 
MOV SI, 0H 
CLC 
REPEAT: 
MOV AL, NUM1 [SI] 
ADC AL, NUM2 [SI] 
MOV ANS [SI], AL 
INC SI 
LOOP REPEAT 
INT 3 
END START
