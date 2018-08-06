#!/usr/bin/python

from pwn import *
import os

listt = os.listdir('./')
f = open('./flag-list', 'w')

args = ['./result', 'a', "0000010821", 'vault.dat', '-']

for i in xrange(9999999999):
    args[1] = str(i)
    args[1] = '0'*(10-len(args[1]))+args[1]
    p = process(args)
    raw = p.recv(4096)
    if "Flag" in raw:
        f.write(str(i) + ": " + raw[raw.find('Flag')::]) 
    if not os.listdir('./') == listt:
        fl =  
    if i % 10000 == 0:
        print str(i) + "ith"
    p.close()
