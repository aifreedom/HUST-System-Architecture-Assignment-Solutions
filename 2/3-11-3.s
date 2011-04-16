        .data
beg:    .space  1584
        .text
        daddi   r2, r0, beg
        daddi   r3, r1, 396
loop:   lw      r1, 0(r2)
        daddui  r2, r2, 4
        dsub    r4, r3, r2
        daddui  r1, r1, 1
        bnez    r4, loop
        sw      r1, -4(r2)
        halt
