import angr 

fail = [0x401626, 0x4009fc, 0x4009f2, 0x400a4b, 0x400a41, 0x400aa4, 0x400b06, 0x400b61, 0x400bc0, 0x400bd3, 0x400c0a, 0x400C69, 0x400C7C, 0x400CB0, 0x0400D12, 0x0400D25, 0x0400D56, 0x0400DA3, 0x400DB6, 0x00400DDB, 0x0400E25, 0x0400E38, 0x0400E63, 0x400ECB, 0x400EDE, 0x400F0C, 0x400F71, 0x400F84, 0x400FB2, 0x0401017, 0x40102A, 0x401064, 0x4010B0, 0x4010C3, 0x4010EE, 0x40115B, 0x40116E, 0x4011A2]
find = 0x401606
main = 0x4011a9
p = angr.Project('./RedVelvet', load_options={'auto_load_libs': False})


init = p.factory.blank_state(addr=main)
for i in range(30):
    tmp = init.posix.files[0].read_from(1)
    init.se.add(tmp >= 0x20)
    init.se.add(tmp <= 0x7e)
init.posix.files[0].seek(0)
init.posix.files[0].length = 30
sm = p.factory.simgr(init)
# angr.manager.l.setLevel(logging.DEBUG)
ex = sm.explore(find=find, avoid = fail)

print ex.found[0].posix.dumps(0)
