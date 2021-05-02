        MOVE R1,10
        MOVE R1,[R1]
        MOVE R2,11
        MOVE R2,[R2]
        ADD  R2,2
        MOVE R3,12
loop:   MOVE R0,[R3]
        BEQ  R1,found
        ADD  R3,1
        MOVE R0,0
        OR   R0,R3
        BGT  R2,loop
        MOVE R3,2
found:  MOVE R1,10
        SUB  R3,2
        MOVE [R1],R3
