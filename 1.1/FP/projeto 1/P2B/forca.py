# P2B
AUTORES = [79319, 120271]



#importar modulos
import os 
import random 
import subprocess 
import sys
from time import sleep


# Lista representando as diferentes fases da figura do jogo da forca (hangman), onde cada elemento da lista corresponde a um nº específico de erros.
hangman = [
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





def colors(color, text): # Retorna o texto formatado com as cores específicas no terminal
    if color == 'red':
        return f"\033[1;31m{text}\033[m"
    elif color == 'green':
        return f"\033[1;32m{text}\033[m"
    elif color == 'yellow':
        return f"\033[1;33m{text}\033[m"
    else:
        return text # Retorna o texto sem formatação de cor
    
    




def clear(): # Limpa o terminal com base no sistema operacional atual
    if os.name =='nt': # Verifica se é Windows

        os.system('cls') # Comando "cls" para limpar o terminal no Windows
    else:
        os.system('clear') # Comando "clear" para limpar o terminal no Linux



def welcome(): # Imprime uma contagem regressiva com um loop antes de começar o jogo
    clear()
    count = 3
    while count > 0:  
        print("-----------JOGO DA FORCA-----------\n")
        print("       O jogo vai começar em")
        print(f"                {count}")
        count -= 1
        sleep(1.2)
        clear()
    sleep(1)


def letter_positions(word, letter): # Devolve as posições de índice onde uma determinada letra ocorre numa palavra, tendo em conta casos especiais de letras acentuadas e "Ç"
        positions = []
        for n in range (0, len(word)):      
            if (word[n] == 'Á' or word[n] == 'Ã' or word[n] == 'À') and letter == 'A':
                positions.append(n)
            elif (word[n] == 'É' or word[n] == 'Ê' or word[n] == 'È') and letter == 'E':
                positions.append(n)
            elif (word[n] == 'Í' or word[n] == 'Ì') and letter == 'I':
                positions.append(n)
            elif (word[n] == 'Ó' or word[n] == 'Õ') and letter == 'O':
                positions.append(n)
            elif word[n] == 'Ù' or word[n] == 'Ú' and letter == 'U':
                positions.append(n)
            elif word[n] == 'Ç' and letter == 'C':
                positions.append(n)
            elif word[n] == letter:
                positions.append(n)
        return positions


def win(word): # Imprime uma mensagem no terminal quando o jogador acerta a palavra
    clear()
    print(colors('green', "BOA! Acertaste a palavra."))
    print(f">>>>{word}<<<<")
    sleep(1.5)
    clear()
    try_again((os.getlogin()).capitalize()) # Utiliza a função do módulo os "getlogin()" para devolver o nome do utilizador do computador e capitalize() para colocar a primeira letra maiuscula 
       

def loss(word): # Imprime uma mensagem no terminal quando se erra 6 vezes
    clear()
    print(colors('red', f"☠  PERDESTE! ☠ \n\nA palavra era {word}"))
    sleep(3)
    clear()
    try_again((os.getlogin()).capitalize()) # Utiliza a função do módulo os "getlogin()" para devolver o nome do utilizador do computador e capitalize() para colocar a primeira letra maiuscula


def try_again(user): # Pergunta ao utilizador se deseja jogar novamente, utilizando o módulo subprocess para reiniciar o programa
    response = (input(f"Olá {user}, quer jogar novamente? (s/n)")).lower()
    if response == 's':
        clear()
        print
        print("1- Palavra aleatória")
        print("2- Lista de palavras personalizadas:")
        print("3- Sair do programa")
        QualPalavra = int(input("Escolha um número:"))
        
        if QualPalavra == 1:
            subprocess.call([sys.executable, os.path.realpath(__file__)]) 
        elif QualPalavra == 2:
            
            QualPalavra2 = input("Lista nova: ")

            QualPalavra2Lista = QualPalavra2.split(" ")
            
           
            subprocess.call([sys.executable, os.path.realpath(__file__)] + QualPalavra2Lista) 
            # "sys.executable" retorna o interpretador Python atual (na mesma versão) que foi utilizado antes
            # "os.path.realpath(__file__)" fornece o caminho do ficheiro que está a ser executado
            # o "QualPalavra2list" vai ter a palavra para colocar como argumento no comando a ser executado
            # "subprocess.call()" executa o Python com o mesmo interpretador utilizado antes, juntamente com o mesmo ficheiro e com um argumento (a palavra)
        else:
                exit()


        

    if response == 'n':
        exit()


def main():
    from wordlist import words1, words2
    
    # Descomente a linha que interessar para testar
    #words = words1              # palavras sem acentos nem cedilhas
    #words = words2             # palavras com acentos ou cedilhas
    words = words1 + words2    # palavras de ambos os tipos






    
    if len(sys.argv) > 1:       # correr o programa com palavras dadas:
        wordsNaoTestadas = sys.argv[1:]    #   python3 forca.py duas palavras
        words = []
        wordsInvalidas = 0 # quantidade de palavras que não são só letras

        for i in wordsNaoTestadas:
            if i.isalpha(): # ver se todas as palavras são só letras
                words.append(i)
            else:    
                wordsInvalidas +=1 # sempre que naõ for só letras acrescentar à variavel
        if wordsInvalidas > 0: 

            print(f"Foram removidas {wordsInvalidas} porque não eram só letras...")    
            sleep(1.5)    





    secret = random.choice(words).upper() # Escolhe palavra aleatoriamente
    
    welcome() # executa a funçao welcome
    
    underlines = list("_"* len(secret)) # Cria uma lista de underlines com o mesmo comprimento que a string "secret"


    wrong_letters = []
    errors = 0
    
    while errors <= 6: # Loop enquanto o nº de erros for menor ou igual a 6 (acrescenta-se o igual para ser possível ver o hangman completo) 
        
        
        
        clear()
        print(colors('yellow', f"{hangman[errors]}"))
        print(f"ERROS: {errors} | Letras erradas: {colors('red', ' '.join(wrong_letters))} \n\n") # Imprime o nº de erros, seguido por uma lista de letras erradas a vermelho, separadas por um espaço
        



        if errors == 6: # Se o nº de erros for igual a 6, chama a função "loss" e termina o loop
            loss(secret)
            break
        



        if not "_" in underlines: # Se não houver mais underlines na lista, chama a função "win" e termina o loop
            win(secret)
            break
        



        list_to_string =  ' '.join(underlines) # Converte a lista de "underlines" numa única string, onde cada elemento da lista é separado por um espaço


        print(list_to_string)
       
        letter = str(input("\n\n\nAposta? "))
        
        if letter.isalpha() and len(letter) == 1: # Aceita apenas um caractere alfabético

            letter = letter.upper() # Garante que a letra seja maiúscula 

            if letter in wrong_letters: # Verifica se a letra já foi utilizada e está incorreta, não acrescentando à quantidade de erros 
                print("Essa letra já foi usada e está errada")
                sleep(1.2)
            
            else:
                spaces = letter_positions(secret, letter) # Obtém a posição da letra na palavra
                if spaces:
                    for m in spaces:
                        underlines[m] = secret[m] # Substitui os underlines pelas letras corretas da palavra original
                else:
                    wrong_letters.append(letter) # Adiciona a letra incorreta à lista de letras erradas 
                    errors += 1 # Aumenta o nº de erros para atualizar a figura do hangman        
       
        else: 
            clear()
            print("INPUT NÃO SUPORTADO") # Mensagem de erro para entradas não suportadas
            sleep(1)
            clear()
            

if __name__ == "__main__":
    main()
