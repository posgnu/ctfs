import sys
LIMIT = 20

f = open('a.dump', 'rb')
array = []

while True:
	s = f.read(4)
	if s == '':break
	array.append(s)

int_a = []
for i in range(401):
	int_a.append(int(array[i][::-1].encode("hex"),16))
	

U = [[] for i in range(10)]
D = [[] for i in range(10)]
R = [[] for i in range(10)]
L = [[] for i in range(10)]

maps = [U, D, R, L]

min_ = 0
max_ = 400

for k in range(4):
	for i in range(10):
		for j in range(5):
			maps[k][i].append(int_a[min_])
			maps[k][i].append(int_a[max_])
			min_ += 1
			max_ -= 1
for i in range(4):
	maps[i][0][0] = 2


#for i in range(4):
#	for j in range(10):
#		print maps[i][j]
#	print " "

def got_the_fucking_flag(row, col, cmd):
		if col == 9 and row == 9:
			print "got the flag!: " + cmd
			sys.exit()

def operate(op, cmd, row, col, result):
	leng = len(cmd)
	

	if op == 'U' and row != 9:
		cmd += 'U'
		row += 1
		result += maps[0][row][col]
	elif op == 'D' and row != 0:
		cmd += 'D'
		row -= 1
		result += maps[1][row][col]
	elif op == 'R' and col != 9:
		cmd += 'R'
		col += 1
		result += maps[2][row][col]
	elif op == 'L' and col != 0:
		cmd += 'L'
		col -=1	
		result += maps[3][row][col]
	print cmd
	if result == 25132:
		got_the_fucking_flag(row, col, cmd)

	#important
	if leng == LIMIT:
		return
	if result > 25132:
		return
	if (9 - row + 9 - col) > (LIMIT - leng):
		return

	if row != 9:
		operate('U', cmd, row, col, result)
	if row != 0:
		operate('D', cmd, row, col, result)
	if col != 9:
		operate('R', cmd, row, col, result)
	if col != 0:
		operate('L', cmd, row, col, result)

operate('U', '', 0, 0, 2)
operate('R', '', 0, 0, 2)


