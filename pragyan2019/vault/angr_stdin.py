import angr 

avoid = + 0x400000
find = + 0x400000

main = + 0x400000

p = angr.Project('./', load_options={'auto_load_libs': False})


state = p.factory.blank_state(addr=main)

for i in range(100):
    tmp = init.posix.files[0].read_from(1)
    init.se.add(tmp >= 0x30)
    init.se.add(tmp <= 0x39)
init.posix.files[0].seek(0)
init.posix.files[0].length = 100


sm = p.factory.simgr(init)
ex = sm.explore(find=find, avoid = fail)


final = ex.found[0]
flag = final.posix.dumps(1)

print("Flag: {0}".format(final.posix.dumps(1)))

import code
code.interact(local=locals())
