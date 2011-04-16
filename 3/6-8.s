loop:   l.d     f0, 0(r1)
        l.d     f4, 0(r2)
        daddui  r1, r1, -8
        mul.d   f6, f0, f4
        daddui  r2, r2, -8
        l.d     f0, 0(r1)
        l.d     f4, 0(r2)
        add.d   f2, f6, f2
        mul.d   f8, f0, f4
        daddui  r1, r1, -8
        daddui  r2, r2, -8
        bne     r1, r3, loop
        add.d   f2, f8, f2
