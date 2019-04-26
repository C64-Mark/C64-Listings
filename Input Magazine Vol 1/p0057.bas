20 print"{clear}"
30 print tab(18)"{down*22}{cm i}^{cm i}" 
40 get k$:if k$="" then goto 40
50 if k$="f" then n=939:goto 70
60 goto 40
70 poke 1024+n,30:poke 55296+n,1
80 poke 1024+n+40,32
90 n=n-40
100 if n>0 then goto 70
110 if n<0 then goto 20 
