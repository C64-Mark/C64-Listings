10 lo=96:hi=127
20 for lp=lo to hi
30 print lp, chr$(lp)
40 get a$:if a$="" then 40
50 next lp
60 if lo=161 then stop
70 lo=161:hi=191
80 goto 20
