#!/usr/bin/env python

import sys

with open("img", "rb") as imageFile:
	f = imageFile.read()
	b = bytearray(f)

for v in b:
	sys.stdout.write('\\' + hex(v)[1:])
