5 rem *** requires simons' basic to run ***
10 colour 3,0:hires 1,0:multi 8,3,6
20 circle 65,100,10,16,2
30 paint 65,110,3
40 line 55,100,40,80,3
50 line 40,80,0,120,3
60 line 0,120,40,100,3
70 line 40,100,55,105,3:paint 50,100,2
80 line 70,100,110,70,3
90 line 110,70,150,90,3
100 line 150,90,110,90,3
110 line 110,90,75,100,3:paint 90,95,2
120 line 60,110,50,130,3
130 line 70,105,80,130,3
140 line 50,130,80,130,3:paint 60,120,2
150 for z=63 to 67:line z,110,65,140,1:next:pause 10
