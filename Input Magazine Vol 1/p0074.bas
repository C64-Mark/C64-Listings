10 let p1=1117:let p2=p1
15 let bd=53280
20 let bg=53281
25 let ll=40
30 let cc$=chr$(5)
35 let cs$=chr$(147)
40 let ch$=chr$(19)
45 poke bd,6
50 poke bg,0
55 poke 650,128
60 print cs$,cc$
100 print tab(12) "{cm a}CCCCCCCCCCCCC{cm s}"
105 print tab(12) "G.............G"
110 print tab(12) "G.   .   .   .G"
115 print tab(12) "G...... ......G"
120 print tab(12) "G   . ... .   G"
125 print tab(12) "G.... ... ....G"
130 print tab(12) "G.  ...Q...  .G"
135 print tab(12) "G QQ .Q Q. QQ G"
140 print tab(12) "G.  ...Q...  .G"
145 print tab(12) "G.............G"
150 print tab(12) "G.     .     .G"
155 print tab(12) "G.. ....... ..G"
160 print tab(12) "G    .   .    G"
165 print tab(12) "G...... ......G"
170 print tab(12) "{cm z}CCCCCCCCCCCCC{cm x}"
200 poke p1,94
210 print"{down}end of game. press (space bar) to start."
215 get k$
220 if k$<>" " then 215
225 print"{up*2}                                        "
300 get a$
305 if a$="z" then p2=p1-1
310 if a$="x" then p2=p1+1
315 if a$="p" then p2=p1-ll
320 if a$="l" then p2=p1+ll
325 if peek(p2)<>32 and peek(p2)<>46 then goto 350
330 if peek(p2)=46 then co=co+1
335 poke p1,32
340 let p1=p2:poke p1,94
350 print ch$;
360 print tab(14);"coins:";co
365 if co<103 then 300
400 poke bg,6:co=0
415 for t=1 to 2000:next t:goto 10
