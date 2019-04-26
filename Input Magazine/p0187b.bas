5 rem ***requires simons' basic***
10 hires 0,1:multi 2,5,6
20 n=5:m=10:c=1
30 block n,n,m,m,c
40 n=n+5:m=m+10:c=int(rnd(1)*3+1)
50 if m<160 then goto 30
60 pause 10
