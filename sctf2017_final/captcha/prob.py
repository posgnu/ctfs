#!/usr/bin/env python3

import json
import random
import sys, signal

def timeup(signum, stack):
    print('Time up!!!')
    sys.exit(0)

signal.signal(signal.SIGALRM, timeup)
signal.alarm(30)

filelist = json.load(open('./filelist.json', 'r'))
line = '=' * 105


print("Are you really a human being? Let's TEST.")
print("There're 100 stages to pass.")
print("Every string is 5bytes long, in capital.")
print("Only 30 secs are given to you.")

probs = random.sample( filelist.items(), 100 )

for i in range(100):
    print(line)
    print(" " * 48 + ("Stage %03d" % (i+1)) + " " * 48)
    print(line)
    
    with open( './txt/' + probs[i][0], 'r' ) as f:
        data = f.read()
    print(data)

    ans = input('Answer > ')
    if ans is not None and ans == probs[i][1]:
        print('Nice!')
    else:
        print('Too bad :(')
        sys.exit(0)


print(line)
print('Congratulation!!! The flag is:')
print('PLUS{Funny_coding_with_captcha}')

