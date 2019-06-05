#!/usr/bin/python
from pwn import *

context(terminal = ['xterm', 'splitw'])
#context.terminal = ['tmux', 'splitw', '-h']
context.log_level = 'debug'

binary = ''

elf = ELF(binary)

try:
	libc = ELF()
except:
	pass

try:
	p = remote(sys.argv[1], int(sys.argv[2]))
except:
	p = process(binary)#, env = {'LD_PRELOAD': './libc'})
	if sys.argv[1] == 'd':
		gdb.attach(p)

payload = ''
