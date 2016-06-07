*-----------------------------------------------------------
* Program    :Input branch
* Written by :
* Date       :
* Description:Sample Program 2 for Quickstart Guide
*-----------------------------------------------------------
START ORG $1000

*-------Code for output ----------
LOOP   LEA MESSAGE, A1
       MOVE.B #14, D0
       TRAP #15
       
*-------Code for input ----------
       MOVE.B 	#4, D0      read an integer from keyboard input and save into D1
       TRAP #15
       CMP.L #9210, D1      compare D1 and 9210
       BEQ FINISH           if D1 == 9210, goto label "FINISH"
       
       CMP.W #20,D1         compare D1 and 20
       BLT INVALID          if D1 < 20, goto label "INVALID"
       CMP.W #25,D1         compare D1 to 25
       BGT INVALID          if D1 > 25, goto label "INVALID"

  	
*-------Code for input ----------       
       
    	CMP.B   #20,D1       compare D1 and 20
        BNE     ONE	         if D1 and 20 are not equal, goto label "ONE"
        LEA     DISP0,A1     load message address into A1
        MOVE.B  #14,D0       display message saved at A1
        TRAP    #15
        BRA     LOOP    
                
ONE     CMP.B   #21,D1        compare D1 and 21
        BNE     TWO           if D1 and 21 are not equal, goto label "TWO"
        LEA     DISP1,A1      
        MOVE.B  #14,D0  
        TRAP    #15
        BRA     LOOP

TWO     CMP.B   #22,D1         compare D1 and 22
        BNE     THREE          if D1 and 21 are not equal, goto label "THREE"
        LEA     DISP2,A1      
        MOVE.B  #14,D0  
        TRAP    #15
        BRA     LOOP       

THREE   CMP.B   #23,D1         compare D1 and 23
        BNE     FOUR          if D1 and 21 are not equal, goto label "FOUR"
        LEA     DISP3,A1      
        MOVE.B  #14,D0  
        TRAP    #15
        BRA     LOOP


FOUR    CMP.B   #24,D1          compares D1 and 24
        BNE     FIVE            if D1 and 21 are not equal, goto label "FIVE"
        LEA     DISP4,A1      
        MOVE.B  #14,D0  
        TRAP    #15
        BRA     LOOP

FIVE    LEA     DISP5,A1      
        MOVE.B  #14,D0  
        TRAP    #15
        BRA     LOOP
		       
INVALID	LEA INV, A1
	    MOVE.B #14, D0
	    TRAP #15
	    BRA LOOP

FINISH MOVE.B  #9,D0
        TRAP    #15             Halt Simulator
    
CR EQU $0D
LF EQU $0A

MESSAGE DC.B     'Enter a number between 20 and 25, Enter 9210 to exit: ',0
INV     DC.B    'That is not between 20 and 25.',CR,LF,0
DISP0 DC.B    'HELLO 20',CR,LF,0
DISP1 DC.B    'HELLO 21',CR,LF,0
DISP2 DC.B    'HELLO 22',CR,LF,0
DISP3 DC.B    'HELLO 23',CR,LF,0
DISP4 DC.B    'HELLO 24',CR,LF,0
DISP5 DC.B    'HELLO 25',CR,LF,0

	END START       













*~Font name~Courier New~
*~Font size~16~
*~Tab type~1~
*~Tab size~4~
