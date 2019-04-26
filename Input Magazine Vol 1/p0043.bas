10 a=12:z=a*1024/256
20 poke 53272,(peek(53272)and240) or a
30 poke 52,z:poke 56,z:clr:a=12
40 poke 56334, peek(56334) and 254
50 poke 1,peek(1) and 251
60 for j=0 to 56832-53248
70 poke a*1024+j,peek(53248+j)
80 next j
90 poke 1,peek(1) or 4
100 poke 56334,peek(56334) or 1
110 sc=5:z=1024*12:for j=z+(sc*8) to z+(sc*8)+7:read a$
120 n=0:for t=1 to len(a$)
130 if mid$(a$,t,1)="1" then n=n+2^(len(a$)-t)
140 next t:poke j,n:next j
500 data 00010000
510 data 00001000
520 data 00111100
530 data 01100110
540 data 01111110
550 data 01100000
560 data 00111100
570 data 00000000
