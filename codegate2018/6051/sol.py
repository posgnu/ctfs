import claripy

leng = 30
nmem = leng * 30 + 1
inpu = [claripy.BVS('f_%d' % i, 8) for i in range(256)]


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

v7 = nmem

v8 = inpu[v7 - nmem >> 3]
