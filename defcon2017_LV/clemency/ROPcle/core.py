import sys
from binary import *
from libdict import *
from disassemble import *

coreGadgets = ['RE', 'CR', 'BR']

filtered = \
['B', 'BR', 'BRA', 'BRR', 
'C', 'CAA', 'CAR', 'CR', 
'HT', 'IR', 'RE']

possible_instr_len = [2, 3, 4, 6]

def compute_pi(pattern):
  ret = [0]

  for i in range(1, len(pattern)):
    j = ret[i - 1]

    while j > 0 and pattern[j] != pattern[i]:
      j = ret[j - 1]
    
    ret.append(j + 1 if pattern[j] == pattern[i] else j)

  return ret

def search(code, pattern):
  pi, ret, j = compute_pi(pattern), [], 0
  pattern_len, code_len = len(pattern), len(code)

  for i in range(code_len):
    while j > 0 and code[i] != pattern[j]:
      j = pi[j - 1]
    
    if code[i] == pattern[j]:
      j += 1

    if j == pattern_len:
      ret.append(i - j + 1)
      j = 0

  return ret

def match(a, b):
  if len(a) != len(b):
    return False

  length = len(a)
  for i in range(length):
    if a[i] != b[i]:
      return False

  return True

def findLibraries(code):
  dic = LibraryDict().getDict()

  for key in dic.keys():
    addr_arr = search(code, dic[key])

    if len(addr_arr) < 1:
      print ("%s not found" % key)
    else:
      print ("%s: 0x%x" % (key, addr_arr[0]))

def findCoreGadgets(code):
  codelen = len(code) - 6
  gadgets = []

  for idx in range(codelen):
    inst = checkinst(code, idx)
        
    if inst is None:
      continue
    if inst.type in coreGadgets:
      gadgets.append((inst.tostring(), idx))

  return gadgets

def alreadyExist(newGadget, gadgetList):
  gadget_str = newGadget[0]

  for gadget in gadgetList:
    if gadget_str == gadget[0]:
      return True

  return False

def findGadgets(code, depth):
  newGadgets = findCoreGadgets(code)
  completeGadgets = []

  for curDepth in range(depth):
    gadgets = newGadgets
    newGadgets = []

    for gadget in gadgets:
      s, addr = gadget

      for instr_len in possible_instr_len:
        start = addr - instr_len
        inst = checkinst(code, start)
        
        if inst is None:
          continue
        if inst.length() != instr_len:
          continue
        if inst.type in filtered:
          continue

        instr_str = inst.tostring()

        newGadgets.append((instr_str + "; " + s, start))

      if not alreadyExist(gadget, completeGadgets):
        completeGadgets.append(gadget)


  return completeGadgets
