#
# Autogenerated by Thrift Compiler (0.12.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#
#  options string: py
#

from thrift.Thrift import TType, TMessageType, TFrozenDict, TException, TApplicationException
from thrift.protocol.TProtocol import TProtocolException
from thrift.TRecursive import fix_spec

import sys

from thrift.transport import TTransport
all_structs = []


class Proto(object):
    """
    You can define enums, which are just 32 bit integers. Values are optional
    and start at 1 if not supplied, C style again.

    """
    TCP = 1
    UNIX = 2

    _VALUES_TO_NAMES = {
        1: "TCP",
        2: "UNIX",
    }

    _NAMES_TO_VALUES = {
        "TCP": 1,
        "UNIX": 2,
    }


class Pong(object):
    """
    Structs are the basic complex data structures. They are comprised of fields
    which each have an integer identifier, a type, a symbolic name, and an
    optional default value.

    Fields can be declared "optional", which ensures they will not be included
    in the serialized output if they aren't set.  Note that this requires some
    manual management in some languages.

    Attributes:
     - code
     - data

    """


    def __init__(self, code=None, data=None,):
        self.code = code
        self.data = data

    def read(self, iprot):
        if iprot._fast_decode is not None and isinstance(iprot.trans, TTransport.CReadableTransport) and self.thrift_spec is not None:
            iprot._fast_decode(self, iprot, [self.__class__, self.thrift_spec])
            return
        iprot.readStructBegin()
        while True:
            (fname, ftype, fid) = iprot.readFieldBegin()
            if ftype == TType.STOP:
                break
            if fid == 1:
                if ftype == TType.I32:
                    self.code = iprot.readI32()
                else:
                    iprot.skip(ftype)
            elif fid == 2:
                if ftype == TType.STRING:
                    self.data = iprot.readBinary()
                else:
                    iprot.skip(ftype)
            else:
                iprot.skip(ftype)
            iprot.readFieldEnd()
        iprot.readStructEnd()

    def write(self, oprot):
        if oprot._fast_encode is not None and self.thrift_spec is not None:
            oprot.trans.write(oprot._fast_encode(self, [self.__class__, self.thrift_spec]))
            return
        oprot.writeStructBegin('Pong')
        if self.code is not None:
            oprot.writeFieldBegin('code', TType.I32, 1)
            oprot.writeI32(self.code)
            oprot.writeFieldEnd()
        if self.data is not None:
            oprot.writeFieldBegin('data', TType.STRING, 2)
            oprot.writeBinary(self.data)
            oprot.writeFieldEnd()
        oprot.writeFieldStop()
        oprot.writeStructEnd()

    def validate(self):
        return

    def __repr__(self):
        L = ['%s=%r' % (key, value)
             for key, value in self.__dict__.items()]
        return '%s(%s)' % (self.__class__.__name__, ', '.join(L))

    def __eq__(self, other):
        return isinstance(other, self.__class__) and self.__dict__ == other.__dict__

    def __ne__(self, other):
        return not (self == other)


class Ping(object):
    """
    Attributes:
     - proto
     - host
     - data

    """


    def __init__(self, proto=None, host=None, data=None,):
        self.proto = proto
        self.host = host
        self.data = data

    def read(self, iprot):
        if iprot._fast_decode is not None and isinstance(iprot.trans, TTransport.CReadableTransport) and self.thrift_spec is not None:
            iprot._fast_decode(self, iprot, [self.__class__, self.thrift_spec])
            return
        iprot.readStructBegin()
        while True:
            (fname, ftype, fid) = iprot.readFieldBegin()
            if ftype == TType.STOP:
                break
            if fid == 1:
                if ftype == TType.I32:
                    self.proto = iprot.readI32()
                else:
                    iprot.skip(ftype)
            elif fid == 2:
                if ftype == TType.STRING:
                    self.host = iprot.readString().decode('utf-8') if sys.version_info[0] == 2 else iprot.readString()
                else:
                    iprot.skip(ftype)
            elif fid == 3:
                if ftype == TType.STRING:
                    self.data = iprot.readBinary()
                else:
                    iprot.skip(ftype)
            else:
                iprot.skip(ftype)
            iprot.readFieldEnd()
        iprot.readStructEnd()

    def write(self, oprot):
        if oprot._fast_encode is not None and self.thrift_spec is not None:
            oprot.trans.write(oprot._fast_encode(self, [self.__class__, self.thrift_spec]))
            return
        oprot.writeStructBegin('Ping')
        if self.proto is not None:
            oprot.writeFieldBegin('proto', TType.I32, 1)
            oprot.writeI32(self.proto)
            oprot.writeFieldEnd()
        if self.host is not None:
            oprot.writeFieldBegin('host', TType.STRING, 2)
            oprot.writeString(self.host.encode('utf-8') if sys.version_info[0] == 2 else self.host)
            oprot.writeFieldEnd()
        if self.data is not None:
            oprot.writeFieldBegin('data', TType.STRING, 3)
            oprot.writeBinary(self.data)
            oprot.writeFieldEnd()
        oprot.writeFieldStop()
        oprot.writeStructEnd()

    def validate(self):
        return

    def __repr__(self):
        L = ['%s=%r' % (key, value)
             for key, value in self.__dict__.items()]
        return '%s(%s)' % (self.__class__.__name__, ', '.join(L))

    def __eq__(self, other):
        return isinstance(other, self.__class__) and self.__dict__ == other.__dict__

    def __ne__(self, other):
        return not (self == other)


class Debug(object):
    """
    Attributes:
     - dummy

    """


    def __init__(self, dummy=None,):
        self.dummy = dummy

    def read(self, iprot):
        if iprot._fast_decode is not None and isinstance(iprot.trans, TTransport.CReadableTransport) and self.thrift_spec is not None:
            iprot._fast_decode(self, iprot, [self.__class__, self.thrift_spec])
            return
        iprot.readStructBegin()
        while True:
            (fname, ftype, fid) = iprot.readFieldBegin()
            if ftype == TType.STOP:
                break
            if fid == 1:
                if ftype == TType.I32:
                    self.dummy = iprot.readI32()
                else:
                    iprot.skip(ftype)
            else:
                iprot.skip(ftype)
            iprot.readFieldEnd()
        iprot.readStructEnd()

    def write(self, oprot):
        if oprot._fast_encode is not None and self.thrift_spec is not None:
            oprot.trans.write(oprot._fast_encode(self, [self.__class__, self.thrift_spec]))
            return
        oprot.writeStructBegin('Debug')
        if self.dummy is not None:
            oprot.writeFieldBegin('dummy', TType.I32, 1)
            oprot.writeI32(self.dummy)
            oprot.writeFieldEnd()
        oprot.writeFieldStop()
        oprot.writeStructEnd()

    def validate(self):
        return

    def __repr__(self):
        L = ['%s=%r' % (key, value)
             for key, value in self.__dict__.items()]
        return '%s(%s)' % (self.__class__.__name__, ', '.join(L))

    def __eq__(self, other):
        return isinstance(other, self.__class__) and self.__dict__ == other.__dict__

    def __ne__(self, other):
        return not (self == other)


class PongDebug(object):
    """
    Attributes:
     - pings

    """


    def __init__(self, pings=None,):
        self.pings = pings

    def read(self, iprot):
        if iprot._fast_decode is not None and isinstance(iprot.trans, TTransport.CReadableTransport) and self.thrift_spec is not None:
            iprot._fast_decode(self, iprot, [self.__class__, self.thrift_spec])
            return
        iprot.readStructBegin()
        while True:
            (fname, ftype, fid) = iprot.readFieldBegin()
            if ftype == TType.STOP:
                break
            if fid == 1:
                if ftype == TType.LIST:
                    self.pings = []
                    (_etype3, _size0) = iprot.readListBegin()
                    for _i4 in range(_size0):
                        _elem5 = Ping()
                        _elem5.read(iprot)
                        self.pings.append(_elem5)
                    iprot.readListEnd()
                else:
                    iprot.skip(ftype)
            else:
                iprot.skip(ftype)
            iprot.readFieldEnd()
        iprot.readStructEnd()

    def write(self, oprot):
        if oprot._fast_encode is not None and self.thrift_spec is not None:
            oprot.trans.write(oprot._fast_encode(self, [self.__class__, self.thrift_spec]))
            return
        oprot.writeStructBegin('PongDebug')
        if self.pings is not None:
            oprot.writeFieldBegin('pings', TType.LIST, 1)
            oprot.writeListBegin(TType.STRUCT, len(self.pings))
            for iter6 in self.pings:
                iter6.write(oprot)
            oprot.writeListEnd()
            oprot.writeFieldEnd()
        oprot.writeFieldStop()
        oprot.writeStructEnd()

    def validate(self):
        return

    def __repr__(self):
        L = ['%s=%r' % (key, value)
             for key, value in self.__dict__.items()]
        return '%s(%s)' % (self.__class__.__name__, ', '.join(L))

    def __eq__(self, other):
        return isinstance(other, self.__class__) and self.__dict__ == other.__dict__

    def __ne__(self, other):
        return not (self == other)
all_structs.append(Pong)
Pong.thrift_spec = (
    None,  # 0
    (1, TType.I32, 'code', None, None, ),  # 1
    (2, TType.STRING, 'data', 'BINARY', None, ),  # 2
)
all_structs.append(Ping)
Ping.thrift_spec = (
    None,  # 0
    (1, TType.I32, 'proto', None, None, ),  # 1
    (2, TType.STRING, 'host', 'UTF8', None, ),  # 2
    (3, TType.STRING, 'data', 'BINARY', None, ),  # 3
)
all_structs.append(Debug)
Debug.thrift_spec = (
    None,  # 0
    (1, TType.I32, 'dummy', None, None, ),  # 1
)
all_structs.append(PongDebug)
PongDebug.thrift_spec = (
    None,  # 0
    (1, TType.LIST, 'pings', (TType.STRUCT, [Ping, None], False), None, ),  # 1
)
fix_spec(all_structs)
del all_structs
