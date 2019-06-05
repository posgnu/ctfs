#!/usr/bin/python
from pwn import *

p = remote('bankrobber.eatpwnnosleep.com', 4567)

p.sendline('a9cf8f6df800c59d29e77bd8a45c2d2c19ca4defb1ee37cd8650d0774acd52d7')
p.recv(1024)

with open('SCTFBank.sol','r') as f:
    src = f.read()

p.sendline(src)

p.interactive()
