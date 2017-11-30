import angr

def main():
	p = angr.Project("sakura", load_options={'auto_load_libs':False})
	ex = p.surveyors.Explorer(find=(0x110ca,), avoid=(0x110ec,),enable_veritesting=True)
	ex.run()

	return ex.found[0].state.posix.dumps(0).strip('\0\n')

if __name__ =='__main__':
	print main()
