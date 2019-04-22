10 print"{clear}"
20 let n=int(rnd(1)*25)*40
30 for m=n to n+39
40 let c=int(rnd(1)*16)
50 poke 1024+m,160
60 poke 55296+m,c
70 next m
80 goto 20
