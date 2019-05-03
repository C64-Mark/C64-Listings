2 print"{clear}":gosub 8000
10 for z=20 to 1 step-1
20 for a=1 to z:poke 1912-z*40+a,99:poke 56184-z*40+a,3
25 poke 1913-a*40+z,101:poke 56185-a*40+z,3
26 poke 1912+z,99:poke 56184+z,3
30 next a:print"{purple}"z;tab(8)"{cyan}{cm m}"tab(32)"{green}"z*z:next z:h=0
35 print"{home}{down*23}{red}would you like to compare any areas? {purple}y{black}/{green}n";
40 poke 198,0
100 get a$:if a$<>"y" and a$<>"n" then 100
105 print"{up}";:for z=1 to 40:print" ";:next z
106 if h=1 then c=3:z= x:gosub 600:z=y:gosub 600
110 h=1:if a$="n" then gosub 8000:goto 35
115 gosub 500
120 input"{home}{blue}enter first square.(1-20){black}";a$:x=val(a$):if x<1 or x>20 then 115
125 gosub 500
130 input"{home}{blue}enter second square.(1-20){black}";b$:y=val(b$):if y<1 or y>20 then 125
140 c=2:z=x:gosub 600:z=y:gosub 600
150 if x>y then 200
160 gosub 500:print"{home}{blue}the first area fits into the second one"y^2/x^2"times."
170 goto 35
200 gosub 500
210 print"{home}{blue}the first area is"x^2/y^2"times":print"{up}larger than the second."
220 goto 35
499 goto 499
500 print"{home}";:for z=1 to 80:print" ";:next z:return
600 for a=1 to z:poke 1912-z*40 +a,99:poke 56184-z*40+a,c
610 poke 1913-a*40+z,101:poke 56185-a*40+z,c:next a:return
8000 gosub 500
8010 print "{home}{reverse on}{blue}length of side{space*12}area of square":return
