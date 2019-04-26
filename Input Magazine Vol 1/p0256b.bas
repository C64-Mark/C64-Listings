5 rem ***requires simons' basic***
10 hires 0,1
15 for z=0 to 100 step 10
20 for x=0 to 2*pi step .05
30 plot sin(x)*z+150,cos(x)*60+100,1
40 next x,z
50 pause 10
