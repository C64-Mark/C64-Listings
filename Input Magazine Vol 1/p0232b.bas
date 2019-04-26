50 poke 53280,6:input"{clear}{cyan}input level (1-4){green}";a:if a<1 or a>4 then 50
60 le=5-a:le=le*4+4
100 print"{clear}{down*2}":a=1186:poke 650,255
102 s=54272:poke s+5,33:poke s+6,255:poke s+24,15:poke s+4,33:poke s+1,0
105 for z=0 to 39:poke 1104+z,102:poke 1984+z,102:poke 55376+z,1:poke 56256+z,1:next
110 a(0)=-1:a(1)=-40:a(2)=+1:a(3)=40:for f=1 to 21
150 print"{white}{cm +}{reverse on}{yellow}                                      {reverse off}{white}{cm +}";:next f:poke a,4
220 j=int(rnd(1)*4):g=j:poke 54272+a,7
230 b=a+a(j)*2:if peek(b)=160 then poke b,j:poke 54272+a,6:poke a+a(j),32:a=b:goto 220
240 j=(j+1)*-(j<3):if j<>g then 230
250 j=peek(a):poke a,32:if j<4 then a=a-a(j)*2:goto 220
1000 lv=3:for z=1 to 60:x=int(rnd(1)*40+1)+int(rnd(1)*9)*80
1002 if peek(1184+x)=160 and peek (1224+x)=160 then poke 1184+x,32
1004 next z
1006 x=rnd(1)*720:if peek(1223+x)<>32 then 1006 
1008 ol=1223+x:poke ol,42
1010 ti$="000000":poke a,94:j=3
1013 print"{home}";:for z=1 to 62:print" ";:next: print"{purple}high score:{white}"hs
1014 print"{home}{purple}lv:{white}"lv"    {purple}time:{white}"ti$"      {purple}score:{white}"sc
1015 if val(ti$)>=le then 2000
1016 get z$:if z$="" then 1014
1017 if z$="z" then j=0
1018 if z$="x" then j=2
1019 if z$="p" then j=1
1020 if z$="l" then j=3
1021 b=a+a(j):if peek(b)<>102 and peek(b)<>160 then 1040
1030 goto 1014
1040 if peek(b)=42 then 3000
1050 poke b,94:poke a,32:a=b:goto 1014
2000 lv=lv-1:for z=155 to 0 step-1:poke a,rnd(1)*6+109
2002 poke s+1,z
2003 next:poke a,94:if lv>0 then 1010
2005 print"{home}   {white}f1 {cyan}- new maze           {right*13}   {white}f7 {cyan}- start"
2006 sc=0:lv=3:get k$:if k$="{f1}" then 50
2007 if k$="{f7}" then 1010
2010 goto 2006
3000 sc=sc+50-val(ti$):poke ol,32:if sc>hs then hs=sc
3005 poke s+1,250:for z=1 to 10:next z:poke s+1,0
3010 goto 1006
