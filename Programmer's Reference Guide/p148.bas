10 rem sprite example 3...
20 rem the hot air gorf
30 vic=53248
35 poke vic+21,1
36 poke vic+33,14
37 poke vic+23,1
38 poke vic+29,1
40 poke 2040,192
50 poke vic+28,1
60 poke vic+37,7
70 poke vic+38,4
180 poke vic+0,100
190 poke vic+1,100
220 poke vic+39,2
290 for y=0 to 63
300 read a
310 poke 12288+y,a
320 next y
330 dx=1:dy=1
340 x=peek(vic)
350 y=peek(vic+1)
360 if y=50 or y=208 then dy=-dy
380 if x=24 and (peek(vic+16) and 1)=0 then dx=-dx
400 if x=40 and (peek(vic+16) and 1)=1 then dx=-dx
420 if x=255 and dx=1 then x=-1:sd=1
440 if x=0 and dx=-1 then x=256:sd=0
460 x=x+dx
470 x=x and 255
480 y=y+dy
485 poke vic+16,sd
490 poke vic,x
510 poke vic+1,y
520 get a$
521 if a$="m" then poke vic+28,1
522 if a$="h" then poke vic+28,0
530 goto 340
600 rem ***** sprite data *****
610 data 64,0,1,16,170,4,6,170,144,10,170,160,42,170,168,41,105,104,169,235,106
620 data 169,235,106,169,235,106,170,170,170,170,170,170,170,170,170,170,170,170
630 data 166,170,154,169,85,106,170,85,170,42,170,168,10,170,160,1,0,64,1,0,64
640 data 5,0,80,0
