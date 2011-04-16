        .data
n:      .word 3
x:      .double 0.5 

        .set noreorder
        
        .text
        .globl start
        .ent start
        LD      R1, n(R0)
        L.D     F0, x(R0)
        DADDI   R2, R0, 1  ; R2 ← 1
        MTC1    R2, F11    ; F11 ← 1
        CVT.D.L F2, F11    ; F2 ← 1
loop:   MUL.D   F2, F2, F0 ; F2 ← F2*F0
        DADDI   R1, R1, -1 ; decrement R1 by 1
        BNEZ    R1, loop   ; if R1≠0 continue
        .end start
        ; HALT               ; 此条不填表