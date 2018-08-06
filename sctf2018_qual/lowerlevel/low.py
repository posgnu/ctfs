switch_list = ['00000', '00001', '00010', '00011', '00100', '00101', '00110', '00111', '01000', '01001', '01010', '01011', '01100', '01101', '01110', '01111', '10000', '10001', '10010', '10011', '10100', '10101', '10110', '10111', '11000', '11001', '11010', '11011', '11100', '11101', '11110', '11111']

output = ['00100100', '00000000', '01001100', '00110000','00000001','01111011','01111001','00000001','01101101','00100000','01111001','00000001','01111011','00110011','00100100','00110000']

for i in switch_list:
    switch = list(i)
    switch = map(int,switch)[::-1]
#led1
    a2 = switch[0]
        
    a3 = switch[1]
    a4 = switch[3]
    a1 = a3 | a4

    led1 = a1 & a2

#led2

    b11 = switch[3]
    b12 = switch[0]
    b4 = b11 | b12

    b7 = switch[1]
    b8 = switch[4]
    b5 = b7 & b8

    b9 = 1 ^ switch[4]
    b10 = 1 ^ switch[1]
    b6 = b9 & b10

    b3 = b5 | b6

    b2 = switch[2]
    b1 = b3 | b4
    led2 = b2 ^ b1


#led3
    c7 = 1 ^ switch[4]
    c8 = 1 ^ switch[3]

    c9 = switch[3]
    c10 = switch[4]
    
    c5 = c7 & c8
    c6 = c9 & c10
    
    c3 = 1 ^ switch[3]
    c4 = c5 | c6
    c1 = c3 | c4

    c2 = switch[2]
    led3 = c1 ^ c2

#led 4
    d5 = switch[4]
    d6 = switch[1]

    d4 = d5 | d6
    d3 = switch[3] ^ 1
    d1 = d3 | d4

    d2 = switch[2]
    led4 = d1 ^ d2


# led 5
    e6 = switch[0]
    
    e7 = switch[3]
    e8 = 1 ^ switch[4]
    e5 = e7 & e8

    e3 = e5 | e6

    e13 = 1 ^ switch[4]
    e14 = 1 ^ switch[1]

    e11 = e13 & e14

    e15 = 1 ^ switch[1]
    e16 = switch[3]
    e12 = e15 & e16

    e9 = e11 | e12
    e17 = switch[4]

    e19 = 1 ^ switch[3]
    e20 = switch[1]
    e18 = e19 & e20
    e10 = e17 & e18
    
    e4 = e9 | e10

    e1 = e3 | e4
    e2 = switch[2]

    led5 = e1 ^ e2

#led6 
    f5 = 1 ^ switch[4]
    f6 = 1 ^ switch[1]
    f3 = f5 & f6

    f7 = switch[3]
    f8 = 1 ^ switch[4]
    f4 = f7 & f8

    f1 = f3 | f4
    f2 = switch[2]

    led6 = f1 ^ f2


#led7 check
    g11 = 1 ^ switch[4]
    g12 = 1 ^ switch[3]
    g9 = g11 & g12
    
    g13 = 1 ^ switch[3]
    g14 = switch[1]
    g10 = g13 & g14
    
    g6 = g9 | g10
    
    g7 = switch[1]
    g8 = 1 ^ switch[4]
    g5 = g7 & g8
    g4 = g6 | g5
    
    g3 = switch[0]
    
    g2 = g4 | g3
    g1 = switch[2]
    led7 = g2 & g1


#led8
    h9 =  1 ^ switch[1]
    h10 = switch[3]
    h7 = h9 & h10

    h12 = 1 ^ switch[4]
    h11 = switch[3]
    h8 = h11 & h12

    h4 = h7 | h8
    
    h5 = switch[1] & (1 ^ switch[3])
    h6 = switch[0]
    h3 = h5 | h6
    
    h1 = h3 | h4
    
    h2 = switch[2]
    led8 = h1 ^ h2

    ss = str(led1)
    ss += str(led2)
    ss += str(led3)
    ss += str(led4)
    ss += str(led5)
    ss += str(led6)
    ss += str(led7)
    ss += str(led8)
    print ss
    
