#!/usr/bin/env python3

import sys

file1 = sys.argv[1]
file2 = sys.argv[2]

with open (file1, 'rb') as file:
    file1_b = file.read().rstrip()

with open (file2, 'rb') as file:
    file2_b = file.read().rstrip()


file1_b = bytearray(file1_b)
file2_b = bytearray(file2_b)

size = len(file1_b) if len(file1_b) > len(file2_b) else len(file2_b)

xord_bytearray = bytearray(len(file1_b))

for i in range(len(xord_bytearray)):
    xord_bytearray[i] = file1_b[i] ^ file2_b[i]


outputName = sys.argv[3]

with open (outputName, 'wb') as file:
    file.write(xord_bytearray)

print ("XORed file named {} has been created".format(outputName))


