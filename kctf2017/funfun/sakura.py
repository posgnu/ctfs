import angr 
import logging
import IPython

fail = 0x401180
find = 0x000000000001179 + 0x400000
main = 0x000000000001080 + 0x400000
p = angr.Project('./FUNFUN', load_options={'auto_load_libs': False})


init = p.factory.blank_state(addr=main)
for i in range(400):
    tmp = init.posix.files[0].read_from(1)
    init.se.add(tmp >= 0x20)
    init.se.add(tmp <= 0x7f)

init.posix.files[0].seek(0)
init.posix.files[0].length = 14
sm = p.factory.simgr(init)
angr.manager.l.setLevel(logging.DEBUG)
ex = sm.explore(find=find, avoid = fail)

final = ex.found[0]
flag = final.posix.dumps(1)
print("Flag: {0}".format(final.posix.dumps(1)))
IPython.embed()
