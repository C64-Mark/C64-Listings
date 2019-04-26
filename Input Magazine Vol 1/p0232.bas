10 s=54272
30 poke s+1,255
40 poke s+5,219
50 poke s+24,15
60 poke s+4,129
70 for z=1 to 5000:next z
80 poke s+4,128
100 goto 30
