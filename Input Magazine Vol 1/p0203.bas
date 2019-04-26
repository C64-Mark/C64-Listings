10 print"{clear}"
20 print"anagram program"
30 print"enter word to be scrambled"
50 input">{blue}";w$
55 wo$=w$
70 print"{clear}{light blue}"
80 for n=len(w$) to 1 step-1
90 m=int(rnd(1)*n)+1
100 a$=a$+mid$(w$,m,1)
110 w$=left$(w$,m-1)+right$(w$,len(w$)-m)
120 next n
130 print"the anagram is ";a$
140 print"what do you think the word is?"
160 input guess$
170 g=g+1
180 if guess$<>wo$ then print"wrong, try again":goto 160
190 print"well done"
195 if g=1 then print"you took 1 try":goto 210
200 print"you took";g;"tries"
210 print"do you want another go. (y/n)?"
220 get a$:if a$<>"y" and a$<> "n" then 220
230 if a$="y" then run
