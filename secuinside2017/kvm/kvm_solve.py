import angr
import simuvex

START_ADDR = 0xb047
FIND_ADDR = 0x00b448
AVOID_ADDR = 0x0b44f
INPUT_ADDR = 0x41c8
INPUT_LENGTH = 0x50

def extract_memory(state):
    """Convience method that returns the flag input memory."""
    return state.se.any_str(state.memory.load(INPUT_ADDR, INPUT_LENGTH))

def char(state, n):
    """Returns a symbolic BitVector and contrains it to printable chars for a given state."""
    vec = state.se.BVS('c{}'.format(n), 8, explicit_name=True)
    return vec, state.se.And(vec >= ord(' '), vec <= ord('~'))


def main():
    p = angr.Project('kvm')

    print('adding BitVectors and constraints')
    state = p.factory.blank_state(addr=START_ADDR, add_options={simuvex.o.LAZY_SOLVES})
    for i in range(INPUT_LENGTH):
        c, cond = char(state, i)
        # the first command line argument is copied to INPUT_ADDR in memory
        # so we store the BitVectors for angr to manipulate
        state.memory.store(INPUT_ADDR + i, c)
        state.add_constraints(cond)

	print('creating path and explorer')
    	path = p.factory.path(state)
    	ex = p.surveyors.Explorer(start=path, find=(FIND_ADDR,), avoid=(AVOID_ADDR,))

    	print('running explorer')
    	ex.run()

    	flag = extract_memory(ex._f.state) # ex._f is equiv. to ex.found[0]
    	print('found flag: {}'.format(flag))

    	return flag
"""
#def main():
#	proj = angr.Project('kvm', load_options={"auto_load_libs": False})
#	path_group = proj.factory.path_group()
#	path_group.explore(find=FIND_ADDR, avoid=AVOID_ADDR)
#	return path_group.found[0].state.posix.dumps(0).split('\0')[0]
"""

if __name__ == '__main__':
	print main()

