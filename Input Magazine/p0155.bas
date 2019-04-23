10 let g=14:print chr$(147)
20 dim a$(g),a(g)
30 for z=1 to g
40 read a$(z)
50 let a(z)=z
60 next z
70 for x=g to 2 step-1
80 let q=int(rnd(1)*x)+1
90 let t=a(x):let a(x)=a(q):let a(q)=t
100 next x
110 for t=1 to g:print"room";t;"has a ";a$(a(t)):next t
120 data rope,sword,spanner,knife,gun,key,torch,car,whip,wand,bomb,book
130 data model ship,robot
