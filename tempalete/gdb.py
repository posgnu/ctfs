import gdb
import string

class MyBreakpoint(gdb.Breakpoint):
	def stop (self):
		global count
		result = int(gdb.execute('print $eax', to_string=True).split('=')[-1].strip(),16)
		if result == 0:
			count += 1
		return False

count = 0
curr_pos = 0
gdb.execute('file ./')
bp = MyBreakpoint("*")
check = 

flag = list("CTF{")

while curr_pos != 100:
	for ch in string.printable:
		if ch in ['"','`','\'']:
			continue		

		flag[curr_pos] = ch
		print(''.join(flag))
		gdb.execute('r '+ ''.join(flag))
		print("count = " + str(count))

		if count > check:
			curr_pos += 1
			count = 0
			check += 1
			break
		if count < check:
			flag[curr_pos] = '_'
			curr_pos += 1
			count = 0
			break
		count = 0

import code
code.interact(local=locals())
