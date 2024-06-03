#!/usr/bin/env python

# Transform ASCII PPM image to Amstrad SCR file (MODE 0)
# 2011-08-09

from numpy import *
import struct

f = open("loading.ppm", "r")           # input file
binfile = open('tv2024.scr', 'wb')    # output file

pal = [[0,0,0],[255,255,255]]       # initial palette

def byte_bin(x):
	r=""
	for n in range(7,-1,-1):
		v=2**n
		if x>=v:
			x-=v
			r+="1"
		else:
			r+="0"
	return r

v = [0,0,0]
count = zeros((256))

f.readline()
f.readline()
g = f.readline()
f.readline()

xdim, ydim = [int(q) for q in g.split()]

for y in range(ydim):
	for x in range(xdim):
		for c in range(3):
			g = f.readline()
			v[c] = int(g)
		app = 1
		for n,p in enumerate(pal):
			if p[0]==v[0] and p[1]==v[1] and p[2]==v[2]:
				app = 0
				count[n]+=1
		if app:
			pal.append([v[0],v[1],v[2]])

for pn,pp in enumerate(pal):
	print (pn,pp,int(count[pn]))

f.seek(0)
f.readline()
f.readline()
g = f.readline()
f.readline()

b=zeros((xdim,ydim))
c=zeros((2**14))

for y in range(ydim):
	for x in range(xdim):
		for c in range(3):
			g = f.readline()
			v[c] = int(g)
		n = -1
		for m,p in enumerate(pal):
			if p[0]==v[0] and p[1]==v[1] and p[2]==v[2]:
				n = m
		b[x,y]=n

for cl in range(8):	# line in character
	for y in range(ydim//8):
		for x in range(0,xdim,4):
			aa=byte_bin(b[x,y*8+cl])[6:]
			bb=byte_bin(b[x+1,y*8+cl])[6:]
			cc=byte_bin(b[x+2,y*8+cl])[6:]
			dd=byte_bin(b[x+3,y*8+cl])[6:]
			oo=(aa[1]+bb[1]+cc[1]+dd[1] +
				aa[0]+bb[0]+cc[0]+dd[0])
			oo=int(oo,2)
			data = struct.pack("B", oo)
			binfile.write(data)
	data = struct.pack("B", 0)
	for t in range(48):
		binfile.write(data)

binfile.close()
ik=""

for n,p in enumerate(pal):
	v=p[1]//127*9 + p[0]//127*3 + p[2]//127
	lst= [":ink ", str(n), ",", str(v)]
	ik+=  "".join(lst)

print (ik)
