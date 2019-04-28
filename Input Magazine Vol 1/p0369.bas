5 rem **requires simons' basic**
10 hires 1,0:multi 0,5,7:colour 6,2
15 block 0,3,160,80,1
20 text 6,60,"enter a letter of the",2,1,7
30 text 50,110,"alphabet",3,4,8
40 poke 198,0
50 get a$:if a$<"a" or a$>"z" then 50
55 text 75,5,a$,3,5,7:for z=1 to 500:next z
60 a=asc(a$)-64:on a goto 1000,2000,3000
65 text 75,5,a$,1,5,7
99 goto 50
1000 hires 0,1:multi 5,13,2:colour 6,7
1005 circle 80,100,40,40,2
1010 paint 70,70,3
1015 for z=1 to 50 step.3:plot(65+z*.5)+rnd(1)*25,80+rnd(1)*40,rnd(1)*3:next
1020 for z=1 to 3:arc 75-z,70,0,90,10,10,30,z:next z
1030 arc 95,55,0,360,65,15,8,3:paint 95,55,1
1035 arc 65,55,0,360,65,15,5,3:paint 65,55,2
1040 a$="a":b$="a p p l e":goto 9000
2000 hires 0,1:multi 2,5,6:colour 7,7
2010 for z=43 to 16 step-5:circle80,100,50-z,58,3
2015 paint 83-(50-4100,int(rnd(1)*3)+1:next
2020 as="b":b$=" b a l l":goto 9000
3000 hires 0,1:multi 0,1,4:colour 6,13
3010 circle 80,40,13,25,3
3020 circle 80,110,20,45,2
3030 for z=1 to 3:arc 53-z,140-z,100,250,15,15,10,z:next
3040 arc 66,20,0,360,90,5,15,1:paint 66,20,3
3050 arc 93,20,0,360,90,5,15,1:paint 93,20,3
3060 paint 80,100,1:arc 75,35,0,360,90,4,3,2
3065 arc 85,35,0,360,90,4,3,2:paint 80,50,1
3070 forz=2t03:line 60,60-z*3,80,50,z:line 100,60-z*3,80,50,z:next
3080 circle 80,48,2,2,2
3099 a$="c":b$="  c a t"
9000 text 10,10,a$,3,5,8
9005 text 140,10,a$,3,5,8
9010 text 40,160,b$,1,2,10
9099 pause 5:goto 10
