import r2pipe
import glob
import json
from pwnlib.tubes import remote

conn = remote.remote('cm2k-magic_b46299df0752c152a8e0c5f0a9e5b8f0.quals.shallweplayaga.me',12001)

def get_solution(fn):
    print fn
    r2 = r2pipe.open(fn)
    # Analyse everything for good measure
    r2.cmd('aaaa')
    # It turned out looking at a couple of the files the location of the main checker function
    # was held at 0x7b2, so I was lazy and just grabbed the instruction at that location
    checker = json.loads(r2.cmd('pdj 1@0x7b2'))[0]['opcode']
    if 'call' in checker:
        checker = checker.split(' ')[1]
    else:
        print "checker value was wrong"
        print json.dumps(checker)
        exit()
    solution = ""

    # Iterate over instructions in the main checker function finding calls
    for op in json.loads(r2.cmd('pdfj @'+checker))['ops']:
        lastjump = None
        if(op['type'] == 'call' and 'sym.imp.exit' not in r2.cmd('pd 1@'+hex(op['offset']))):

               # for each called function follow the jump and grab the character literal from the comparison
               # (in r2pipe json this is the 'ptr' field of the operation)
            jump = op['jump']
            char_chk_fn = chr(json.loads(r2.cmd('pdfj@'+hex(jump)))['ops'][0]['ptr'])
            solution += char_chk_fn
    return solution

   # skip first line from the network service
   #print conn.recvline()
   #while True:
       #binary_file = conn.readline().rstrip('\n')
       #print binary_file
       #sol = get_solution(binary_file)
       #print sol
       #conn.send(sol.encode('base64'))
