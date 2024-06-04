from Cryptodome.Cipher import AES
import os
import sys

if len(sys.argv) < 3:
    print("USAGE: python3 etc etc")

filename = sys.argv[1]
chave = sys.argv[2]

def codesha256(cifra):
    sha256 = SHA256.new()
    sha256.update(cifra.encode("utf-8"))
    cifra = sha256.digest()
    return cifra

if len(chave) < 16:
    newcifra = codesha256(chave)

elif len(chave) == 16 or len(chave) == 24 or len(chave) == 32:
    newcifra = cifra
    newcifra = newcifra[:16]
    




