10 print"hello, what is your name?"
20 input a$
30 print"{clear}"
40 print"hello, ";a$:print"i have some questions for you"
50 for x=1 to 2000:next x
60 print"{clear}"
70 n=int(rnd(1)*12)+1
80 print"what is ";n;" times 9?"
90 a=0:input a
100 if a=n*9 then goto 150
110 print"{clear}"
120 print a;" ?"
130 print"sorry, please try again"
140 goto 80
150 print"well done, ";a$:print"here is the next one"
160 for x=1 to 2000:next x
170 goto 60
