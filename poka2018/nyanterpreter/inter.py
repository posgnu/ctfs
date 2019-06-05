
fuck = 26

real = ['f', 'l', 'a', 'g', '{', 'N', 'y', 'a', 'n', '_', 'n', 'Y', 'a', 'n', '_', 'n', 'y', 'A', 'n', '_', 'n', 'y', 'a', 'N','~', '!']
from pwn import *

data = []
with open('dump.dm', 'r') as f:
	d = f.read(4)
	while d:
		data.append(u32(d))
		d = f.read(4)

is_print = False
realen = 0

a = open('print', 'w')
for i in range(32, 255):
		flag = True
		mem = [0 for j in range(264)]
		v2 = 0
		v3 = 0
		line = 0
		realen = 0	
		while True:
			op = data[v2] & 0xffff
			if op == 0 or v3 > 0xfe:
				if v3 == 0xff:
					print str(line) + ': ' + 'out of bound error' + '     |     pc: ' + str(v2) + ' index: ' + str(v3)
					break
				print str(line) + ': ' + 'exit normally' + '     |     pc: ' + str(v2) + ' index: ' + str(v3)
				break
			if op == 1:
				if is_print:
					print str(line) + ': ' + 'index += 1' + '     |     pc: ' + str(v2) + ' index: ' + str(v3)
				v3 += 1
			elif op == 2:
				if is_print:
					print str(line) + ': ' + 'index -= 1' + '     |     pc: ' + str(v2) + ' index: ' + str(v3)
				v3 -= 1
			elif op == 3:
				if is_print:
					print str(line) + ': ' + 'mem[' + str(v3) + '] += 1'  + '     |     pc: ' + str(v2) + ' index: ' + str(v3)
				mem[v3] += 1
			elif op == 4:
				if is_print:
					print str(line) + ': ' + 'mem[' + str(v3) + '] -= 1'  + '     |     pc: ' + str(v2) + ' index: ' + str(v3)
				mem[v3] -= 1
			elif op == 5:
				if is_print:
					print str(line) + ': ' + 'print mem[' + str(v3) + ']' + '     |     pc: ' + str(v2) + ' index: ' + str(v3)
				a.write(chr(mem[v3]))
			elif op == 6:
				print 'get input'
				if is_print:
					print str(line) + ': ' + 'mem[' + str(v3) + '] = input()' + '     |     pc: ' + str(v2) + ' index: ' + str(v3)
				st = []
				for s in mem:
					if s != 0:
						st.append(chr(s))
				if realen < fuck:
					mem[v3] = ord(real[realen])
					realen += 1
				else:
					if flag:
						print chr(i)
						mem[v3] = i
						flag = False
					else:
						print 'break'
						break
			elif op == 7:
				if is_print:
					print str(line) + ': ' + 'if mem[' + str(v3) + '] : pc = '+ str(data[v2] >> 16)+ '     |     pc: ' + str(v2) + ' index: ' + str(v3)
				if mem[v3] == 0:
					v2 = (data[v2] >> 16)
			elif op == 8:
				if is_print:
					print str(line) + ': ' + 'if not mem[' + str(v3) + '] : pc = ' + str(data[v2] >> 16)+'     |     pc: ' + str(v2) + ' index: ' + str(v3)
				if mem[v3] != 0:
					v2 = (data[v2] >> 16)
			else:
				print 'Invalid num'
				break

			v2 += 1
			line += 1
				
