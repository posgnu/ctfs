import claripy

at = [i for i in range(256)]
at.append(0)
code = [0x43, 0x41, 0xCC, 0xD6, 0x8E, 0xE1, 0x30, 0x87,  0xD8, 0xDA, 0xE6, 0xC4, 0x31, 0xB9, 0x54, 0xE3, 0x91, 0x2D, 0x08, 0x72, 0xB3, 0xB3, 0x24, 0x0F,  0x60, 0x44, 0x71, 0x30, 0x17, 0xD4, 0x79, 0x22, 0x30, 0xA2, 0x97, 0xA4, 0xAF, 0x38, 0x27]

flag = [claripy.BVS('f_%d' % i, 8) for i in range(39)]
real_flag =''

idx = 0
ro = 0
ch = 0
re = 0
ascidx = 0

while idx != 39:
	if idx == 39:
		break
	
	s = claripy.Solver()
	ch = flag[idx].zero_extend(32)

	for i in range(ro):
		ch *= 2
	
	re = ch & 0x0000ffff
	re += (ch & 0x0000ff00) >> 8

	re = (re + 256 - ascidx) & 0x000000ff

	ch = code[idx]
	ascidx = ch

	re = (re + 256 - ch) & 0x000000ff
	
	s.add(re == 0)
	real_flag += chr(s.eval(flag[idx],1)[0])
	print real_flag
	
	idx += 1
	ro += 1
	if ro == 8:
		ro = 0

print real_flag
#	print "idx : " + str(idx) + " ro: " + str(ro) + " "

