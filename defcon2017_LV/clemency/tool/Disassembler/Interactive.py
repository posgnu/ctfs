import sys
import Disassembler 
########## Let's use Python 3

if sys.version_info.major != 3:
    print("Please use Python 3!!!")
    sys.exit(0)

    
def str2int(s):
    try:
        if len(s) > 2 and s[0:2] == '0x':
            return int(s[2:], 16)
        else:
            return int(s)
    except:
        return 0
    
def main():
    data = None
    if len(sys.argv) > 1:
        data = Disassembler.loadfile(sys.argv[1])

    idx, cnt = 0, 0
    
    while True:
        if data is not None:
            print("Current Index is " + hex(idx))
            
        inp = input(">> ")
        inp = inp.split(' ')
        
        if inp[0] == "h" or inp[0] == "?" or inp[0] == "help":
            
            print("l or load <filename>: load the file")
            print("d or dis <addr>: disassemble from the address, with count 10")
            print("d or dis <addr> <count>: disassemble from the address with the input count")
            print("c or con: continue disassembling with count 10")
            print("c or con <count>: continue disassembling with the input count")
            print("n or ni: get next instruction")
            print("e or exit: exit")

        elif inp[0] == "e" or inp[0] == "exit":
            print("Bye bye!")
            sys.exit(0)
        elif inp[0] == "l" or inp[0] == "load":
            if len(inp) != 2:
                print("Wrong Input")
            else:
                data = Disassembler.loadfile(inp[1])
        elif inp[0] == "d" or inp[0] == "dis":
            if data == None:
                print("Please load the file!!!")
            elif len(inp) == 2:
                idx = str2int(inp[1])
                cnt = 10
            elif len(inp) == 3:
                idx = str2int(inp[1])
                cnt = str2int(inp[2])
            else:
                print("Wrong Input")
        elif inp[0] == "c" or inp[0] == "con":
            if data == None:
                print("Please load the file!!!")
            elif len(inp) == 2:
                cnt = str2int(inp[1])
            elif len(inp) == 1:
                cnt = 10
            else:
                print("Wrong Input")
        elif inp[0] == "n" or inp[0] == "ni":
            if data == None:
                print("Please load the file!!!")
            else:
                cnt = 1

        while cnt > 0:
            inst = Disassembler.checkinst(data, idx)
            if inst is None:
                print( ("%07x" % idx) + ": Disassembly Error")
                break

            inst.setaddr(idx)
            print( ("%07x" % idx) + ": " + inst.tostring())

            idx += inst.length()
            cnt -= 1
    

main()

