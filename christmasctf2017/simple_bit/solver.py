import gdb
import string

class MyBreakpoint(gdb.Breakpoint):
	def stop (self):
		global count

		ax = int(gdb.execute('print $eax', to_string=True).split('=')[-1].strip(),16)
		dx = int(gdb.execute('print $eax', to_string=True).split('=')[-1].strip(),16)
		print("ax=" + str(ax) + "dx=" + str(dx))
		if ax == dx:
			count += 1
			print("count=" + str(count))

		return False

count = 0
gdb.execute('file ./simple_bit')
breakpoint = 0x1013
base = 0x0000555555554000
bp = MyBreakpoint("*0x0000555555555013")
inputfile = 'flag'

flag = list("z" + "_" * 255)
curr_pos = 1

while curr_pos != 256:
	for ch in string.printable:
		if ch in ['"','`','\'']:
			continue		

		flag[curr_pos] = ch
		print(''.join(flag))

		f = open(inputfile, 'w')
		f.write(''.join(flag))
		f.close()

		gdb.execute('r < flag')
		if count >= 8 * (curr_pos+1):
			count=0
			break
		
		count = 0
	curr_pos += 1
