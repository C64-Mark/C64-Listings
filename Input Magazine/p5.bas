10 print"{clear}"
20 let x=int(rnd(1)*6)
30 print"the computer has chosen a number between 0 and 5. can you guess it?"
40 input g
50 print"{clear}"
60 if g=x then print"well done":goto 90
80 print"tough luck - you're wrong!"
90 print"do you want another go? if so, please type y and press the return key"
100 input a$
110 if a$="y" then goto 10
120 goto 100
