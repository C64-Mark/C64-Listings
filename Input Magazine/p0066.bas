10 print "{clear}{black}this is slow basic":poke 53280,7:poke 53281,7
20 for z=0 to 959:poke 55336+z,1:poke 1064+z,46:next z
30 for z=1 to 1000:next z
40 print "{clear}"
50 for z=1 to 1000:next z
100 print"{home}now this is fast machine code":poke 53280,10:poke 53281,10
105 for z=1 to 2000:next z
110 for z=0 to 19:read x:poke 832+z,x:next z
120 sys 832
130 data 162,0,169,46,157,40,4,157,0,5,157,0,6
135 data 157,232,6,232,208,241,96 
