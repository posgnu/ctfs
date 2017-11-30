import binascii

class cByte:
    def __init__(self, data):
        self.content = data

    def __str__(self):
        return self.get16Bit()

    def __eq__(self, other):
        if isinstance(other, self.__class__):
            return self.content == other.content
        else:
            return False

    def __ne__(self, other):
        return not self.__eq__(other)

    def getBit(self, index):
        return (content & (0b1 << index)) != 0

    def get16Bit(self):
        return '{:x}'.format(self.content).rjust(4, '0')

def bytes_to_cbytes(to_convert):
    target_length = len(to_convert) * 8 / 9 * 9
    i = int(binascii.hexlify(to_convert), 16)
    bit_string = '{:b}'.format(i).rjust(len(to_convert) * 8, '0')[:target_length]
    return [cByte(int(bit_string[x:x+9], 2)) \
            for x in range(0, len(bit_string), 9)]

def cbytes_to_bytes(to_convert):
    cBytes = [x.content for x in to_convert]
    bits = ''.join(['{:b}'.format(x).rjust(9, '0') for x in cBytes])
    bits = bits.ljust((len(bits) + 7) / 8 * 8, '0')
    hex_len = len(bits) / 4
    hex_string = '{:x}'.format(int(bits, 2)).rjust(hex_len, '0')
    return binascii.unhexlify(hex_string)

def string_to_cbytes(to_convert):
    bit_string = ''.join(['{:b}'.format(ord(x)).rjust(9, '0') for x in to_convert])
    return [cByte(int(bit_string[x:x+9], 2)) \
            for x in range(0, len(bit_string), 9)]

def cbytes_to_string(to_convert):
    return ''.join([chr(x.content) for x in to_convert])

def endian_conversion(to_convert):
    size = len(to_convert)
    end_type = size % 3
    index_map = [1, 0, 2]

    def bytes_generator(x):
        for i in range(len(x) / 3 * 3):
            yield x[(i / 3 * 3) + index_map[i % 3]]

        if end_type != 0:
            yield x[-1]
        if end_type == 2:
            yield x[-2]

    return list(bytes_generator(to_convert))

def search_sublist(cbytes, pattern):
    matches = []
    for i in range(len(cbytes)):
        if cbytes[i] == pattern[0] and cbytes[i:i+len(pattern)] == pattern:
            matches.append(i)
    return matches

def edit_cbytes(to_modify, offset, cbytes):
    length_to_edit = len(cbytes)
    if length_to_edit == 0:
        return list(to_modify)

    assert offset >= 0
    assert offset + length_to_edit <= len(to_modify)

    return to_modify[:offset] + cbytes + to_modify[offset + length_to_edit:]

def pack_cbytes(to_convert, size):
    limit = 0b1 << 9
    res = []

    for i in range(size):
        res.append(cByte(to_convert % limit))
        to_convert >>= 9

    res.reverse()

    return res

def b2c(x):
    return bytes_to_cbytes(x)

def c2b(x):
    return cbytes_to_bytes(x)

def s2c(x):
    return string_to_cbytes(x)

def c2s(x):
    return cbytes_to_string(x)

def m(x):
    return endian_conversion(x)

def um(x):
    return endian_conversion(x)

def search(x, pattern):
    return search_sublist(x, pattern)

def edit(x, offset, cbytes):
    return edit_cbytes(x, offset, cbytes)

def p27(x):
    return m(pack_cbytes(x, 3))
