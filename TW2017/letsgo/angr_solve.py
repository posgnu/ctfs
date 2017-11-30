import angr
 
def main():
    proj = angr.Project('./lets_go', load_options={"auto_load_libs": False})
 
    input_size = 0xd; # Max length from strncpy, see 0x4005ae.
 
    argv1 = angr.claripy.BVS("argv1", input_size * 8)
 
    initial_state = proj.factory.entry_state(args=["./lets_go", argv1])
    initial_state.libc.buf_symbolic_bytes=input_size + 1
    for byte in argv1.chop(8):
        initial_state.add_constraints(byte != '\x00') # null
        initial_state.add_constraints(byte >= ' ') # '\x20'
        initial_state.add_constraints(byte <= '~') # '\x7e'
 
    initial_path = proj.factory.path(initial_state)
    path_group = proj.factory.path_group(initial_state)
 
    path_group.explore(find=0x492654, avoid=0x49278d)
 
    found = path_group.found[0]
 
    solution = found.state.se.any_str(argv1)
    solution = solution[:solution.find("}")+1]
    return solution
 
if __name__ == '__main__':
    print(repr(main()))
