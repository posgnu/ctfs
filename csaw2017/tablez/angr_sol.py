import angr

def main():
	p = angr.Project("true", load_options={'auto_load_libs':False})
	ex = p.surveyors.Explorer(find=(0xa00+0x400000,), avoid=(0xa13+0x400000,0x9cb+0x400000),enable_veritesting=True)
	ex.run()

	return ex.found[0].state.posix.dumps(0).strip('\0\n')

if __name__ =='__main__':
	print main()
