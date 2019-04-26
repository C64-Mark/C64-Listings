5 poke 53280,0:poke 53281,0:hh$="0123456789abcdef"
10 print"{clear}{down*7}{cyan}"tab(8)"1:- enter machine code"
20 print tab(8)"{down*2}2:- examine memory"
30 print tab(8)"{down*2}3:- save bytes to tape"
40 get a$:if a$<"1" or a$>"3" then 40
50 on val(a$) gosub 100,200,300
60 goto 10
100 input"{clear}start address ";sa
110 input"{home}{down*2}     {left*5}";d$:if d$="" then 110
120 if d$="#" then return
125 w=0:for z=1 to 16:if left$(d$,1)=mid$(hh$,z,1) then w=w+1
126 if right$(d$,1)=mid$(hh$,z,1) then w=w+1
127 next:if w<2 then 110
130 a=asc(d$)-48:b=asc(right$(d$,1))-48
140 c=b+7*(b>9)-(len(d$)=2)*(16*(a+7*(a>9)))
150 poke sa,c:print"{home}{down*5}                                        {up}"sa,d$
160 sa=sa+1:goto 110
200 input"{clear}start address ";sa
210 input"printer (y or n) ";p$:print"{clear}"
220 if p$="y" then open 4,4:cmd 4
230 print sa;:for m=0 to 7
240 a=(peek(sa)/16):print mid$(hh$,a+1,1);mid$(hh$,peek(sa)-int(a)*16+1,1)" ";
250 sa=sa+1:next
260 if p$="y" then print#4,"";:close4
270 get a$:if a$="" then 270
280 if a$=chr$(13) then return
290 print:goto 220
300 clr:input"{clear}enter start address";a:a=a-3:aa=int(a/256):a2=a-aa*256
310 input"enter end address  ";b:b=b+1:bb=int(b/256):b2=b-bb*256
315 input"input file name    ";n$
320 print"{clear}pO44,"aa":pO43,"a2
330 print"{down*2}pO46,"bb":pO45,"b2:print"{down*2}save"chr$(34)n$chr$(34)
340 print"{down*9}pO44,"peek(44)":pO43,"peek(43)
350 print"{down*2}pO46,"peek(46)":pO45,"peek(45):print"{down*2}run{home}"
