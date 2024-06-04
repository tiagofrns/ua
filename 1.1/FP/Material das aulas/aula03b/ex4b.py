def main():
	global preco
	IdadePessoa1= int(input("Idade pessoa1? "))
	IdadePessoa2 = int(input("idade pessoa2? "))
	IdadePessoa3 = int(input("idade pessoa3? "))
	IdadePessoa4 = int(input("idade pessoa4? "))

	preco = 0
	PrecoIdade(IdadePessoa1)
	PrecoIdade(IdadePessoa2)
	PrecoIdade(IdadePessoa3)
	PrecoIdade(IdadePessoa4)

	print("Preço Total:", preco)

def PrecoIdade (idade):
	global preco
	if idade < 6:
        	preco +=  0
	elif idade<= 12:
        	preco += 2.5
	elif idade<= 65:
        	preco += 5
	else:
        	preco += 2.5
	

if __name__ == "__main__":
	main()
