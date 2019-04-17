10 rem sprite example 2...
20 rem the hot air balloon again
30 vic=13*4096
35 poke vic+21,63
36 poke vic+33,14
37 poke vic+23,3
38 poke vic+29,3
40 poke 2040,192
50 poke 2041,193
60 poke 2042,192
70 poke 2043,193
80 poke 2044,192
90 poke 2045,193
100 poke vic+4,30
110 poke vic+5,58
120 poke vic+6,65
130 poke vic+7,58
140 poke vic+8,100
150 poke vic+9,58
160 poke vic+10,100
170 poke vic+11,58
175 print"{white}{clear}"tab(15)"this is two hires sprites";
176 printtab(55)"on top of each other"
180 poke vic+0,100
190 poke vic+1,100
200 poke vic+2,100
210 poke vic+3,100
220 poke vic+39,1
230 poke vic+41,1
240 poke vic+43,1
250 poke vic+40,6
260 poke vic+42,6
270 poke vic+44,6
280 for x=192 to 193
290 for y=0 to 63
300 read a
310 poke x*64+y,a
320 next y,x
330 dx=1:dy=1
340 x=peek(vic)
350 y=peek(vic+1)
360 if y=50 or y=208 then dy=-dy
380 if x=24 and (peek(vic+16) and 1)=0 then dx=-dx
400 if x=40 and (peek(vic+16) and 1)=1 then dx=-dx
420 if x=255 and dx=1 then x=-1:sd=3
440 if x=0 and dx=-1 then x=256:sd=0
460 x=x+dx
470 x=x and 255
480 y=y+dy
485 poke vic+16,sd
490 poke vic,x
500 poke vic+2,x
510 poke vic+1,y
520 poke vic+3,y
530 goto 340
600 rem ***** sprite data *****
610 data 0,255,0,3,153,192,7,24,224,7,56,224,14,126,112,14,126,112,14,126,112
620 data 6,126,96,7,56,224,7,56,224,1,56,128,0,153,0,0,90,0,0,56,0
630 data 0,56,0,0,0,0,0,0,0,0,126,0,0,42,0,0,84,0,0,40,0,0
640 data 0,0,0,0,102,0,0,231,0,0,195,0,1,129,128,1,129,128,1,129,128
650 data 1,129,128,0,195,0,0,195,0,4,195,32,2,102,64,2,36,64,1,0,128
660 data 1,0,128,0,153,0,0,153,0,0,0,0,0,84,0,0,42,0,0,20,0,0
