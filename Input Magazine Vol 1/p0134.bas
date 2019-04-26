10 print"{clear}{down*7}"tab(13)"enter password"
20 for z=1 to 7
30 get k$:if k$="" then goto 30
40 let p$=p$+k$ 
50 next z
60 if p$<>"bananas" then end
70 print"{up}"tab(13)" password okay   "
80 rem (rest of program follows)
