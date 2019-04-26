20 print"{clear}dec to bin conversion"
30 print"{down}enter a number between 0-1";:input n
40 if n<=0 or n>=1 then 20
50 n$="0."
60 for t=1 to 32
70 n=n*2
80 n$=n$+chr$(48+int(n))
90 n=n-int(n)
100 next t
110 print"{down}the binary number is:-"
120 print"{down}"n$
130 print"{down}another number (y/n)?"
140 get a$
150 if a$="y" then run
160 if a$<>"n" then 140
170 print"{clear}":end
