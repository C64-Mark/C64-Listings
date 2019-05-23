5 print"{clear}"chr$(14)chr$(8)
10 print"{down}Which test (1 or 2)?"
20 print"Type '0' to quit"
30 get a$:if a$<"0" or a$>"2" then 30
40 if a$="0" then print"{clear}"chr$(142)chr$(9):end
50 on val(a$) gosub 100,2000
60 print"{clear}"
70 print"Words per minute":print"=";int((len(c$)/6)/ti*6000)
80 print"{down}Number of errors":print"=";e
90 goto 10
100 print"{clear}Do you want to be able to use the delete key (y/n)?" 
110 get a$:if a$<>"y" and a$<>"n" then 110
120 e=0:d=0:if a$="y" then d=1
130 print"{clear}"
140 c$="":restore:for k=1 to 4:r=int(rnd(1)*3)+1:for j=1 to 3
150 read b$:if j=r then c$=c$+b$
160 next j,k
170 print c$;"{down*3}"
180 pp=0:print"{reverse on}";
190 gosub 310
200 ti$="000000":goto 220
210 gosub 310
220 if a$<>mid$(c$,pp+1,1) and d=0 then 270
230 print a$;:pp=pp+1
240 if a$<>mid$(c$,pp,1) then 270
250 ss=250:gosub 3000:if pp=len(c$) then return
260 goto 210
270 ss=130:gosub 3000:e=e+1
280 if d=0 then 210
290 get a$:if a$<>chr$(20) then 290
300 pp=pp-1:print a$;:goto 210
310 poke 198,0
320 get a$:if a$="" then 320
330 if a$<chr$(32) or (a$>chr$(127) and a$<chr$(161)) then 320
340 return
1000 data "The mangy dog that walks on three legs "
1010 data "It is a fact that anyone ","When the time is right,the elephant "
1020 data "might browse under ","will be able to sit on ","can jump upon "
1030 data "the wobbly box with a hole on top ","the leaning tower of pisa "
1040 data "any one of the farm buildings "
1050 data "and bring it crashing to the floor."
1060 data "without fear of a big surprise.","until closing time at the zoo."
2000 if c$(1)<>"" or c$(2)<>"" or c$(3)<>"" then 2015
2005 print"{clear}Input the passages you wish to type.":for z=1 to 3:print"{down}Passage:";z
2010 input c$(z):next z
2015 print"{clear}Do you wish to be able to use the delete key (y/n)?"
2020 get a$:if a$<>"y" and a$<>"n" then 2020
2025 d=0:e=0:if a$="y" then d=1
2030 print"{clear}Enter passage. (1-3)?" 
2040 get a$:c$=c$(val(a$)):if a$<"1" or a$>"3" then 2030
2050 print"{clear}":gosub 170:return
3000 poke 54296,15:poke 54277,9:poke 54273,ss
3010 poke 54276,33:for dd=1 to 40:next dd:poke 54276,0:poke 54277,0:return
