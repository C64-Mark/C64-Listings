10 poke 650,128 
15 poke 53280,5:poke 53281,1
20 print"{clear}"
30 clr
40 let p=16:let a=1
50 let d$="{down*22}"
60 let a=int(rnd(1)*34)+3
70 print"{home}"tab(a)"X"
80 print"{home}"tab(p)d$" {cm i}^{cm i} "
90 get k$:if k$="" then 90
95 if k$="z" then p=p-1
100 if k$="x" then p=p+1
105 if p>34 then p=34
110 if p<1 then p=1
115 if k$="f" then p1=p:d=22:goto 130
120 goto 80
130 print"{home}"tab(p1);
140 print left$(d$,d)"{right*2}^{down}{delete} ":d=d-1 
150 print"{home}"tab(p1);
160 print left$(d$,d)"{right*2} {down}{delete} ":d=d-1
170 if d>0 then 130
180 if p1=a-2 then 20
200 goto 80
