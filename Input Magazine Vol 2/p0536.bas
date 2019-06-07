10 poke 53280,6:poke 53281,1:mu=100:jm=7:le=39:tx=15
20 for z=1 to le:e1$=e1$+"{cm @}":e2$=e2$+"{cm -}":next z:e2$=e2$+"{cm -}"
30 dim d$(52):c$="ASXZ":cc$="a234567890jqk"
40 for zz=1 to 4:for z=1 to 13
50 x=x+1:d$(x)=mid$(c$,zz,1)+mid$(cc$,z,1):next z,zz:print"{clear}"
60 for x=1 to 52
70 xx=int(rnd(1)*52)+1
80 dd$=d$(x):d$(x)=d$(xx):d$(xx)=dd$:if rnd(1)<.50 then 130
90 print"{home}{down*4}":t=rnd(1)*3+tx
100 print tab(t)"{green}O{cm y*5}P":for zz=1 to 9
110 print tab(t)"{green}{cm g}{blue}{cm +*5}{green}{cm m}":next zz
120 print tab(t)"L{cm p*5}{sh @}"
130 next x
140 z=0
150 print"{clear}{down*11}"
160 for zz=1 to 10:print"{black}{reverse on}";e1$:next zz
170 print"{home}{down*4}";:print"{blue}{reverse on}"e2$;e2$
180 z=z+1:nu=nu+1:if z>52 then z=1
190 dd$=left$(d$(z),1)
200 d1$=right$(d$(z),1):if d1$="0" then d1$="10":d2$="10":goto 220
210 d2$=" "+d1$:d1$=d1$+" "
220 for d=1 to 500:next d:print"{home}card{blue}   {left*3}";z
240 print"{home}{down*7}{green}"tab(t)"{reverse on}O{cm y*5}P":for zz=1 to 9
250 print tab(t)"{reverse on}{cm g}{reverse off}     {reverse on}{cm m}":next zz
260 print tab(t)"{reverse on}L{cm p*5}{sh @}{black}":if dd$="Z" or dd$="S" then print"{red}"
270 print"{home}{down*8}"tab(t);"{right}";d1$;"{down*8}{right}";d2$
280 for zz=1 to 13:if mid$(cc$,zz,1)=right$(d$(z),1) then jj=zz
290 next zz:print"{home}{down*9}"tab(t);"{right}"; 
300 on jj gosub 700,520,530,540,550,560,570,580,590,610,650,670,630
510 goto 180
520 print"{down}{right*2}"dd$"{left}{down*4}"dd$:return
530 print"{down}{right*2}"dd$"{left}{down*2}"dd$"{left}{down*2}"dd$:return
540 print"{down}{right}"dd$"{right}"dd$"{left*3}{down*4}"dd$"{right}"dd$:return
550 print"{down}{right}"dd$"{right}"dd$"{left*2}{down*2}"dd$"{left*2}{down*2}"dd$"{right}"dd$:return
560 print"{down}{right}"dd$"{right}"dd$"{left*3}{down*2}"dd$"{right}"dd$"{left*3}{down*2}"dd$"{right}"dd$:return
570 print"{down}{right}"dd$"{right}"dd$"{left*2}{down}"dd$"{left*2}{down}"dd$"{right}"dd$"{left*3}{down*2}"dd$"{right}"dd$:return
580 print"{down}{right}"dd$"{right}"dd$"{left*2}{down}"dd$"{left*2}{down}"dd$"{right}"dd$"{left*2}{down}"dd$"{left*2}{down}"dd$"{right}"dd$:return
590 print"{down}{right}"dd$"{right}"dd$"{left*3}{down}"dd$"{right}"dd$"{left*2}{down}"dd$"{left*2}{down}"dd$"{right}"dd$"{left*3}{down}"dd$"{right}"dd$
600 return
610 print"{right}"dd$"{right}"dd$"{left*2}{down}"dd$"{left*2}{down}"dd$"{right}"dd$"{left*3}{down*2}"dd$"{right}"dd$"{left*2}{down}"dd$"{left*2}{down}";
620 printdd$"{right}"dd$:return
630 print"{reverse on}{cm asterisk*5}{reverse off}{down}{left*5}{cm +*5}{down}{left*5}{cm +}QIQ{cm +}{down}{left*5}{cm +} {cm z} {cm +}{down}{left*5}{cm +}J{sh asterisk}K{cm +}{down}{left*5}J{cm r}{sh asterisk}{cm r}K";
640 print"{down}{left*5}{cm d}{reverse on} "dd$" {reverse off}{cm f}":return
650 print"  {cm pound}  {down}{left*5}{cm pound}{cm +*3}{cm pound}{down}{left*5}{cm +}Q Q{cm +}{down}{left*5}{cm +}{space*3}{cm +}{down}{left*5}{sh -}J{sh asterisk}K{sh -}{down}{left*5}J{cm r}{sh asterisk}{cm r}K";
660 print"{down}{left*5} {reverse on} "dd$" {reverse off}":return
670 print" {reverse on}{cm b} {reverse off}{cm b} {down}{left*5}{reverse on}{cm b*2}{reverse off} {cm b*2}{down}{left*5}{reverse on}{cm b}{reverse off}Q Q";
680 print"{cm b}{down}{left*5}{reverse on}{cm b}{reverse off} W {cm b}{down}{left*5}{cm b}{reverse off}J{sh asterisk}K{cm b}{down}{left*5}{reverse on}{cm b}{reverse off}M N{cm b}";
690 print"{down}{left*5} {reverse on}{sh pound}"dd$"{cm asterisk}{reverse off}":return
700 print"{right*2}"dd$"{left*2}{down}{cm pound}{cm +}{cm pound}{down}{left*3}{cm +} {cm +}{down}{left*3}{cm +}{cm pound}{cm +}{down}{left*3}{cm +} {cm +}{down}{left*3}{cm +} {cm +}{down}{left*2}"dd$:return 
