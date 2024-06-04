#EXTRA 2
# ex1




def menu():
    print("""
    1) Registar chamada
    2) Ler finheiro
    3) Listar clientes
    4) Fatura
    5) Terminar
    """)
    opcao = int(input("Opção: "))   
    return opcao




def validar_numero(dife):
    numero = input(f"Número {dife}: ")
    numero_modificado = numero.replace("+","")
    # print(numero_modificado)
    # print(numero_modificado.isalpha() , len(numero_modificado))
    while len(numero_modificado) < 3 or not numero_modificado.isdigit() :
        numero_modificado = numero.replace("+","")
        numero = input(f"Número {dife}: ")
        numero_modificado = numero.replace("+","")

    
    else:
        return numero


def ler_ficheiro(ficheiro):
    file = open(ficheiro, 'r', encoding="UTF-8")
    NumerosOrigem = []
    NumerosDestino = []
    duracoes = []
    for line in file:
        lstline = line.split("\t")
        NumerosOrigem.append(lstline[0])
        NumerosDestino.append(lstline[1])
        duracoes.append(lstline[2])
        

    return NumerosOrigem,NumerosDestino,duracoes








def main():

    escolha = menu()
    if escolha == 1:
        numero_origem = validar_numero('origem')
        
        numero_destino = validar_numero('destino')
        

        duracao = int(input("Duração (s): "))
        
        main()
        
    elif escolha == 2:
        fname = input("ficheiro: ")
        origens, destinos, duracoes = ler_ficheiro(fname)
        main()

    elif escolha == 3:
        print(origens)
        origens = list(dict.fromkeys(origens))
        print(origens)
        main()
    elif escolha == 4:
        fatura()
        main()
    else:
        exit() 


















if __name__ == '__main__':
    main()