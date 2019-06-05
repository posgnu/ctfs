from swpag_client import Team # pip install swpag_client
import socks # pip install PySocks
import socket
socks.setdefaultproxy(socks.PROXY_TYPE_SOCKS5, '127.0.0.1', 4444)
socket.socket = socks.socksocket
t = Team(None, <SWPAG_TEAM_FLAG_TOKEN>)
t.get_game_status() # works as done from within the game network
