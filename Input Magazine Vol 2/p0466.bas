20 poke 53280,5:poke 53281,0:print"{clear}"
30 y=1284:tu=0:sc=0
40 for z=1 to 23:print"{yellow}{cm +}{space*38}{cm +}";:next z
110 j=peek(145)
120 poke y,32:poke y+1,32:poke y+40,32:poke y+41,32
130 t=0:t1=0:t2=0:t3=0:t4=0:if ((j and 1)=0)=-1 then t1=-40
140 if ((j and 2)=0)=-1 then t2=40
150 if ((j and 4)=0)=-1 then t3=-1
160 if ((j and 8)=0)=-1 then t4=1
165 t=t1+t2+t3+t4
170 if(y+t>1063 and y+t<1943) and (peek(y+t)<>102 and peek(y+t+1)<>102) then y=y+t
180 poke y,125:poke y+1,109:poke y+40,110:poke y+41,112
190 goto 110
