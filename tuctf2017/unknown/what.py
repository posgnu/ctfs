import string

class MyBreakpoint(gdb.Breakpoint):

    def stop (self):
        global correct_count

        if correct_count == -1:
            result = gdb.execute('p (int) *(char *)($rbp - 0xc)', to_string=True)
            correct_count = int(result.split('=')[-1].strip(), 16)

        return False

gdb.execute('file ./unknown')
gdb.execute('set pagination off')

bp = MyBreakpoint("*0x401c86")

correct_count = 0
flag = ''
for i in range(56):
    found = False
    for ch in string.printable:
        if ch in ['"', '`']:
            continue

        correct_count = -1

        sbj = '{:_<56}'.format(flag + ch)
        print('Trying {}...'.format(sbj))

        gdb.execute('r "{}"'.format(sbj))
        print("count " + str(correct_count))
        if correct_count == i + 1:
            found = True
            flag = sbj.replace('_', '')
            print('FLAG:', flag)
            break

    if not found:
        print('ERROR')
        exit(0)
