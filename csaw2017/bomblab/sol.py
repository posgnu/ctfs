from pwn import *

p = remote('reversing.chal.csaw.io', 4309)

first = '\'omae wa mou shindeiru\' \'NANI!?\''
s = first[0:8] + first[8:16] + first[16:24][::-1] + first[24:33]

p.sendline(s)
p.sendline('1')

p.interactive()
