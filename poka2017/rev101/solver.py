from pwn import *

p = process('rev101')
gdb.attach(p)
input1 ='\xc1\xb7\x8b\xb2\xaf\xa0'
#tmp = 0x3a880a49
'''
for i in range(0,6):
	tmp = 0x343fd * tmp * 0x269ec3
	print "tmp: " + hex(tmp)
:	print ord(memory[i]) ^ (tmp >> 16)
'''
print p.recv(timeout=0.1)
p.sendline(input1)
p.interactive()
