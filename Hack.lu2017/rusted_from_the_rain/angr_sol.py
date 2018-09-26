import angr
import claripy

proj = angr.Project('./ctf_normie_cpu-14f48b9bc8ff3d1d.exe', load_options={'auto_load_libs': False})

arg = claripy.BVS('flag', 28*8)

initial_state = proj.factory.blank_state(addr=0x14000172c)

initial_state.memory.store(initial_state.regs.rsp, arg, endness='Iend_BE')

initial_state.regs.rdx = 28
initial_state.regs.rcx = initial_state.regs.rsp

for byte in arg.chop(8):
    initial_state.add_constraints(byte != '\x00')
    initial_state.add_constraints(byte >= ' ')
    initial_state.add_constraints(byte <= '~')


simgr = proj.factory.simgr(initial_state)
print(simgr)
print(simgr.step())
print(simgr.active[0])
simgr.explore(find=0x140001392,avoid=0x14000116d)
print(simgr)
for state in simgr.avoid:
    print(state.se.eval(arg,cast_to=str))
