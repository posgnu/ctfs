from pwn import *
import code
from collections import deque

flag = [ord(x) for x in 'qN7BuRx4rElDv84dgNaaNBanZf0HSHFjqOvbkFfgTRg3r']
vv1 = 0
v2 = 0
numto = [i for i in range(0,64)]
stringset = [ord(x) for x in  'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_!']
board_stick = ['e' for i in range(0, 20)]
item = deque(board_stick)

f = open('note_list', 'r')
note_list = []

while True:
    a = f.read(8)
    if a == '':
        break
    note = u64(a)
    if note == 0x402275:
        note_list.append('e')
    elif note == 0x40227a:
        note_list.append('j')
    elif note == 0x40227f:
        note_list.append('f')
    elif note == 0x402284:
        note_list.append('d')
    elif note == 0x402289:
        note_list.append('k')

def whatthfuck(a1):
    global vv1
    global v2
    global numto
    
    for i in range(0, a1):
        vv1 = (vv1 + 1) % 64
        v2 = (v2 + numto[vv1]) % 64
        v1 = numto[vv1]
        numto[vv1] = numto[v2]
        numto[v2] = v1
        v3 = numto[(numto[vv1] + numto[v2]) % 64]

    return stringset[v3]

def make_flag():
    global flag

    v4 = len(flag)
    result = 0
    for i in range(0, v4):
        result = i
        tmp = whatthfuck(1)
        flag[i] = subroutin(flag[i], tmp)
    return result


def subroutin(flag_char, num):
    global stringset

    s2 = small(flag_char)
    return stringset[(small(num) ^ s2) % 64]

def small(m1):
    global stringset

    for i in range(0,64):
        if m1 == stringset[i]:
            return i
    print 'error'
    return -1

total = 0
counter = 0
perfect = 0
while counter <= 0xa513:
    if counter == 20 * (((0xCCCCCCCCCCCCCCCD * counter) >> 64) >> 4):
        item.rotate(1)
        item[0] = note_list[(((0xCCCCCCCCCCCCCCCD * counter) >> 64) >> 4)]
        print str(counter)
        
        if item[19] == 'd':
            whatthfuck(ord('d') * counter)
            make_flag()
            perfect += 1
        elif item[19] == 'f':
            whatthfuck(ord('f') * counter)
            make_flag()
            perfect += 1
        elif item[19] == 'j':
            whatthfuck(ord('f') * counter)
            make_flag()
            perfect += 1
        elif item[19] == 'k':
            whatthfuck(ord('k') * counter)
            make_flag()
            perfect += 1
        total += 1
    counter += 1

print 'perfect: ' + str(perfect)
print 'total: ' + str(total)
print ''.join(map(chr,flag))

code.interact(local=locals())
