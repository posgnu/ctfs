import angr 
import claripy

avoid = 0 + 0x400000
find = 0xb19 + 0x400000
main = 0x850+ 0x400000
BUF_LEN = 300

p = angr.Project('./elementary', load_options={'auto_load_libs': False})

flag = claripy.BVS('flag', BUF_LEN * 8)
state = p.factory.blank_state(addr=main, stdin=flag)

for i in flag.chop(8):
    state.solver.add(i <= '~')
    state.solver.add(i >= ' ')

sm = p.factory.simulation_manager(state)
sm.use_technique(angr.exploration_techniques.Explorer(find))

sm.run()

import code
code.interact(local=locals())

final = ex.found[0].posix.dumps(0).decode("utf-8")
print("Flag: {0}".format(final))
