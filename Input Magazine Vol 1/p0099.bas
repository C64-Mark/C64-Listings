15 z$="{home}{down*12}":poke 650,128
20 let lt=999999
30 let hs=0
40 let s=0
50 let po=205
60 print"{clear}";z$;"----------------------------------------" 
70 poke 53280,1:poke 53281,3
80 let ti$="000000":l=5
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
270 if m=po then poke 1024+po,32:print z$;"{down}boom!!-you've hit a mine":goto 330
280 if x=po then let s=s+1:goto 90
290 if s<10 and x=po then goto 90
300 if s=10 then goto 320
310 goto 130
320 let t=val(right$(ti$,2))+60*val(mid$(ti$,3,2))
330 poke 53280,254:poke 53281,246:print"{down}       ";s;"paratroopers"
340 if s=10 then print "{down}        in";t;" seconds"
350 if s>hs then let hs=s
360 if t<lt and s=10 then let lt=t
370 print"{down}        high score=";hs
380 print"{down}        low time=";lt;" seconds"
390 for f=1 to 1000:next f
410 print"{down}        another go? (y/n)";
420 get k$:if k$="" then goto 420
430 if k$="y" then goto 40
440 if k$="n" then print"{clear}":poke 650,0:end
450 goto 420
