1 rem ***requires simons' basic***
5 input "{clear}{black}enter angle";a:a=a/180*n 
10 hires 1,0
20 circle 160,100,70,70,1
25 text 160,20,"0",1,1,10
28 text 157,97,"+",1,1,10
30 for x=45 to 360 step 45
35 text 140+90*sin(x/180*7r),100-90*cos(x/180*ir),str$(x),1,1,10
40 next x
60 for x=0 to 1.75*n step n/4
65 line 160+70*sin(x),100-70*cos(x),160+60*sin(x),100-60*cos(x),1
70 next x
80 line 160,100,45*sin(a)+160,100-45*cos(a),1
100 pause 5:nrm:run
