0 background=1
5 poke 55,255:poke 56,31
6 dim p(7):for i=0 to 7:p(i)=2^(7-i):next
10 v=53248:poke v+32,0:poke v+33,0
30 poke v+24,peek(v+24) or 8
40 poke v+17,peek(v+17) or 32
50 for i=1024 to 2024:poke i,ba:next
60 for i=8192 to 8192+8*1024:poke i,0:next
100 x=79:y=49:dx=int(rnd(1)*3-1):dy=int(rnd(1)*3-1):if dx=0 and dy=0 then 100
105 y1=y:x1=x:gosub 1000:x1=319-x:gosub 1000:y1=199-y:gosub 1000:x1=x:gosub 1000
107 y1=y*2:x1=x*2:gosub 1000:y1=199-y1:x1=319-x1:gosub 1000
110 x=x+dx:y=y+dy:if x<0 or x>159 then dx=-dx:goto 110
115 if y<0 or y>99 then dy=-dy:goto 110
120 if rnd(1)>.9 then dx=int(rnd(1)*3-1)
130 if rnd(1)>.9 then dy=int(rnd(1)*3-1)
135 if dx<>0ordy<>0 then 105
140 dx=int(rnd(1)*3-1):dy=int(rnd(1)*3-1):if dx=0 and dy=0 then 140
150 goto 105
1000 ya=int(y1/8):yb=y1-ya*8:xa=int(x1/8):xb=x1-xa*8
1005 p=8*1024+ya*320+xa*8+yb:xc=p(xb)
1010 poke p,peek(p) or xc:return
