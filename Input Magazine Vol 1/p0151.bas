10 poke 56,100:poke 55,0:poke 52,100:poke 51,0:clr
20 data 0,254,0,3,57,128,7,255,192,0,16,0,16,56,16,56,84,56,124,146,124,131,255
30 data 130,144,56,18,184,16,58,144,16,18,131,255,130,254,84,254,252,56,126,0,56
40 data 0,0,40,0,0,56,0,1,199,0,6,16,192,1,199,0,0,124,0
50 data 0,0,0,127,255,254,64,0,2,64,0,2,64,16,2,64,48,2,64,16,2,64,16,2,80,56
60 data 114,84,0,18,94,0,114,68,0,66,68,56,114,64,8,2,64,56,2,64,8,2,64
70 data 56,2,64,0,2,64,0,2,127,255,254,0,0,0
80 data 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,0,42,0,0,20,0,0,42,0,0
90 data 42,0,0,73,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
100 data 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,0,4,132,128,255
110 data 255,255,72,72,68,48,48,56,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
120 data 0,0,16,0,0,24,0,0,20,0,0,20,0,0,20,0,0,24,0,0,48,0,0,80,0,0,80,0,0,48,0
130 data 0,24,0,0,20,0,0,20,0,0,24,0,0,48,0,0,80,0,0,80,0,0,80,0,0,48,0,0,16
140 data 0,0,16,0
210 for zz=0 to 4:poke 2040+zz,200+zz
220 for z=1 to 63:read x:poke 12799+(zz*64)+z,x:next z,zz
230 clr:v=53248:fu=100:poke 650,255:poke 53280,0:poke 53281,0:print"{clear}"
240 poke v+2,145:poke v+3,120:poke v+23,250:poke v+29,250:poke v+30,240
250 xx=31+int(rnd(1)*210):yy=60:dx=1:dy=1:if rnd(1)>.50 then yy=180:dy=-dy
260 print"{home}"tab(14)"{yellow}fuel:    {left*4}"fu
270 if rnd(1)>.90 then xx=31 + int(rnd(1)*210):yy=60:dx=1:dy=1
320 xx=xx+dx:if xx=<30 or xx=>245 then dx=-dx
330 yy=yy+dy:if yy=<50 or yy=>190 then dy=-dy
340 poke v,xx:poke v+1,yy:if f=0 then f=1:fx=xx:fy=yy
350 if f=1 then gosub 410
360 get a$:s$ = "":sh=0
370 if a$="4" or a$="2" then sh=1:poke 2043,204:s$=a$
380 if a$="1" or a$="3" then sh=1:poke 2043,203:s$=a$
390 if sh=1 then 470
400 poke v+21,247:goto 260
410 if fx>153 then fx=fx-5
420 if fx<153 then fx=fx+5
430 if fy<135 then fy=fy+5
440 if fy>135 then fy=fy-5
450 poke v+4,fx:poke v+5,fy:if peek(v+30)=246 then 550
460 return
470 if s$="4" then l1=118:l2=120
480 if s$="2" then l1=175:l2=120
490 if s$="1" then l1=145:l2=95
500 if s$="3" then l1=145:l2=145
510 poke v+6,l1:poke v+7,l2:fu=fu-1:poke v+21,255:if fu<0 then 540
520 if peek(v+30)=252 then f=0:goto 240
530 goto 260
540 print tab(4)"{down}{white}you have run out of fuel!":goto 560
550 print tab(11)"{down}{white}you've been hit!" 
560 for zz=1 to 10:for t=1 to 100:next:poke v+21,247:for t=1 to 100:next:poke v+21,0
570 next:print"{clear}"tab(12)"{down*12}{purple}{reverse on}hit space bar"
580 get x$:if x$<>" " then 580
590 run 230
