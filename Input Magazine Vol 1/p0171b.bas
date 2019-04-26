10 v=53248:x=150:y=157:print"{clear}"
15 poke 53280,2:poke 53281,2:poke 650,128:for z=16000 to 16000+64*2:pokez,0:next 
20 for i=16000 to 16077:read a:poke i,a:next i:ti$="000000":poke v+29,1 
25 poke 2040,250:poke 2041,251:poke v+21,3:xx=100:yy=100:poke v+40,1  
30 for z=1 to 5:print"{home}{cyan}time:{white}"val(ti$):if rnd(1)>.30 then poke v+23,rnd(1)*2 
35 a=int(rnd(1)*3)+1:x=x+10:if x>239 then x=30 
40 if a=1 and y>70 then y=y-10 
45 if a=2 and y<200 then y=y+10 
50 poke v,x:poke v+1,y:poke v+39,7:get z$:if z$="z" and xx>30 then xx=xx-5
55 if z$="x" and xx<250 then xx=xx+5
60 if z$="p" and yy>50 then yy=yy-5
65 if z$="l" and yy<220 then yy=yy+5
70 poke v+2,xx:poke v+3,yy:if peek(v+30)=3 then s=s+1
75 print"{home}{cyan}"tab(25)"score:{white}"s:next z:if val(ti$)<59 then 30
80 print "{home}{black}{purple}times up{cyan}!":end
100 data 128,0,3,192,0,30,240,0,250,104,1,52,84,2,228,58,2,216,45,7,144,20
105 data 133,32,22,78,64,22,44,64,11,24,128,5,201,0,3,230,0,0,49,192,16,64
110 data 32,31,129,16,21,194,240,27,54,8,10,9,0,12,4,128,4,2,64 
115 data 8,0,0,8,0,0,62,0,0,8,0,0,8,0,0
