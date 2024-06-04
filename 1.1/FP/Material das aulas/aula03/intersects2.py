"""
Considere que a, b são os extremos de um intervalo real [a, b[
e que c, d são os extremos de outro intervalo [c, d[.
Complete a função para verificar se os intervalos se itersectam.
Admita que a < b e c < d.  (A função já verifica isso.)

Consider that a, b are the endpoints of an interval of values [a, b[
and c, d are the endpoints of another interval [c, d[.
Complete the function to check if the intervals intersect each other.
You may assume that a < b and c < d.
"""

def intersects(a, b, c, d):
   # Estas instruções assert especificam e verificam o domínio da função.
   assert a < b
   assert c < d
   

   if (b > c) and (a != d):
      return True
   else:
      return False

