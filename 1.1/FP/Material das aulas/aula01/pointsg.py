# This program uses matplotlib to graphically get two points.

import matplotlib.pyplot as plt
import math as m

plt.axis([-4, 4, -3, 3])
plt.axis("equal")
plt.grid("on")
plt.title("Choose 2 points!")
p1, p2 = plt.ginput(2)

# extract coords from points
x1, y1 = p1
x2, y2 = p2

print("Ponto 1:", p1)
print("Ponto 2:", p2)

# Compute and print the distance between the points!
d = m.sqrt((x2 - x1)**2 + (y2-y1)**2)
print("Distância entre os 2 pontos = ", d)

