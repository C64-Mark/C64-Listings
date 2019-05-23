10 poke 52,48:poke 56,48:clr
20 poke 56334,0:poke 1,35
30 for z=0 to 1024:poke 12288+z,peek(53248+z):next z
40 poke 1,39:poke 56334,1
50 for z=0 to 143:read x:poke 13312+z,x:next z
52 for z=760 to 983:read x:poke 13312+z,x:next z
55 c$=chr$(13):poke 53272,28:poke 53281,0:poke 53280,6
60 print"{clear}":for z=1 to 30:x=int(rnd(1)*320)
70 poke 1024+x,46:poke 55296+x,rnd(1)*6+2:next z
80 t$="{reverse on}{green}{cm d}{cm z}{down}{left*2}{cm s}{cm p}{down}{left*2}{cm a}{cm e}{down}{left}{brown}{cm r}":c(0)=3
85 tt$="{cyan}{reverse on}{cm w}{cm h}{cm j}{cm l}{red}{down}{left*3}{cm y}{cm u}{down}{left*2}{cm o}{down}{left}{sh @}":c(1)=6
87 print"{home}{down*7}{green}":for z=1 to 280:print"{cm t}";:next
90 print"{home}{down*6}"tab(13)tt$"{up*4}{right*2}"t$"{up*2}{right}"t$tt$
95 print"{home}{down*4}"tab(30)t$"{up*2}"t$"{up*2}"t$tt$
96 print"{home}{down*9}{purple}"spc(30)"{reverse on}{cm asterisk}"chr$(160)"{cm k}{cm i}{down}{left*4}{reverse on}{cm t}{cm @}{cm g}{cm +}{cm m}{down}{left*5}{reverse on}{right}{cm pound}{sh pound}{cm n}{cm q}"
150 for z=0 to 159:poke 1864+z,102:poke 56136+z,c(rnd(1)*2):next z
160 print"{home}{down*20}"tab(28);
162 if rnd(1)>.50 then print"{reverse on}{yellow}@abcdefghijk";spc(28);"{reverse on}lmnooooopooo{reverse off}";:goto 170
164 print"{yellow}{space*12}";spc(28);"{reverse on}@abcdefghijk{reverse off}";
170 for d=1 to 200:next d
190 goto 160 
1300 rem crocodile
1310 data 0,0,1,7,15,15,9,5,0,0,128,192,248,255,127,95,1,3,6,12
1320 data 62,255,255,255,192,224,176,159,191,255,255,255
1330 data 0,0,0,0,0,248,252,255,0,0,0,0,0,0,1,207,0,0,0,1,15,127,255,255
1340 data 0,3,63,255,255,255,255,255,127,255,255,255,255,254,249,247,248
1350 data 255,255,255,255,15,255,255
1360 data 0,224,254,255,255,255,255,255, 0,0,0,192,248,255,255,255,0,2,4,7,7
1370 data 3,0,0,21,1,164,73,255,255,0,0
1380 data 255,127,63,63,255,255,127,31,255,255,255,255,255,255,255,255
1390 data 239,239,239,239,239,247,247,247,60,255,255,255,255,255,255,255
1780 rem elephant
1790 data 0,0,0,8,28,25,51,51,0,0,0,126,255,193,253,253,0,0,0,0,0,255,255
1800 data 255,0,0,0,0,0,248,252,254
1810 data 102,111,111,111,125,57,26,0,253,251,251,251,231,31,15,15,255,255
1820 data 255,255,255,255,255,255,254,255,255,255,255,255,255,255
1830 data 0,0,128,64,32,16,12,0,15,15,15,14,14,14,14,31,255,240,224,224
1840 data 224,224,224,224,255,63,59,59,57,57,121,248
1850 data 0,0,128,192,224,224,128,0
1860 rem tree 1
1870 data 0,0,0,0,1,1,3,7,0,0,0,0,224,240,248,248,15,63,63,63,31,15,3,3
1880 data 252,254,254,254,254,254,252,252 
1890 data 3,3,3,3,3,1,0,0,248,248,248,248,248,248,240,96,96,96,96,96,96,96
1900 data 96,96
1910 rem tree 2
1920 data 0,3,15,31,127,127,63,1,7,15,255,255,255,255,255,255,15,63,255,255
1930 data 255,255,255,255,0,128,248,248,248,248,240,224
1940 data 255,227,96,48,24,25,13,15,252,240,96,96,192,192,128,128,7,7,7,7,7
1950 data 7,7,7,7,7,7,15,15,15,31,63
