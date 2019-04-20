10 poke 53280,0:poke 53281,0:print chr$(30)
20 let m=50
30 print"{clear}"
40 let m=m-5
50 if m<0 then print"sorry you're broke":end
60 let a=int(rnd(1)*4)+1
70 let b=int(rnd(1)*4)+1
80 let c=int(rnd(1)*4)+1
90 if a=1 then let a=97
100 if a=2 then let a=115
110 if a=3 then let a=120
120 if a=4 then let a=122
130 if b=1 then let b=97
140 if b=2 then let b=115
150 if b=3 then let b=120
160 if b=4 then let b=122
170 if c=1 then let c=97
180 if c=2 then let c=115
190 if c=3 then let c=120
200 if c=4 then let c=122
210 print"{clear}{down*10}"tab(15)chr$(a)spc(3)chr$(b)spc(3)chr$(c)
220 if a=b and b=c then print tab(5)"{down*4}you've hit the jackpot....$50":let m=m+50
230 if (a=b or b=c) and a<>c then print tab(13)"{down*4}you've won $10":let m=m+10
240 for d=1 to 1500:next
250 print"{down*4}another go? (y/n)...you have $";m;" left"
260 get k$:if k$<>"y" and k$<>"n" then goto 260
270 if k$="y" then goto 30
280 end
