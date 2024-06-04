IdadePessoa1= int(input("Idade pessoa1? "))
IdadePessoa2 = int(input("idade pessoa2? "))
IdadePessoa3 = int(input("idade pessoa3? "))
IdadePessoa4 = int(input("idade pessoa4? "))



if IdadePessoa1 < 6:
	preco1 =  0
elif IdadePessoa1<= 12:
	preco1 = 2.5
elif IdadePessoa1<= 65:
	preco1 = 5
else:
	preco1 = 2.5


if IdadePessoa2 < 6:
        preco2 =  0
elif IdadePessoa2<= 12:
        preco2 = 2.5
elif IdadePessoa2<= 65:
        preco2 = 5
else:
        preco2 = 2.5


if IdadePessoa3 < 6:
        preco3 =  0
elif IdadePessoa3<= 12:
        preco3 = 2.5
elif IdadePessoa3<= 65:
        preco3 = 5
else:
        preco3 = 2.5

if IdadePessoa4 < 6:
        preco4 =  0
elif IdadePessoa4<= 12:
        preco4 = 2.5
elif IdadePessoa4<= 65:
        preco4 = 5
else:
        preco4 = 2.5


PrecoTotal = preco1 +preco2 +preco3 +preco4

print("Preço Total: ", PrecoTotal)
