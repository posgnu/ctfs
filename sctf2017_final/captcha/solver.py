#!/usr/bin/python
from pwn import *

context(terminal = ['xterm', 'splitw'])
#context.terminal = ['tmux', 'splitw', '-h']
local = True

if local:
	p = remote('0', 1999)
else:
	libc = ELF()
	p = remote()

p.interactive()

