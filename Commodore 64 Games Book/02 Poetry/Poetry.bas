10 rem ** poetry **
20 dim aj$(9,2),av$(9,2):for i=0 to 9
30 read aj$(i,0),aj$(i,1),aj$(i,2),av$(i,0),av$(i,1),av$(i,2):next
50 print"{clear}";spc(14);"** poetry **{down}";chr$(8)
55 fl=0:mo=int(rnd(1)*3)
60 for i=1to4+int(rnd(1)*4):av=int(rnd(1)*10)
65 aj=int(rnd(1)*10):if aj=av then 65
70 aj$=aj$(aj,mo):av$=av$(av,mo)
75 on int(rnd(1)*11+1) goto 80,85,90,95,100,105,110,115,120,125,130
80 print"the ";aj$;" man ";av$;" beguiled her":goto 500
85 print "a ";aj$;" woman enchanted me with ";av$;" blinking eyes":goto 500
90 print "in ";av$;" keeping with her ";aj$;" vows":goto 500
95 print "alas, she must ";av$;" leave his ";aj$;" presence":goto 500
100 print "a breath of ";aj$;" air ";av$;" rustled in the trees":goto 500
105 print "another ";aj$;" day ";av$;" ended":goto 500
110 print "the ";aj$;" hills marched ";av$;" across the horizon":goto 500
115 print "and then:":goto 500
120 print "the ";aj$;" bell tolled ";av$;" once again":goto 500
125 print "the ";av$;" ";aj$;" human arrived":goto 500
130 print "life ";av$;" dawned on the ";aj$;" universe":goto 500
500 next i:if fl=0 and rnd (1)>.5 then fl=1:goto 60
505 get a$:if a$="n" then print chr$(9):end
510 if a$="" then 505
515 goto 50
1000 data sorrowful,appathetic,joyful,sadly,carelessly,happilly
1005 data putrid,odourless,scented,foully,carefully,sweetly
1010 data boring,enlightening,interesting,tirelessly,effortlessly,easily
1015 data ugly,plain,beautiful,clumsily,,gracefully
1020 data fat,thin,lean,noisily,quietly,
1025 data pathetic,ordinary,super,pathetically,,superbly
1030 data irritating,calming,exciting,sharply,cooly,excitedly
1035 data tortuous,hating,loving,,contemptuously,lovingly
1040 data dying,living,newly born,painfully,easily,
1045 data stupid,ignorant,intelligent,foolishly,,intelligently
