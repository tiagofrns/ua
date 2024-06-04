# calcula a nota final (inteira) de um aluno de FP
import math
CTP = int(input("nota CTP: "))
CP = int(input("nota CP: "))
rnm = False
NF = (CTP*0.3) + (CP*0.7)
if (CTP < 65 or CP < 65) and NF < 66:
    print("Reprovado por nota minima")
    rnm = True
if rnm == True or NF < 100:
	ATPR = int(input("nota ATPR: ")) 
	APR = int(input("nota APR: ")) 
	mxtp = max(CTP,ATPR)*0.3 #formula para calcular a nota de recurso pelas notas máximas
	mxp = max(CP,APR)*0.7#formula para calcular a nota de recurso pelas notas máxima
	NF = mxtp + mxp
print(NF)
	
	
