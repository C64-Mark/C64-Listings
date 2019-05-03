5 rem ***needs debugging - issue with additional zeroes in between op codes***
10 poke 53280,0:poke 53281,0:print"{clear}"
20 dim k$(77),k1(77),k2(77):h$="0123456789abcdef":r$=chr$(13):qr$="{right*10}"
30 dim t$(200),rr(100),z$(100)
40 p=0:for ii=1 to 76:read k$(ii),k1(ii),k2(ii):if k$(ii)<>"*" then next
50 data adc,105,101
51 data and,41,37
52 data asl,,6
53 data bcc,,144
54 data bcs,,176
55 data beq,,240
56 data bit,,36
57 data bmi,,48
60 data brk,,
61 data byt,,-256
70 data bne,,208
71 data bpl,,16
72 data bvc,,80
73 data bvs,,112
74 data clc,24,
75 data cld,216,
76 data cli,88,
77 data clv,184,
80 data cmp,201,197
81 data cpx,224,228
82 data cpy,192,196
83 data dec,,198
84 data dex,202,
85 data dey,136,
86 data eor,73,69
90 data inc,,230
91 data inx,232,
92 data iny,200,
93 data jmp,,68
94 data jsr,,24
100 data xxx,,
101 data xxx,,
102 data xxx,,
103 data lda,169,165
104 data ldx,162,166
105 data ldy,160,164
110 data lsr,,70
111 data xxx,,
112 data xxx,,
113 data xxx,,
114 data nop,234,
115 data xxx,,
116 data xxx,,
117 data xxx,,
118 data ora,9,5
119 data pha,72,
120 data pla,104,
121 data plp,40,
122 data php,8,
123 data xxx,,
124 data xxx,,
125 data rol,,38
126 data ror,,102
130 data rti,64,
131 data rts,96,
132 data sbc,233,229
133 data sec,56,
134 data sed,248,
135 data sei,120,
136 data sta,,133
137 data stx,,134
140 data sty,,132
141 data tax,170,
142 data tay,168,
143 data tsx,186,
144 data txa,138,
145 data txs,154,
146 data tya,152,
150 data wor,,-256
151 data *,,
160 print"{clear}"qr$"{white}{space*5}menu{down}"
170 print qr$"{yellow}1{green} get from tape"r$qr$"{yellow}2{green} save on tape"r$qr$"{yellow}3{green} assemble"
180 print qr$"{yellow}4{green} edit line"r$qr$"{yellow}5{green} delete line"r$qr$"{yellow}6{green} list on screen"
190 print qr$"{down}{white}input choice?":poke 198,0
200 get a$:if val(a$)<1 or val(a$)>6 then 200
210 jj=val(a$):print"{clear}{yellow}"
220 on jj gosub 1080,1100,250,1120,1200,1230:poke 198,0:print" {down*2}{white}hit any key"
230 get a$:if a$="" then 230
240 goto 160
250 k0=0:k9=0:ps=0:p0=0
260 ps=ps+1:if ps<=3 then k=k0:p=p0:print"{white}{home} pass :{green}"ps:goto 280
270 p0=p:return
280 gosub 980
290 gosub 910:op$=i$:if left$(op$,1)="*" and ps=3 then print op$
300 if left$(op$,1)="*" then 280
310 if op$="end" and ps=3 then print"{down}end last addr";p-1
320 if op$="end" then 260
330 if op$<>"org" and op$<>"p%=" then 370
340 gosub 910:s=0:if left$(i$,1)="*" then s=p:i$=right$(i$,len(i$)-1)
350 p=val(i$)+s:if ps=3 then print"{down}{space*4}org"p
360 goto 280
370 if p=0 then print"{clear}you forgot org":return
380 if op$<>"$p%=" and op$<>"txt" then 420 
390 gosub 910:if ps=3 then print"{space*4}txt"i$tab(20);
400 for j=2 to len(i$):by=asc(mid$(i$+i$,j,1)):if j>=len(i$) then by=13
410 gosub 870:next j:goto 280
420 if len(op$)<>3 then for i=1 to 1:goto 440
430 for i=1+3*(asc(op$)-65) to 76:if op$=k$(i) then 490
440 next:if ps=3 then print op$
450 if left$(i$,1)="." then i$=right$(i$,len(i$)-1)
460 gosub 1010:rr(q2)=p:if i$="" then 290
470 if ps=3 then print"(this line not recognized)"
480 goto 280
490 ad$="#0":r=0:if k2(i)<>0 then gosub910:ad$=i$:op=k2(i)
500 if ps=3 then print" "op$;:if k2(i)<>0 then print" "ad$;
510 if left$(ad$,1)="#" then ad$=right$(ad$,len(ad$)-1):op=k1(i)
520 if right$(ad$,1)<>")" then 530
525 op=op-20:ad$=mid$(ad$,2,len(ad$)-2):if op=48 then op=100
530 if right$(ad$,2)=",x" then op=op+16:ad$=left$(ad$,len(ad$)-2)
540 if ad$="a" then ad$="0":op=op+4
550 if right$(ad$,2)<>",y" then 580
560 op=op+16:ad$=left$(ad$,len(ad$)-2):if right$(op$,1)<>"x" then op=op-4:r=65536
570 if right$(ad$,1)=")" then ad$=mid$(ad$,2,len(ad$)-2):r=r-65536
580 s=1
590 if ad$="" then 770
600 x$=left$(ad$,1):bd$=right$(ad$,len(ad$)-1)
610 if x$="*" then r=r+p*s:ad$=bd$:goto 580
620 if x$="+" then ad$=bd$:goto 590
630 if x$="-" then ad$=bd$:s=-s:goto 590
640 q=0
650 if(x$<>"$" and x$<>"&") or bd$<"0" or bd$ >="g" then 690
660 for q2=0 to 15:if left$(bd$,1)<>mid$(h$,q2+1,1) then 680
670 q=q*16+q2:bd$=right$(bd$,len(bd$)-1):goto 660
680 next:r=r+q*s:ad$=bd$:goto 580
690 if x$<"a" or x$>"z" then 720
700 i$=ad$:gosub 1010:if i$<>"" then gosub 1050
710 r=r+rr(q2)*s:ad$=i$:goto 580
720 if x$<"0" or x$>=":" then r=0:goto 760
730 if ad$<"0" or ad$>=":" then 750 
740 q=q*10+asc(ad$)-48:ad$=right$(ad$,len(ad$)-1):goto 730
750 r=r+s*q:goto 580
760 if ps=3 then print"(address not understood)";
770 if left$(op$,1)="b" and (0=(op and 4) and op>0) then r=(r-p-2) and 255
780 if left$(op$,1)="j" or left$(op$,1)="w" then r=r+65536
790 if r>255 then op=op+8 
800 k2=k2(i):if(op and 15)=10 then k2=0
810 if ps=3 then print tab(16);:by=p/256:gosub 890:by=p-32768:gosub 890:gosub 850
820 if op>=0 then by=op/256:gosub 870:by=op:gosub 880
830 if k2=0 then 280
840 gosub 850:by=r-256*int(r/256):gosub 880:by=r/256:gosub 870:goto 280
850 if ps=3 thenprint" ";
860 return
870 if int(by<=0) then return
880 p=p+1:if ps=3 then poke p-1,by and 255
890 by=by and 255:if ps=3 then print mid$(h$,by/16+1,1)mid$(h$,(by and 15)+1,1);
900 return
910 if k>n then i$="end":return
920 k1=k9+1:if k9>=len(t$(k)) then i$="/missing/":return
930 k9=k1:if mid$(t$(k),k1,1)=" " then 920
940 if k9>len(t$(k)) then i$=mid$(t$(k),k1,k9-k1):return
950 if mid$(t$(k),k9,1)<>" " then k9=k9+1:goto 940
960 i$=mid$(t$(k),k1,k9-k1)
970 return
980 if k9<=len(t$(k)) and ps=3 then print right$(t$(k),len(t$(k))-k9+1);
990 k=k+1:k9=0:if ps=3 then print
1000 return
1010 x$=""
1020 if i$<"a" or i$>="[" then 1040
1030 x$=x$+left$(i$,1):i$=right$(i$,len(i$)-1):goto 1020
1040 if i$<>"" then return
1050 for q2=1 to vv:if x$=z$(q2) then 1070
1060 next:vv=vv+1:z$(vv)=x$:q2=vv:rr(vv)=32768
1070 return
1080 open 1,1,0,"asm"
1090 input#1,n:for j=1 to n:input#1,t$(j):next:close 1:return
1100 open 1,1,1,"asm"
1110 print#1,n:for j=1 to n:print#1,chr$(34)+t$(j)+chr$(34):next:close 1:return
1120 k=0:input"{clear}{yellow}enter line number{green}";k:print"{clear}"
1130 poke 198,5:poke 631,144:poke 632,34:poke 633,34:poke 634,20:poke 635,30
1140 ip$="":print"{yellow}"k;:input ip$:if ip$="" then return
1150 k2=k/10:if k2>n then k2=n+1:n=n+1
1160 if k2<.1 then k2=.1
1170 if k2=int(k2) then 1190
1180 k2=int(k2)+1:for k3=n to k2 step-1:t$(k3+1)=t$(k3):next:n=n+1
1190 t$(k2)=ip$:k=k+10:goto 1130
1200 k=0:input"{clear}{yellow}enter line number{green}";k:k2=k/10
1210 if k2>n or k2<1 or k2>int(k2) then return
1220 for k3=k2 to n:t$(k3)=t$(k3+1):next:n=n-1:return
1230 if n=0 then return
1240 k=0:k2=0:input"{clear}{yellow}enter first, last line numbers{green}";k,k2:k1=k/10:k2=k2/10
1250 if k2>n then k2=n
1260 if k1<1 then k1=1
1270 print"{clear}":for k3=k1 to k2: print"{yellow}"k3*10"{green} "t$(k3):next:return
