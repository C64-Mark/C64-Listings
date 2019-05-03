10 print:print:input"number of items";aa:if aa<2 then 10
15 dim a(aa)
20 print:print"unsorted table":print
30 for z=1 to aa
40 a(z)=int(rnd(1)*100)+1
50 print a(z),
60 next z
70 print:print:print"press s for sort"
80 get k$:if k$<>"s" then 80
90 ti$="000000":gosub 1000:print:print"time:";ti/60;"seconds" 
100 print:print:print"sorted table"
110 print:for z=1 to aa
120 print a(z),
130 next z
140 run
999 rem *** bubble sort *** 
1000 for z=1 to aa-1
1010 zz=0
1020 for y=1 to aa-z
1030 if a(y+1)<a(y) then x=a(y):a(y)=a(y+1):a(y+1)=x:zz=1
1040 next y
1050 if zz=0 then return
1060 next z:return
