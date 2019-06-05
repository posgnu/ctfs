import angr 
import claripy

avoid = + 0x400000
find = + 0x400000
main = + 0x400000
BUF_LEN = 100

p = angr.Project('./', load_options={'auto_load_libs': False})

flag = claripy.BVS('flag', BUF_LEN * 8)
state = p.factory.blank_state(addr=main, stdin=flag)

for i in flag.chop(8):
    state.solver.add(state.solver.And(i <= '~', c >= ''))

sm = p.factory.simulation_manager(state)
sm.use_technique(angr.exploration_techniques.Explorer(find, avoid))

sm.run()


final = ex.found[0].posix.dumps(0).decode("utf-8")

print("Flag: {0}".format(final))

import code
code.interact(local=locals())
