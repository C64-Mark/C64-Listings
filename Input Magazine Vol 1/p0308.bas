5 ** requires simons' basic **
10 hires 0,1
20 a=rnd(1)*55:a2=rnd(1)*45
30 for n=0 to 200*pi step a2/90
40 p=160+(a-a2)*sin(n):q=100+(a-a2)*cos(n)
45 pp=160+(a-a2)*sin(n-(a2/90)):qq=100+(a-a2)*cos(n-(a2/90))
50 line pp+a2*sin(xx), qq+a2*cos(xx),p+a2*sin(x),q+arcos(x),1 
60 xx=x:x=x—a/190
70 if peek(197)<>64 then run
80 next n
90 pause 5:run
