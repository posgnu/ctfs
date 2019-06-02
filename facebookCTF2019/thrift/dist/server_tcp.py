from socket import *

HOST = ''
PORT = 9090
serversocket = socket(AF_INET,SOCK_STREAM)
serversocket.bind((HOST,PORT))
serversocket.listen(999)
while True:
    (clientsocket, address) = serversocket.accept()
    print ("Got client request from",address)
    clientsocket.send("flag")
    print(clientsocket.recv(10))

