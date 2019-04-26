1 rem *** NEEDS DEBUGGING ***
2 print chr$(8):gosub 6:goto 100
6 dim fc(7,1):for i=1 to 7:read fc(i,0):fc(i,1)=-1:next:data -1,,,,,-1,-1
12 dim of(3):of(0)=64:of(1)=0:of(2)=128:of(3)=64
14 dim lx(8),hx(8)
20 vic=0
22 bd=53280:bg=53281:bb=0
24 cc$=chr$(5):bc=0
28 sb=1024:ll=40:sh=25
40 poke bg,0:poke bd,0
42 print chr$(14)
44 gr$=chr$(30):pu$=chr$(156):yl$=chr$(158)
46 cs$=chr$(147):ch$=chr$(19)
48 cd$=chr$(17):cu$=chr$(145)
50 rv$=chr$(18):ro$=chr$(146)
52 cl$=chr$(157):cr$=chr$(29):c4$=cd$+cd$+cd$+cd$
56 dl$=chr$(20):d4$=dl$+dl$+dl$+dl$:is$=chr$(148)
58 rt$=chr$(13)
60 qt$=chr$(34):cm$=chr$(44)
70 ul$=right$("{cm @*40}",ll)
72 x1$=cd$+rv$+cc$:x2$=ro$+" "+gr$+rv$:x3$=ro$+"   "+rv$+cc$
74 x4$=x4$+cu$
76 dim m$(7):for i=1 to 7:read m$(i):next
78 data " Open a file    "," Enter records  "," View records   "
80 data " Search records   "," Save tape file  "," Load tape file  "
82 data " Quit program "
84 dim au$(6):for i=1 to 6:read au$(i):next
86 data "Forward"," Back  "," Menu  "," Amend ","Delete "," Print "
96 w1$=rv$+pu$+" Are you sure (y/n) ? "+cc$+ro$:return
100 print cs$ + cc$ + ul$
110 printpu$ " *   *  *  * *  *   *   * *** *  * *  *"
120 print    " ** ** * * * ** *   ** ** *   ** * *  *"
130 print    " * * * *** * * **   * * * **  * ** *  *"
140 print    " *   * * * * *  *   *   * *   *  * *  *"
150 print    " *   * * * * *  *   *   * *** *  *  ** "
160 print cc$ul$
500 print x1$"1"x2$m$(1)x3$;
510 if fd=0 then 550
520 print"4"x2$m$(4)
530 print xl$"2"x2$m$(2)x3$"5"x2$m$(5)
540 print x1$"3"x2$m$(3)x3$;
550 print"6"x2$m$(6)
560 print tab(11)x1$"7"x2$m$(7)c4$
600 print tab(11)x4$" SELECT  OPTION "ro$:for d=1 to 250:next
610 get a$:if a$="" then 650
620 a=asc(a$)-48:if a<1 or a>7 then gosub 10000:goto 650
630 goto 700
650 print tab(11)x4$rv$" SELECT  OPTION":for d=l to 250:next
660 get a$:if a$="" then 600
670 a=asc(a$)-48:if a<1 or a>7 then gosub 10000:goto 600
700 if not fc(a,-fd) then gosub 10000:goto 600
800 if fc(a,0)=0 or fd=0 then 890
810 ix$=m$(a):gosub 14500
820 if aa$<>"y" then 100
830 if a=7 then 900
840 poke 631,a:clr:gosub 6:a=peek(631):goto 700
890 if u=0 and((a=3) or (a=4))then gosub 10000:goto 600
900 on a gosub 1000,2000,3980,4000,950,950,7000
910 goto 100
950 print ro$cs$gr$tab(11)m$(a)c4$
960 print"Name of file:?":x=16:y=5-vic:z=10:gosub 13000:f$=ix$
972 if f$="" then 950
980 if a=6 then 6000
990 if a=5 then 5000
1000 print cs$cd$"Number of fields (1-8):? ";
1010 ok$="12345678":gosub 10600:nf=ix:print aa$cd$:y=3-vic:tt=5-sh-2*vic
1020 for n=1 to nf
1030 print"Enter heading"n" :? ";
1040 x=20:z=10:gosub 13000
1045 if len(ix$)=0 then print ro$rt$cu$cu$:goto 1030
1050 hd$(n)=ix$
1060 print tab(13):printd4$d4$d4$:x=0:gosub 11500
1070 print"Enter field "ix$" length:?"
1080 x=23+len(hd$(n)):z=2:gosub 13000:if ix$="" then gosub 10000:goto 1080
1090 gosub 12000:hx(n)=2+int((12+ix)/ll)
1092 if ix<1 or hx(n)>3 then gosub 10000:goto 1080
1094 tt=tt+hx(n)
1096 ix(n)=ix:y=y+2:print:print
1098 next
1100 ln=0:for i=1 to nf:ln=ln+lx(i):next:fr=fre(0):if fr<0 then fr=fr+65536
1110 v=int(fr/(ln+5+3*nf))
1120 print"You can use "v" records":for d=1 to 1500:next
1130 dim t$(v,nf-1),r(v)
1140 u0=0
1200 for u=u0 to v
1210 print cs$cc$rv$"You have used"u"{left} out of"v"{left} records"cd$
1220 up=u:r(up)=up
1230 for ix=1 to nf
1240 gosub 3720
1250 if ix=1 and ix$="" then 1400
1260 for i=1 to 500:next
1280 next
1300 if u=0 then 1340
1302 ix$=t$(u,0):ru=u:su=u
1310 for u2=0 to u-1
1320 if t$(r(u2),0)>ix$ then 1350
1330 next
1340 u2=su:goto 1380
1350 for dn=u to u2+1 step-1
1360 r(dn)=r(dn-1)
1370 next
1380 r(u2)=ru:if a>2 then up=u2:print ch$cc$rv$" THIS IS RECORD "up+1:goto 3100
1390 next u
1400 fd=-1
1990 return
2000 u0=u:b=1
2100 goto 1200
3000 u0=up-1
3010 if u0<0 then u0=u-1:if a=4 then3920
3020 for up=u0 to u-1
3030 if a=4 then 4110
3040 printcs$cc$rv$" THIS IS RECORD "up+1
3050 for ix=1 to nf:gosub 3770:next
3100 x=0:y=sh-2+2*vic:gosub 11500
3110 for i=1 to 6:printx3$x2$au$(i);:if i=3 then print ro$"       ";
3120 next 
3200 ok$="fbmadp ":gosub 10600
3210 b=ix
3300 print ro$;:on b goto 3900,3000,1990,3700,3400,3600,3900
3400 goto 100
3600 gosub 3720:print"Is printer ready (y/n)";:gosub 10500
3610 if aa$="n" then gosub 3720:goto 3100
3620 open 4,4,7:cmd4
3630 print#4," this record "up+1" used "u" records"
3640 for n=1 to nf:print#4:print#4," "hd$(n)":"spc(12-len(hd$(n)))t$(r(up),n-1)
3650 next:print#4,ul$:close 4:goto 3100
3700 goto 100
3720 y=sh-2+2*vic:x=0:gosub 11500:print ro$;:z=ll*(2-2*vic)-2:gosub 13500
3722 if b=6 then return
3730 print hd$(ix)ro$" :";:x=12:z=lx(ix):gosub 11500
3760 gosub 13010:t$(r(up),ix-1)=ix$
3770 y=2-vic:if ix>1 then for n=1 to ix-1:y=y+hx(n)+(n<=tt):next
3780 x=0:gosub 11500:print ro$hd$(ix)" :"tab(13);:if a>2 then gosub 13500
3790 print t$(r(up),ix-1):return
3800 if ix>1 then 3100
3810 if up>0 then if t$(r(up),0)<t$(r(up-1),0) then 3830
3820 if up=u-1 or t$(r(up),0) <=t$(r(up+1),0) then 3100
3830 ix$=t$(r(up),0):ru=r(up):if up=u-l then 3850
3840 for dn=up to u-1:r(dn)=r(dn+1):next
3850 su=u-1
3855 goto 1310
3900 next up
3910 if a<>4 then 3980
3920 print cs$x1$" END OF FILE WHILE SEARCHING"
3930 print x1$" DO YOU WISH TO TRY FROM START (y/n)?":gosub 10500
3935 if aa$="y" then goto 4000
3940 if aa$<>"y" then return
3950 if b=2 then 3020
3980 u0=0:b=1
3990 goto 3010
4000 return
4110 ix$=t$(r(up),fx-1)
4120 fe=len(ix$)-ff+1
4130 if fe<1 then 4160
4140 for j=1 to fe:if mid$(ix$,j,ff)=fx$ then 3040
4150 next
4160 if b=2 then 3000
4170 goto 3900
5000 print cs$rv$"        POSITION TAPE FOR OUTPUT        "
5005 print"      Press return key when ready."
5010 get a$:if a$<>rt$ then 5010
5100 open 1,1,1,f$
5110 print" Saving information now "
5120 print #1,u;cm$;nf;cm$;tt
5130 for n=1 to nf:print#1,qt$hd$(n)qt$cm$lx(n)cm$hx(n):next
5140 for up=0 to u:for n=1 to nf:print#1,qt$t$(up,n-1)qt$:next:print#1,r(up):next
5150 close l
5990 return
6000 print cs$rv$"        POSITION TAPE FOR OUTPUT       "
6005 print"      Press return key when ready."
6010 get aa$:if aa$<>rt$ then 6010
6100 open 1,1,0,f$
6110 print"found and loading"
6120 input#1,u,nf,tt
6130 for n=1 to nf:input#1,hd$(n),lx(n),hx(n):next
6140 ln=0:for n=l to nf:ln=ln+lx(n):next:fr=fre(0):if fr<0 then fr=fr+65536
6150 v=int(fr/(ln+5+3*nf))
6160 dim t$(v,nf-1),r(v)
6200 for up=0 to u:for n=1 to nf:input#1,t$(up,n-1):next
6210 input#1,r(up):next
6220 close l
6980 fd=-1
6990 return
7000 print cs$:end
10000 poke 54277,33:poke54278,255:poke54273+23,15
10005 poke 54273,6:poke 54276,33:for d=1 to 50:next
10006 poke54273+23,0
10010 return
10500 ok$="yn"
10600 get aa$:if aa$="" then 10600
10610 ix=0:for i=1 to len(ok$):if aa$=mid$(ok$,i,1) then ix=i
10620 next:if ix=0 then gosub 10000:goto 10600
10630 return
11500 print ch$;
11510 if y>0 then for yy=1 to y:print cd$;:next
11520 if x>0 then for xx=1 to x:print cr$;:next
11530 return
12000 ix=-1:for i=1 to len(ix$)
12010 a$=mid$(ix$,i,1)
12020 if a$<>" " then 12050
12030 if i=1 or i=len(ix$) then 12060
12040 if mid$(ix$,i-1,1) =" " then 12060
12050 if a$<"0" or a$>"9" then gosub 10000:return
12060 next
12070 ix=val(ix$):return
13000 gosub 11500:gosub 13500
13010 p0=sb+ll*y+x:p1=p0:i=128:ix$=""
13020 poke p1,(peek(p1) and 127) or (i and 128)
13030 get a$:i=(i+12) and 255:if a$="" then 13020
13040 if a$=dl$ then 13150
13050 if a$=rt$ then return
13060 if asc(a$) and 127<32 then 13190
13100 if p1>=p0+z then 13190
13110 poke p1,peek(p1) and 127:p1=p1+1:print a$;:ix$=ix$+a$:goto 13020
13150 if p1=p0 then 13190
13160 poke p1,peek(p1) and 127:p1=p1-1:printcl$" "cl$;:ix$=left$(ix$,p1-p0)
13170 goto 13020
13190 gosub 10000:goto 13020
13500 for i=1 to z:print" ";:next
13510 for i=1 to z:print cl$;:next
13520 return
14500 b=6:gosub 3720:printcd$"        "pu$w1$yl$rv$cu$"{left*19} "ix$;
14530 gosub 10500
14540 return
