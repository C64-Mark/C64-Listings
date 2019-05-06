5 rem *** requires simons' basic ***
10 dim y(11)
40 for n=0 to 11
50 print"{clear}"n;@input y(n):if y(n)<0 or y(n)>190 then 50
60 next n:hires 0,1:multi 2,4,6
70 xx=10:yy=190
80 n=0
90 for x=10 to 11*10+10 step 10
100 line xx,yy,x,190-y(n),rnd(1)*3+1
105 xx=x:yy=190-y(n)
110 n=n+1
120 next x
999 goto 999
