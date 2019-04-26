5 rem ***requires simons' basic***
10 hires 0,1:for n=0 to 360 step 4
20 angl 160,80,n,84,60,1
30 next
35 circle 160,80,84,60,1
40 for n=360 to 0 step-4
45 angl 160,80,n,84,60,0
50 next:pause 10
