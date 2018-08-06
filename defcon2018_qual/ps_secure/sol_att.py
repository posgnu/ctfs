def check(val):
    return (((val * 214013 + 2531011) >> 16) & 0x7fff) % 65 == 50

def xgcd(b, a):
    x0, x1, y0, y1 = 1, 0, 0, 1
    while a != 0:
        q, b, a = b // a, a, b % a
        x0, x1 = x1, x0 - q * x1
        y0, y1 = y1, y0 - q * y1
    return  b, x0, y0

# x = mulinv(b) mod n, (x * b) % n == 1
def mulinv(b, n):
    g, x, _ = xgcd(b, n)
    if g == 1:
        return x % n

inv_214 = mulinv(214013, 0x100000000)

def get_reverse(val):
    val = (val - 2531011) % 0x100000000
    val = (val * inv_214) % 0x100000000
    return val

ans = []

for i in range(0x10000):
    if check(i): ans.append(i)
    if check(i+0x80000000): ans.append(i+0x80000000)


print(len(ans))

ans2 = []

for i in ans:
    tmp = i
    flag = True
    for j in xrange(11500):
        tmp = get_reverse(tmp)
        if (tmp >> 16) & 0x7fff == 0:
            flag = False
            break
    if flag:
        ans2.append(i)

print(len(ans2))
