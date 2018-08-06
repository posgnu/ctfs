import pwn
import code

alphabet = ['A', 'A#', 'B', 'C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#']

def word2note(n):
        import math

        new_n = float(n / 27.5)
        res = int((math.log(new_n, 2) * 12.0 + 0.5))
        return '{}{}'.format(alphabet[res%12], res/12)

print word2note(0x71)
print word2note(0x67de)

conv = dict()
for i in xrange(0x1b, 0x67de+1):
    conv[pwn.disasm(word2note(i), arch = 'i386')] = i

code.interact(local=locals())
print len(conv)
print conv
