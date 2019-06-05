
flag =""

#route1

for i in range(flaglength):
	flag[i] = (flag[i] << len) | (flag[i] >> (8-len))

#route2

for i in range(flaglength):
	flag[i] =	(key[i % 6] | flag[i]) & ~(flag[i] & key[i % 6]

