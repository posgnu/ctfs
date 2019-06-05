f = open('dump', 'r')
rets = []
index = 0

def check(a, b):
	m = a & 0xffffffffffffffff
	n = b & 0xffffffffffffffff
	c = (m ^ n) & 0xffffffffffffffff

	if c in [1,2,4,8,16,32,64,128,256,512,1024,2048,4096,8192,16384,32768,65536,131072, 262144, 524288, 1048576]:
		return c
	else:
		return 0

slad = []
while True:
	tmp = f.read(1) 
	if index > 0x1c0000:
		break
	if tmp == '':
		break

	if ord(tmp) == 0x90 or ord(tmp) == 0x00:
		slad.append(index)
	elif ord(tmp) == 0xc3:
		if len(slad) != 0:
			for insert in slad:
				rets.append(insert)
		rets.append(index)
		slad = []
	else:
		slad = []
	index += 1

print check(1,1)
def route(arg, depth, lis):
	p = ''
	for _ in range(depth): p += '  '
	p += '- '
	print p + hex(arg)

	cur = arg	
	for i in lis:
		if check(i, cur) != 0:
			cop = lis
			cop.remove(i)
			route(i, depth+1, cop)

route(0x6a7e0,0, rets)	
		
