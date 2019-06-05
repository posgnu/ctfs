import angr

def main():
	p = angr.Project("inputfile_name", load_options={'auto_load_libs':False})
	ex = p.surveyors.Explorer(find=(0x,), avoid=(0x,),enable_veritesting=True)
	ex.run()

	return ex.found[0].state.posix.dumps(0).strip('\0\n')

if __name__ =='__main__':
	print main()
