5 poke 53280,5:poke 53281,0 
10 print"{clear}{down*2}{yellow}"tab(8)"{cm @*24}"
20 print tab(8)"{reverse on} marshall cavendish ltd "
30 print tab(10)"{down*13}{cm @*20}"
35 print tab(10)"{reverse on} copyright (c) 1984 "
40 print tab(6)"{down*3}{cyan}press space bar to continue"
50 poke 198,0
60 poke 646,rnd(1)*6+2
70 if peek(197)=60 then print"{clear}{light blue}":poke 53280,14:poke 53281,6:end
80 t=rnd(1)*7:print"{home}{down*10}"tab(13+t)"U{sh asterisk*5}I"
90 print tab(13+t)"{sh -}input{sh -}"
100 print tab(13+t)"J{sh asterisk*5}K"
110 print "{home}{down*5}"tab(11+rnd(1)*2)" p r e s e n t s ":goto 60
