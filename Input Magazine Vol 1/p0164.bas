1 for z=832 to 832+63*2:poke z,0:next z
2 for z=13 to 14:for a=0 to 15:for b=0 to 1:read x:poke z*64+a*3+b,x:next b,a,z
3 data 0,0,0,0,0,0,0,0,15,240,15,240,53,92,54,156,54,156,53,92,15,240,15,240
4 data 0,0,0,0,0,0,0,0
5 data 15,240,15,240,53,92,53,92,213,87,214,151,214,151,218,167,218,167
6 data 214,151,214,151,213,87,53,92,53,92,15,240,15,240 
10 print"{clear}":poke 53280,0:poke 53281,0
15 print"{down*19}"tab(20)"{reverse on}{white}{sh pound}{cm asterisk}{down}{left*2}{red}{cm +}{reverse off} {down}{left*4}{green}   "
20 for z=1 to 20:print"{home}"tab(z)" {reverse on}{cm -}{cm asterisk}{red}{reverse off}{down}{left*2} {green}  "
30 poke 1024+z*41,32:poke 1065+z*41,42:poke 55337+z*41,1
40 next z:print "{home}"tab(z)"  {down}{left*2}     " 
45 for z=1 to 20:poke 1884+rnd(1)*2,rnd(1)*15+110:next z
50 poke 1885,223:poke 1845,32:poke 1884,104 
900 v=53248:poke v+21,3:poke v+32,0:poke v+33,0:poke v+37,2:poke v+28,3
910 poke v+27,3:a(0)=1:a(1)=8:b(0)=4:b(1)=7
915 for ll=1 to 3:if ll=1 or ll=3 then poke v+23,0:poke v+29,0:pokev,183:poke v+1,216:dd=0
920 if ll=2 then poke v+23,3:poke v+29,3:poke v,175:poke v+1,208:dd=20
925 for uu=1 to 10:for z=13 to 14:poke 2040,z:poke v+39,b(rnd(1)*2)
930 for t=1 to dd:next t:poke v+38,a(rnd(1)*2)
940 next z,uu,ll:poke v+21,0
