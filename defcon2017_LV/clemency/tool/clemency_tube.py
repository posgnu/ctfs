from pwn import *
from cLEMENCy import *

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

        data = c2s(b2c(data))

        return data

    def send_raw(self, data):
        if self.closed["send"]:
            raise EOFError

        try:
            if type(data) == list:
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

