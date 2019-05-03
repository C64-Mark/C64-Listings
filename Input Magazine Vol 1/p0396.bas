10 print:print:input"number of items";aa:if aa<2 then 10
15 dim a(aa)
20 print:print"unsorted table":print
30 for z=1 to aa
40 a(z)=int(rnd(1)*100)+1
50 print a(z),
60 next z
70 print:print:print"press s for sort"
80 get k$:if k$<>"s" then 80
90 ti$="000000":gosub 2000:print:print"time:";ti/60;"seconds" 
100 print:print:print"sorted table"
110 print:for z=1 to aa
120 print a(z),
130 next z
140 run
1999 rem *** shell sort ***
2000 z=aa
2010 if z<=1 then return
2020 z=int(z/2):y=aa-z
2030 zz=0
2040 for x=1 to y
2050 xx=x+z
2060 if a(x)>a(xx) then yy=a(x):a(x)=a(xx):a(xx)=yy:zz=1
2070 next x
2080 if zz>0 then 2030
2090 goto 2010
