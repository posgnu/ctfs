#!/usr/bin/env python
# coding: utf-8
import angr
import claripy
import time

def main():
    p = angr.Project('elementary')

    flag_chars = []
    tf = [claripy.BVS('flag_%d' % i, 8) for i in range(1600)]
    for i in range(0,1600,8):
        flag_chars.append(tf[i] | (tf[i+1] << 1)| (tf[i+2] <<2) | (tf[i+3]<<3 )| (tf[i+4]<<4 )| (tf[i+5] <<5)|( tf[i+6] <<6)|( tf[i+7]<<7))
    flag = claripy.Concat(*flag_chars + [claripy.BVV(b'\n')])

    st = p.factory.full_init_state(
            args=['./elementary'],
            add_options=angr.options.unicorn,
            stdin=flag,
    )

    for k in flag_chars:
        st.solver.add(k != 0)
        st.solver.add(k != 10)

    sm = p.factory.simulation_manager(st)
    sm.explore(find=lambda s: b"Good" in s.posix.dumps(1))

    # Get the stdout of every path that reached an exit syscall. The flag should be in one of these!
    import code
    code.interact(local=locals())

    return sm.found[0].posix.dumps(0) 


if __name__ == "__main__":
    before = time.time()
    print(main())
    after = time.time()
    print("Time elapsed: {}".format(after - before))
