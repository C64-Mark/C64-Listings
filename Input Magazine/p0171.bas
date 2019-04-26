10 v=53248:x=150:y=157:print"{clear}"
20 for i=16000 to 16062:read a:poke i,a:next i 
25 poke 2040,250:poke v+21,1:goto 50
30 get a$:a=0:xx=0:if a$="p" then a=1:goto 50
35 if a$="l" then a=2:goto 50
40 if a$="z" then xx=-2
45 if a$="x" then xx=+2
50 for z=1 to 10:x=x+xx:if x>250 then x=30
55 if x<20 then x=250
60 if a=1 and y>70 then y=y-2
65 if a=2 and y<200 then y=y+2
70 poke v,x:poke v+1,y
75 next z:goto 30
100 data 128,0,3,192,0,30,240,0,250,104,1,52,84,2,228,58,2,216,45,7,144,20
105 data 133,32,22,78,64,22,44,64,11,24,128,5,201,0,3,230,0,0,49,192,16,64
110 data 32,31,129,16,21,194,240,27,54,8,10,9,0,12,4,128,4,2,64
