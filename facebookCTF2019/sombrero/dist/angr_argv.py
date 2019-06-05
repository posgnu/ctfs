import angr
import claripy
import code

def main():
    project = angr.Project("sombrero_rojo", load_options={"auto_load_libs": False})
    argv1 = claripy.BVS("sombrero_rojo",100*8) #initiallize argv1 as 100byte
    initial_state = project.factory.path(args=["",argv1])
 
    st = project.factory.path_group(initial_state)
 
    st.explore(find =0x400AA0 , avoid =0x400AD2)
    code.interact(local=locals())
    found = st.found[0]
    solution = found.state.se.any_str(argv1)
 
    solution = solution[:solution.find("\x00")]
    return solution
 
if __name__ == '__main__':
    print(repr(main()))
