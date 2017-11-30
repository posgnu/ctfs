import sys

def binary2code(binary):
  binstr = ""
  for c in binary:
    binstr += bin(c)[2:].rjust(8, '0')
  
  length = len(binstr)
  arr_length = int(length / 9)
  byte_arr = [0 for i in range(arr_length)]

  for i in range(arr_length):
    bytestr = binstr[9 * i: 9 * (i+1)]
    byte_arr[i] = int(bytestr, 2)

  return byte_arr

class CLEMENCY(object):
  def __init__(self, filename):
    self.__filename = filename
    self.__entry = 0

    self.__coreGadgets = []
    self.__gadgets = []

    with open(filename, 'rb') as f:
      self.__binary = f.read()

    self.__code = binary2code(self.__binary)

  def getFilename(self):
    return self.__filename

  def getEntryPoint(self):
    return self.__entry

  def getBinary(self):
    return self.__binary

  def getCode(self):
    return self.__code
