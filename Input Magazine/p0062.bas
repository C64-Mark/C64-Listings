5 for d=1 to 1000:next:print"{clear}"
10 print"i'm tossing the coin...";
20 for j=1 to 3
30 for d=1 to 250:next d
40 print".";
50 next j
60 print
70 if rnd(0)<.5 then goto 100
80 print"and it's tails!"
90 goto 5
100 print"and it's heads!"
110 goto 5
