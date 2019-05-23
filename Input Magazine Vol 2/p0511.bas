5 rem ***requires simons' basic - not working***
100 hires 0,1:colour 5,1
150 for r=20 to 100 step 20
155 xs=160:ys=100:n=24
160 gosub 6000
170 next r 
175 xa=0:ya=0:lw=320:lh=200:nx=4:ny=4
180 gosub 5000
190 goto 190 
5000 ja=lw/nx
5010 xs=xa
5020 for jb=0 to nx
5025 ys=ya:xe=xs:ye=ya+lh
5030 gosub 9500
5040 xs=xs+ja
5050 next jb
5060 ja=lh/ny
5070 ys=ya+lh
5080 for jb=0 to ny
5090 xs=xa+lw:xe=xa:ye=ys
5100 gosub 9500
5110 ys=ys-ja
5120 next jb
5130 return 
6000 if n=0 then n=20+int(r/10)
6020 ja=2*pi/n
6050 xr=xs:yr=ys
6060 jb=0:xs=xs+r
6070 for jc=2 to n
6080 jb=jb+ja
6090 xe=xr+r*cos(jb):ye=yr+r*sin(jb):gosub 9500
6100 xs=xe:ys=ye
6110 next jc
6120 xe=xr+r:ye=yr:gosub 9500
6130 xs=xr:ys=yr
6160 return 
9000 print"{clear}"
9030 return
9500 line xs,ys,xe,ye,1
9550 return
