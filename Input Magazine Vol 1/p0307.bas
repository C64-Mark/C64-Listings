5 rem ** requires simons' basic **
10 graphic 2
50 for n=0 to 10*pi step pi/50
60 point 1,511+(5+z)*sin(n),511+(5+z)*cos(n)
70 z=z+1
80 next n
90 goto 90
