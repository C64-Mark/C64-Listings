20 print"{clear}"chr$(8):for z=1 to 8:read a(z):next z:data 128,64,32,16,8,4,2,1
30 k$="0123456789abcdef":poke 650,255: poke 53280,0:poke53281,0
40 print"{home}"tab(13)"{yellow}bin,dec,hex"
50 print tab(13)"{white}-----------"
60 print"{down*3}{yellow}binary{cyan}:{down}"
70 print"{down*3}{yellow}decimal{cyan}:{down}"
80 print"{yellow}{down*3}hexadecimal{cyan}:{down}"
90 print"{home}{cyan}{down*6}":v$="":for z=1 to 8:v$=v$+left$(" " + str$(b(z)) +"  ",4):next z
100 print mid$(v$,3,14)"  "right$(v$,16)
110 print"{down*3}":v$="":for z=1 to 8
120 v$=v$+left$("+"+right$(str$(d(z)),len(str$(d(z)))-1)+"   ",4):next z
130 print mid$(v$,2,15);"   ";mid$(v$,18,16)"=    {left*4}";
140 print d(1)+d(2)+d(3)+d(4)+d(5)+d(6)+d(7)+d(8)
150 print"{down*3}":v$="":for z=1 to 8
160 v$=v$+left$("+"+right$(str$(h(z)),len(str$(h(z)))-1)+"   ",4):next z
170 x1$=mid$(k$,h(1)+h(2)+h(3)+h(4)+1,1):x2$=mid$(k$,h(5)+h(6)+h(7)+h(8)+1,1)
180 print mid$(v$,2,15);"{left}={red}"x1$"{cyan}  ";mid$(v$,18,16);"= {red}"x2$
190 print,"{down*3}{white}  hex total :      {left*5}{red}";x1$+x2$
200 get a$:if a$="" then 200
210 poke 198,0:if a$=" " then a=a+1:if a>255 then a=0
220 if a$="b" then a=a-1:if a<0 then a=255
230 if a$<>" " and a$<>"b" then 350
240 aa=a
250 for z=1 to 8:if a(z)<=aa then b(z)=1:d(z)=a(z):aa=aa-a(z):goto 270
260 b(z)=0:d(z)=0
270 next
280 for z=1 to 4:if b(z)=1 then h(z)=a(z+4):goto 300
290 h(z)=0
300 next z
310 for z=1 to 4:if b(z+4)=1 then h(z+4)=a(z+4):goto 330
320 h(z+4)=0
330 next z
340 goto 90
350 i$="":print"{white}{home}{down*22}       input number?(0-255):    {left*3}"; 
360 for z=1 to 3
370 get j$:print"*{left} {left}";:if j$="" then 370
380 if j$=chr$(13) then 440
390 if j$=chr$(20) then 350
400 if asc(j$)<48 or asc(j$)>57 then 370
410 i$=i$+j$:print j$;:next z
420 get j$:if j$=chr$(20) then 350
430 if j$<>chr$(13) then 420
440 if val(i$)<0 or val(i$)>255 then 350
450 print:print"{up}                                        ";
460 a=val(i$):goto 240
