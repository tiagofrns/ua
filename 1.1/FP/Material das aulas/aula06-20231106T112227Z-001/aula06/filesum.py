

def main():
    # 1) Pedir nome do ficheiro (experimente cada alternativa):
    name = input("File? ")                                  #A
    #name = filedialog.askopenfilename(title="Choose File") #B
    
    # 2) Calcular soma dos números no ficheiro:
    total = fileSum(name)
    
    # 3) Mostrar a soma:
    print("Sum:", total)
    
def fileSum(filename):
    name = f"{filename}.txt"
    f = open(name, "r")
    
    
    sum = 0

    for n in f:
    	
    	sum += float(n)
    
    return sum
    

if __name__ == "__main__":
    main()

