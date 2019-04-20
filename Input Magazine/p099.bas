15 z$="{home}{down*12}":poke 650,128
50 let po=205
60 print"{clear}";z$;"----------------------------------------" 
70 poke 53280,1:poke 53281,3
85 let l=5
90 let x= int(rnd(1)*479)+1
110 if x=po then goto 90
115 poke 1024+x,87
120 poke 1024+po,35
130 let lp=po:let ll=l:get a$
140 if a$="z" then let po=po-1:l=l-1:goto 190
150 if a$="x" then let po=po+1:l=l+1:goto 210
160 if a$="p" then let po=po-40:goto 220
170 if a$="l" then let po=po+40:goto 220
180 goto 130
190 if l<0 then let po=lp:let l=ll
200 goto 220
210 if l>39 then let po=lp:let l=ll
220 if 1024+po<1024 or 1024+po>1024+479 then let po=lp:goto 130
230 poke 1024+lp,32
240 poke 1024+po,35
250 let m=int(rnd(1)*479)+1
270 if m=po then poke 1024+po,32:print z$;"{down}boom!!-you've hit a mine":stop
310 goto 130
