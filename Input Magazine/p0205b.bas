10 print"decimal to binary"
20 print"enter a decimal integer"
30 input d
40 let b$=""
50 let b$=str$(d-int(d/2)*2)+b$
60 let d=int(d/2)
70 if d<>0 then goto 50
80 print "the binary number is ";b$
