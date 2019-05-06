5 rem *** requires simons' basic ***
10 hires 0,1:multi 2,4,6
20 dim y(12)
30 xs=10:ys=1/60
40 for n=1 to 12
50 read y(n)
60 next n
80 xx=10+xs:yy=190-(ys*y(1))
90 for x=1 to 12
100 line xx,yy,10+x*xs,190-(y(x)*ys),rnd(1)*3+1
105 xx=10+x*xs:yy=190-(y(x)*ys)
110 next x
140 line 10,0,10,190,1
150 line 10,190,360,190,1
999 goto 999
1000 data 4000,2000,6000,3000,8000,1000,5000,2000,6000,1500,3000,500
