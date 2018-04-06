with open('a.txt') as f:
        content = f.readlines()
content = [x.strip() for x in content]

s = ''
for i in content:
    s += '\\'+i[7::]
print s
print len(s)/4
