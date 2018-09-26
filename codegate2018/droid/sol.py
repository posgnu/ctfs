import claripy

ID = [claripy.BVS('f_%d' % i, 8) for i in range(10)]

arrayofchar = 'codegate2018hurray!HAHAHALOL'

idd = ''

idx = 0

s = claripy.Solver()

while idx != 10:
	if idx == 10:
		break
	j = ID[idx] ^ arrayofchar[10+idx]
	s.add(ID[idx] > 0x1f)
	s.add(ID[idx] < 0x7f)
	for cha in arrayofchar:
		s.add(cha != j)
	idd += chr(s.eval(ID[idx],1)[0])
	print idd
	idx += 1

