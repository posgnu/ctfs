import angr

p = angr.Project('./easycpp')
st = p.factory.full_init_state(args=['./eayscpp'], add_options=angr.options.unicorn)

for i in range(0,35):
	k = st.posix.files[0].read_from(1)
	st.se.add(k!=0)
	st.se.add(k!=10)

st.posix.files[0].seek(0)
st.posix.files[0].length = 35

sm = p.factory.simgr(st)
sm.explore(find = 0x401606, avoid=0x4015e3)

print sm.found[0].posix.dumps(1)

print sm.found[0].posix.dumps(0)

