file_name = []
file_name.append('key')
file_name.append('auth')
file_name.append('pass')
file_name.append('word')
file_name.append('kknock')
file_name.append('Is')
file_name.append('gourmet')
file_name.append('hacker')
file_name.append('admin')
file_name.append('dump')
sig = '\xff\xd8\xff\xe0\x00\x10\x4a\x46\x49\x46\x00\x01'
for fil in file_name:
	f = open('./' + fil, 'r')
	data = f.read()
	data = list(data)

	for i in range(0,12):
		data[i] = sig[i]
	
	w = ''.join(data)
	f = open('./' + fil, 'w')
	f.write(w)
