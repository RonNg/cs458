import csv

def encrypt (i, s, t):
    return i*s+t

def decrypt(encryptedNo, s, t):
    return (encryptedNo-t)/s


def gcd(x, y):
    while (y):
        x, y = y, x % y

    return x


def egcd(a, b):
    if a == 0:
        return (b, 0, 1)
    else:
        g, y, x = egcd(b % a, a)
        return (g, x - (b // a) * y, y)

def modinv(a, m):
    g, x, y = egcd(a, m)
    if g != 1:
        return -1
    else:
        return x % m



encrypted = []
with open('p2_encrypted', 'r') as file:
    for row in file:
        encrypted.append(int(row.strip('\r\n')))

print (encrypted)
