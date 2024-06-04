

# sumatorio de Leibniz 
def LeibnizPi4(n):
	soma = 0
	for i in range (0, n+1):
		leibniz = ((-1)**i)/((2*i)+1) # formula
		soma += leibniz
	return soma










def main():
	n = int(input("numero? "))
	print(LeibnizPi4(n))







if __name__ == '__main__':
	main()
