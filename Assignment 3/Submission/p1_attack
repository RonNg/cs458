#!/usr/bin/env python3

import csv
import sys #for interpreting system terminal arguments
from collections import  OrderedDict


def getNumberofColumns(filename):
    noOfColumns = 0

    with open(filename) as file:
        reader = csv.reader(file, delimiter=",")
        noOfColumns = len(next(reader))

    return noOfColumns

def generateKeyValuePair(filename, noOfColumns):

    # 2d list. [i][j] i is column j is row data
    data = [[] for i in range(noOfColumns)]
    with open(filename) as file:
        reader = csv.reader(file, delimiter=",")

        for row in reader:
            for i in range(len(row)):
                data[i].append(row[i])

    dictList = []

    for i in range(len(data)):
        od = OrderedDict()
        for item in sorted(set(data[i])):
            od[item] = data[i].count(item) #map key value pair
        dictList.append(od)

    return dictList

def normalize(d, target=1.0):
   raw = sum(d.values())
   factor = target/raw
   return {key:value*factor for key,value in d.items()}


#sys argv variables
background = sys.argv[1]
encrypted = sys.argv[2]
output = sys.argv[3]
#Plaintext key value pairs
columns = getNumberofColumns(background)
plaintextDictList = (generateKeyValuePair(background, columns))

#Encrypted key value pairs
columns = getNumberofColumns(encrypted)
cipherDictList = (generateKeyValuePair(encrypted, columns))


#Normalize and sort the dictionaries
for i in range(len(plaintextDictList)):
    plaintextDictList[i] = normalize(plaintextDictList[i])
    plaintextDictList[i] = OrderedDict(sorted(plaintextDictList[i].items(), key=lambda x: x[1]))



for i in range(len(cipherDictList)):
    cipherDictList[i] = normalize(cipherDictList[i])
    cipherDictList[i] = OrderedDict(sorted(cipherDictList[i].items(), key=lambda x: x[1]))

# since both csvs have similar distributions we can assume that after we normalize and sort both dictonaries by value
# they will map perfectly to each other Key to Key
plaintext = []
ciphertext = []


for dict in plaintextDictList:
    for key in dict:
        plaintext.append(key)

for dict in cipherDictList:
    for key in dict:
        ciphertext.append(key)

#Generate mapping into csv file
with open(output, 'w') as outputFile:
    writer = csv.writer(outputFile)

    for i in range(len(plaintext)):
        writer.writerow([plaintext[i] + ',' + ciphertext[i]])
