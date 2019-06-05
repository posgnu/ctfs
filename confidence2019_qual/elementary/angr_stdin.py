import angr 

avoid = 0x786+ 0x400000
find = 0x773+ 0x400000

main = 0x71a + 0x400000

p = angr.Project('./elementary', load_options={'auto_load_libs': False})


init = p.factory.blank_state(addr=main)



sm = p.factory.simgr(init)
ex = sm.explore(find=find, avoid = avoid)



import code
code.interact(local=locals())
