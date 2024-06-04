import csv
import time
import psutil
import sys



def main(args):

    

    ficheiro = open("csv_ex/stats.csv", "w")
    writer = csv.DictWriter(ficheiro, fieldnames=["time", "data-sent", "data-received", "%-cpu"])
    writer.writeheader()
    sec = 1
    atual = time.time()
    while True:
        a = time.time() - atual
        print(float(a))
        if sec == 61:
            break
        if (float(a)) < 1.001 and float(a) > 1:
            atual = 0
            writer.writerow({"time": sec, "data-sent" : psutil.net_io_counters()[0], "data-received": psutil.net_io_counters()[1], "%-cpu": psutil.cpu_percent(interval=1)} )
            sec += 1
        
    ficheiro.close()
    











main(sys.argv)