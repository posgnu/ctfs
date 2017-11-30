import sys
from binary import *
from core import *
import argparse

def main():
  if len(sys.argv) < 2:
    print ("Usage: ROPcle \'filename\' [depth (default = 5)]")
    sys.exit(0)

  if len(sys.argv) < 3:
    depth = 5
  else:
    depth = int(sys.argv[2])

  filename = sys.argv[1]
  binary = CLEMENCY(filename)

  code = binary.getCode()

  print ("--- Library addresses ---")
  findLibraries(code)
  print ("")

  print ("--- ROP Gadgets ---")
  gadgets = findGadgets(code, depth)

  for gadget in gadgets:
    gadget_instr, addr = gadget
    print ("0x%x: %s" % (addr, gadget_instr))

if __name__ == "__main__":
  main()
