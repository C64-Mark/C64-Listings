1 rem *** requires simons' basic - TESTED OK ***
5 hires 0,1:multi 2,4,6
10 n=12
20 dim a(n)
30 dx=150/n
40 read dy
70 for t=1 to n
80 read a(t)
90 next t
100 gosub 1000
110 for t=1 to n
130 x=(t-1)*dx+11
140 gosub 2000
150 next t
160 goto 160
1000 line 10,0,10,181,3:line 10,181,160,181,3
1010 line 10+dx*.5,0,10+dx*.5,181,3
1020 for z=18 to 180 step 18
1030 line 10,z,10+dx*.5,z-5,1
1040 next
1050 for t=0 to 10
1060 text 0,180-t*18,str$(t),1,1,4
1070 next t
1080 return
2000 co=co+1:if co>3 then co=1
2010 block x,180-a(t)*dy,x+(dx*.5)-1,180,co
2020 for n=0 to dx*.5-1
2030 line x+n,180-a(t)*dy-1,n+x+(dx*.5)-1,180-a(t)*dy-5,1
2040 next
2050 line x+(dx*.5)-1+n,180-a(t)*dy-5,x+(dx*.5)-1+n,180,co
2060 return
3000 data 18
3010 data 2,4,7,4,6,3,8,0,5,6,9,4
