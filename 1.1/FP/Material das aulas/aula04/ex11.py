
# Função que coloca os divisores numa lista e retorna a lista
def ListaDiv(numero):
	ListaDiv = []
	for n in range(1,numero):
		if numero%n == 0:
			ListaDiv.append(n)
	return ListaDiv







def main():
	N = int(input("numero inteiro positivo: "))
	
	# tem de ser positivo
	if N < 1: 
		print("tem de ser  positivo")
		exit()
	print(ListaDiv(N))
	
	
	# comparaçoes de sumatorios listas com o numero N
	
	if sum(ListaDiv(N)) < N:
		print("Número deficiente")
	elif sum(ListaDiv(N)) == N:
		print("Número perfeito")
	elif sum(ListaDiv(N)) > N:
		print("Número abundante") 







if __name__ == '__main__':
	main()

