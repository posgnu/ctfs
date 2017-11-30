import angr

p = angr.Project("rabbithole", load_options={'auto_load_libs': False})
state = p.factory.entry_state()

for i in range(59):
	k = state.posix.files[0].read_from(1)
	state.se.add(k>31)
	state.se.add(k<127)

k = state.posix.files[0].read_from(1)
state.se.add(k == 10)

state.posix.files[0].seek(0)
state.posix.files[0].length = 60

sm = p.factory.simgr(state)
sm.run

for pp in sm.deadended:
	out = pp.posix.dumps(1)
	if 'correct' in out:
		print pp.posix.dumps(0)

#print sm.found[0].posix.dump(0)
	



