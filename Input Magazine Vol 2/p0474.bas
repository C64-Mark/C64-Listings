5 rem *** requires simons' basic - needs debugging ***
10 dim a(100),p(100)
20 print"{clear}{yellow}":colour 0,0
40 print tab(17)"menu"
50 print tab(12)"{white}{down}1: enter data"
60 print tab(12)"2: view chart"
70 print tab(12)"3: end"
80 get g$:g=val(g$):if g<1 or g>3 then 80
90 on g gosub 200,400,600
100 goto 20
200 print"{clear}":n=0
210 a$="":print"item no.";n+1;:input a$:if a$="" or val(a$)=0 then return
220 n=n+1:a(n)=val(a$)
230 if n<31 then 210
240 return 
400 if n=0 then return
405 print"{clear}":colour 1,1:hires 0,1:multi 2,4,6
410 tt=0:for t=1 to n:tt=tt+a(t):next
420 rt=0:for t=1 to n:rt=rt+a(t):p(t)=rt/tt:next t
430 co=1:p(0)=-1:n=0
450 for t=0 to 2*pi step .01
460 if t>2*pi*p(n) then n=n+1:co=co+1:if co>3 then co=1
470 line 80,100,80+40*sin(t),100+50*cos(t),co
480 next t:line 80,100,80,150,0
490 pause 15:nrm:return
600 print"{clear}{black}":nrm:colour 6,1
