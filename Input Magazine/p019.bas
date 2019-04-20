10 print"{clear}"
20 for m=0 to 999
30 let c=int(rnd(1)*16)
40 poke 1024+m,160
50 poke 55296+m,c
60 next m
70 goto 20
