# Preencha a lista com os números mecanográficos dos autores.
AUTORES = [79319,120271]

import random
import os
from time import sleep
import sys
import subprocess

def printc(color, text): #Dar print a texto usando comandos bash para mudar a cor, IDEIA DO COLEGA RHYAN.
    if color == 'red':
        print(f"\033[31m{text}\033[m")
    elif color == 'green':
        print(f"\033[0;32m{text}\033[m")
    elif color == 'yellow':
        print(f"\033[0;33m{text}\033[m")
    else:
        print(text)

def limpar(): # limpar o terminal (clear)
    os.system('clear')

def tryagain(user): #mensagem de jogar de novo, com o modulo subprocess para executar outra vez o programa com o seu path ( usando "os.path.realth(__file__)"   )
    resposta = (input(f"Olá {user}, quer jogar novamente? (s/n)"))
    resposta = resposta.lower()
    if resposta == 's':
        subprocess.call([sys.executable, os.path.realpath(__file__)] +
sys.argv[1:]) 
    if resposta == 'n':
        exit()
        

def win(): # PRINT quando se acerta
        limpar()
        printc('green', "BOA! Acertaste a palavra.")
        sleep(1)
        limpar()
        tryagain(os.getlogin()) # usar a função do modulo os "getlogin()" que a dá return ao utilizador do computador
       


def defeat(word): #PRINT quando se erra 6 vezes
        limpar()
        printc('red',f"☠☠ PERDESTE! A palavra era {word}")
        sleep(1)
        limpar()
        tryagain(os.getlogin())  # usar a função do modulo os "getlogin()" que a dá return ao utilizador do computador
      

def welcome(): # PRINT inicial com cronometro feito com loop
        limpar()
        cronometro = 3
        while cronometro > 0:

            
            print("-----------JOGO DA FORCA-----------")
            print("       O jogo vai começar em")
            print(f"                 {cronometro}")
            cronometro -= 1
            sleep(1)
            limpar()
            
        sleep(1)





def check(palavra, letra):# ver as posiçoes de index que esá a letra na palavra
        lugar = []
        for n in range (0, len(palavra)): # FOI VERIFICADO OS UNICODES E NÃO COLOCAMOS LETRAS COMO 'À' ou 'È' PORQUE NÂO HÁ NA WORDLIST 

            
            if (palavra[n] == 'Á' or palavra[n] == 'Ã') and letra == 'A':


                lugar.append(n)
                
            elif (palavra[n] == 'É' or palavra[n] == 'Ê') and letra == 'E' :
                lugar.append(n)
            elif palavra[n] == 'Í' and letra == 'I':
                lugar.append(n)
            elif (palavra[n] == 'Ó' or palavra[n] == 'Õ')and letra == 'O':
                lugar.append(n)
            elif palavra[n] == 'Ç' and letra == 'C' :
                lugar.append(n)
            elif palavra[n] == letra:
                lugar.append(n)
                
        return lugar
        


        
# lista com os bonecos para poder usar os erros com index
boneco = [
        """
        ______
        |     
        |
        |
        |
        |________

        """,
        """
        ______
        |     
        |    O
        |
        |
        |________

        
        """,
        """
        ______
        |     
        |    O
        |    |
        |
        |________
        """,
        """
        ______
        |     
        |    O
        |   /|
        |
        |________
        """,
        """
        ______
        |     
        |    O
        |   /|\\
        |
        |________
        """,
        """
        ______
        |     
        |    O
        |   /|\\
        |   /
        |________
        """,
        """
        ______
        |     
        |    O
        |   /|\\
        |   / \\
        |________
        """
    ]



def main():
    from wordlist import words1, words2
    
    # Descomente a linha que interessar para testar
    #words = words1              # palavras sem acentos nem cedilhas.
    words = words2             # palavras com acentos ou cedilhas.
    #words = words1 + words2    # palavras de ambos os tipos
    
    # Escolhe palavra aleatoriamente
    secret = random.choice(words).upper()
    
   
    letraserradas = []
    erros = 0


    welcome() 

    
    underlines = list("_"* len(secret))


    while  erros <= 6: # menor ou igual a 6 para ser possivel ver o boneco completo 
        
        limpar()
        
        printc('yellow',f"{boneco[erros]}")
        print(f"ERROS: {erros} | Letras Erradas : \033[31m{' '.join(letraserradas)}\033[m \n\n")
        
        
        if erros == 6:
            defeat(secret)
            break
            
        if not "_" in underlines:
            win()
            break
        

        listtostring =  ' '.join(underlines) 
        print(listtostring)





        letra = str(input("\n\n\nAposta?  "))

    

        if letra.isalpha() and len(letra) == 1: # só aceita se for só 1 letra
            
            letra = letra.upper() # força sempre a ficar em letra maiuscula, mesmo já sendo, continua 
            
            if letra in letraserradas: #verifica se a letra está na lista das letras que ja foram usadas e são erradas, não acrescentando à quantidade de erros 
                print("Essa letra foi usada e está errada")
                sleep(0.8)
                
            else:

                
                
                espaços = check(secret, letra) # ver a posição da letra na palavra
                if espaços:
                    
                    for m in espaços:
                        underlines[m] = secret[m] # substituir aos underlines

                else:

                    letraserradas.append(letra) # se não tiver na palavra a letra, acrescenta à lista de letras erradas 
                    erros += 1 # e aumenta o numero de erros, fazendo com que o boneco mude porque o index da lista do boneco também mudará 
            
        
        else: 
            limpar()

            print("INPUT NÃO SUPORTADO")
            sleep(0.85)
            limpar()
            



if __name__ == "__main__":
    main()

