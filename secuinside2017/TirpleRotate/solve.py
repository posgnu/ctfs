
from z3 import *

f = open("./sol","r")

string = ''

while True:
  line = f.readline()
  if not line: break
  string += line

f.close()

string = string.replace(" ",'')

array = [BitVec('array1_%i'%i,8) for i in range(0,201)]
array2 = [BitVec('array2_%i'%i,8) for i in range(0,201)]
array3 = [BitVec('array3_%i'%i,8) for i in range(0,201)]
result = [BitVec('result_%i'%i,8) for i in range(0,201)]

s = Solver()

for Iter in range(len(string)):
  s.add(result[Iter]==int(string[Iter]))
  s.add(result[Iter]==(array2[Iter]*array3[Iter]^array2[Iter]*array[Iter]^array3[Iter]))

for Iter in range(0,len(string)-23):
  s.add(array[Iter+23]==(array[Iter+5]^array[Iter]))

for Iter in range(0,len(string)-24):
  s.add(array2[Iter+24]==(array2[Iter]^array2[Iter+1]^array2[Iter+3]^array2[Iter+4]))

for Iter in range(0,len(string)-25):
  s.add(array3[Iter+25]==(array3[Iter]^array3[Iter+3]))

print s.check()
k = s.model()

Input = []

for i in range(23):
  Input.append(k[array[22-i]])
for i in range(24):
  Input.append(k[array2[23-i]])
for i in range(25):
  Input.append(k[array3[24-i]])

for i in range(9):
  for j in range(8):
    print Input[i*8+j],
  print ' '

resultSet=[73,95,76,48,118,51,95,122,69]
flag = ''

for Iter in resultSet:
  flag+=chr(Iter)

print "SECU["+flag+']'
