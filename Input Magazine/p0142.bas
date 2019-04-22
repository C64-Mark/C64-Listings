10 rem ***works to some extent, needs further debugging***
20 print"{clear}":poke 53280,0: poke 53281,0:dim d$(4,400):co=0
30 a$(1)="housekeep1ng":a$(2)="entertainment":a$(3)="rent & rates"
40 a$(8)="income":a$(4) ="clothing":a$(5)="motor1ng":a$(6)="holiday"
50 a$(7)="miscellaneous"
60 print"{clear}{yellow}{down*3}"tab(13)"{reverse on}    main menu    ":print tab(13)"{green}{down*2}1. make an entry"
70 print tab(13)"{down}2. view entries":print tab(13)"{down}3. save to tape"
80 print tab(13)"{down}4. load from tape":print tab(13)"{down}5. printer option"
90 print tab(13)"{down}6. change entry"
100 print tab(13)"{down}7. quit program":print tab(13)"{down*2}{yellow}{reverse on}  enter choice ? "
110 get k$:if val(k$)<1 or val(k$)>7 then 110
120 c$="":kk$ = k$:if k$="1" then goto 500
130 if k$="2" then gosub 440:goto 640
140 if k$="3" then gosub 830:goto 790
150 if k$="4" then gosub 830:goto 810
160 if k$="5" then print "{clear}":gosub 600
170 if k$="6" and co<>0 then c$="y":cq=1:qq$=d$(4,1):goto 200
180 if k$="7" then print tab(13);:input"{up} are you sure   {left*2}";k$:if k$ ="y" then end
190 goto 60
200 cc=0:c1=0
210 print"{clear}{down*2}":if c$="y" then print tab(12)"{reverse on}entry number"cq
220 print"{down}{yellow}"tab(20-(len(a$(val(qq$)))*.5))a$(val(qq$))
230 print"{down}{green}----------------------------------------"
240 print"  {yellow}date{green}   B       {yellow}item{green}       B  {yellow}amount{green}"
250 print"----------------------------------------":sc=0
260 if c$="y" then c1=cq:gosub 370:goto 860
270 c1=c1+1:if d$(4,c1)=qq$ then gosub 370:if pr$="n" then sc=sc+1 
280 if sc=>10 then sc=0:gosub 840:print"{home}{down*5}"
290 if c1=400 or val(d$(4,c1))=0 then 310
300 goto 260
310 c1=0:for z=1 to 8:n(z)=0:next:fr=0
320 c1=c1+1:if c1=>400 or val(d$(4,c1))=0 then return
330 if val(d$(4,c1))=val(qq$) then n(val(qq$))=n(val(qq$))+val(d$(3,c1))
340 if val(d$(4,c1))=8 and val(qq$)=8 then 320
350 if val(d$(4,c1))<>8 then fr=fr+val(d$(3,c1))
360 goto 320
370 print left$(d$(1,c1)+"          ",9)"B";
380 print left$(d$(2,c1)+"                   ",18);"B£";
390 w$=d$(3,c1):ta=9
400 vv=val(vv$):if vv-int(vv)=0 then vv$=str$(vv)+".00"
410 if mid$(vv$,len(vv$)-1,1)="." then vv$=vv$+"0"
420 print right$("                "+vv$,ta)
430 return
440 print"{clear}{yellow}{down*6}"tab(13)"{reverse on}     category     {down}{green}":poke 198,0
450 for z=1 to 8:print tab(12)z": "a$(z):next
460 print tab(13)"{down}{yellow}{reverse on}  enter choice ? "
470 get k$:if (val(k$)<1 or val(k$)>8) and k$<>chr$(13) then 470
480 if k$=chr$(13) and kk$="1" then 470
490 print"{clear}":qq$=k$:return
500 if k$=chr$(13) then co=co-1:goto 60
510 co=co+1:if co>400 then co=400:goto 60
520 c1=co:d$(1,c1)=""
530 print"{clear}{down*2}":if c$<>"y" then print"press return in the date field for menu"
540 input"{down*3}{yellow}  enter date{green}";d$(1,c1):if d$(1,c1)="" then k$=chr$(13):goto 500
550 input"{down}{yellow}  enter item{green}";d$(2,c1)
560 input"{down}{yellow}enter amount{green}";d$(3,c1):gosub 440:if qq$<>chr$(13) then d$(4,c1)=qq$
570 if qq$=chr$(13) then 60
580 if c$="y" then qq$=d$(4,cq):goto 200
590 goto 500
600 print"{home}"tab(5)"{yellow}{down*4}do you want to printout? (y/n)"
610 get k$:if k$="y" then pr$="y":return
620 if k$="n" then pr$="n":return
630 goto 600 
640 if k$=chr$(13) then 60
650 if pr$="y" then open 4,4:cmd 4
660 gosub 200:print"{yellow}----------------------------------------{green}"
670 vv$=str$(n(val(qq$)))
680 print tab(19)"total :{yellow}£";:ta=12:gosub 400
690 print"{green}----------------------------------------":if qq$<>"8" then 720
700 print tab(7)"{down}{green}total expenditure :{yellow}£";:ta=12
710 vv$=str$(fr):gosub400:vv$=str$(n(val(qq$))-fr)
720 if qq$="8" then printtab(17)"{green}{down}balance :{yellow}£";:ta=12:gosub 400
730 if pr$="y" then print#4,chr$(13):close4
740 gosub 940:k$="2":poke 198,0
750 get w$:if w$="" then 750
760 if w$=chr$(13) then 60
770 if pr$="y" then gosub 440:goto 640
780 goto 120
790 open 1,1,1,nm$:print#1,co:for z=1 to co:for zz=1 to 4:print#1,d$(zz,z)
800 next zz,z:close 1:goto 60
810 open 1,1,0,nm$:input#1,co:for z=1 to co:for zz=1 to 4:input#1,d$(zz,z)
820 next zz,z:close 1:goto 60
830 input"{clear}{down}{yellow}enter file name{green}";nm$:print"{clear}":return
840 print tab(11)"{down*2}({yellow}hit key to continue){green}":poke198,0:wait 198,1:print"{home}{down*6}";
850 for z=1 to 14:print"                                       ":next:return
860 print"{yellow}{down}(,) to move back (.) to move forward          {down}space bar to change"
870 get p$:if p$="" then 870
880 if p$=chr$(13) then 60
890 if p$=" " then 530
900 if p$="." then cq=cq+1:if cq>co then cq=co
910 if p$="," then cq=cq-1:if cq<1 then cq= 1
920 if p$="," or p$="." then qq$=d$(4,cq):goto 200
930 goto 870
940 print"{yellow}{down}hit any key to continue         viewing  {down}press return for main menu"
950 return
