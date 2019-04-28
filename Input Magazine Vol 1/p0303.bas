5 rem ** requires simons' basic **
10 hires 0,1
20 circle 160,100,100,100,1
30 t=0
40 for x=15 to 360 step 15:t=t+1
50 text 145 + 90*sin(x/180*n),98-90*cos(x/18(rn),str$(t),1,1,10
60 next x
70 t=6:11=357:t2=345:c=12:c1=354:c2=330
80 a=c/180*pi
90 line 160,100,60*sin(a)+160,100-60*cos(a),0
100 a=t/180*pi
110 line 160,100,60*sin(a)+160,100-60*cos(a),1
120 c=t:t=t+6:if t>360 then t=1:c1=t1:t1=t1+3:if t1=>360 then t1=0:c2=t2:t2=t2+15
130 if t2>360 then t2=.1
140 a=c1/180*pi
150 line 160,100,55*sin(a)+160,100-55*cos(a),0
160 a=t1/180*pi
170 line 160,100,55*sin(a)+160,100-55*cos(a),1
180 a=c2/180*pi
190 line 160,100,40*sin(a)+160,100-40*cos(a),0
200 a=t2/180*pi
210 line 160,100,40*sin(a)+160,100-40*cos(a),1
220 goto 80
