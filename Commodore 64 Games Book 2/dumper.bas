0 rem dumper [controls: z, c & space]
100 hs=0
110 poke 53280,5:poke 53281,3
120 print"{clear}{down*9}{red}{reverse on}";
125 for i=1 to 8:print"{space*40}";:next
130 print"{reverse off}{down*2}"tab(8)"{yellow}{sh -}{down}{left}+{down}{left}{sh -}{down}{left}{reverse on} "
140 print"{up}{purple}{cm i*3}{reverse on} {cm y}{cm t}{reverse off} {right}UI{black}{cm i}{purple}{cm i}{yellow}NM{red}{cm i}{purple}OP {black}{cm i*3}";
145 print"{purple}{cm i*3}{reverse on} {cm y}{cm t}{reverse off} {right}UI{black}{cm i}{purple}{cm i}{yellow}NM{red}{cm i}{purple}OP {black}{cm i}";
150 print"{reverse on}{space*40}";
155 print"{reverse on}{space*40}";
160 print"{up*3}{right*4}{reverse off}{red}{cm i}{right*12}{cm i}"
170 du=3:s=0
180 al=1:a$=" {red}{reverse on}{sh pound}{blue}{reverse off}Q{red}{reverse on}{cm asterisk}{reverse off} {down}{left*5} {cm k}{yellow}{cm t}{red}{reverse on}{cm k}{reverse off} "
190 p=1339:co=54272
200 b=0
210 k=64:goto 240
220 k=peek(197):if k=64 then 340
230 if k=60 then 500
240 d=(k=12)-(k=20)*2+p:if d<1303 then 340
250 if peek(d)=160 then d=d-40
260 if d>p then d=d-1
270 poke p,32:poke p-41,32:poke p-39,32:poke p+1,32:poke p-40,32
280 poke p-81,32:poke p-80,32:poke p-79,32:poke p-121,32:poke p-119,32:p=d
290 poke p+co,0:poke p+1+co,0:poke p-41+co,4:poke p-40+co,1:poke p-39+co,1
300 poke p,81:poke p+1,81:poke p-41,233:poke p-40,98:poke p-39,248
310 if peek(p+40)<>32 and peek(p+40)<>160 then 570
320 if peek(p+40)=160 then 340
330 d=p+40:goto 270
340 al=al+int(rnd(1)*3-1):if al<0 then al=0
350 if al>18 then al=18
360 print"{home}"tab(al)a$
370 if b>0 then 400
380 if rnd(1)<.8 then 490
390 b=1106+al
400 poke b,32:b=b+40:if peek(b)=32 then 480
410 if peek(b)<>160 then 460
420 poke b,32
450 b=0:goto 490
460 if b>1663 then 570
470 goto 670
480 poke b+co,0:poke b,46
490 goto 220
500 di=p-1:if peek(di+40)<>160 then s=s+5
510 poke p-41,95
520 poke p-41,233:goto 550
530 s=s+1:poke di+co,2:poke di,160
540 for i=1 to 10:next
550 if peek(di+40)=160 or di>1623 then 340
560 poke di,32:di=di+40:goto 530
570 goto 660
660 goto 760
670 poke b+co,7:poke b-1+co,7:poke b+1+co,7
680 poke b-1,77:poke b,121:poke b+1,78
710 if du=1 then 760
720 poke b,32:poke b-1,32:poke b+1,32
730 poke p,32:poke p+1,32:poke p-41,32:poke p-40,32:poke p-39,32
740 print"{home}"tab(al+1)"{space*4}{down}{left*3}{space*3}"
750 du=du-1:goto 190
760 for i=1 to 1000:next:print"{home}{down*2}{black}score"s
770 if s>hs then hs=s
780 print"{blue}hi{space*3}"hs
790 print"{red}another game?":poke 198,0
800 get a$:if a$="y" then 120
810 if a$<>"n" then 800
820 print:print"{blue}{yellow}{green}{purple}too tough for you, eh ?"
830 end
