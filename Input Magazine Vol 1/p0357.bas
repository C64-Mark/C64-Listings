10 for z=1 to 40:li$=li$+"-":next:li$="{white}"+li$
20 print"{clear}{yellow}"tab(7)"******typ{orange}ing{yellow}tut{orange}or*****"
30 printchr$(8)chr$(14):poke 54296,15:goto 260
40 s=0:ww=1:er=0:nm=0:n=0
50 poke53280,5 
60 print"{home}{down*5}";:if k=1 then print"{cyan}{reverse on}"tab(10)a$:poke 198,0
70 x=int(rnd(1)*20)+1:n=n+1:p=p+1:if k=1 then x=n:goto 90
80 if k=2 then x=int(rnd(1)*20)+1:print tab(18)"{cyan}{cm a}{sh asterisk}{cm s}{down}{left*3}{sh -}{green}"mid$(a$,x,1)"{cyan}{sh -}{down}{left*3}{cm z}{sh asterisk}{cm x}"
90 if k=1 then print"{home}{down*4}"tab(10+(x-1))"{white}*"
100 ti$="000000"
110 get k$:if k$="" and ti<tm then 110
120 if ti>tm then er=er+1:goto 170
130 if k$<>mid$(a$,x,1) then 110
140 if k=1 then for z=4 to 1 step-1:print left$("{home}{down*8}",z+6)tab(10+x-1)"{white}^{down}{left} ":next
150 if k=2 then print"{home}{down*5}"tab(18)"{cyan}{cm a}{sh asterisk}{cm s}{down}{left*3}{cm w}{green}{right}{cyan}{cm q}{down}{left*3}{cm z}{sh asterisk}{cm x}"
160 if ti<tm then 160
170 w=54276:a=54277:nm=nm+1:poke 53280,6
180 if k=1 then print"{home}{down*4}"tab(10+(x-1))" "
190 poke w,33:poke a,50:poke 54273,150
200 poke 54273,0:poke w,32
210 if k=1 and n<20 then 50
220 if k=2 and n<tl then 50
230 print"{clear}{reverse off}"li$"{green}at"kp"key presses per minute you got"
240 print er"out of"nm"wrong"
250 print li$
260 poke 53280,6:poke 53281,0:poke 198,0
270 print"{home}{down*10}{white}"tab(15)"options{down}{green}"
280 for z=1 to 2:print tab(13)z;":test";z:next z
290 print tab(12)"{white}{down}enter choice?"
300 get k$:k=val(k$):if k<1 or k>2 then 300
310 input"{clear}input key press per minute";kp:if kp<1 then 310
320 tm=3000/kp:input"{clear}normal or extended keys (n/e)";nx$
330 if nx$<>"n" and nx$<>"e" then 320
340 if k=2 then tl=20:input"{clear}input number of characters";tl
350 print"{clear}"li$"{green}"
360 print"{up}type the letter when you hear the beep"
370 sp=1:if nx$="n" then sp=.5
380 print li$:a$="":for z=1 to 10.5 step sp:q1=65+rnd(1)*26
390 q2=33+int(rnd(1)*25)
400 if rnd(1)>.50 then q1=q1+128
410 if nx$="n" then a$=a$+chr$(q1):next:goto 430 
420 a$=a$+chr$(q2)+chr$(q1):next
430 print tab(11)"{white}press key to start":poke 198,0:wait 198,1
440 print tab(11)"{up}{space*18}"
450 goto 40
