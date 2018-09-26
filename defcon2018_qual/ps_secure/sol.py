import claripy
import code

s = claripy.Solver()

inte = claripy.BVS("a", 32)
inte = 214013 * inte
inte = inte & 0xffffffff
inte = inte + 2531011
inte = inte & 0xffffffff
re = (inte >> 16) & 0x7fff

s.add(re == 0)

a = s.eval(inte,10)

code.interact(local=locals())
