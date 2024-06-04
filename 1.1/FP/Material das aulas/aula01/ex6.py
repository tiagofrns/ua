import math as m
a = float(input("Cateto adjacente: "))
b = float(input("Cateto oposto: "))
c = m.hypot(a, b) #m.hypot é usada para calcular a hipotenusa
angulo_em_graus = m.degrees(m.acos(a/c))
print("Hipotenusa = {} \nÂngulo entre A e a hipotenusa = {}". format(c, angulo_em_graus))

#ou

a = float(input("Cateto adjacente: "))
b = float(input("Cateto oposto: "))
c = m.sqrt(m.pow(a, 2) + m.pow(b, 2)) #m.sqrt é usada para calcular a raiz quadrada de um nº; m.pow é usada para calcular uma potência
angulo_em_graus = m.degrees(m.acos(a/c))
print("Hipotenusa = {} \nÂngulo entre A e a hipotenusa = {}". format(c, angulo_em_graus))

#ou

a = float(input("Cateto adjacente: "))
b = float(input("Cateto oposto: "))
c = m.sqrt(a**2 + b**2)
angulo_em_graus = m.degrees(m.acos(a/c))
print("Hipotenusa = {} \nÂngulo entre A e a hipotenusa = {}". format(c, angulo_em_graus))