10 print"{clear}{white}{reverse on} name     innings   runs   n.o.  ave    ":open 1,0
20 print"{black}"spc(1);:input#1,n$:print
22 print"{up}{purple}"spc(10);:input#1,e:print
24 print"{up}"spc(20);:input#1,r:print
26 print"{up}"spc(27);:input#1,n:print
28 if e<>n then print"{green}{up}"spc(31);int((r/(e-n))*100)/100:goto 40
30 print"{green}{up}";spc(32);"*"
40 goto 20
