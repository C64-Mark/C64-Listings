10 HIRES 0,1:MULTI 3,7,1:COLOUR 6,6:
LINE 15,100,360,100,3
15 LINE20,0,20,200,3:TEXT 1,5," +1",
1,3,6
18 TEXT 1,170," -1",2,3,6:TEXT 6,90,
"0",3,3,6
20 FOR Z=0 TO 2* n STEP.05
30 PLOT Z*22+20,100 - SIN(Z)*80,1
35 PLOT Z*22+20,100 - COS(Z)*80,2
40 NEXT Z
50 GOTO 50 