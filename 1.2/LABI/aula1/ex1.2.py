from Cryptodome.Hash import MD5
h = MD5.new()
h.update("A long sentence ".encode("utf-8"))
h.update("broken in two halves".encode("utf-8"))
print(h.hexdigest())


import hashlib
h = hashlib.sha256()
h.update("A long sentence ".encode("utf-8"))
h.update("broken in two halves".encode("utf-8"))
print(h.hexdigest())