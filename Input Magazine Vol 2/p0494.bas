10 gosub 330
20 poke 53280,5:poke 53281,0:print"{clear}"
30 y=1284:tu=0:sc=0
40 for z=1 to 23:print"{yellow}{cm +}{space*38}{cm +}";:next z
50 d=(1064+int(rnd(1)*37)+1)+(int(rnd(1)*20)+1)*40:ti$="000000"
60 tu=tu+1:if tu>10 then 260
70 print"{home}{green}";spc(30);"duck:";tu
80 poke d,128:poke d+1,129:poke d+40,130:poke d+41,131
90 print"{home}{yellow}";tab(11);"tm: ";ti$
100 print"{home}{purple}{space*8}{left*8}";sc
110 j=peek(145)
120 poke y,32:poke y+1,32:poke y+40,32:poke y+41,32
130 t=0:t1=0:t2=0:t3=0:t4=0:if ((j and 1)=0)=-1 then t1=-40
140 if ((j and 2)=0)=-1 then t2=40
150 if ((j and 4)=0)=-1 then t3=-1
160 if ((j and 8)=0)=-1 then t4=1
165 t=t1+t2+t3+t4
170 if(y+t>1063 and y+t<1943) and (peek(y+t)<>102 and peek(y+t+1)<>102) then y=y+t
180 poke y,125:poke y+1,109:poke y+40,110:poke y+41,112
190 if ((j and 16)=0)=-1 then 240
200 if ti$<"000006" then 80
210 s=10:ed=500:gosub 400
220 sc=sc-10
230 poke d,32:poke d+1,32:poke d+40,32:poke d+41,32:goto 50
240 if y<>d then sc=sc-10:s=30:ed=150:gosub 400:goto 80
250 sc=sc+(10-val(ti$))*5:for s=10 to 30:ed=30:gosub 400:next s:goto 50
260 if sc>hs then hs=sc
270 print"{home}{yellow}your score:";sc:print"{white}high score:";hs
280 print tab(15);"{down*2}{cyan}end of game"
290 print tab(12);"another go? (y/n)"
300 get a$:if a$="y" then 20
310 if a$<>"n" then 300
320 print"{clear}{light blue}":poke 53280,14:poke 53281,6:poke 53272,21:end
330 poke 52,48:poke 56,48
340 poke 56334,0:poke 1,35
350 for z=0 to 1023:poke 12288+z,peek(53248+z):next z
360 poke 1,39:poke 56334,1
370 for z=0 to 31:read x:poke 13312+z,x:next z:poke 53272,28:return
380 data 14,27,63,31,15,7,15,31,0,0,0,0,0,192,112,188
390 data 31,29,30,15,3,1,1,3,206,30,124,248,224,64,64,224
400 v=54272:poke v+24,15:poke v+5,15:poke v+6,248
410 poke v+1,s:poke v+4,17:for de=1 to ed:next de
420 poke v+4,0:poke v+5,0:poke v+6,0:return 
