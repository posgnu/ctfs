#!/usr/bin/python
from pwn import *

context(terminal = ['xterm', 'splitw'])
#context.terminal = ['tmux', 'splitw', '-h']
local = True

if local:
	elf = ELF('./wheelofrobots')
	p = process('./wheelofrobots')
else:
	libc = ELF()
	p = remote()

payload = ''


