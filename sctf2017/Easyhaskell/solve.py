import os
from pwn import *

answer = '=ze=/<fQCGSNVzfDnlk$&?N3oxQp)K/CVzpznK?NeYPx0sz5'
flag = 'SCTF{'

def getanswer(name):
	p = process('./' + name)
	return p.recvline()[1:-2]

exploit = False
old = 'init'
idx = 8

while True:
	char = 33
	while True:
		if char == 47 or char == 92:
			char += 1
			continue

		os.rename(old, flag + chr(char))
		ans = getanswer(flag + chr(char))
		print 'find ' + answer[:idx+1] + 'from ' + ans
		print 'find ' + answer[:idx] + 'from ' + ans
		if ans.find(answer[:idx+1]) != -1:
			flag = flag + chr(char)
			log.info('find')
			print flag
			old = flag
			if answer == ans:
				exploit = True
			idx += 2
			break

		if ans.find(answer[:idx]) != -1:
			flag = flag + chr(char)
			log.info('find!')
			print flag
			old = flag
			if answer == ans:
				exploit = True
			idx += 1
			break
		
		print char
		old = flag + chr(char)
		char += 1
		if char == 127:
			print 'error!'
			exit(0)


	if exploit:
	 break


"""
부르스 포싱하는 도중에 경우의 수가 나뉘는 경우가 있으므로 재귀함수 형태로 코딩해줘야 한다.
"""
