        .data
str:    .ascii  "3901"
        .text
        DADDI   R8, R8, 4
loop:   LBU     R10, str(R11)   ; %load str[R11] to R10%
        DADDI   R10, R10, -48   ; %substract "0" from R10%
        DSLL    R9, R9, 4       ; %shift left R9 by 4 bits%
        OR      R9, R9, R10     ; %add R10 to R9%
        DADDI   R11, R11, 1     ; %increment R11 by 1%
        BNE     R8, R11, loop   ; %if R11$\ne$R8 continue%
        HALT