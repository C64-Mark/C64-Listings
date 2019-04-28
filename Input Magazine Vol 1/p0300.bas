5000 rem ** location description **
5010 rem ** location 4 **
5020 print"you are outside a large building"
5030 n=0:e=0:s=1:w=0:return
5040 rem ** location 7 **
5050 print"you are by a fastflowing river"
5060 n=0:e=1:s=0:w=0:return
5070 rem ** location 8 **
5080 print"you are in a petrified forest"
5090 n=0:e=0:s=1:w=1:return
5100 rem ** location 10 **
5110 print"you are in a dusty room"
5120 n=1:e=1:s=1:w=0:return
5130 rem ** location 11 **
5140 print"you are in a dark room"
5150 if ob(6)<>-1 or la<>1 then n=0:e=0:s=0:w=0
5155 if ob(6)<>-1 or la<>1 then print"it's too dark to see the exits":return
5160 n=0:e=0:s=1:w=1:return
5170 rem ** location 14 ** 
5180 print"you are on a muddy path"
5190 n=1:e=1:s=0:w=0:return
5200 rem ** location 15 **
5210 print"you are by the gate to the hidden city."
5220 n=0:e=1:s=0:w=1:return
5230 rem ** location 16 **
5240 print"you are in the entrance hall"
5250 n=1:e=1:s=1:w=1:return
5260 rem ** location 17 **
5270 print"you are in the courtyard"
5280 n=1:e=1:s=0:w=1:return
5290 rem ** location 18 **
5300 print"you are in the garden"
5310 n=0:e=0:s=1:w=1:return
5320 rem ** location 22 **
5330 print"you are in the cupboard"
5340 n=1:e=0:s=0:w=0:return
5350 rem ** location 24 **
5360 print"you are in the throne room"
5370 n=1:e=0:s=0:w=0:return
