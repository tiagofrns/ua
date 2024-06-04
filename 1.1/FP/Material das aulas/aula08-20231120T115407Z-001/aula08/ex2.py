def main():
	
	
	file = open('names.txt', 'r')
	dict = {}
	for name in file:
		
		word = name.split(' ')
		if word[-1] in dict:
			if not word[0] in dict[word[-1]]:
			
				dict[word[-1]].append(word[0])
			
		else:
			dict[word[-1]] = word[0]
			
			
			
			
			
			
			
			
	#	if not word[-1] in dict:
	#		dict[word[-1]] = word[0]

	print(dict)

			
		
		
	#apelido = {apelido for name in file }
	
	











if __name__ == '__main__':
	main()

