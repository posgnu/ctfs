buf = [0 for i in range(65536)]
tmp = [0,0,0,0,0,0]

tmp[5] = 288

tmp[5] += 11
buf[tmp[5]] += 87
tmp[5] += 22
buf[tmp[5]] += 52
tmp[5] += 65514-65536
buf[tmp[5]] += 109
tmp[5] += 26
buf[tmp[5]] += 56
tmp[5] += 65523-65536
buf[tmp[5]] += 44
tmp[5] += 65526-65536
buf[tmp[5]] += 84
tmp[5] += 7
buf[tmp[5]] += 179
tmp[5] += 65522-65536
buf[tmp[5]] += 91
tmp[5] += 10
buf[tmp[5]] += 15
tmp[5] += 3
buf[tmp[5]] += 88
tmp[5] += 65535-65536
buf[tmp[5]] += 114
tmp[5] += 11
buf[tmp[5]] += 37
tmp[5] += 6
buf[tmp[5]] += 175
tmp[5] += 65505-65536
buf[tmp[5]] += 100
tmp[5] += 13
buf[tmp[5]] += 3
tmp[5] += 65534-65536
buf[tmp[5]] += 32
tmp[5] += 65533-65536
buf[tmp[5]] += 181
tmp[5] += 65529-65536
buf[tmp[5]] += 48
tmp[5] += 18
buf[tmp[5]] += 52
tmp[5] += 10
buf[tmp[5]] += 129
tmp[5] += 65527-65536
buf[tmp[5]] += 68
tmp[5] += 7
buf[tmp[5]] += 39
tmp[5] += 65506-65536
buf[tmp[5]] += 204
tmp[5] += 25
buf[tmp[5]] += 30
tmp[5] += 65529-65536
buf[tmp[5]] += 91
tmp[5] += 3
buf[tmp[5]] += 2
tmp[5] += 6
buf[tmp[5]] += 212
tmp[5] += 65514-65536
buf[tmp[5]] += 43
tmp[5] += 9
buf[tmp[5]] += 113
tmp[5] += 16
buf[tmp[5]] += 9
tmp[5] += 65507-65536
buf[tmp[5]] += 117
tmp[5] += 23
buf[tmp[5]] += 45
tmp[5] += 2
buf[tmp[5]] += 13
tmp[5] += 7
buf[tmp[5]] += 164
tmp[5] += 3
buf[tmp[5]] += 39
tmp[5] += 65521-65536
buf[tmp[5]] += 13
tmp[5] += 65522-65536
buf[tmp[5]] += 218
tmp[5] += 9
buf[tmp[5]] += 5
tmp[5] += 65526-65536
buf[tmp[5]] += 216
tmp[5] += 65529-65536
buf[tmp[5]] += 65
tmp[5] += 4
buf[tmp[5]] += 125
tmp[5] += 5
buf[tmp[5]] += 225
tmp[5] += 65529-65536
buf[tmp[5]] += 97
tmp[5] += 65533-65536
buf[tmp[5]] += 67
tmp[5] += 27
buf[tmp[5]] += 18
tmp[5] += 65535-65536
buf[tmp[5]] += 68
tmp[5] += 8
buf[tmp[5]] += 22
tmp[5] += 65506-65536
buf[tmp[5]] += 119
tmp[5] += 29
buf[tmp[5]] += 110
tmp[5] += 65525-65536
buf[tmp[5]] += 36
tmp[5] += 65527-65536
buf[tmp[5]] += 4
tmp[5] += 18
buf[tmp[5]] += 34
tmp[5] += 65520-65536
buf[tmp[5]] += 227
tmp[5] += 65531-65536
buf[tmp[5]] += 5
tmp[5] += 65530-65536
buf[tmp[5]] += 23
tmp[5] += 8
buf[tmp[5]] += 49
tmp[5] += 18
buf[tmp[5]] += 84
tmp[5] += 65534-65536
buf[tmp[5]] += 10
tmp[5] += 65525-65536
buf[tmp[5]] += 30
#make cmp_string for checking flag

tmp[2] = 255
tmp[5] = 513
for i in range(tmp[2] + 1):
	buf[tmp[5]] = 255 - i
	tmp[5] = tmp[5] + 1
#make ascii table from buf[513] to buf[768]

tmp[5] = 256
buf[tmp[5]] = 0
tmp[5] = 258
buf[tmp[5]] = 0
tmp[5] = 260
buf[tmp[5]] = 0
tmp[5] = 262
buf[tmp[5]] = 0
#initiallize buf[256], buf[258], buf[260], buf[262]

while true:
	tmp[5] = 260
	tmp[2] = buf[tmp[5]] - 39

	if tmp[2] == 0:
		break
#test if buf[260] is 39

	tmp[5] = 260
	tmp[5] = buf[tmp[5]]
	tmp[3] = buf[tmp[5]]
#in first loop, move buf[0] to tmp[3], so now tmp[3] has first char of flag we input
#flag length is 39, and buf[260] is index 

	tmp[5] = 262
	tmp[2] = buf[tmp[5]]
#move buf[262] to tmp[2]

	while true:
		if tmp[2] == 0:
			break
		tmp[3] = 2 * tmp[3]
		tmp[2] = tmp[2] - 1
#test if buf[262] is 0. If not, then mul 2 to tmp[3] which is char of flag for a number of tmp[2](buf[262])
#At least here, buf[262] is used to modify the char of flag
	tmp[5] = 266
	buf[tmp[5]] = tmp[3]
	tmp[2] = buf[tmp[5]]
#move modified char to buf[266] and load to tmp[2]

	tmp[5] = tmp[5] + 1
	tmp[2] = tmp[2] + buf[tmp[5]]
#add buf[267], first initiallized with 0, to tmp[2] which is a modified char

	tmp[5] = 258
	tmp[5] = buf[tmp[5]] + 512
	tmp[2] = tmp[2] + buf[tmp[5]] # store 1 byte
# move buf[258] + 512 to tmp[5] and add to tmp[2]. first access to buf[512] and this is the end of ascii table storng 0.

	tmp[5] = 260
	tmp[5] = buf[tmp[5]] + 288
	tmp[3] = buf[tmp[5]]
# cmp_string is stored at the start address as buf[288] so counter character of flag is loaded at tmp[3]

	tmp[5] = 258
	buf[tmp[5]] = tmp[3]
#move it to buf[258]

	tmp[5] = tmp[3] + 512
	tmp[2] = tmp[2] + buf[tmp[5]]#store 1 byte
#find reverse order of cmp_char and add it to tmp[2]

	tmp[5] = 256
	if tmp[2] != 0:
		buf[tmp[5]] = 1
#if tmp[2] == 0 then buf[256] still remain 0

#	else
#		buf[tmp[5]] = buf[tmp[5]]
#		tmp[2] = tmp[2]
	tmp[5] = 260
	buf[tmp[5]] = buf[tmp[5]] + 1
#buf[260] is index so increase it for next cmp

	tmp[5] = 262
	buf[tmp[5]] = buf[tmp[5]] + 1
#buf[262] is also index and it is used for modifying char

	tmp[2] = buf[tmp[5]] - 8
	if tmp[2] == 0:
		buf[tmp[5]] = 0
#if buf[262] is 8 then make it 0 so buf[262] will 0 1 2 3 4 5 6 7 and start again as 0.

tmp[5] = 256
tmp[2] = buf[tmp[5]]
#so buf[256]is flag

