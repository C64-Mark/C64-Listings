5 print"{clear}"
10 let n=int(rnd(1)*20+1)
20 print"i've just thought of a number"
30 print"...can you guess what it is?"
40 input g
50 if g=n then print"correct, well done!":goto 100
60 if g<n then print"too low, try again"
70 if g>n then print"too high, try again"
80 goto 40
100 print"do you want another go? (y/n)"
110 get a$:if a$="" then 110
120 if a$="y" then run
130 end
