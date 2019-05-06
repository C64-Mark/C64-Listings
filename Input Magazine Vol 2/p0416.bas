5 rem *** requires simons' basic ***
10 hires 0,1:multi 2,4,6
70 xx=10:yy=190
80 for x=10 to 11*10+10 step 10
90 read y
100 line xx,yy,x,190-y,2
105 xx=x:yy=190-y
110 next x
140 line 10,0,10,190,1
150 line 10,190,360,190,1
999 goto 999 
1000 data 190,10,130,50,160,0,100,70,90,50,50,0
