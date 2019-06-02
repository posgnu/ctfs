import code
import binascii
import csv
import hashlib


def s256(msg):
    # string hex sha256 of a string or hex string message
    try:
        return hashlib.sha256(binascii.unhexlify(msg)).hexdigest()
    except:
        return hashlib.sha256(msg.encode('utf-8')).hexdigest()


def kth_bit(n, k):
    # flag of the kth bit
    # e.g. k(8,1) == 0; k(8,3) == 1
    return 1 if n & (1 << (k)) else 0


def group_by_n(s, n=2):
    # takes a list or tuple and chunks it up into pairs or other n
    # e.g. (1,2,3,4,5,6) -> ((1,2),(3,4),(5,6))
    return [s[i:i + n] for i in range(0, len(s), n)]


def bit_stream_from_msg(msg):
    # given a hex string msg, generate a stream of 1 and 0
    # e.g. 'e8' -> (0,0,0,1,0,1,1,1)
    newmsg = int(msg, 16)
    for i in range(4 * len(msg))[::-1]:
        yield kth_bit(newmsg, i)


def make_top_hash_from_leaves(tree):
    # combine an ordered list key pairs to a top level public key.
    if len(tree) < 2:
        return tree[0]
    else:
        return make_top_hash_from_leaves(
            [s256(a + b) for a, b in group_by_n(tree)]
        )


def make_top_hash_from_others(initial, others):
    #global log
    # traverse asymmetic segments of public key signature to get public key
    top_hash = initial
    for rank, other in others:
        # log.append(other)
        if int(rank):
            top_hash = s256(other + top_hash)
        else:
            top_hash = s256(top_hash + other)
    return top_hash


def msg_to_hashes(msg, signature):
    # turn a message with signature into an ordered list of key pairs
    bit_stream = bit_stream_from_msg(msg)
    sign_stream = group_by_n(signature, 2)
    return_stream = []
    for bit, sign in zip(bit_stream, sign_stream):
        if bit:
            return_stream.append(sign[0])
            return_stream.append(s256(sign[1]))
        else:
            return_stream.append(s256(sign[0]))
            return_stream.append(sign[1])
    return return_stream


def parse_signed_message(msg_w_signature):
    # separate a formatted message and signature into components
    top_identity = msg_w_signature[0]
    msg = msg_w_signature[1]
    h_msg = s256(msg)
    signature = msg_w_signature[2:514]
    others = group_by_n(msg_w_signature[514:])
    return (top_identity, h_msg, signature, others)


def msg_internal_validity(msg, identity):
    # test zuccoin transaction message validity
    msg_list = msg.split(' ')
    return msg_list[0] == identity and \
        msg_list[1] == 'sent' and \
        float(msg_list[2]) < 500 and \
        msg_list[3] == 'zuccoins' and \
        msg_list[4] == 'to' and \
        len(msg_list[5]) == 64 and \
        len(msg_list) == 6


def verify_signed_message(msg_w_signature):
    # return the public key used to sign a message
    identity, h_msg, signature, others = parse_signed_message(msg_w_signature)
    initial = make_top_hash_from_leaves(msg_to_hashes(h_msg, signature))
    top = make_top_hash_from_others(initial, others)
    return (identity, top)


def read_records(filename):
    with open(filename, 'r') as infile:
        tmpincsv = csv.reader(infile)
        incsv = []

        for i in tmpincsv:
            if i[0] == '9bca65c9376209ede04b5df3b02cb832f8997ff978069d171dc9cbfca657f91a':
                incsv.append(i)
        for row in incsv:
            a, b = verify_signed_message(row)
            # check integrity, redundent
            c = msg_internal_validity(row[1], row[0])


def main():
    filename = 'signatures.csv'
    read_records(filename)

    hack_msg = '9bca65c9376209ede04b5df3b02cb832f8997ff978069d171dc9cbfca657f91a sent 107.4403750444289 zuccoins to 0000000000000000000000000000000000000000000000000000000000000000'
    vvv = s256(hack_msg)
    vvv_h = [i for i in bit_stream_from_msg(vvv)]

    with open(filename, 'r') as infile:
        tmpincsv = csv.reader(infile)
        incsv = []

        for i in tmpincsv:
            if i[0] == '9bca65c9376209ede04b5df3b02cb832f8997ff978069d171dc9cbfca657f91a':
                incsv.append(i)

        bsvec = []
        for row in incsv:
            identity, h_msg, signature, others = parse_signed_message(row)
            bit_stream = [i for i in bit_stream_from_msg(h_msg)]
            bsvec.append(bit_stream)

        # make signatures
        sig = []
        other = ''
        ide = ''

        for i, v in enumerate(vvv_h):
            for idx, bits in enumerate(bsvec):
                if bits[i] is v:
                    row = incsv[idx]
                    ide = row[0]
                    signature = row[2:514]
                    sign_stream = group_by_n(signature, 2)
                    s1, s2 = sign_stream[i]
                    sig.append(s1)
                    sig.append(s2)
                    other = row[514:]
                    break
                if idx is 7:
                    print "fuck"

        #init = make_top_hash_from_leaves(msg_to_hashes(vvv, sig))
        #print make_top_hash_from_others(init, group_by_n(other))

        print '9bca65c9376209ede04b5df3b02cb832f8997ff978069d171dc9cbfca657f91a' + \
            ',' + hack_msg + ',' + ','.join(sig) + ',' + ','.join(other)


if __name__ == '__main__':
    main()

