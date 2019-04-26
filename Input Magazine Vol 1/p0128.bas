5 rem ***not tested. Needs data statements and printer***
10 clr:ll=60:tl=80:qq=(tl-ll)/2:dim a$(20):print" "
15 for z=1 to ll+qq:s$=s$+" ":next z
20 open 4,4:cmd 4:le=0:goto 800
100 read k$
102 k$=k$+" ":if left$(k$,1)="*" then le=0:goto 600
110 if k$=" " then print#4,chr$(13):close 4:end
115 if left$(k$,1)="&" then le=0:print#4,chr$(13);:goto 400
120 if left$(k$,1)="$" then print#4,chr$(13):le=0:goto 400
130 goto 452
400 k$=right$(k$,len(k$)-1)
450 if len(k$)<1 then 100
452 if le=0 then print#4,left$(s$,qq);
455 for l=1 to len(k$)
460 if mid$(k$,l,1)=" " then kk$=left$(k$,l):k$=right$(k$,len(k$)-l):goto 480
470 next:goto 100
480 gosub 500:goto 450
500 if len(kk$)>ll+1 then 950
505 if le+len(kk$)>ll then print#4,chr$(13);left$(s$,qq);:le=0
510 le=le+len(kk$):print#4,kk$;:return
550 return
600 print#4,chr$(13);left$(s$,qq);:if len(k$)>ll then 960
610 print#4,left$(s$,((ll*.5)-(len(k$)-1)*.5))right$(k$,len(k$)-1):goto 100
800 read x$:p=p+1:if left$(x$,1)<>"#" then 900
810 a$(p)=right$(x$,len(x$)-1):if len(a$(p))>hl then hl=len(a$(p))
815 if hl>ll then 950
820 goto 800
900 if p=1 then restore:goto 100
910 p=p-1:for z=1 to p
920 print#4,left$(s$,qq);left$(s$,(ll-hl))a$(z):next z:k$=x$:goto 102
950 print#4," ":print"{home}format error—word too long":close 4:end
960 print#4,chr$(13):print"{home}format error—cannot centre line":close 4:end
