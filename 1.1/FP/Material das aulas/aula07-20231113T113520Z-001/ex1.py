import sys
def CountLetters(wordlist):
	letras = {}

	f = open(f"/home/tiago/Desktop/FP/Material das aulas/aula07-20231113T113520Z-001/aula07/examples/{wordlist[0]}","r",encoding="utf-8")
	for line in f:
		line = line.lower()
		for letter in line:
			if letter.isalpha():
				letter = letter.lower()
				if not letter in letras:
					letras[letter] = 1
				else:
					letras[letter] += 1

	x = sorted(letras)
	for i in x:
		print(i, letras[i])






	f.close()






def main():
	file = sys.argv[1:]
	CountLetters(file)









if __name__ == '__main__':
	main()
