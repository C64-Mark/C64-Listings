10 print"{clear}"
15 for n=0 to 24
20 m=int(rnd(1)*16)
25 c=int(rnd(1)*40)
30 poke 1024+(40*n)+c,160
40 poke 55296+(40*n)+c,m
50 next
60 goto 15
