with open('data', 'r') as f:
    with open('new.csv', 'w') as t:
        price = 0
        flag = True
        for line in f:
            if flag:
                flag = False
                continue

            a = line.split('\t')
            a[2] = str(price)
            a[3] = str(price+0.00001)
            a[4] = str(price)
            a[5] = str(price+0.00001)
            price += 0.001
            t.write("\t".join(a))
            print "\t".join(a)

