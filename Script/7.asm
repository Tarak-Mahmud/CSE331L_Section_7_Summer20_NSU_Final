
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
 .STACK 100H

 .DATA
    PROMPT_1  DB  'Enter int 1 : $'
    PROMPT_2  DB  'Enter int 2 : $'
    PROMPT_3  DB  'Smallest int : $'

 .CODE
   MAIN PROC
     MOV AX, @DATA                
     MOV DS, AX

     LEA DX, PROMPT_1             
     MOV AH, 9
     INT 21H

     MOV AH, 1                    
     INT 21H

     MOV BL, AL                   

     MOV AH, 2                    
     MOV DL, 0DH
     INT 21H

     MOV DL, 0AH                  
     INT 21H

     LEA DX, PROMPT_2             
     MOV AH, 9
     INT 21H

     MOV AH, 1                    
     INT 21H

     MOV BH, AL                   

     MOV AH, 2                    
     MOV DL, 0DH
     INT 21H

     MOV DL, 0AH                  
     INT 21H

     LEA DX, PROMPT_3             
     MOV AH, 9
     INT 21H

     CMP BL, BH                   

     JNBE @ELSE                   

     MOV DL, BL                   
     JMP @DISPLAY                 

     @ELSE:                       
       MOV DL, BH                 

     @DISPLAY:                    
       MOV AH, 2                  
       INT 21H

     MOV AH, 4CH                  
     INT 21H
   MAIN ENDP
 END MAIN

ret




