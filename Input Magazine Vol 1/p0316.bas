10 print"{clear}"
12 input"(c)ode or (d)ecode";a$
14 if a$="d" then goto 400
16 if a$<>"c" then goto 12
30 input"what is the codeword";c$
40 print"input the message :-"
50 input ms$
60 cp=cp+1:if cp>len(c$) then cp=1
70 pm=pm+1
80 if pm>len(ms$) then 200
90 f$=mid$(ms$,pm,1)
100 if f$<"a" or f$>"z" then 150
110 f=asc(f$)+asc(mid$(c$,cp,1))-65
120 if f>90 then f=f-26
130 cd$=cd$+chr$(f)
140 goto 60
150 if f$<"0" or f$>"9" then cd$=cd$+f$:goto 70
160 f=asc(f$)+asc(mid$(c$,cp,1))-48
170 if f>57 then f=f-10:goto 170
180 cd$=cd$+chr$(f)
190 goto 60
200 print:print"the coded message is:-"
210 print:print cd$
220 end
400 print"{clear}"
410 input"what is the codeword";c$
420 print"input the coded message:"
430 input ms$
440 cp=cp+1:if cp>len(c$) then cp=1
450 pm=pm+1
460 if pm>len(ms$) then 580
470 f$= mid$(ms$,pm,1)
480 if f$<"a" or f$>"z" then 530
490 f=asc(f$)-asc(mid$(c$,cp,1))+65 
500 if f<65 then f=f+26
510 cd$=cd$+chr$(f)
520 goto 440
530 if f$<"0" or f$>"9" then cd$=cd$+f$:goto 450
540 f=asc(f$)-asc(mids(c$,cp,1))+48
550 if f<48 then f=f+10:goto 550
560 cd$=cd$+chr$(f)
570 goto 440
580 print"the decoded message is :-" 
590 print:print cd$
600 end
