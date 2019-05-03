10 print:print:input"number of items";aa:if aa<2 then 10
15 dim a(aa)
20 print:print"unsorted table":print
30 for z=1 to aa
40 a(z)=int(rnd(1)*100)+1
50 print a(z),
60 next z
70 print:print:print"press s for sort"
80 get k$:if k$<>"s" then 80
90 ti$="000000":gosub 3000:print:print"time:";ti/60;"seconds" 
100 print:print:print"sorted table"
110 print:for z=1 to aa
120 print a(z),
130 next z
140 run
2999 rem *** shell-metzner sort ***
3000 z=aa
3010 z=int(z/2) 
3020 if z=0 then return
3030 y=aa-z:zz=1
3040 x=zz
3050 xx=x+z
3060 if a(x)<=a(xx) then 3090
3070 w=a(x):a(x)=a(xx):a(xx)=w:x=x-z
3080 if x>=1 then 3050
3090 zz=zz+1
3100 if zz<=y then 3040
3110 goto 3010
