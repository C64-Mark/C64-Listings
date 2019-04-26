10 dim a$(5)
20 for n=0 to 5
30 read a$(n)
40 next n
50 data five mile,well pass,brook hill,peters road,crossways,rowlands
60 dim a(5)
70 for n=0 to 5
80 read a(n)
90 next n
100 data 0,2,5,1,3,6
210 for n=0 to 5
220 print a$(n), a(n)
230 next n
300 print"{clear}"
310 let tl=0
320 for n=0 to 5
330 let tl=tl+a(n)
340 next n
350 print"total number of accidents ";tl
400 for n=0 to 5
410 if a(n)>3 then print a$(n),a(n)
420 next n
600 for n=0 to 5
610 b$=a$(n)
620 if left$(b$,1)="p" then print b$
630 next n
