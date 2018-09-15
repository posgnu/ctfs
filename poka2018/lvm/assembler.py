from pwn import *

with open('a.s', 'r') as assem:
	content = assem.readlines()
	asm = [x.strip() for x in content]

ins = ['nop', 'add', 'sub', 'shl', 'shr', 'and', 'or', 'xor', 'not', 'mov', 'jmp']
f = open('bin', 'wb')

def parseLvalue(lval):
	global f

	ltype = lval[0]
	if ltype == 'r':
		f.write('\x00')
		reg_num = int(lval[1:],10)
		f.write(bytearray([reg_num]))
		print 'r' + str(reg_num)
	elif ltype == 'm':
		f.write('\x02')
		m_addr = int(lval[1:], 10)
		f.write(p32(m_addr))
		print 'm' + str(m_addr)
	else:
		print 'Invalid Lvalue'
		exit()

def parseArg(arg):
	global f

	atype = arg[0]
	if atype == 'r':
		f.write('\x00')	
		reg_num = int(arg[1:],10)
		f.write(bytearray([reg_num]))
		print 'r' + str(reg_num)
	elif atype == 'i':
		f.write('\x01')
		i_val = int(arg[1:],10)
		f.write(p64(i_val))
		print 'i' + str(i_val)
	else:
		print 'Invalid Arg'
		exit()

def parseRvalue(rval):
	global f

	rtype = rval[0]
	if rtype == 'r':
		f.write('\x00')
		reg_num = int(rval[1:],10)
		f.write(bytearray([reg_num]))
		print 'r' + str(reg_num)
	elif rtype == 'i':
		f.write('\x01')
		i_val = int(rval[1:],10)
		f.write(p64(i_val))
		print 'i' + str(i_val)
	elif rtype == 'm':
		f.write('\x02')
		m_addr = int(rval[1:], 10)
		f.write(p32(m_addr))
		print 'm' + str(m_addr)
	else:
		print 'Invalid Rvalue'
		exit()

for opcodes in asm:

	opcode = opcodes.split(' ')
	ins_type = opcode[0]
	
	#invalid
	if ins_type == ins[0]:
		print 'nop'
	#add
	elif ins_type == ins[1]:
		print 'add'
		f.write('\x01')
		parseLvalue(opcode[1])
		parseRvalue(opcode[2])
	#sub
	elif ins_type == ins[2]:
		print 'sub'
		f.write('\x02')
		parseLvalue(opcode[1])
		parseRvalue(opcode[2])
	#shl
	elif ins_type == ins[3]:
		print 'shl'
		f.write('\x03')
		parseLvalue(opcode[1])
		parseRvalue(opcode[2])
	#shr
	elif ins_type == ins[4]:
		print 'shr'
		f.write('\x04')
		parseLvalue(opcode[1])
		parseRvalue(opcode[2])
	#and
	elif ins_type == ins[5]:
		print 'and'
		f.write('\x05')
		parseLvalue(opcode[1])
		parseRvalue(opcode[2])
	#or
	elif ins_type == ins[6]:
		print 'or'
		f.write('\x06')
		parseLvalue(opcode[1])
		parseRvalue(opcode[2])
	#xor
	elif ins_type == ins[7]:
		print 'xor'
		f.write('\x07')
		parseLvalue(opcode[1])
		parseRvalue(opcode[2])
	#not
	elif ins_type == ins[8]:
		print 'not'
		f.write('\x08')
		parseArg(opcode[1])
	#mov
	elif ins_type == ins[9]:
		print 'mov'
		f.write('\x09')
		parseLvalue(opcode[1])
		parseRvalue(opcode[2])
	#jp
	elif ins_type == ins[10]:
		print 'jp'
		f.write('\x0a')
		parseArg(opcode[1])
	else:
		print 'Invalid instruction'
		exit()
