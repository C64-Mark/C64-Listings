5 print"{clear}{black}":poke 53281,4
10 print tab(16)"{down}egg timer"
20 input "{down*3}     how many minutes do you want";t
30 print tab(8)"{down*3}press space bar to start"
40 get a$:if a$="" then goto 40
50 print"{clear}"
60 print tab(15)"t i m i n g"
70 ti$="000000"
75 rem start of while loop
80 if val(ti$)=>t*100 then goto 110
90 print "{home}{down*5}"tab(15);right$(ti$,2)" seconds"
100 goto 80
105 rem end of while loop
110 print tab(16)"{down*3}it's done"
120 poke 54296,15:poke 54278,128:poke 54276,17:poke 54273,50
130 for d=1 to 200: next:poke 54276,0:poke 54278,0
