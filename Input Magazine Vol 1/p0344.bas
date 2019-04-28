110 rem**set up arrays for responses**
120 dim r$(19),r(19)
130 for k=1 to 4:read r$(k),r(k):next
150 data north,1,south,1,east,1,west,1 
270 rem**start position**
280 l=15
290 goto 330 
300 rem**find location**
310 print"{clear}"
330 if l<11 then on l gosub 6000,6000,6000,5020,6000,6000,5050,5080,6000,5110:goto 400
340 if l<21 then on l-10 gosub 5240,6000,6000,5180,5210,5240,5270,5300,6000,6000:goto 400
350 if l<26 then on l-20 gosub 6000,5330,6000,5360 
390 rem**display direction**
400 if l<>11 or (la=1 and ob(6)=-1) then print:print"{cyan}you can go{yellow}";:goto 410
405 goto 460
410 if n>0 then print tab(11);"north"
420 if e>0 then print tab(11);"east"
430 if s>0 then print tab(11);"south"
440 if w>0 then print tab(11);"west"
450 rem**instructions**
460 print:input"{white}what now{yellow}";i$
470 gosub 3010 
1000 rem**movement routine**
1010 if i$="n" and n>0 then l=l-6:goto 310 
1020 if i$="e" and e>0 then l=l+1:goto 310
1030 if i$="s" and s>0 then l=l+6:goto 310
1040 if i$="w" and w>0 then l=l-1:goto 310
1050 rem**if no location possible in direction**
1060 print:print"sorry-you can't go that way !!":goto 330
3000 rem**check instruction**
3010 n$="":for z=1 to len(i$):if mid$(i$,z,1)=" " then i=z:goto 3020
3015 next:i=0
3020 if i=0 then v$=i$:goto 3050
3030 v$=left$(i$,i-1)
3040 n$=mid$(i$,i+1) 
3050 i=0
3060 for k=1 to 19
3070 if v$=left$(r$(k),len(v$)) then i=r(k):i$=left$(v$,1)
3080 next
3090 return 
5000 rem**location description**
5010 rem**location 4**
5020 print"you are outside a large building"
5030 n=0:e=0:s=1:w=0:return
5040 rem**location 7**
5050 print"you are by a fastflowing river"
5060 n=0:e=1:s=0:w=0:return
5070 rem**location 8**
5080 print"you are in a petrified forest"
5090 n=0:e=0:s=1:w=1:return
5100 rem**location 10**
5110 print"you are in a dusty room"
5120 n=1:e=1:s=1:w=0:return
5130 rem**location 11**
5140 print"you are in a dark room"
5150 if ob(6)<>-1 or la<>1 then n=0:e=0:s=0:w=0
5155 if ob(6)<>-1 or la<>1 then print"it's too dark to see the exits":return
5160 n=0:e=0:s=1:w=1:return
5170 rem**location 14**
5180 print"you are on a muddy path"
5190 n=1:e=1:s=0:w=0:return
5200 rem**location 15**
5210 print"you are by the gate to the hidden city."
5220 n=0:e=1:s=0:w=1:return
5230 rem**location 16**
5240 print"you are in the entrance hall"
5250 n=1:e=1:s=1:w=1:return
5260 rem**location 17**
5270 print"you are in the courtyard"
5280 n=1:e=1:s=0:w=1:return
5290 rem**location 18**
5300 print"you are in the garden"
5310 n=0:e=0:s=1:w=1:return
5320 rem**location 22**
5330 print"you are in the cupboard"
5340 n=1:e=0:s=0:w=0:return
5350 rem**location 24**
5360 print"you are in the throne room"
5370 n=1:e=0:s=0:w=0:return
6000 print"you are nowhere"
6010 return
