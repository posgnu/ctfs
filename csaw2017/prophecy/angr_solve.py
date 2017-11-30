import angr

def main():
	p = angr.Project("prophecy", load_options={'auto_load_libs':False})
	ex = p.surveyors.Explorer(find=(0x40390a,0x402e69,0x404384,0x40380a,0x402b46,0x4036d8,0x4035ad,0x403ea9,0x40476f,0x405e07,0x403d41,0x405c38,0x405faf,0x4060bf,0x40390a,0x405a84,0x405d31,0x4051e3,0x404ea9,0x404ad3,0x405bf7,0x405a43,0x405b06,0x405c79,0x405ff0,0x404007,0x405ef4,0x405ac5), avoid=(0x40307b,0x4058c3),enable_veritesting=True)
	ex.run()

	return ex#.found[0].state.posix.dumps(0).strip('\0\n')

if __name__ =='__main__':
	ex = main()
	print ex
	print ex.found[0]
	print ex.found[0].state.posix.dumps(0).strip('\0\n')
	print type(ex.found[0].state.posix.dumps(0).strip('\0\n'))
