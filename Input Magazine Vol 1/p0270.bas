100 c=7:r=5
110 dim pet$(c),ch$(r),n(r,c),pt(r)
120 for j=1 to c:read pet$(j):next
130 for j=1 to r:read ch$(j):next
140 for j=1 to r
150 for k=1 to c
160 read n(j,k):next k:next j
300 found=0:print"{clear}"
310 print"menu{down}"
320 print"1 list pets"
330 print"2 list children"
340 print"3 enter type of pet"
350 print"4 enter name of child"
360 print"5 enter number of pets"
370 print"6 display array"
380 print"{down}choose option"
390 input a
395 if a<1 or a>6 then goto 390
400 print"{clear}"
410 on a gosub 500,600,700,800,900,1000
420 goto 300 
499 rem ## option 1 ##
500 print"list of pets"
510 print
520 for j=1 to c
530 print pet$(j)
540 next j
550 print"{down}press a key to return to menu"
560 get a$:if a$="" then 560
570 return
599 rem ## option 2 ##
600 print"list of children"
610 print
620 for j=1 to r
630 print ch$(j)
640 next j
650 print"{down}press a key to return to menu"
660 get a$:if a$="" then 660
670 return
699 rem ## option 3 ##
700 print"enter type of pet"
705 print"this lists everyone who has a"
710 input p$
715 print
720 for j=1 to c
730 if pet$(j)= p$ then found=j
740 next j
750 if found=0 then print"pet not found. try again":goto 700
760 for j=1 to r
770 if n(j,found)>0 then print ch$(j);" ";n(j,found)
775 next j
780 print "{down}press a key to return to menu"
785 get a$:if a$="" then 785
790 return 
799 rem ## option 4 ##
800 print"enter name of child"
805 print"this lists all pets belonging to"
810 input f$
815 print
820 for j=1 to r
830 if ch$(j)= f$ then found=j
840 next j
850 if found=0 then print"person not found. try again":goto 800
860 for j=1 to c
870 if n(found,j)>0 then print;n(found,j);" ";pet$(j)
875 next j
880 print"press a key to return to menu"
885 get a$:if a$="" then 885
890 return 
899 rem ## option 5 ##
900 print"enter a number to list everyone with at least that many pets"
910 input a
915 print
920 for j=1 to r
925 for k=1 to c
930 pt(j) = pt(j)+n(j,k)
935 next k
940 if pt(j)>=a then print ch$(j);" ";pt$:found=1
945 pt(j)=0
950 next j
955 if found=0 then print"no-one has";a;"or more pets"
960 print"{down}press a key to return to menu"
970 get a$:if a$="" then 970
980 return
999 rem ## option 6##
1000 print"children",,"pets{down}"
1010 print tab(6);
1015 for j=1 to c
1020 print j;spc(2);
1025 next j:print
1030 for j=1 to r
1035 print ch$(j);tab(6);
1040 for k=1 to c
1050 print n(j,k);spc(2);
1060 next k:print:next j
1070 print"{down}press a key to return to menu"
1080 get a$:if a$="" then 1080
1090 return 
3000 data budgie,cat,dog,fish,gerbil,hamster,rabbit
3010 data sally,jason,kevin,josie,bert
3020 data 2,0,0,0,0,0,1
3030 data 0,0,1,4,0,0,0
3040 data 0,1,0,0,0,2,0
3050 data 0,1,1,0,0,1,0
3060 data 0,0,0,2,1,0,1
