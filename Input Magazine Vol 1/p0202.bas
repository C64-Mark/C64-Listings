10 g=1:on int(rnd(1)*6)+1 goto 20,30,40,50,60,70
20 b$="apple":goto 80
30 b$="orange":goto 80
40 b$="banana":goto 80
50 b$="lemon":goto 80
60 b$="passion fruit":goto 80
70 b$="pineapple"
80 print "{clear}i am a fruit, what fruit am i?"
90 input a$
100 if a$=b$ then goto 155
110 g=g+1
120 print"wrong!"
130 for j=1 to 2000
140 next j
150 goto 90
155 if g=1 then print "you were right in 1 guess":end
160 print "you were right in";g;"guesses"
170 end
