#!/usr/bin/env python
# coding: utf-8
import angr
import claripy
import time

def main():
    p = angr.Project('elementary')

    flag = [claripy.BVS('flag_%d' % i, 8) for i in range(44)]
    flag_char = claripy.Concat(*flag + [claripy.BVV(b'\x00')])

    st = p.factory.full_init_state(
            args=['./elementary'],
            add_options=angr.options.unicorn,
            stdin=flag_char,
    )

    for k in flag:
        st.solver.add(k <= '~')
        st.solver.add(k >= ' ')
    st.solver.add(flag[0] == 'f')
    st.solver.add(flag[1] == 'l')
    st.solver.add(flag[2] == 'a')
    st.solver.add(flag[3] == 'g')
    st.solver.add(flag[4] == '{')
    st.solver.add(flag[16] == '-')
    st.solver.add(flag[43] == '}')

    sm = p.factory.simulation_manager(st)
    sm.explore(find=lambda s: b"Congratz" in s.posix.dumps(1))

    # Get the stdout of every path that reached an exit syscall. The flag should be in one of these!
    import code
    code.interact(local=locals())

    return sm.found[0].posix.dumps(0) 


if __name__ == "__main__":
    before = time.time()
    print(main())
    after = time.time()
    print("Time elapsed: {}".format(after - before))
