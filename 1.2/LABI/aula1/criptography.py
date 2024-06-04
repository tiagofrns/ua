from Cryptodome.Hash import SHA256

h = SHA256.new()
h.update('OLAAAA'.encode("utf-8"))
print(h.hexdigest())



import hashlib


h = hashlib.sha256()
h.update('OLAAAA'.encode("utf-8"))
print(h.hexdigest())