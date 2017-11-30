#!/usr/bin/python
reverse  = open("reverse","rb")
flag_reverse = open("flag_reverse.txt","wb")
data=reverse.read()
data = data[::-1]
u=''
for i in data:
	u += i.encode('hex')[::-1].decode('hex')
flag_reverse.write(u)

reverse.close()
flag_reverse.close()
"""
# xxd -ps reverse | tr -d "\n" | rev > reverse.txt
# xxd -plain -revert reverse.txt reverse.png

# xxd -ps reverse | tr -d "\n" | rev | unhex > reverse.png 
"""
