import claripy
import code
from hashlib import sha512
import json
import sys

b = [claripy.BVS('b_%d' % i, 1) for i in range(33896)]

s = claripy.Solver()

with open("map3.txt", 'r') as f:
    cipher, chalbox = json.loads(f.read())

length, gates, check = chalbox


for i in range(33767,33896):
    name, args = gates[i-128]
    if name == 'false':
        s.add(b[i]==claripy.BVV(0,1))
    else:
        if args[0][1] == True:
            arg1 = 1
        else:
            arg1 = 0

        if args[1][1] == True:
            arg2 = 1
        else:
            arg2 = 0

        u1 = b[args[0][0]] ^ arg1
        u2 = b[args[1][0]] ^ arg2
        if name == 'or':
            s.add(b[i] == u1)
        elif name == 'xor':
            s.add(b[i] == u2)
        
s.add(b[33895] == 0)
for i in range(0, 33896):
    if len(s.eval(b[i],2)) == 1:
        b[i] = s.eval(b[i],1)[0]

code.interact(local=locals())
