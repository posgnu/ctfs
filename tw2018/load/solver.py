#!/usr/bin/python
from pwn import *

context(terminal = ['xterm', 'splitw'])
#context.terminal = ['tmux', 'splitw', '-h']
local = False

if local:
	p = process('load')
        #gdb.attach(p)
else:
	p = remote('pwn1.chal.ctf.westerns.tokyo', 34835)

buffer = 0x040083d

p.interactive()
payload = ''

