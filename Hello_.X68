*-----------------------------------------------------------
* Program    :Hello World
* Written by :
* Description:Sample Program 1 for Quickstart Guide
*-----------------------------------------------------------
START   ORG     $1000

*-------Code for output------
        LEA     MESSAGE,A1      Loads MESSAGE into address register A1
        
        MOVE.B  #14,D0          Moves the number 14 into data register D0
        TRAP    #15             Displays Message
        
 
        MOVE.B  #9,D0
        TRAP    #15             Halt Simulator
    
        

CR      EQU     $0D             ASCII code for Carriage Return
LF      EQU     $0A             ASCII code for Line Feed
MESSAGE DC.B    'Hello, My Name is Yang Peng', CR, LF
        DC.B    'This program took 5 minutes to finish, and I hope you enjoy the 68K programming', CR, LF
        DC.B    'You will learn a lot with this assembly programming and will be fascinated by this assembly world!', CR, LF, CR, LF
        DC.B    'Thank you for listening',0

        END     START
















*~Font name~Courier New~
*~Font size~16~
*~Tab type~1~
*~Tab size~4~
