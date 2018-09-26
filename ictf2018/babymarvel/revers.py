from pwn import *
import time
import string,random
pad0 =[0xeb, 0x88, 0x27, 0x41, 0x90, 0x1e, 0x33, 0x51, 0x98, 0x2b,0x13, 0x57, 0x18, 0x32, 0x15, 0x17, 0x23, 0x16, 0x41, 0x35,0x25, 0x31, 0x045, 0x76, 0x0a, 0xa5, 0xcc, 0x81, 0xa0, 0x6b,0xd4, 0x15]
pad1 = [7424712, 4551408,8364500, 2965602, 2274639, 10661532,11743595, 9478365, 5391897, 2014058,9564604, 1930344, 7799217, 1852881,6948032, 10182462, 1859234, 4734335,6908536, 7021645, 10826047, 1851655,3352213, 9091305, 7611253, 2920969, 7981175, 9321276, 2975866, 2423065,11973828, 10777299]
#output_buf = [0 for i in range(256)]

buf = []
foo = '4e4a4ffcee59f743754893d5e7dfd4bdeef71a04b8156d2119070f682abda992'
for i in range(0,64,2):
    buf.append(int('0x'+foo[i]+foo[i+1] , 16))

def getkey (output_buf):
    tmp = [0 for i in range(0,32)]
    for i in list(reversed(range(0, 32))):
        companion = (i + 1) % 32
        output_buf[i] ^= pad0[pad1[(i + 7) % 32] % 32]
        output_buf[i] -= pad0[pad1[(i + 12) % 32] % 32]
        tmp[i] += (output_buf[i] & 0xf0)
        tmp[companion] += (output_buf[i] & 0xf)

    return tmp
        
re = ''
tmp = getkey(buf)

for i in range(0, 32):
    tmp[i] ^= pad0[i]
    tmp[i] -= pad0[i]
    if tmp[i] < 0
        tmp[i] += 256
print tmp
for i in getkey(buf):
    re += '%02x' % abs(i)

print re

pause()
#while True:
id_s = ''.join(random.choice(string.printable) for _ in range(32))

p.sendline('0')
p.sendline('plus')
p.sendline('plus')

a = p.recv(1024)
#if a.find('Incorrect') != -1:
#break

p.interactive()
p.sendline('2')
p.sendline('NzLTV7cWbfvxXJJZQVeluker0dLTVFCy')

p.recvuntil('paste:\n')
flag = p.recvuntil('\n===')

print flag

