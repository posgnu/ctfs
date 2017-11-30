import hashlib

i = 0

while i < 99999999:
    pincode = "%8d" % i
    val = '{}:{}'.format('b4ckd00r_us3r', pincode)
    key = hashlib.sha256(val).hexdigest()
    if key == '34c05015de48ef10309963543b4a347b5d3d20bbe2ed462cf226b1cc8fff222e':
            print val
            print key
    i += 1
print 'fail' 

