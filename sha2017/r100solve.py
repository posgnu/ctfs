import angr

def main():
	p =angr.Project("100", load_options={'auto_load_libs': False})
	ex = p.surveyors.Explorer(find=(0x8049db5,))
	ex.run()
	print ex
	return ex.found[0].state.posix.dumps(0).strip('\0\n')

if __name__ == '__main__':
	print main()
