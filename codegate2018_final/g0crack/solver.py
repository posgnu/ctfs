import claripy

mainkey = [0x4a, 0x69,0x18,0x61,0x75,0x66]

maincheck = [0x8c, 0x01,0xf0,0xa7,0xa5,0xd8,0xb8,0x9,0xf2,0x85,0xcb,0xae,0xae,0x0d,0x70,0xbb,0xf5,0xe6]
compare = []

flag = [claripy.BVS('f_%d' % i, 8) for i in range(19)]

checksum = 15
s = claripy.Solver()

for i in range(3):
    for j in range(6):
        index = j + i * 6
        tmp = 2 * flag[index]
        checksum += (tmp ^ mainkey[j])
        
        compare.append(tmp ^ mainkey[j])

s.add(flag[18] == (checksum-127*((((0x4081020408102041*checksum)>>64)>>5) - (checksum>> 63)) - 23))

for i in range(18):
    s.add(flag[i] >= 0x21)
    s.add(flag[i] <= 0x7e)

for i in range(18):
    s.add(flag[i] == maincheck[i])

rflag= ''
for i in range(18):
    rflag += chr(s.eval(flag[i],1)[0])

print rflag


