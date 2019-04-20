10 print"{clear}"
15 poke 54277,33:poke 54278,255:poke 54273+23,15:poke 54276,33
20 let a$="     happy easter to you all                                  ":b$=a$
40 let a$=right$(a$,61)+left$(a$,1)
45 print "{purple}{home}{down*8}"left$(a$,40)
50 let b$=right$(b$,1)+left$(b$,61)
55 print "{yellow}{down*6}"left$(b$,40)
60 let s=s+5:if s>255 then s=0
70 poke 54273,s
80 goto 40
