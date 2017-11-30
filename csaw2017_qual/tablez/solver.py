import angr

FIND_ADDR = 0x0a00
AVOID_ADDR = 0xa13,0x9cb

def main():
	proj = angr.Project('true', load_options={"auto_load_libs": False})
	path_group = proj.factory.path_group()
	path_group.explore(find=FIND_ADDR, avoid=AVOID_ADDR)
	return path_group.found[0].state.posix.dumps(0).split('\0')[0]

if __name__ == '__main__':
	print main()
