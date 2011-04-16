LOOP:   LW      R1, 0(R2)
        DADDUI  R5, R2, #4
        DSUB    R4, R3, R5
        DADDUI  R1, R1, #1
        BNEZ    R4, LOOP
        SW      R1, 0(R2)
