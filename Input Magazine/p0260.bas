0 BB =53280:GOTO 200
1 CLR:BB = 53280:FF = 1
2 POKE BB4 O:POKE BB +1,0
3 Cl$="gigigiggfiggAggiggigg
glAg
4 INPUT "DENIER ❑ NAMED FOR ❑
GRAPH";N$
5 INPUT "cj !DENIER El NUMBER 0 OFD
BARS. (1 —30)";XX
6 IF XX<1 OR XX>30 THEN 5
7 DIM A(XX),B(XX),C(XX)
8 FOR Z=1 TO 30
9 IF XX'Z>30 THEN X1 =Z-1: GOTO 11
10 NEXT Z
11 PRINT "DENIER El DATA:g"
12 FOR Z=1 TO XX:PRINT "BAR"; Z;:
INPUT C(Z):NEXT Z
13 A=0:B=0:C=0:D=0
14 FOR Z=1 TO XX
15 IF C(Z) > A THEN A = C(Z)
16 IF C(Z) <B THEN B=C(Z)
17 IF C(Z) < 0 THEN B(Z)-=C(Z): A(Z) = 0
18 IF C(Z) > 0 THEN A(Z) = C(Z): B(Z) =0
19 NEXT Z
20 C= A+ ABS(B)
22 GOTO 200
24 POKE BB,5:POKE BB +1,0
25 PRINT "0"N$
26 FOR Z=2 TO 22
27 POKE 1033+ Z*40,64:POKE 55305
+Z*40,6
28 POKE 1032 + Z*40,45:POKE 55304+
Z*40,3
29 NEXT Z
30 FOR Z=1 TO XX:W= 0:C0=8
31 IF B(Z) <0 THEN CO=2
32 FOR ZZ= B/D TO A/D
33 W=W+1:IF INT(ZZ)<45- 0 THEN 38
34 FOR G =1 TO X1
35 POKE (1953— X1) + (Z*X1 + G) —
W*40,64
36 POKE (56225— X1) + (Z*X1 + G) —
W`40,7
37 NEXT G:GOTO 43
38 FOR G=1 TO X1:CA= 227:CC= CO: IF G< >1 AND G=X1 THEN CO=1
39 IF ZZ< 0 THEN CA=228
40 IF B(Z)/D>ZZ OR A(Z)/D<ZZ THEN 43
41 POKE((1953 —X1) + Z*X1 + G) —
W*40,CA:POKE((56225 — X1) + Z*X1+
G)—W*40,C0
42 CO = CC:NEXT G
43 POKE BB,RND(1)*2 + 5
44 NEXT ZZ,Z:POKE BB,5
45 PRINT "Iglu gr;LEFT$(Q$,
20 —ABS(B/D))
46 FOR Z= 0 TO A STEP D*2: IF C= <10
AND INT(Z)< >Z THEN PRINT" ❑❑
❑": GOTO 48
47 PRINT INT(Z)" ❑ "
48 NEXT Z
49 PRINT "§Igg";LEFT$(Q$,20—
ABS(B/D))
50 FOR Z=0 TO B STEP — D*2: IF C= <10
AND INT(Z)< >Z THEN PRINT
"gr:GOTO 52
51 PRINT INT(Z)"gr
52 NEXT Z
53 POKE 198,0
54 GET A$:IF A$="" THEN 54
55 GOTO 200
100 POKE BB,1:POKE BB +1,1
103 IF FF=0 THEN 500
105 PRINT "0 "TAB(10)"BAR ❑
GRAPH ❑ PLOTTER D"
110 PRINT "gggr 00 0 t "
115 FOR Z=d1 TO 15
120 PRINT "0 ❑ 011":NEXT Z
125 PRINT" ❑❑❑ AKDL";
130 FOR Z=1 TO 30
135 PRINT "—";:NEXT Z
140 PRINT > "
145 PRINT "igmgggggfiggpi
II pill Pi VALUE: —J USERS Li UNITS"
150 pRINT"mggggggAgggigggggg AgMJpJEJ BARS: ❑ WEEKS/
MONTHS/YEARS"
155 PRINT "gg ga a"TAB(9)
"PRESSE KEY ❑ TODCONTINUE"
160 POKE 198,0
165 WAIT 198,1
170 GOTO 24
200 POKE BB,6:POKE BB + 1,6
210 pRINT"oggggggg"TAB
(15)"pg El ❑ OPTION 011IggA"
220 PRINT TAB(12)"1 ❑ ENTER ❑ DATA"
230 PRINT TAB(12)"2 0 SCALED ❑ GRAPH"
240 PRINT TAB(12)"3 ❑ VIEW/EDIT ❑ DATA"
245 PRINT TAB(12)"4 ❑ FUL❑ SCREEN ❑
GRAPH"
250 PRINT TAB(13)"g a ENTER ❑
CHOICE ❑ ?"
260 POKE 198,0
270 GET A$
280 ON VAL(A$) GOT0400,700,300, 600
290 GOTO 270
300 IF FF=0 THEN 500
305 POKE BB,7:POKE BB + 1,7
310 PRINT "0 11"N$" ❑ DATA:"
315 PRINT," g BAR"," HEIGHTgr
320 FOR Z=1 TO XX
325 IF A(Z) < > 0 THEN PRINT,"M"Z,
"."A(Z):GOTO 335
330 PRINT,"1"Z,"M"B(Z)
335 POKE 198,0
340 GET A$
345 IF A$="" THEN 340
350 IF A$ < >CHR$(13) THEN 370
355 PRINT "0."TAB(18);
360 INPUT C(Z)
365 GOTO 13
370 NEXT Z
375 GOTO 200
400 POKE BB,13:POKE BB +1,13
410 pRINT" ❑ ggggggggII IMPIPJUPRESS ❑ (MEil)
NTER (M )ENU"
420 GET A$
430 IF A$="E" THEN 1
440 IF A$="M" THEN 200
450 GOTO 420
500 PRINT"O "TAB(16)"NO ❑ DATA!"
510 FOR Z=1 TO 500:NEXT Z
520 GOTO 200
600 IF FF=0 THEN 500
605 IF C< =10 THEN D=.5:GOTO 100
606 IF C< =20 THEN D=1:GOTO 100
610 D=C/20:GOTO 100
700 IF FF=0 THEN 500
705 IF C< =10 THEN D=1.25:GOTO 100
706 IF C< =20 THEN D=2.5:GOTO 100
710 D= C/20+ 9:D= D*.1:D=INT(D)*
10:GOTO 100