#!/usr/bin/python
from pwn import *

#context(terminal = ['xterm', 'splitw'])
#context.terminal = ['tmux', 'splitw', '-h']

p = remote("ch41l3ng3s.codegate.kr", 8008)

fun1_0 = 'Know what? It\'s a new day~'
fun1_1 = 'It\'s cold outside..'
fun1_2 = 'We need little break!'

fun2_0 = 'carame1'
fun2_1 = 'w33kend'
fun2_2 = 'pand0ra'

print p.recv(4096)
p.sendline(fun1_0)
p.sendline(fun2_2)
#p.sendline(fun1_1)
#p.sendline(fun1_2)

p.interactive()

