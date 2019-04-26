10 poke 53280,1:poke 53281,1:dim a$(21),z(3,21),a(24)
20 print "{clear}{purple}"tab(13)"sprite editor{down*2}"
30 print tab(8);:input "{blue}printer option.({green}y/n{blue}){green}";i$:if i$="y" then pr$="y"
40 if i$<>"y" and i$<>"n" then goto 20
50 print"{clear}{red}"tab(13)"please wait"
60 for z=1 to 8:reada(z):a(z+8)=a(z):a(16+z)=a(z):next:data 128,64,32,16,8,4,2,1
70 for z=1 to 21:read a$(z)
80 for zz=1 to 8:if mid$(a$(z),zz,1)="*" then z(1,z)=z(1,z)+a(zz)
90 next zz:for zz=9 to 16:if mid$(a$(z),zz,1)="*" then z(2,z)=z(2,z)+a(zz)
100 next zz:for zz=17 to 24:if mid$(a$(z),zz,1)="*" then z(3,z)=z(3,z)+a(zz)
110 next zz,z:print "{clear}{down}":if pr$="y" then open4,4:cmd4
120 print tab(12)"{red}character data{down}{blue}"
130 for z=1 to 21:print z(1,z);",";z(2,z);",";z(3,z);:if z<21 then print",";
140 next z:print:print:if pr$="y" then goto 170
150 print tab(7)"{down}{purple}press return to continue"
160 get k$:if k$<>chr$(13) then goto 160
170 print"{clear}"tab(11)"{red}character designm{blue}{down}"
180 print tab(7)"{purple}765432107654321076543210"
190 for z=1 to 21:print tab(7)"{blue}";
200 for zz=1 to 24:if mid$(a$(z),zz,1)="*" then print "{reverse on} {reverse off}";:goto 220
210 print".";
220 next zz:print"{purple}";z:next z:if pr$="y" then print#4," ":close 4
230 if pr$<>"y" then goto 230
240 rem  765432107654321076543210
250 data"*                     **"
260 data"**                 **** "
270 data"****            ***** * "
280 data" ** *          *  ** *  "
290 data" * * *        * ***  *  "
300 data"  *** *       * ** **   "
310 data"  * ** *     ****  *    "
320 data"   * *  *    * *  *     "
330 data"   * **  *  ***  *      "
340 data"   * **   * **   *      "
350 data"    * **   **   *       "
360 data"     * ***  *  *        "
370 data"      *****  **         "
380 data"          **   ***      "
390 data"   *     *        *     "
400 data"   ******      *   *    "
410 data"   * * ***    * ****    "
420 data"   ** **  ** **     *   "
430 data"    * *     *  *        "
440 data"    **       *  *       "
450 data"     *        *  *      "
