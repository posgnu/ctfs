import this
from pwn import *

context.clear(arch='amd64')
bin_sh = asm(shellcraft.amd64.linux.sh())
file_name = make_elf(bin_sh, extract=False)
p = process(file_name)
p.interactive()
