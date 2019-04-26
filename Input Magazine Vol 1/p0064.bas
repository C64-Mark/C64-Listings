20 let a=1
30 rem ***first throw**
40 gosub 150
50 let t1=t
60 rem ***second throw***
70 gosub 150
80 let t2=t
90 if t1=t2 then goto 120
100 let a=a+1
110 goto 40
120 print"equal scores of"t1"in"a"throws"
130 end
140 rem ***subroutine***
150 gosub 190
155 let d1=d
160 gosub 190
165 let d2=d
170 let t=d1+d2
180 return
190 let d=int(rnd(x)*6+1)
200 return
