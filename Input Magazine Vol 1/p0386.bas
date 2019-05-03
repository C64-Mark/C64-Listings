0 rem**complete game - needs debugging**
10 print"{clear}do you want instructions?"
20 get a$:if a$="" then 20
30 if a$="y" then gosub 6000
110 rem**set up arrays for responses**
120 dim r$(19),r(19)
130 for k=1 to 19:read r$(k),r(k):next 
140 data swim,5,empty,6,light,7,quit,8,inventory,9,kill,10,shoot,10,help,11
145 data get,2,take,2,carry,2,put,3,leave,3,drop,3,pull,4
150 data north,1,south,1,east,1,west,1
160 rem**set up arrays for objects**
170 read nb
180 dim ob(nb),ob$(nb),si$(nb)
190 for i=1 to nb: read ob(1),ob$(1),si$(1):next
200 data 7,4,bag,a bag of marbles is here
210 data 14,brick,a brick lies on the ground
220 data 24,chain,there is a chain hanging
230 data 0,gun,there is a gun on the floor
240 data 0,eyeball,a jewelled eyeball lies on the ground
250 data 22,lamp,you see a lamp
260 data 0,tax inspector,a tax inspector suddenly appears  
270 rem**start position**
280 l=15
290 goto 330 
300 rem**find location**
310 print"{clear}"
320 if int(rnd(1)*15+1)=1 and ta=0 then ob(7)=l:ta=1
330 if l<11 then on l gosub 0,0,0,5020,0,0,5050,5080,0,5110:goto 400
340 if l<21 then on l-10 gosub 5240,0,0,5180,5210,5240,5270,5300,0,0:goto 400
350 if l<26 then on l-20 gosub 0,5330,0,5360
360 rem**to print object in appropriate location**
370 for i=1 to nb:if ob(i)= l then print si$(i)
380 next 
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
480 if ob(7)=l and i<>10 then 1590
500 rem**find option**
505 if i=0 then goto 520
510 on i goto 1010,1150,1240,1310,1410,1460,1500,1360,1080,1550,3110
520 print:print"i don't know how to ";v$:goto 370
1000 rem**movement routine**
1010 if i$="n" and n>0 then l=l-6:goto 310 
1020 if i$="e" and e>0 then l=l+1:goto 310
1030 if i$="s" and s>0 then l=l+6:goto 310
1040 if i$="w" and w>0 then l=l-1:goto 310
1050 rem**if no location possible in direction**
1060 print:print"sorry-you can't go that way !!":goto 330
1070 rem**inventory**
1080 print"{cyan}you have:{yellow}";:in=0
1090 for g=1 to nb
1100 if ob(g)=-1 then print tab(10)ob$(g):in=in+i
1110 next
1120 if in=0 then print"zilch"
1130 goto 330
1140 rem**get**
1150 for g=1 to nb
1160 if n$=left$(ob$(g),len(n$)) then 1190
1170 next
1180 print" i don't understand ";n$:goto 330
1190 if ob(g)=-1 then print"you've got it":goto 330
1200 if ob(g)<>l then print"it isn't here":goto 330
1210 print "{purple}ok{yellow}":ob(g)=-1
1220 goto 330
1230 rem**drop**
1240 for g=1 to nb
1250 if n$=left$(ob$(g),len(n$)) then 1270
1260 next:print "i don't understand "n$:goto 330
1270 if ob(g)<>-1 then print"you haven't got it":goto 330
1280 print"ok":ob(g)=l
1290 goto 330
1300 rem**pull**
1310 in=0:if n$=left$("cha1n",len(n$)) then in=1
1315 if in=1 and l<>24 then print "nothing happens":goto 330 
1320 if in<>1 then print " you can't pull that!":goto 330
1330 if ob(5)=-1 then 1340
1335 print" you get flushed down the toilet and go round the bend":goto 1360
1340 rem**end of adventure**
1350 print "well done. you've completed the adventure"
1360 print:print "{purple}do you want another game (y/n)?"
1370 get a$:if a$<>"y" and a$ <>"n" then 1370
1380 if a$="y" then run
1390 print"{clear}{light blue}":poke 53280,14:end
1400 rem**swim**
1410 if l<>7 then print" in what?!!":goto 330
1420 if ob(2)=-1 then print" what a shame, you drowned":goto 1360
1430 if ob(4)>-1 then print" you find a gun":ob(4)=-1:goto 330
1440 print" you get wet":goto 330
1450 rem**empty**
1460 in=0:if n$=left$("bag",len(n$)) then in=1
1465 if in<>1 then print " you can't empty that":goto 330
1470 if ob(1)<>-1 then g=1:goto 1270
1480 print " the marbles roll over the floor":ob(5)=l:goto 370
1490 rem**light**
1500 in=0:if n$=left$("lamp",len(n$)) then in=1
1505 if in<>1 then print" you can't do that":goto 330
1510 if ob(6)<>-1 then g=6:goto 1270
1520 if la=1 then print"it's already lit":goto 330
1530 la=1:print"ok":goto 330
1540 rem**shoot**
1550 if ob(4)<>-1 then print" with what?":goto 320
1560 if ob(7)<>l then print v$;" who":goto 320
1570 print" you killed the ";ob$(7):ob(7)=0:goto 330
1580 rem**tax inspector**
1590 in=0:ob(7)=0
1600 for k=1 to nb
1610 if ob(k)=-1 then in=in+1
1620 next
1630 if in<>0 then 1640
1635 print" as you didn't have anything he locks"
1638 print" you in a deep dungeon":goto 1360
1640 k=int(rnd(1)*nb+1):if ob(k)<>-1 then 1640
1650 print"he takes the ";ob$(k);" away from you":ob(k)=0:goto 330
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
3100 rem**help**
3110 if l<>7 or ob(2)<>-1 then print"sorry, i can't help you here!":goto 330
3120 print"bricks weigh a lot and it's making your arm ache":goto 330 
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
6000 rem**instructions**
6010 print:print"{clear}{space*2}in the face of financial collapse you have fled the country"
6020 print:print"{space*2}the solution to your problems lies in"
6025 print"finding the fabled jewelled eyeball of"
6027 print"the purple icon and passing the final"
6029 print "initiative test"
6030 print:print"{space*2}avoid the tax inspector at all costs"
6040 print tab(8)"{down}press any key to continue"
6050 get a$:if a$="" then 6050
6060 return
