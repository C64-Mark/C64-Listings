5 dim name$(5),age(5)
10 for n=1 to 5
20 print"name:"
30 input name$(n)
40 print"age:"
50 input age(n)
60 next
70 for n=1 to 5
80 print name$(n);" is ";age(n);" years old"
90 next 
