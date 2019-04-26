1 rem laser battle [controls i,p & space]
5 for s=54272 to 54296:poke s,0:next
10 poke 53280,6:poke 53281,13:print"{clear}{black}{space*14}laser battle"
15 print"{down*11}{space*10}hit any key to start"
17 nm=3:v=53248:poke v+21,0:poke 2040,192:poke v+39,3:poke v,0:poke v+37,7
20 poke v+38,8:poke v+1,0:poke v+16,0:poke v+29,1
22 for i=12288 to 12350:read q:poke i,q:next
24 for i=12352 to 12414:j=int(2^(rnd(0)*7))-1:poke i,j:next
30 for i=49157 to 49244:read q:poke i,q:next
45 get x$:if x$="" then 45
50 print"{clear}";:poke 53280,0:poke 53281,0
52 for i=1784 to 1823:poke i,102:next
54 for i=1904 to 1943:poke i,64:poke i+54272,7:next
56 poke 1867,90:poke 1883,90:poke 1900,90:poke 56139,2:poke 56155,2:poke 56172,2
58 pg=19:poke 1843,113:gosub 1000
60 x=peek(197):if x=60 then gosub 150
62 if x=33 or x=41 then gosub 100
63 if ph=2 then gosub 400
65 if ph=0 then gosub 220:goto 70
67 gosub 250
70 x=peek(197):if x=60 then gosub 150
72 if x=33 or x=41 then gosub 100
73 if rnd(1)<.01 and ph=1 then ph=2
75 if ph=0 then 80
77 if rnd(1)<.8 or ph=2 then 80
78 gosub 190
80 if peek(1824+pg)<>113 then 500
90 goto 60
100 if pg=0 and x=33 then return
105 if pg=39 and x=41 then return
110 if x=33 then i=-1:goto 120
115 i=1
120 poke pg+1824,32:pg=pg+i:poke pg+1824,113:poke pg+56096,3:return
150 poke 49152,pg:poke 49154,18:poke 49202,66:poke 49217,1
152 poke 54296,15:poke 54277,190:poke 54276,17
153 poke 54273,17:poke 54272,37:poke 54278,248
155 sh=0:j=0: for i=1 to 4:if gs(i,1)=pg then j=i
156 next
157 if j<>0 then sp=gs(j,2):poke 49153,sp:sh=2:goto 165
160 m=peek(v)+256*(peek(v+16) and 1):p=pg*8+23
162 if m<p-22 or m>p-18 or peek(v+21)=0 then sp=0:poke 49153,sp:goto 165
163 sh=1:sp=2:poke 49153,sp
165 sys(49157)
170 poke 49202,32:poke 49217,0:poke 49153,sp
175 sys(49157)
177 if sh=1 then gosub 300
178 if sh=2 then gosub 350
180 poke 54276,0:return
190 if gs(1,1)=0 and gs(2,1)=0 and gs(3,1)=0 and gs(4,1)=0 then return
191 poke 49152,pg:poke 49154,18:poke 49202,66:poke 49217,1:poke 54296,15
192 poke 54277,190:poke 54276,17:fg=fg+1:if fg=5 then fg=1
193 if gs(fg,1)=0 then 192
194 poke 49152,gs(fg,1):poke 49153,gs(fg,2)+1:poke 49217,1:poke 49202,66
196 if peek(1784+gs(fg,1))=102 then poke 49154,20:goto 200
197 if gs(fg,1)=pg then poke 49154,21:goto 200
198 k=gs(fg,1):if k=3 or k=19 or k=36 then poke 49154,22:sys(49157):goto 500
199 poke 49154,20
200 sys(49157)
202 x=peek(197):if x=42 or x=50 then gosub 100
206 poke 49202,32:poke 49217,0:poke 49153,gs(fg,2)+1
208 sys(49157)
210 poke 54276,0:return
220 if gs(1,1)<>0 then 225
221 i=int(rnd(1)*39+1):if i=gs(2,1) or i=gs(3,1) or i=gs(4,1) then 221
222 gs(1,1)=i:gs(1,2)=0:poke 1024+i,42:poke 55296+i,7:return
225 if gs(2,1)<>0 then 230
226 i=int(rnd(1)*39+1):if i=gs(1,1) or i=gs(3,1) or i=gs(4,1) then 226
227 gs(2,1)=i:gs(2,2)=0:poke 1024+i,42:poke 55296+i,7:return
230 if gs(3,1)<>0 then 235
231 i=int(rnd(1)*39+1):if i=gs(1,1) or i=gs(2,1) or i=gs(4,1) then 231
232 gs(3,1)=i:gs(3,2)=0:poke 1024+i,42:poke 55296+i,7:return
235 if gs(4,1)<>0 then 240
236 i=int(rnd(1)*39+1):if i=gs(1,1) or i=gs(2,1) or i=gs(3,1) then 236
237 gs(4,1)=i:gs(4,2)=0:poke 1024+i,42:poke 55296+i,7:return
240 if gs(1,3)=1 and gs(2,3)=1 and gs(3,3)=1 and gs(4,3)=1 then ph=1:return
242 i=int(rnd(1)*4+1):if gs(i,3)=1 then 242
243 poke gs(i,1)+40*gs(i,2)+1024,32:gs(i,2)=gs(i,2)+1
244 poke gs(i,1)+40*gs(i,2)+1024,42:poke gs(i,1)+40*gs(i,2)+55296,7
246 if rnd(1)<.3 or gs(i,2)>=10 then gs(i,3)=1
248 return
250 if peek(v+21)<>0 then 255
252 if rnd(1)<.95 then return
253 mc=2:poke v,25:poke v+1,50:poke v+21,1:poke v+16,0:return
255 if peek(v)=253 then poke v,0:poke v+16,1:goto 260
257 poke v,peek(v)+3
260 if peek(v)>=50 and peek(v+16)=1 then poke v+21,0:return
263 i=peek(v)+256*(peek(v+16) and 1):mc=int((i-23)/8)+3
265 if rnd(1)<.55 then return
270 if mc<>gs(1,1) and mc<>gs(2,1) and mc<>gs(3,1) and mc<>gs(4,1) then gosub 280
275 return
280 poke 54296,15:poke 54276,129:poke 54277,15:poke 54273,40:poke 54272,200
282 poke 49152,mc:poke 49153,2:poke 49217,1:poke 49202,66
284 if peek(1784+mc)=102 then poke 49154,20:goto 290
287 if mc=pg then poke 49154,21:goto 290
288 if mc=3 or mc=19 or mc=36 then poke 49154,22:sys(49157):goto 500
289 poke 49154,20
290 sys(49157)
292 x=peek(197):if x=42 or x=50 then gosub 100
296 poke 49202,32:poke 49217,0:poke 49153,2
298 sys(49157)
299 poke 54276,0:return
300 sc=sc+50:gosub 1000:poke v+39,7:poke 2040,193:gosub 700:poke 54296,0
310 for t=1to500:next
315 poke v+21,0:poke v+39,3:poke 2040,192
340 return
350 poke 1024+gs(j,1)+gs(j,2)*40,102:poke gs(j,1)+gs(j,2)*40+55296,8
355 sc=sc+10:gosub 1000
356 for t=1to100:next
357 poke 1024+gs(j,1)+gs(j,2)*40,32:gs(j,1)=0
360 return
400 if gs(1,1)<>0 or gs(2,1)<>0 or gs(3,1)<>0 or gs(4,1)<>0 then 405
402 for i=1to4:gs(i,3)=0:next:ph=0:return
405 i=int(rnd(1)*4+1):if gs(i,1)=0 then 405
407 poke 1024+gs(i,1)+gs(i,2)*40,32:if gs(i,2)>0 then gs(i,2)=gs(i,2)-1
410 poke 1024+gs(i,1)+gs(i,2)*40,42:poke gs(i,1)+gs(i,2)*40+55296,7
412 if gs(i,2)=0 then poke 1024+gs(i,1),32:gs(i,1)=0
415 return
500 if peek(1824+pg)=113 then 560
502 poke v+40,0:poke v+28,2
504 poke 2041,193:k=pg*8+15:if k>255 then poke v+2,k-256:poke v+16,2:goto 506
505 poke v+16,peek(v+16) and 253:poke v+2,k
506 poke v+3,200:poke v+21,3:gosub 700
508 poke 54276,0:poke 54277,0
509 for t=1to1000:next:poke 2040,192:poke v+21,0:poke v+39,3:poke 54296,0
510 poke 53280,6:poke 53281,13:print"{clear}{black}{space*14}laser battle":print
515 nm=nm-1:if nm=0 then 600
520 print"you have ";nm;" men left":print
530 for t=1to3000:next
535 for i=1to4:gs(i,1)=0:next:ph=0
550 goto 50
560 for i=1to3:poke 53280,int(rnd(1)*10)+23:gosub 700:next:poke v+21,0
565 poke 53280,6:poke 53281,13:print"{clear}{black}{space*14}laser battle":print
570 goto 515
600 print"{space*16}game over":print
620 print"your score was ";sc
625 poke v+21,0:poke 54296,0
630 getx$:if x$="" then end
640 goto 630
700 for x=15to0step-1:poke 54296,x:poke 54276,129
705 poke 54277,15:poke 54273,40:poke 54272,200:next
710 return
1000 print"{home}{down*24}{space*3}{cyan}score: ";sc;"{home}"
1005 return
10000 data 0,126,0,192,255,3,193,255,131,195,255,195,199,255,227,207,255,243
10010 data 207,255,243,207,255,243,204,230,51,252,230,63,252,230,63,207,255,243
10020 data 207,255,243,207,255,243,199,255,227,195,255,195,192,127,3
10030 data 0,62,0,0,28,0,0,28,0,0,28,0
10100 data 24,173,0,192,133,178,169,4,133,179,173,1,192,141,3,192,169,0,205,3
10110 data 192,240,19,206,3,192,24,165,178,105,40,133,178,165,179,105,0,133,179
10120 data 76,21,192,160,0,169,93,145,178,24,165,178,133,180,165,179,105,212
10130 data 133,181,169,1,145,180,238,1,192,24,165,178,105,40,133,178,165,179,105
10140 data 0,133,179,173,1,192,205,2,192,208,211,96
