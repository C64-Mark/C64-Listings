20 print"{clear}"
30 let n=int(rnd(1)*900)+1
40 for f=0 to n
50 next f
60 print"{clear}{down*6}";tab(16),"draw!"
70 let ti$="000000":poke 198,0
80 get k$:if k$="" then goto 80
90 let t=ti
100 print "{home}{down*6}";tab(16),"bang!!"
110 for f=1 to 300
120 next f
130 let m=int(rnd(1)*35)+1
140 if t<m then print"{home}{down*8}"tab(51)"you've survived"
150 if t>m then print"{home}{down*8}"tab(53)"you're dead"
160 if t=m then print"{home}{down*8}"tab(50)"you're both dead"
