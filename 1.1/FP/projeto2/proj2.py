import requests
from requests.structures import CaseInsensitiveDict
import os
from time import sleep
import csv
import json
def clear(): # Limpa o terminal com base no sistema operacional atual
    if os.name =='nt': # Verifica se é Windows

        os.system('cls') # Comando "cls" para limpar o terminal no Windows
    else:
        os.system('clear') # Comando "clear" para limpar o terminal no Linux

def colors(color, text): # Retorna o texto formatado com as cores específicas no terminal
    if color == 'red':
        return f"\033[1;31m{text}\033[m"
    elif color == 'green':
        return f"\033[1;32m{text}\033[m"
    elif color == 'yellow':
        return f"\033[1;33m{text}\033[m"
    else:
        return text # Retorna o texto sem formatação de cor
    


def organizarFicheiro(filename):
    file = open("categories.txt", 'r', encoding="UTF-8")
    cat = {}

    for line in file:
        particoes = line.strip().split(".")
        dictCloned = cat
        for particao in particoes:
            if not particao in dictCloned:
                dictCloned[particao] = {}
            dictCloned = dictCloned[particao]
           
    return cat           


    file.close()

def resolverDados():
    None


            

def checkLatLong(tipo, number):
    if tipo == "latitude":
        while  number.isalpha():
            clear()
            print("Latitude inválida")
        
            number = input("latitude: ")
    elif tipo == "longitude":        
        while  number.isalpha():
            clear()
            print("longitude inválida")
        
            number = input("longitude: ")
    return number
    
        

def checkRaio(raio):
    while True:
        if raio.isalpha() :
            clear()
            print("Raio inválido(tem de ser digito)")
            raio = input("Raio: ")
            
        elif float(raio) < 0:   
            clear()
            print("Raio inválido(tem de ser positivo)")
            raio = input("Raio: ")
        else:
            break

    return raio



def tratarEscolhas(atracaoInput, diccategorias, lista_total, lista_atual = None):
        
        if lista_atual is None:
            lista_atual = []

        

        print(colors("green",f"                >>> Estás em {atracaoInput} <<<"))
        print("                 --------------------------------")
        print()
        #print("\n",( ' | '. join(diccategorias[atracaoInput])))

        subcatInput = input("Escolhe as subcategorias que queres (separado por virgulas)(senão quiseres escolher mais dá enter):").replace(" ", "")
        lista_subcatInput = subcatInput.split(",")
        if subcatInput == '':
            if lista_total == []:
                return atracaoInput
            else:
                return lista_total
        for subCat in lista_subcatInput:
            
            if diccategorias[atracaoInput][subCat] == {}:
                
                if not atracaoInput in lista_atual:
                    lista_atual.append(atracaoInput)
                
                lista_atual.append(subCat)
                
                lista_total.append('.'.join(lista_atual))
                lista_atual = []
                
                
            else:
                
                
                
                lista_atual = [atracaoInput]
                lista_atual_nova = lista_atual + [subCat]
                print(lista_atual_nova)

                tratarEscolhas(subCat, diccategorias[atracaoInput], lista_total, lista_atual_nova)
       
        return lista_total
            
        





def main():


    categorias = organizarFicheiro('categories.txt')
    
    #print(categorias)

    LatitudeLongitude = input("latitude e longitude: (separado por virgulas)")
     
    latitude, longitude = LatitudeLongitude.split(",")
    latitude = checkLatLong("latitude",latitude)
    longitude = checkLatLong("longitude",longitude)
    distancia = input("num raio de (em kms): ")
    distancia = checkRaio(distancia)
    clear()
    dadosInput = f"Latitiude : {latitude} | Longitude: {longitude} | Raio de {distancia}km"
    lista_temas = categorias.keys()




    print(f"""


██████╗  ██████╗ ███╗   ██╗████████╗ ██████╗ ███████╗    ██████╗ ███████╗    ██╗███╗   ██╗████████╗███████╗██████╗ ███████╗███████╗███████╗███████╗
██╔══██╗██╔═══██╗████╗  ██║╚══██╔══╝██╔═══██╗██╔════╝    ██╔══██╗██╔════╝    ██║████╗  ██║╚══██╔══╝██╔════╝██╔══██╗██╔════╝██╔════╝██╔════╝██╔════╝
██████╔╝██║   ██║██╔██╗ ██║   ██║   ██║   ██║███████╗    ██║  ██║█████╗      ██║██╔██╗ ██║   ██║   █████╗  ██████╔╝█████╗  ███████╗███████╗█████╗  
██╔═══╝ ██║   ██║██║╚██╗██║   ██║   ██║   ██║╚════██║    ██║  ██║██╔══╝      ██║██║╚██╗██║   ██║   ██╔══╝  ██╔══██╗██╔══╝  ╚════██║╚════██║██╔══╝  
██║     ╚██████╔╝██║ ╚████║   ██║   ╚██████╔╝███████║    ██████╔╝███████╗    ██║██║ ╚████║   ██║   ███████╗██║  ██║███████╗███████║███████║███████╗
╚═╝      ╚═════╝ ╚═╝  ╚═══╝   ╚═╝    ╚═════╝ ╚══════╝    ╚═════╝ ╚══════╝    ╚═╝╚═╝  ╚═══╝   ╚═╝   ╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚══════╝
                                            {colors('green', dadosInput)}    
                                                                                                                                                                  


    """)
    print(f"""
        {' | '.join((lista_temas))}
    
    """)





    lista_atracoes_input = []
    
    atracoes = input("Tipos de atrações (escolhe um a um, acaba quando deres Enter): ")
    
    while not atracoes == "": 
        
        while not atracoes in lista_temas:
           
        
            print("Tem de ser um tema listado a cima!")
            sleep(1)
            clear()
            print(' | '. join(lista_temas))
        
            atracoes = input("\n\nTipos de atrações (escolhe um a um, acaba quando deres Enter): ")
            
    
        else:
            print("atração adicionada")
            
            lista_atracoes_input.append(atracoes)
            atracoes = input("Tipos de atrações (escolhe um a um, acaba quando deres Enter): ")
    
    else:
        print(f"Lista de atrações feita!")
        clear()
        print("Lista:", ' | '.join(lista_atracoes_input))
        sleep(2)
        clear()
        
    lista_atracoes_total = []
    
    for atracaoInput in lista_atracoes_input:
        lista_total = tratarEscolhas(atracaoInput, categorias, [])
        lista_atracoes_total.append(lista_total)



    #print(lista_atracoes_total,"\n\n")
   

    lista_das_atracoes = [','.join(sublista).replace("'", "") for sublista in lista_atracoes_total]
    ListaFinal = []
    for atracoesDaLista in lista_das_atracoes:
        ListaFinal.append(atracoesDaLista)
   
    clear()
    print(colors('red',"""
    
    

                      |           _/        |                                              |                    |        
   __|   _ \   __ \   __|   _ \  |   |   _` |   _ \        _ \  __ \    __|   _ \   __ \   __|   __|  _` |   _` |   _ \  
  (     (   |  |   |  |     __/  |   |  (   |  (   |       __/  |   |  (     (   |  |   |  |    |    (   |  (   |  (   | 
 \___| \___/  _|  _| \__| \___| \__,_| \__,_| \___/      \___| _|  _| \___| \___/  _|  _| \__| _|   \__,_| \__,_| \___/  
                                                                                                                         


    
    
    """))
    
    lista = ','.join(ListaFinal)
    #url = f"https://api.geoapify.com/v2/places?categories={lista}&filter=circle:{latitude},{longitude},{distancia*1000}&bias=proximity:{latitude},{longitude}&limit=20&apiKey=ec713e7d959a4e228e297c2874a18f15"
    url = f"https://api.geoapify.com/v2/places?categories={lista}&filter=circle:{latitude},{longitude},{distancia}000&bias=proximity:{latitude},{longitude}&limit=20&apiKey=ec713e7d959a4e228e297c2874a18f15"
  
    response = requests.get(url)
    


    counter = 0
    if response.status_code == 200:
        
        data = response.json()
        places = data['features']
        for place in places:
            propriedade = place['properties']
            if propriedade['name']:
                print(f">>>>>Nome: {propriedade['name']}\n País: {propriedade['country']}\n Morada: {propriedade['formatted']}\n Tipo de atração: {propriedade['categories']} \n Latitude: {propriedade['lat']}\n Longitude: {propriedade['lon']}\n Distancia : {propriedade['distance']}m\n\n")
                counter += 1
        print(f"{counter} atrações encontradas")
    else:
        print("Erro no servidor!")


    
    
if __name__ == '__main__':
    main()    