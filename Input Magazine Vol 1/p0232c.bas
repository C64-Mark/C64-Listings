5 s=54272:w(1)=17:w(2)=33:w(3)=129
10 for z=s to s+24:poke z,0:next z
15 p=1:w=1:rem p (1-13) w (1-3)
20 poke s+24,15:rem volume
25 poke s+5,15:rem attack/decay
30 poke s+4,w(w):rem waveform
35 poke s+6,15:rem sustain/release
40 on p gosub 55,60,65,70,75,80,85,90,95,100,105,110,115
50 poke s+4,w(w)-1:poke s+5,0:poke s,0:poke s+1,0:end
55 for z=1 to 75 step .1:poke s+1,z:next z:return
60 for z=1 to 75 step .1:poke s+1,abs(sin(z)*15):next z:return
65 for z=75 to 5 step -1:poke s+1,z:poke s,z:next z:return
70 for z=1 to 100:poke s+1,rnd(1)*75:next z:return
75 for z=1 to 200:poke s+1,abs(tan(z)+5):next z:return
80 poke s+1,10:poke s,127:for z=1 to 15 step .05:poke s+24,z:next z:return
85 for z=1 to 250 step 1:poke s+1,z:poke s+1,255-z:next z:return
90 for z=5 to 100 step 5: for zz=10 to 100 step 10:poke s+1,z:poke s,zz:next zz,z:return
95 for z=20 to 200 step 10:for zz=1 to 20:poke s+1,z-zz:poke s +1,zz+50:next zz,z:return
100 for z=1 to 40:for zz=1 to rnd(1)*50:poke s+1,zz:next zz,z:return
105 for z=10 to 100 step 10:for zz = 5 to z:poke s+1,z-zz:next zz,z:return
110 poke s+1,rnd(1)*200+5:for z=1 to rnd(1)*500+100:next z:return
115 poke s +1,rnd(1)*200+5:for z=1 to rnd(1)*100 step .2:poke s+24,z:next z:return
