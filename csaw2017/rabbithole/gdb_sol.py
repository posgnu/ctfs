import gdb
import sys
import os
import string

count = 0
class MyBreakpoint(gdb.Breakpoint):
    def stop (self):
        global count
        some = gdb.execute('print $cl', to_string=True).strip().split('=')[-1].strip()
        if some == '1':
            count += 1
        return False

curr_pos = 5
gdb.execute('file ./rabbithole')
bp = MyBreakpoint("*0x5555555aa20b")
last = bp.hit_count
fl = "_" * (59 - 6)

brute_flag = list("flag{" + fl + "}\n")
while curr_pos != (len(brute_flag) - 2):
	for x in string.printable:
		brute_flag[curr_pos] = x
		w = ''.join(brute_flag)
		print('Trying', w)
		fp = open('rabbithole_flag', 'w')
		fp.write(w)
		fp.close()
		gdb.execute('run < rabbithole_flag')
		print(count, curr_pos)
		if count > curr_pos + 1:
			curr_pos += 1
			count = 0
			break
		count = 0
