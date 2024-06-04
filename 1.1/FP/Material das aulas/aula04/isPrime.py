
# verificar que é primo com os seus divisores
def isPrime (n):
	numerodiv = 0
	for j in range (2, n):
		if n % j == 0:
			numerodiv += 1
	if numerodiv == 0:
		return True
	else:
		return False


def main ():
	for i in range (2, 101):
		print (i, "nº primo?", isPrime (i)) 


if __name__ == '__main__':
	main()	
