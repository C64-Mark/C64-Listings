10 print"{clear}"
20 poke 2040,13
30 for i=0 to 62:poke 832+i,129:next
40 v=53248
50 poke v+21,1
60 poke v+39,1
70 poke v+1,100
80 poke v+15,0:poke v,100
