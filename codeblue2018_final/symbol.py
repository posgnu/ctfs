from pwn import *

elf = ELF('libc')

print(hex(elf.symbols['scanf']))
