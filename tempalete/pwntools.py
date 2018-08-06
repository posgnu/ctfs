#!/usr/bin/python
from pwn import *

context(terminal = ['xterm', 'splitw'])
#context.terminal = ['tmux', 'splitw', '-h']
local = True
elf = ELF()

if local:
	libc = ELF()
	p = process()
        #gdb.attach(p)
else:
	libc = ELF()
	p = remote()

payload = ''

