0 bb=53280:goto 200
1 clr:bb=53280:ff=1
2 poke bb,0:poke bb+1,0
3 q$="{down*25}"
4 input"{clear}enter name for graph";n$
5 input"{clear}{yellow}enter number of bars. (1-30)";xx
6 if xx<1 or xx>30 then 5
7 dim a(xx),b(xx),c(xx)
8 for z=1 to 30
9 if xx*z>30 then x1=z-1:goto 11
10 next z
11 print"{clear}enter data:{down}"
12 for z=1 to xx:print"bar";z;:input c(z):next z
13 a=0:b=0:c=0:d=0
14 for z=1 to xx
15 if c(z)>a then a=c(z)
16 if c(z)<b then b=c(z)
17 if c(z)<0 then b(z)=c(z):a(z)=0
18 if c(z)>0 then a(z)=c(z):b(z)=0
19 next z
20 c=a+abs(b)
22 goto 200
24 poke bb,5:poke bb+1,0
25 print"{clear}"n$
26 for z=2 to 22
27 poke 1033+z*40,64:poke 55305+z*40,6
28 poke 1032+z*40,45:poke 55304+z*40,3
29 next z
30 for z=1 to xx:w=0:co=8
31 if b(z)<0 then co=2
32 for zz=b/d to a/d
33 w=w+1:if int(zz)<>0 then 38
34 for g=1 to x1
35 poke (1953-x1)+(z*x1+g)-w*40,64
36 poke (56225-x1)+(z*x1+g)-w*40,7
37 next g:goto 43
38 for g=1 to x1:ca=227:cc=co:if g<>1 and g=x1 then co=1
39 if zz<0 then ca=228
40 if b(z)/d>zz or a(z)/d<zz then 43
41 poke((1953-x1)+z*x1+g)-w*40,ca:poke((56225-x1)+z*x1+g)-w*40,co
42 co=cc:next g
43 poke bb,rnd(1)*2+5
44 next zz,z:poke bb,5
45 print"{home}{green}{down}";left$(q$,20-abs(b/d))
46 for z= 0 to a step d*2:if c=<10 and int(z)<>z then print"{up*3}":goto 48
47 print int(z)"{up*3}"
48 next z
49 print"{home}{down}";left$(q$,20-abs(b/d))
50 for z=0 to b step -d*2:if c=<10 and int(z)<>z then print"{down}":goto 52
51 print int(z)"{down}"
52 next z
53 poke 198,0
54 get a$:if a$="" then 54
55 goto 200
100 poke bb,1:poke bb+1,1
103 if ff=0 then 500
105 print"{clear}{purple}{reverse on}"tab(10)"bar graph plotter "
110 print"{down*2}   {green}^"
115 for z=1 to 15
120 print"   {sh -}":next z
125 print"   {red}W{cyan}";
130 for z=1 to 30
135 print"-";:next z
140 print">"
145 print "{home}{red}{down*7}{right*5}value: users units"
150 print"{blue}{down*10}{right*5}bars: weeks/months/years"
155 print"{down*3}{purple}{reverse on}"tab(9)"press key to continue"
160 poke 198,0
165 wait 198,1
170 goto 24
200 poke bb,6:poke bb+1,6
210 print"{clear}{down*7}"tab(15)"{cyan}{reverse on}  option  {down}{white}"
220 print tab(12)"1 enter data"
230 print tab(12)"2 scaled graph"
240 print tab(12)"3 view/edit data"
245 print tab(12)"4 full screen graph"
250 print tab(13)"{down}{cyan}{reverse on}enter choice ?"
260 poke 198,0
270 get a$
280 on val(a$) goto 400,700,300,600
290 goto 270
300 if ff=0 then 500
305 poke bb,7:poke bb+1,7
310 print"{clear}{purple}"n$" data:"
315 print,"{down}{red}bar","{blue}height{down}"
320 for z=1 to xx
325 if a(z)<>0 then print,"{blue}"z,"{red}"a(z):goto 335
330 print,"{red}"z,"{blue}"b(z)
335 poke 198,0
340 get a$
345 if a$="" then 340
350 if a$<>chr$(13) then 370
355 print "{up}{black}"tab(18);
360 input c(z)
365 goto 13
370 next z
375 goto 200
400 poke bb,13:poke bb+1,13
410 print"{clear}{down*8}{right*6}{green}press ({blue}e{green})nter data , ({blue}m{green})enu"
420 get a$
430 if a$="e" then 1
440 if a$="m" then 200
450 goto 420
500 print"{clear}{black}"tab(16)"no data!"
510 for z=1 to 500:next z
520 goto 200
600 if ff=0 then 500
605 if c<=10 then d=.5:goto 100
606 if c<=20 then d=1:goto 100
610 d=c/20:goto 100
700 if ff=0 then 500
705 if c<=10 then d=1.25:goto 100
706 if c<=20 then d=2.5:goto 100
710 d=c/20+9:d=d*.1:d=int(d)*10:goto 100
