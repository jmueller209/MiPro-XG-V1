define displayControlAddress 0x40000050      
define displayDataAddress    0x40000054      

define displayControl        0b00000000111101000010010000100100
define displayData           5678

start: 

    ;write control data to 7-Segment Display
    MOV R0, displayControlAddress
    MOV R7, displayControl
    STOREW R7, [R0]

    ;write display data to 7-Segment Display
    MOV R0, displayDataAddress
    MOV R7, displayData
    STOREW R7, [R0]
    HALT ;halt the program
