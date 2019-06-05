import angr
 
def main():
    project = angr.Project("./recursion", load_options={"auto_load_libs": False})
    argv1 = angr.claripy.BVS("argv1",27*8) #initiallize argv1 as 100byte
    initial_state = project.factory.path(args=["./recursion",argv1])
 
    st = project.factory.path_group(initial_state)
 
    st.explore(find =, avoid =)
    found = pg.found[0]
    solution = found.state.se.any_str(argv1)
 
    solution = solution[:solution.find("\x00")]
    return solution
 
if __name__ == '__main__':
    print(repr(main()))
