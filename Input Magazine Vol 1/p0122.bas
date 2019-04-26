5 print"{clear}"
10 for l=1 to 10
20 print tab(l)"B"spc(l+1)"."spc(l+2)"B"
30 next:r=l
40 for l=10 to 1 step-1
50 print tab(l)"B"spc(r+1)"."spc(r+2)"B"
60 next
