# -*- coding: utf-8 -*- #
# Processor module of the 'Nuit du Hack' 2012 VM bytecode format
# @securitea
#

import sys
import pwn
import re
import logging
import json
import copy

sys.path.append("./")
pwn.context.log_level = 'CRITICAL'


f = open('public/cLEMENCy', 'w')

p = pwn.process(argv=['./clemency-emu', '-d', '0', 'hello.bin'])
p.readuntil('> ')

def cmd(c):
    p.sendline(c)
    return p.readuntil('> ')[len(c) + 1:-3]


def cmd_size(value_str):
    if len(value_str)   <= len('280c0'):
        return 2
    elif len(value_str) <= len('0808880'):
        return 3
    elif len(value_str) <= len('e400008b4'):
        return 4
    elif len(value_str) < len('2b0402000002b'):
        return 5
    elif len(value_str) <= len('2b0402000002b8'):
        return 6



def parse_inst(line):
    '''
    0000000...:                         2b0402000002b8  ldt    R01, [R00 + 0x57, 3]
    0000006...:                         5200780         smp    R00, R01, E
    '''
    addr  = len('0000000')
    value = len('0000000...:                         ')
    asm   = len('0000000...:                         2b0402000002b8  ')
    op    = len('0000000...:                         2b0402000002b8  ldt    ')

    inst = {
        'addr': int(line[0:addr], 16),
        'value': int(line[value:asm], 16),
        'value_str': line[value:asm].strip(),
        'asm': line[asm:op].strip()[:-1],
        'op_text':  line[op:].strip(),
        'text': line,
        'cmd_size': cmd_size(line[value:asm].strip())
    }


    if inst['asm'] == 'car':
        addr = re.findall(r'\((.*)\)', inst['op_text'])
        inst['code_deref'] = addr[0]

    # TODO: data_deref

    return inst

code_map = {}
block_visit_map = {}
code_queue = []
relation_defer = []

sub_blocks = [
    # block
]

def block_split(addr):
    for b in sub_blocks:
        if b['entry'] < addr and addr < b['end']:
            b['end'] = addr
            for idx, ins in enumerate(b['insts']):
                if ins['addr'] == addr:
                    b['insts'] = b['insts'][0:idx]
                    break
            b['links'] = [{'color': 'black', 'addr': addr}]


def label(address):
    return 'loc_{}'.format('{0:#09x}'.format(address))
def sub_label(address):
    return 'sub_{}'.format('{0:#09x}'.format(address))

def code_block(address, is_entry):
    block_end = True

    try:
        block_visit_map[address]
        return
    except KeyError as e:
        block_visit_map[address] = address
        pass

    block_name = label(address)

    if is_entry:
        block_name = sub_label(address)

    block = {
        'entry': address,
        'name': block_name,
        'insts': [],
        'links': []
    }

    while block_end:
        cmd = copy.deepcopy(ana(address))
        cmd['addr_pad'] = '{0:07x}'.format(cmd['addr'])

        block['insts'].append(cmd)

        block_end, other_flow = emu(address, cmd)
        if block_end == False and other_flow != None:
            block_split(other_flow)
            block['links'].append({ 'color': 'green', 'addr': other_flow })
            block['links'].append({ 'color': 'red',   'addr': address + cmd['cmd_size']})

            code_queue.append((False, other_flow))
            code_queue.append((False, address + cmd['cmd_size']))
        address += cmd['cmd_size']

    block['end'] = address
    sub_blocks.append(block)


def ana(address):
    global code_map
    try:
        return code_map[address]
    except KeyError:
        d = cmd('u {}'.format(hex(address)[2:]))
        d_filtered = filter(lambda x: not 'Disassembly Error' in x, d.split('\n'))
        for i in map(parse_inst, d_filtered):
            code_map[i['addr']] = i
        return ana(address)


def emu(address, cmd):
    if cmd['asm'].startswith('car'):
        addr = re.findall(r'\((.*)\)', cmd['op_text'])

        # deeper code_queue
        # code_queue.append((True, int(addr[0], 16)))


    if cmd['asm'].startswith('b'):
        addr = re.findall(r'\((.*)\)', cmd['op_text'])
        other_flow = int(addr[0], 16)
        return (False, other_flow)

    if any(map(cmd['asm'].startswith, stop_inst_set)):
        return (False, None)

    return (True, None)

code_dref_inst_set = [
    'car',
    'b'
]
stop_inst_set = [
    're',
    'b',
    'ht',
]

def main():
    global code_queue
    #spec = Spec(specpath)
    # if not spec.loaded:
    #     print '{} processor is not loaded'.format(name)
    #     return

    init_pc = int(sys.argv[1], 16)

    code_queue.append((True, init_pc))
    while len(code_queue) > 0:
        is_entry, pc = code_queue[0]
        code_queue = code_queue[1:]
        code_block(pc, is_entry)

    json.dump(sub_blocks, open('public/cc.json', 'w'))


if __name__ == '__main__':
    main()
