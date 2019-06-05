#!/usr/bin/python2
import code
from hashlib import sha512
import json
import sys


def verify(x, chalbox):
    length, gates, check = chalbox
    b = [(x >> i) & 1 for i in range(length)]
    for name, args in gates:
        if name == 'false':
            b.append(0)
        else:
            u1 = b[args[0][0]] ^ args[0][1]
            u2 = b[args[1][0]] ^ args[1][1]
            if name == 'or':
                b.append(u1 | u2)
            elif name == 'xor':
                b.append(u1 ^ u2)
    return b[check[0]] ^ check[1]


def dec(x, w):
    z = int(sha512(str(int(x))).hexdigest(), 16)
    return '{:x}'.format(w ^ z).decode('hex')


if __name__ == '__main__':
    if len(sys.argv) < 3:
        print 'Usage: ' + sys.argv[0] + ' key chalbox.txt'
        exit(1)

    with open(sys.argv[2], 'r') as f:
        cipher, chalbox = json.loads(f.read())

    key = int(sys.argv[1]) % (1 << chalbox[0])
    code.interact(local=locals())
    if verify(key, chalbox):
        print 'The flag is:', dec(key, cipher)
    else:
        print 'Wrong key.'
