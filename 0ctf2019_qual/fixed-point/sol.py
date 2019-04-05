from z3 import *

flag = BitVec('flag', 128)

s = Solver()

def generate_table():
    crc128_table = []
    for i in range(256):
        crc = i
        for j in range(8):
            cond = crc & 1
            crc >>= 1
            if cond:
                crc ^= 0xB595CF9C8D708E2166D545CF7CFDD4F9
        crc128_table.append(crc)
    return crc128_table

result = 0x347b8dfa4b97acb7fabb2779591da2b6

table = Array('table', BitVecSort(128), BitVecSort(128))
for i, val in enumerate(generate_table()):
	table = Store(table, BitVecVal(i, 128), BitVecVal(val,128))

lsb = [BitVec('lsb_%d' % i, 8) for i in range(15)]

crc = flag
layer = []
for i in range(0x10):
	# get msb
	msb = (crc >> 120) & 0xff
	# if index is the last one

	# find layer
	layer.append(Select(table, (ord('}') ^ lsb[i])))

	# msb of layer have to be same with the above msb value
	s.add(((layer >> 120) & 0xff) == msb)

		
	#get next crc value
	crc = ((layer ^ flag) << 8) | lsb[i]
	
	

print 'start'

for i in flag:
	print s.eval(i, 1)[0]

