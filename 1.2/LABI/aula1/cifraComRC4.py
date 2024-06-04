import os
from Cryptodome.Cipher import ARC4
from Cryptodome.Hash import SHA256
import sys




def codesha256(cifra):
    sha256 = SHA256.new()
    sha256.update(cifra.encode("utf-8"))
    cifra = sha256.digest()
    return cifra
    


if len(sys.argv) < 3:
    print(f"USAGE: python3 {sys.argv[0]} <filename> <chave>")



ficheiro = sys.argv[1]
cifra = sys.argv[2]
file = open(ficheiro,"rb")
text = file.read(512)


if len(cifra) < 5:
    print("MENOS DE 5")
    newcifra = codesha256(cifra)
    print(".")
    keyy = ARC4.new(newcifra)
    print(".")
    cryptogram = keyy.encrypt(text)
    print(".")
    #print(cryptogram)
    os.write(1, cryptogram)
    exit()
elif len(cifra) > 256:
    print("Mais DE 256")
    newcifra = cifra[0:256]

else:
    newcifra = cifra





keyy = ARC4.new(newcifra)
cryptogram = keyy.encrypt(text.encode('utf-8'))
#print(cryptogram)
os.write(1, cryptogram)



