5 c$="{black}{white}{red}{cyan}{purple}{green}{blue}{yellow}{orange}{brown}{pink}{dark gray}{gray}{dark gray}{pink}{brown}{orange}{yellow}{blue}{green}{purple}{cyan}{red}{white}{black}":print"{clear}";
8 for z=0 to 48:read x:poke 49152+z,x:next z
10 for z=1 to 24:print mid$(c$,z,1)"{reverse on}                                        ";
20 next z:print"{home}"
40 for z=0 to 12
60 for zz=55335-z+(z*40) to 56295-z-(40*z) step 40:poke zz,z:next zz
70 for zz=55296+z+(z*40) to 56256+z-(40*z) step 40:poke zz,z:next zz,z
80 data 169,0,141,251,0,169,216,141,252,0,160,0,177,251,201,0,208,2,169,16,24
82 data 233,0,145,251,24,230,251,165,251,201,0,208,2,230,252,165,251
84 data 201,232,208,224,165,252,201,219,208,218,96
100 sys 49152:for z=1 to 250:next z:goto 100 
