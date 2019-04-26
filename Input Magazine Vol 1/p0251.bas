10 print "{clear}{yellow}do you want to convert degrees into"
20 print "radians(1) or radians into degrees(2)":input a
30 if a<1 or a>2 then 10
40 input "{clear}{cyan}what is your number";b:print "{white}{down*2}that is";
50 if a=1 then print b/180*pi;"radians"
60 if a=2 then print b*180/pi;"degrees"
70 print "{cyan}{down*2}press any key to go again"
80 poke 198,0:wait 198,1:run
