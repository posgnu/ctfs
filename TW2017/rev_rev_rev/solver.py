table = [65, 41, 217, 101, 161, 241, 225, 201, 25, 9, 147, 19, 161, 9, 185, 73, 185, 137, 221, 97, 49, 105, 161, 241, 113, 33, 157, 213, 61, 21, 213]
enc_table = {}

def enc(ch):
	v1 = 2 * (ch & 0x55) | (ch >> 1) & 0x55
	v2 = 4 * (v1 & 0x33) | (v1 >> 2) & 0x33
	return 16 * v2 | (v2 >> 4)

for i in range(0, 0xff):
	enc_table[enc(i) & 0xff] = i

flag = ""
for i in table:
	flag += chr(enc_table[(~i) & 0xff])
print flag[::-1]
