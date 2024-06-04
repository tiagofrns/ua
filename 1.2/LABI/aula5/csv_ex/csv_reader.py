import csv
#print(csv.__file__)
import sys
import time
start_time = time.time()

def media(lista):
    valores = 0
    count = 0
    for valor in lista:
        valores += float(valor)   
        count += 1
    return valores/count



def main(argv):
    fich_csv = open(argv[1], "r")
    csv_reader = csv.reader(fich_csv, delimiter=",")
    
    temps = []
    for row in csv_reader:
        if row[0] == "Temperature":
            temp = row[2]
            temps.append(temp)
    #print(temps)
    print(f"Valor máximo: {max(temps)} | Valor minimo: {min(temps)} | Média: {media(temps)}")
    fich_csv.close()






main(sys.argv)
print("--- %s seconds ---" % (time.time() - start_time))

