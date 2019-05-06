5 rem *** requires simons' basic ***
10 d=1:e=100
20 hires 0,1:multi 2,4,6
30 xx=0:yy=100
40 for t=0 to pi*10 step .3
50 line xx,yy,t*5,-sin(t)*50+100,1
55 xx=t*5:yy=-sin(t)*50+100
60 next t
70 c=2 
80 xx=80-20*3
85 t=-20:yy=(t*t/5)*d+e
90 for t=-20 to 20
100 line xx,yy,80+t*3,(t*t/5)*d+e,c
105 xx=80+t*3:yy=(t*t/5)*d+e
110 next t
120 if d=-1 then 999
130 d=-1:e =120:c=3:goto 80
140 goto 80
999 goto 999
