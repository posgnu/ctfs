#!/usr/bin/python
from pwn import *

f = open('./yeet', 'r')
f.seek(0x8b3, 0)
s = f.read(127)
l = []
for i in s:
  l.append(ord(i))

print l

t = [80, 69, 137, 106, 106]
t.sort()
result = 0
summ = 0
for tt in t:
  summ += tt
  result = result * 256 + l.index(tt)

result <<= 8
result += 0x18
result <<= 8
result += l.index(8)
print summ
print t
print result
print len(str(result))


context.terminal = ['tmux', 'splitw', '-h']
local = False
#elf = ELF('./yeet')

if local:
  p = process('./yeet')
else:
  p = remote('reversing.chal.csaw.io', 4309)

p.recvuntil('yote\'\n')

s = '\x27omae wa mou shindeiru\x27 \x27NANI!?\x27\x00'.ljust(34, '\x00')
pay = s[:8]
pay += s[8:16]
pay += s[16:24][::-1]
pay += s[24:32]

p.sendline(pay)
#p.recv
p.sendline(str(result))
#p.recvuntil('passphrase:\n')
#p.sendline('phase_2_secret_pass!!!!')


p.interactive()
