10 print"{clear}":poke 53280,5:poke 53281,6
20 v=53248:poke v+34,3
30 poke 53269,4:poke 2042,13
40 for n=0 to 62:read q:poke 832+n,q:next
50 poke v+5,100:for x=24 to 255:poke v+4,x:next:poke v+16,4:for x=0 to 65:poke v+4,x:next x
55 for x=65 to 0 step-1:poke v+4,x:next:poke v+16,0:for x=255 to 24 step-1:poke v+4,x:next
60 goto 50
100 data 255,255,255,128,0,1,128,0,1,128,0,1,144,0,1,144,0,1,144,0,1,144,0
101 data 1,144,0,1,144,0,1,144,0,1,144,0,1,144,0,1,144,0,1,128,0,1,128,0,1
102 data 128,0,1,128,0,1,128,0,1,128,0,1,255,255,255
200 x=200:y=100:poke 53252,x:poke 53253,y
