1 rem ***needs combining with various prog and debugging***
3400 ix$=au$(ix):gosub 14500
3420 if aa$="n" then gosub 3720:goto 3100
3430 u=u-1
3440 if u=0 then return
3450 ru=r(up):if up=u then 3470
3460 for dn=up to u-1:r(dn)=r(dn+1):next
3470 if ru=u then 3510
3480 for dn=0 to u-1:if r(dn)<>u then 3500
3490 r(dn)=ru:for n=1 to nf:t$(ru,n-1)=t$(u,n-1):next:dn=u
3500 next
3510 if up=u then 3980
3520 goto 3040
3700 gosub 11500:printx2$ro$"                                        ";
3705 print"    PLEASE INPUT FIELD NUMBER "x3$;
3710 ok$=left$("12345678",nf):gosub 10600
3712 gosub 3720:goto 3800
4000 printcs$x1$gr$" WH1CH FIELD IS TO BE SEARCHED?:"cc$" "c1$;
4010 ok$=left$("12345678",nf):gosub 10600
4030 print chr$(ix+48):fx=ix
4040 printx1$gr$" WHAT ARE YOU LOOKING FOR?:"cc$
4050 y=8:x=0:gosub 11500:print ro$hd$(ix)" :?";:x=1en(hd$(ix))+4
4060 z=lx(ix):gosub 13000:if right$(ix$,1)=" " then ix$=left$(ix$,len(ix$)-1)
4070 if ix$="" then gosub 10000:goto 4050
4080 fx$=ix$:ff=len(fx$)
4100 goto 3980
