def count_words(str):
	list = str.split(' ')
	count = len(list)
	return count
	
	
	
	
	
def main():
	count = 0
	while True:
		frase = input("Frase: ")
		if frase == "":
			break
		word = count_words(frase)
		count += word
	print("numero de palavras:", count)
	
	
	
if __name__ == '__main__':
	main()
