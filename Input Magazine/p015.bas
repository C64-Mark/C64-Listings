10 for m=252 to 253:for i=64*m to 64*m+29:poke i,0:next
20 for i=64*m+30+30*(m=253) to 64*m+62:read a:poke i,a:next:next
30 print"{clear}"
40 sc=53248:x=24:y=155:poke2043,252:poke sc+7,y:poke sc+6,x:poke sc+16,0
50 poke sc+23,0:poke sc+29,0:poke sc+27,0:poke sc+42,5:poke sc+21,8
60 sc=53248:x=24:y=155:poke2043,252:poke sc+7,y:poke sc+6,x:poke sc+16,0:yr=0
70 get a$
80 if y>155 then poke2043,252
90 if peek(2043)=253 then 120
100 if a$<>" " then 70
110 poke2043,253:yr=7.5
120 y=y-yr:yr=yr-7
130 x=x+4:if x=296 then poke2043,252:for t=1 to 200:next:goto 60
140 xa=int(x/256):xb=x-xa*256
150 poke sc+6,xb:poke sc+7,y:poke sc+16,(1 and xa)*8:goto 70
1000 data 0,128,0,1,192,0,1,176,0
1010 data 4,96,0,15,240,0,31,224,0,63,192,0
1020 data 127,64,0,254,32,0,248,156,0,127,192,0
1030 data 0,0,28,0,0,27,0,0,70,0,0,255,0,1,254,0,3,252,0,7,249
1040 data 0,7,250,0,7,196,0,15,0,0,30,0,0,62,0,0,54,0,0,70,0
1050 data 0,14,0,0,0,144,0,1,16,0,1,16,0,1,32,0,3,32,0,6,48,0,2,32,0
