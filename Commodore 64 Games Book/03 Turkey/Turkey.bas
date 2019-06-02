1 poke 53281,0:poke 53280,9
2 co=54272:p=150:x=150:y=190:v=53248:sc=0:li=3:xd=int(rnd(1)*9-4):yd=-1
3 poke v+21,3:poke 2040,13:poke 2041,14
4 for i=0 to 126:read q:poke 832+i,q:next
5 poke v,p:poke v+1,200:poke v+2,x:pokev+3,y
7 print"{clear}{white}super waiter!{space*2}{blue}score:"
8 for i=55381 to 55406:poke i,5:poke i-co,86:next:for i=55381 to 56156 step40
9 poke i,5:poke i-co,86:poke i+25,5:poke i+25-co,86:next
10 print"{home}{right*21}{white}";s;"{space*5}";li
20 pe=peek(197)
22 if pe<>12 and pe<>36then 50
26 if pe=12 and p>70 then p=p-2
32 if pe=36 and p<240 then p=p+2
40 poke v,p
50 y1=y:x1=x:m=0
60 y1=y1+yd:x1=x1+xd
70 if x1<70 or x1>240 then xd=-xd:s=s+1:m=1
80 if y1>220 then x=p:y=200:xd=int(rnd(1)*9-4):yd=-1:li=li-1:goto 110
90 if y1<70 then yd=1:xd=int(rnd(1)*9-4):s=s+1:m=1
95 if y1<210 and peek(v+30)<>0 then yd=-1:xd=int(rnd(1)*9-4):s=s+2
100 if m=0 then x=x1:y=y1:poke v+2,x:poke v+3,y
110 if li>0 then goto 10
120 print"{home}{down*8}{right*6}the turkey is inedible!!"
130 print"{down*2}{green}{right*6}{purple}{space*3}want to try again?"
140 get a$:if a$="y" then run
150 if a$<>"n" then 140
160 end
9000 data0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,255,240,7,255,240,0,62,0,0
9010 data64,128,0,92,128,0,92,128,0,73,0,0,62,0,0,30,0,0,30,0,0,18,0,0,17,0,0,17
9020 data0,0,49,128
9030 data0,0,,0,0,0,0,0,0,0,0,0,192,0,7,240,0,15,240,0,31,252,0,63,254,0,127,254
9040 data0,255,127,1,248,63,9,224,14,7,128,14,15,240,15,3,14,30,6,1,248,0,0,112
9050 data0,0,0,0,0,0,0,0,0,0,0,0,0
