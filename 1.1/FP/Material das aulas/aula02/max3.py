# coding: utf-8
# This program finds the maximum of three numbers.

x1 = int(input("number? "))
x2 = int(input("number? "))
x3 = int(input("number? "))

mx=x1
if x2>mx:
	mx=x2
if x3>mx:
	mx=x3
	
print("Maximum:", mx)