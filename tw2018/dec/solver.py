import angr
import claripy
import code

def main():
    project = angr.Project("dec_dec_dec", load_options={"auto_load_libs": False})
    argv1 = claripy.BVS("argv1",100*8) #initiallize argv1 as 100byte
    initial_state = project.factory.path(args=["dec_dec_dec",argv1])
 
    st = project.factory.path_group(initial_state)
 
    st.explore(find =0x1112, avoid =0x1120)
    found = st.found[0]
    solution = found.state.se.any_str(argv1)
 
    solution = solution[:solution.find("\x00")]
    return solution
 
if __name__ == '__main__':
    print(repr(main()))
    code.interact(local=locals())
