from pwn import *
import time
import re

arg = ['./reverse', '10.13.37.10', '--numpad']
p = process(argv = arg)
p.send('1')
p.recv(1024)
p.send('1')
time.sleep(1)
p.recv(1024)
# start
fil = re.compile(r'\x1B\[[0-?]*[ -/]*[@-~]')
while True:
	tmp = p.recv(1024)
	tmp = fil.sub('',tmp)
	tmp = tmp.split()
	temp = filter(lambda x: x.find('?????') != -1, tmp)
	temp = temp[0].replace('?', '')
	asm = disasm(temp.decode('hex'))
	asm = asm[asm.find('    '):]
	
	break

print asm
