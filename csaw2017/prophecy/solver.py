from pwn import *

starcraft = ".starcraft"
payload = "\x08\x25\x20\x17\x11\x11\x00\x11\x11\x11\x11\x11\x4B\x01\x93\xEA\xE4\x00\x5A\x45\x52\x41\x54\x55\x4C\x00\x53\x41\x56\x45\x44\x00\x41\x4C\x4C" + "\x90" * 265

print "payload: " + payload
p = process('prophecy')
#p = remote('reversing.chal.csaw.io', 7668)
#gdb.attach(p)
print p.recvuntil('>>')
p.sendline(starcraft)


print p.recvuntil('>>')
p.sendline(payload)

p.interactive()
