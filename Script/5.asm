
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100h
.DATA
    PROMPT_1 DB 'Enter The Range : $'
    N1 DB 0h
    N2 DB 1h
.CODE
    MOV AH, 1
    INT 21h
    MOV CX, 0
    MOV CL, AL
    SUB CL, 32h
    MOV AH, 2
    MOV DL, 30h
    INT 21h
    MOV AH, 2
    MOV DL, 31h
    INT 21h
    L1:
        MOV BL, N1
        ADD BL, N2
        MOV AH, 2
        MOV DL, BL
        ADD DL, 30h
        INT 21h
        MOV BH, N2
        MOV N2, BL
        MOV N1, BH
        LOOP L1

ret




