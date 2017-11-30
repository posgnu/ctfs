#!/usr/bin/python
from cLEMENCy import *
from pwn import *
from math import *
from cremote_py import *

p = cremote('0', 12344)

print c2s(p.recv_raw(1000))

print c2s(p.recv_raw(1000))

x = ""
for i in range(1,55):
	x += str(i)
	if i!=54:
		x += ","

print("54byte input: " + x)

p.send_raw(x + "\n")

check = False

while True:
	if check:
		x = raw_input()	
		p.send_raw(x + "\n")
	print c2s(p.recvline ())[:-1]
	print c2s(p.recvline ())[:-1]
	print c2s(p.recvline ())[:-1]
	print c2s(p.recvline ())[:-1]
	print c2s(p.recvline ())[:-1]
	print c2s(p.recvline ())[:-1]
	print c2s(p.recvline ())[:-1]
	print c2s(p.recvline ())[:-1]
	print c2s(p.recvline ())[:-1]
	print c2s(p.recvline ())[:-1]
	print c2s(p.recvline ())[:-1]
	print c2s(p.recvline ())[:-1]
	print c2s(p.recvline ())[:-1]
	print c2s(p.recvline ())[:-1]
	print c2s(p.recvline ())[:-1]
	print c2s(p.recv_raw(1024))
	check = True

print c2s(p.recvall())
