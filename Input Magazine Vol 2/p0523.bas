10 dim l(7),l$(7),a(6),a$(6),v(6),v$(6),m(5),m$(5),p(4),p$(4)
20 for k=0 to 7:read l(k),l$(k):next k
30 data 1,inches,12,feet,36,yards,63360,miles,.03937,millimetres,.3937
35 data centimetres,39.37,metres,39370,kilometres
40 for k=0 to 6:read a(k),a$(k):next k
50 data 1,sq inches,144,sq feet,6272640,acres,4.0145e9,sq miles,.155
55 data sq cms,1550,sq metres,1.55e7,hectares
60 for k=0 to 6:read v(k),v$(k):next k
70 data 1,cubic inches,1728,cubic feet,34.67,pints,277.36,gallons,.06102
75 data cc's,61.024,litres,61024,cubic metres
80 for k=0 to 5:read m(k),m$(k):next k
90 data 1,ounces,16,pounds,35840,tons,.03527,g rams,35.27,kilograms
95 data 35270,tonnes
100 for k=0 to 4:read p(k),p$(k):next k
110 data 1,psi,51.73,mmhg,6895,n/sqmetre,.0681,atmospheres
115 data 68.95,millibars
120 print"{clear}which category (0-5)?"
130 print"{down}0 - quit program":print"{down}1 - length":print"{down}2 - area":print"{down}3 - volume"
135 print"{down}4 - weight":print"{down}5 - pressure":print"{down}6 - temperature"
140 get a$:if a$<"0" or a$>"6" then 140
150 if a$="0" then print"{clear}":end
160 print"{clear}":on val(a$) gosub 1000,1500,2000,2500,3000,3500
170 goto 120
1000 print tab(7);"{reverse on}length":print"{down}select original units":for k=0 to 7
1005 print"{down}";k+1;"- ";l$(k):next k
1010 get b$:if b$<"1" or b$>"8" then 1010
1020 b=val(b$)-1:print"{clear}input number of ":print l$(b);
1030 input vl
1040 print"{clear}";vl:print l$(b);" equals{down}"
1050 if b>3 then 1080
1060 for k=0 to 3:print"{down}";vl*l(b)/l(k+4);tab(23);"{reverse on}";l$(k+4):next k
1070 goto 1090
1080 for k=0 to 3:print"{down}";vl*l(b)/l(k);tab(23);"{reverse on}";l$(k):next k
1090 get a$:if a$="" then 1090
1100 if a$=chr$(13) then return
1110 print"{clear}":got01000
1500 print tab(7);"{reverse on}area":print"{down}select original units":for k=0 to 6
1505 print"{down}";k+1;"- ";a$(k):next k
1510 get b$:if b$<"1" or b$>"7" then 1510
1520 b=val(b$)-1:print"{clear}input the number of ":print a$(b);
1530 input vl
1540 print"{clear}";vl:print a$(b);" equals{down}"
1550 if b>3 then 1580
1560 for k=0 to 2:print"{down}";vl*a(b)/a(k+4);tab(23);"{reverse on}";a$(k+4):next k
1570 goto 1590
1580 for k=0 to 3:print"{down}";vl*a(b)/a(k);tab(23);"{reverse on}";a$(k):next k
1590 get a$:if a$="" then 1590
1600 if a$=chr$(13) then return
1605 print"{clear}":goto 1500
2000 print tab(7);"{reverse on}volume":print"{down}select original units":for k=0 to 6
2005 print"{down}";k+1;"- ";4(k):next k
2010 get b$:if b$<"1" or b$>"7" then 2010
2020 b=val(b$)-1:print"{clear}input the number of ":print v$(b);
2030 input vl
2040 print"{clear}";vl:print v$(b);" equals{down}"
2050 if b>3 then 2080
2060 for k=0 to 2:print"{down}";vl*v(b)/v(k+4);tab(23);"{reverse on}";v$(k+4):next k
2070 goto 2090
2080 for k=0 to 3:print"{down}";vl*v(b)/v(k);tab(23);"{reverse on}";v$(k):next k
2090 get a$:if a$="" then 2090
2100 if a$=chr$(13) then return
2105 print"{clear}":goto 2000
2500 print tab(7);"{reverse on}weight":print"{down}select original units":for k=0 to 5
2505 print"{down}";k+1;"- ";m$(k):next k
2510 get b$:if b$<"1" or b$>"6" then 2510
2520 b=val(b$)-1:print"{clear}input the number of ":print m$(b); 
2530 input vl
2540 print"{clear}";vl:print m$(b);" equals{down}"
2550 if b>2 then 2580
2560 for k=0 to 2:print"{down}";vl*m(b)/m(k+3);tab(23);"{reverse on}";m$(k+3):next k
2570 goto 2590
2580 for k=0 to 3:print"{down}";vl*m(b)/m(k);tab(23);"{reverse on}";m$(k):next k
2590 get a$:if a$="" then 2590
2600 if a$=chr$(13) then return
2605 print"{clear}":goto 2500
3000 print tab(7);"{reverse on}pressure":print"{down}select original units":for k=0 to 4
3005 print"{down}";k+1;"- ";p$(k):next k
3010 get b$:if b$<"1" or b$>"5" then 3010
3020 b=val(b$)-1:print"{clear}input the number of ":print p$(b);
3030 input vl
3040 print"{clear}";vl:print p$(b);" equals{down}"
3050 t=0:for k=0 to 4:if k=b then 3070
3060 print"{down}";vl*p(k)/p(b);tab(23);"{reverse on}";p$(k):t=t+1
3070 next k
3080 get a$:if a$="" then 3080
3090 if a$=chr$(13) then return
3100 print"{clear}":goto 3000
3500 print"{clear}";tab(5);"{reverse on}temperature":print"{down}convert -"
3505 print"{down}centigrade to":print"fahrenheit (c)"
3506 print"{down}fahrenheit to":print"centigrade (f)"
3510 get b$:if b$<>"c" and b$<>"f" then 3510
3520 if b$="c" then 3560
3530 print"{down}input degrees":input"fahrenheit";vl
3540 print"{clear}";vl;"degrees":print"fahrenheit equals"
3550 print"{down}";(vl-32)*5/9:print"degrees centigrade":goto 3590
3560 print"{down}input degrees":input"centigrade";vl
3570 print"{clear}";vl;"degrees":print"centigrade equals"
3580 print"{down}";32+vl*9/5:print"degrees fahrenheit"
3590 get a$:1f a$="" then 3590
3600 if a$=chr$(13) then return
3610 print"{clear}":goto 3500
