import angr

def main():
	p = angr.Project("rev_rev_rev", load_options={'auto_load_libs':False})
	ex = p.surveyors.Explorer(find=(0x8048679,), avoid=(0x804868b,),enable_veritesting=True)
	ex.run()

	return ex.found[0].state.posix.dumps(0).strip('\0\n')

if __name__ =='__main__':
	print main()
