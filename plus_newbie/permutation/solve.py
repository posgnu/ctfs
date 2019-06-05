key = '{RqbQ/JEr2rjlpsXn/{{ey.m'
flag = ''
v = [0 for i in range(0,8)]

for i in range(0,3):
	v[0] = chr(ord(key[8 * i + 6]) + 6)
	v[1] = chr(ord(key[8 * i + 7]) + 7)
	v[2] = chr(ord(key[8 * i + 4]) + 4)
	v[3] = chr(ord(key[8 * i + 1]) + 1)
	v[4] = chr(ord(key[8 * i + 0]) + 0)
	v[5] = chr(ord(key[8 * i + 3]) + 3)
	v[6] = chr(ord(key[8 * i + 5]) + 5)
	v[7] = chr(ord(key[8 * i + 2]) + 2)
	
	for j in range(0,8):
		flag += v[j]

print flag
print len(flag)
print len(key)
