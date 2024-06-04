# comparar dois numeros e devolver o maior

numero1 = input("1? ")
numero2 = input("2? ")
numero3 = input("3? ")


def max2(x ,y):
	if x > y:
		return x
	else:
		return y


def max3 (a,b,c):
	mx2 = max2(a,b)

	return max2(mx2,c)
	

max2(numero1, numero2)
mx3 =  max3(numero1, numero2, numero3)
print(f"{mx3} é o numero maior")