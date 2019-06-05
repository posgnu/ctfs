#!/usr/bin/env python
import sys
from pwn import *
import os



p = process('./kvm')
p.sendline(str(os.path.getsize('./img')+1))

with open("img","rb") as imageFile:
	f = imageFile.read()
	b = bytearray(f)

for v in b:
	p.send(chr(v))

p.sendline()

#print p.recvline()	
p.interactive()
