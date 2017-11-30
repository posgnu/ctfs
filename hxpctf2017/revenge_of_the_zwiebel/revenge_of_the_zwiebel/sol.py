import angr

p = angr.Project("./zwiebel", load_options={'auto_load_libs':False})

st = p.factory.entry_state(add_options = {"BYPASS_UNSUPPORTED_SYSCALL"})

k = st.posix.files[0].read_from(1)
st.solver.add(k == 'h')
k = st.posix.files[0].read_from(1)
st.solver.add(k == 'x')
k = st.posix.files[0].read_from(1)
st.solver.add(k == 'p')
k = st.posix.files[0].read_from(1)
st.solver.add(k == '{')

sm = p.factory.simulation_manager(st)
sm.run()

out = ''

for pp in sm.deadended:
	out = pp.posix.dumps(1)
	if ':(' not in out:
		print pp.posix.dumps(0)
