20 poke 54277,33:poke 54278,255:poke 54273+23,15:poke 54276,33:poke 54273,0
30 for z=1 to 8:read a(z):next z:data 128,64,32,16,8,4,2,1
40 z$="0123456789abcdef":a=0:a$="+-":aa=1:poke650,128:v$="{right*8}"
50 poke 53280,1:poke 53281,1:print"{clear}{black}{down*4}"
60 for z=1 to 9:print tab(5)"{reverse on}                             ":next z
70 print"{red}{down}"tab(13)"2's complement"
80 print"{home}"tab(12)"negative numbers"
90 print tab(12)"-------------"
100 print"{purple}  dec             bin              hex"
110 print"{blue}{down*4}{right*8}flip bits":print"{down*3}"tab(29)"+1"
120 print"{up*4}{right*2}+"tab(37)"+"
130 print"{down*9}----------------------------------------"
140 print"  0      0  0  0  0  0  0  0  0      00":goto 300
150 get k$:if k$="" then 150
160 s=0:ss=0:if k$<>" " and k$<>"b" then 500
170 al=a:if k$<>" " then 210
180 if aa=2 then a1=a1-1
190 if aa=1 then a1=a1+1
200 goto 240
210 if k$<>"b" then 240
220 if aa=2 then a1=a1+1
230 if aa=1 then a1=a1-1
240 if a1<0 or a1>128 then aa=aa+1
250 if a1>128 then a1=127
260 if a1<0 then a1=1
270 a=a1
280 if a=0 then aa=1
290 if a=128 then aa=2:poke 54273,9:for z=1 to 20:next:poke54273,0
300 if aa>2 then aa=1
310 w=0:if m=1 then t=1:tt=0 
320 if aa=2 then t=0:tt=1:w=1
330 a1=a-w:for z=1 to 8:if a(z)<=a1 then b(z)=t:c(z)=tt:a1=a1-a(z):goto 350
340 b(z)=tt:c(z)=t
350 if b(z)=1 then s=s+a(z)
360 next z:a2=0:for z=1 to 8:if c(z)=0 then a2=a2+a(z)
370 next z:a1=(255-a2)+t:if a1>255 then a1=0
380 for z=1 to 8:if a(z)<=a1+w then d(z)=1:a1=a1-a(z):ss=ss+a(z):goto 400
390 d(z)=0
400 next z
410 print"{home}{down*4}";mid$(a$,aa,1)"    {left*4}"a
420 print"{up}"v$;:for z=1 to 8:print b(z);:next z
430 za=int(s/16):zb=s-(16*za):print"     "mid$(z$,za+1,1);mid$(z$,zb+1,1)
440 print"{down*4}"v$;:for z=1 to 8:print c(z);:next:print
450 print"{down*7}";:if aa= 1 thenprint"-";
460 if aa=2 then print"+";
470 print"    {left*4}"a:print"{up}"v$;
480 for z=1 to 8:printd(z);:next z:za=int(ss/16):zb=ss-(16*za)
490 print"     "mid$(z$,za+1,1);mid$(z$,zb+1,1):goto 150
500 i$="":print"{blue}{home}{down*21}input number?(-128 to +127):      {left*4}";
510 for z=1 to 4
520 get j$:if z=1 and (j$="-" or j$="+") then u$=j$:print u$;:next z
530 if z=1 then 520
540 print "*{left} {left}";:if j$="" then 520
550 if j$=chr$(13) then 610
560 if j$=chr$(20) then 500
570 if asc(j$)<48 or asc(j$)>57 then 520
580 i$=i$+j$:print j$;:next z
590 get j$:if j$=chr$(20) then 500
600 if j$<>chr$(13) then 590
610 if val(i$)<0 or (val(i$)>128 and u$="-") or (val(i$)>127 and u$="+") then 500
620 if u$="-" then aa=2:goto 640
630 aa=1
640 print:print"{up}                                       ";:a=val(i$):goto 280
