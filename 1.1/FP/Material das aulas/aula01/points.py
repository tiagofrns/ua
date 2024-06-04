import math as m
x1 = float(input("x1? "))
y1 = float(input("y1? "))
x2 = float(input("x2? "))
y2 = float(input("y2? "))

p1 = (x1, y1)
p2 = (x2, y2)

print("Ponto 1: ", p1)
print("Ponto 2: ", p2)

d = m.sqrt((x2 - x1)**2 + (y2-y1)**2)
print("Distância entre os 2 pontos = ", d)