ins = ['mov', 'movl', 'movr', 'add', 'sub', 'mul', 'div', 'xor', 'or', 'and', 'bol', 'jmp', 'ja', 'jd', 'syscall', 'nop']
from pwn import *

with open('a.s', 'r') as asm:
	content = asm.readlines()
	assem = [x.strip() for x in content]

f = open('bin', 'wb')

def parseArg(arg):
	global f

	f.write('\x01')
	atype = arg[0]
	f.write('\x02')
	i_val = int(arg[1:],10)
	f.write(p32(i_val))
	print 'i' + str(i_val)

def parseLvalue(lval):
	global f
	
	f.write('\x02')
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
		f.write(p32(i_val))
		print 'i' + str(i_val)
	elif rtype == 'm':
		f.write('\x02')
		m_addr = int(rval[1:], 10)
		f.write(p32(m_addr))
		print 'm' + str(m_addr)
	else:
		print 'Invalid Rvalue'
		exit()


for opcodes in assem: 
	opcode = opcodes.split(' ')
	ins_type = opcode[0]

	if ins_type == ins[0]:
		f.write('\x00')
		print 'mov'
		parseLvalue(opcode[1])
		parseRvalue(opcode[2])
	elif ins_type == ins[1]:
		f.write('\x01')
		print 'movl'
		parseLvalue(opcode[1])
		parseRvalue(opcode[2])
	elif ins_type == ins[2]:
		f.write('\x02')
		print 'movr'
		parseLvalue(opcode[1])
		parseRvalue(opcode[2])
	elif ins_type == ins[3]:
		f.write('\x03')
		print 'add'
		parseLvalue(opcode[1])
		parseRvalue(opcode[2])
	elif ins_type == ins[4]:
		f.write('\x04')
		print 'sub'
		parseLvalue(opcode[1])
		parseRvalue(opcode[2])
	elif ins_type == ins[5]:
		f.write('\x05')
		print 'mul'
		parseLvalue(opcode[1])
		parseRvalue(opcode[2])
	elif ins_type == ins[6]:
		f.write('\x06')
		print 'div'
		parseLvalue(opcode[1])
		parseRvalue(opcode[2])
	elif ins_type == ins[7]:
		f.write('\x07')
		print 'xor'
		parseLvalue(opcode[1])
		parseRvalue(opcode[2])
	elif ins_type == ins[8]:
		f.write('\x08')
		print 'or'
		parseLvalue(opcode[1])
		parseRvalue(opcode[2])
	elif ins_type == ins[9]:
		f.write('\x09')
		print 'and'
		parseLvalue(opcode[1])
		parseRvalue(opcode[2])
	elif ins_type == ins[10]:
		f.write('\x0a')
		print 'bol'
		parseLvalue(opcode[1])
		parseRvalue(opcode[2])
	elif ins_type == ins[11]:
		f.write('\x0b')
		print 'jmp'
		parseArg(opcode[1])
	elif ins_type == ins[12]:
		f.write('\x0c')
		print 'ja'
	elif ins_type == ins[13]:
		f.write('\x0d')
		print 'jd'
		parseArg(opcode[1])
	elif ins_type == ins[14]:
		f.write('\x0e')
		f.write('\x00')
		print 'syscall'
	elif ins_type == ins[15]:
		f.write('\x0f')
		print 'nop'
