10 for z=0 to 69:read x
20 poke 832+z,x:next z:goto 90
30 data 169,29,141,24,208,169,59,141,17,208
40 data 169,32,133,252,169,0,133,251,160,0,169,0,145,251
50 data 200,208,251,24,165,252,201,63,240,4,230,252,208,236
60 data 162,0,169,0,157,0,64,232,224,63,208,248
70 data 162,0,169,13,157,0,4,157,0,5,157,0,6,157,232,6,232,208,241,96
90 sys 832
100 sc=8192:xx=100:yy=100:co=1
110 let y=yy:let x=xx
120 get a$:if a$="" then goto 120
130 if a$="{left}" then let x=x-1
140 if a$="{right}" then let x=x+1
150 if a$="{up}" then let y=y-1
160 if a$="{down}" then let y=y+1
165 if a$="1" then co=1
166 if a$="2" then co=2
170 let l=sc+(int(y/8)*320+8*int(x/8)+(y and 7))
180 if l<8192 or l>16191 then goto 110
190 let xx=x:let yy=y
200 if co=1 then poke l,peek(l) or (2^(7-(xx and 7)))
210 goto 110
