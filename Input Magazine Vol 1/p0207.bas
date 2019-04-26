10 input"enter text";t$
20 input"word to be replaced";w$
30 input"new word";nw$
35 p=0
40 p=p+1
50 a$=mid$(t$,p,len(w$))
60 if a$<>w$ then 90
70 t$=left$(t$,p-1)+nw$+right$(t$,len(t$)-p-len(w$)+1)
80 p=p+len(nw$)-1
90 if p<len(t$) then goto 40
100 print t$
110 goto 20
