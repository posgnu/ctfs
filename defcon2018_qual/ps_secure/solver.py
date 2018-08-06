import claripy
import code

def final(n):
    n = 214013 * n + 2531011
    return (n >> 16) & 0x7fff
def change(n):
    return (214013 * n) + 2531011

s = claripy.Solver()

inte = claripy.BVS("a", 32)

#rountine_free
a1 = final(inte)
inte1 = change(inte) & 0xffffffff

#call_hold
s.add(a1 == 0x2f)
#secret_flag
a2 = final(inte1)
inte2 = change(inte1) & 0xffffffff

s.add(a2 == 0x53)
print len(s.eval(inte,1000))
#sub_bd2
a3 = final(inte2)
inte3 = change(inte2) & 0xffffffff
s.add(a3 == 0x0)


a = s.eval(inte,10)

code.interact(local=locals())
