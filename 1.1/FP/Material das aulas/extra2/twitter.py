# Este programa demonstra a leitura e utilização de dados de um ficheiro JSON
# com mensagens do Twitter.
# Modifique-o para resolver o problema proposto.

# O módulo json permite descodificar ficheiros no formato JSON.
# São ficheiros de texto que armazenam objetos compostos que podem incluir
# números, strings, listas e/ou dicionários.
import json
def counthastags(lst):
        counter = {}
    

        for item in lst:
            try:
                item.strip()
                if item[0] == '#':
                    
                    if item not in counter:
                        counter[item] = 0
                    counter[item] +=1
            except:
                None
        return counter    



def count(lst):
    counter = {}
    for item in lst:
        item.strip()
        if item not in counter:
            counter[item] = 0
        counter[item] +=1    
    return counter

def main():
    # Abre o ficheiro e descodifica-o criando o objeto twits.
    with open("twitter.json", encoding="utf8") as f:
        twits = json.load(f)
        words = []
        for twitt in twits:
            wordsline = twitt['text'].split(" ")
            words.extend(wordsline)
    # Analise os resultados impressos para perceber a estrutura dos dados.
    print(type(twits))       # deve indicar que é uma lista!
    print(type(twits[1]))    # cada elemento da lista é um dicionário.
    #print(twits[0].keys())   # mostra as chaves no primeiro elemento.

    # Cada elemento contém uma mensagem associada à chave "text":
    #print(twits[0]["text"])
    # print(words)
    print("PALAVRAS ORDENADAS POR ORDEM CRESCENTE DE NUMERO DE VEZES")
    #nvezesword = count(words)
    # print(nvezesword)
    #listanvezes = sorted(nvezesword.items(), key=lambda z:z[1])
    nvezeshastags = counthastags(words)
    a = sorted(nvezeshastags.items(), key=lambda z:z[1],reverse=True)
    for hastags in a:
        mais = "+" * hastags[1]*2
        print(f"|{hastags[0]} ({hastags[1]})                 {mais}|")


    

    # Algumas mensagens contêm hashtags:
    #print(twits[880]["text"])
   

if __name__ == "__main__":
    main()

