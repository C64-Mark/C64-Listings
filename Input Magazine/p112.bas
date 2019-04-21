20 input"{clear}base (up to 36)";b%
30 input"number (integer)";a$
40 input"sign";s$
50 input"number (integer)";b$
60 print"{clear}"
70 p$=a$:gosub 200
80 da=d%
90 p$=b$:gosub 200:db=d%
100 if s$="*" then x%=da*db
102 if s$="+" then x%=da+db
104 if s$="-" then x%=da-db
106 if s$="/" then x%=da/db
120 an$=""
130 if b%*(x%/b%-int(x%/b%))>9 then an$=chr$(55+b%*(x%/b%-int(x%/b%)))+an$:got0150
140 an$=right$(str$(b%*(x%/b%-int(x%/b%))),1)+an$
150 x%=int(x%/b%)
160 if x%>0 then goto 130
180 print"{clear}{down*4}base";b%": "a$s$b$"= "an$
190 end
200 d%=0:ix%=0
205 y=asc(right$(p$,1))
210 if y<58 then d=y-48:goto 230
220 d=y-55
230 d%=d%+d*b%^ix%:p$=left$(p$,len(p$)-1):ix%=ix%+1
240 if len(p$)>0 then goto 205
250 return
