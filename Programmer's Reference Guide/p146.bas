10 rem sprite example 1...
20 rem the hot air balloon
30 vic=13*4096
35 poke vic+21,1
36 poke vic+33,14
37 poke vic+23,1
38 poke vic+29,1
40 poke 2040,192
180 poke vic+0,100
190 poke vic+1,100
220 poke vic+39,1
250 for y=0 to 63
300 read a
310 poke 192*64+y,a
320 next y
330 dx=1:dy=1
340 x=peek(vic)
350 y=peek(vic+1)
360 if y=50 or y=208 then dy=-dy
380 if x=24 and (peek(vic+16) and 1)=0 then dx=-dx
400 if x=40 and (peek(vic+16) and 1)=1 then dx=-dx
420 if x=255 and dx=1 then x=-1:sd = 1
440 if x=0 and dx=-1 then x=256:sd = 0
460 x=x+dx
470 x=x and 255
480 y=y+dy
485 poke vic+16, sd
490 poke vic,x
510 poke vic+1,y
530 goto 340
600 rem ***** sprite data *****
610 data 0,127,0,1,255,192,3,255,224,3,231,224
620 data 7,217,240,7,223,240,7,217,240,3,231,224
630 data 3,255,224,3,255,224,2,255,160,1,127,64
640 data 1,62,64,0,156,128,0,156,128,0,73,0,0,73,0
650 data 0,62,0,0,62,0,0,62,0,0,28,0,0
