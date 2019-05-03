10 print"{clear}"
20 input"enter falling distance (metres)";d
30 if d<0 then 20
40 t=sqr((2*d)/9.81)
50 v=sqr(2*d*9.81)
60 t=int(t*100)/100
70 v=int(v*100)/100
80 print"{reverse on}{down}time taken to reach ground:":print t"seconds"
90 print"{reverse on}{down}maximum velocity reached :":print v"metres per second"
100 print"{down}("int(2.25*v+.5)"mph )"
200 print"{down}press any key to run again"
210 poke 198,0:wait 198,1:poke 198,0
220 run
