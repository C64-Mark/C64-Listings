10 for m=252 to 253:for i=64*m to 64*m+63:poke i,0:next
20 for i=64*m+21 to 64*m+56:read a:poke i,a:next:next
30 for m=254 to 255:for i=64*m to 64*m+62:poke i,0:next
40 m2=0:if m=255 then m2=2
50 for i=64*m+18 to 64*m+36 step3:read a:poke i+m2,a:next:next
60 sc=53248:x3=24:x=24:y3=157:y=157
70 poke2043,252:poke2042,254:poke sc+23,0:poke sc+29,0:poke sc+42,12:poke sc+27,0
80 poke sc+23,0:poke sc+29,0:poke sc+41,1
90 j=0:r=0:poke650,128:print"{clear}":poke sc+21,8
100 get a$:if a$="" then 180
110 if a$="z" and x3>24 then x3=x3-12
120 if a$="x" and x3<310 then x3=x3+12
130 if a$="p" and y3>50 then y3=y3-12
140 if a$="l" and y3<220 then y3=y3+12
150 if a$<>" " then 180
160 rt=(peek(2043)=253):x2=-360*rt:y2=y:j=x-24*rt-11:poke2042,254-rt
170 poke sc+21,12:gosub 260
180 if x<x3 then x=x+3:poke2043,253
190 if x>x3 then x=x-3:poke2043,252
200 if y<y3 then y=y+3
210 if y>y3 then y=y-3
220 xa=int(x/256):xb=x-xa*256
230 poke sc+6,xb:poke sc+7,y
240 poke sc+16,4*(1 and ja)+8*(1 and xa)
250 goto 100
260 for t=j to x2-4 step(rt*2+1)*-20
270 ja=int(t/256):jb=t-ja*256
280 poke sc+16,4*(1 and ja)+8*(1 and xa)
290 poke sc+4,jb:poke sc+5,y
300 for p=1 to 30:next:next:return
1000 data 0,1,192,0,63,224,255,255,254,0,255,254,1,255,224,0,0,0
1010 data 63,255,255,127,255,255,255,255,255,122,235,174,48,65,6
1020 data 6,102,100
1030 data 3,128,0,7,252,0,127,255,255,127,255,0,7,255,128,0,0,0
1040 data 255,255,252,255,255,254,255,255,255,117,215,94,96,130,12
1050 data 38,102,96
1500 data 4,9,2,176,2,9,4
1510 data 32,144,64,13,64,144,32
