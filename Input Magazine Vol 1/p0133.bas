10 data create file, enter, view,edit, search, print, load, save, stop
15 restore
20 for n=1 to 9
30 read heading$
40 print tab(5);n;tab(10);heading$
50 next n
60 print:print tab(5)"your choice >"
70 get a$:if a$="" then goto 70
80 if a$="1" then gosub 1000
90 if a$="2" then gosub 2000
100 if a$="3" then gosub 3000
110 if a$="4" then gosub 4000
120 if a$="5" then gosub 5000
130 if a$="6" then gosub 6000
140 if a$="7" then gosub 7000
150 if a$="8" then gosub 8000
160 if a$="9" then gosub 9000
170 goto 15
1000 return
2000 return
3000 return
4000 return
5000 return
6000 return
7000 return
8000 return
9000 return
