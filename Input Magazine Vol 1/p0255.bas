5 rem ***requires simons' basic***
10 hires 0,1:multi 3,7,1:colour 6,6:line 15,100,360,100,3
15 line 20,0,20,200,3:text 1,5,"+1",1,3,6
18 text 1,170,"-1",2,3,6:text 6,90,"0",3,3,6
20 for z=0 to 2*n step.05
30 plot z*22+20,100-sin(z)*80,1
35 plot z*22+20,100-cos(z)*80,2
40 next z
50 goto 50
