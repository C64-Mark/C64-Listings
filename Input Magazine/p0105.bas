5 print"{clear}"
10 print tab(10)"telephone directory"
15 restore
20 input "{down}please enter the name";r$
25 print
30 for j=1 to 5
40 read n$,t$
50 if n$=r$ then print n$;"'s number is: ";t$:goto 80
60 if n$ = "end" then print r$;" is not in the list"
70 next j
80 printtab(4)"do you want another number (y/n)?"
90 get k$:if k$="" then goto 90
100 if k$="y" then goto 5
110 end
500 data tom,21-23233,john,01-32358,joe,22-45785,jane,78-87779,end,end
