10 input"age";age
20 input"number of o-levels";olevels
30 over18=(age>=18)
40 qual=(olevels>=5)
50 if not over18 and not qual then print"not suitable"
60 if(not over18 and qual) or (over18 and not qual) then print"salary scale one"
70 if over18 and qual then print"salary scale two"
