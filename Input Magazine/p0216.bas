8 input"number of items ";n
10 dim a$(n)
12 print"input array items"
14 for i=1 to n:input a$(i):next i
16 input"range to be sorted ";n1,n2
18 gosub 1000
20 print"sorted list:"
22 for i=1 to n:print a$(i):next i
24 goto 16 
1000 rem bubble sort (a$(n), n1, n2)
1010 let z=0
1020 for i=n1 to n2-1
1030 if a$(i)<=a$(i+1) then goto 1080
1040 let z$=a$(i)
1050 let a$(i)=a$(i+1)
1060 let a$(i+1)=z$ 
1070 let z=1
1080 next i
1090 if z=1 then goto 1010
1100 return
