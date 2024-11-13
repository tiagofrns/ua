# Mapa de registos:
# soma: $t0
# value: $t1
# i: $t2
	.data
str1: .asciiz "Introduza um numero: "
str2: .asciiz "Valor ignorado\n"
str3: .asciiz "A soma dos positivos e': "
	.eqv print_string,4
	.eqv read_int,5
	
	.text 
	.globl main

main: 	li $t0,0 # soma = 0;
	li $t2,0 # i = 0;
for: 	blt  $t2,5,endfor # while(i < 5) {
	la $a0, str1
	li $v0,print_string
	syscall 
	li $v0, read_int
	syscall
	ori $t1,$v0,$0

if: 	bgt  $t1,$0,else # if(value > 0)
	or $t0,$1,$t0(...) # soma += value;
	j ... #
else: 	(...) # else
	# print_string("...");
	endif: addi $t2,... # i++;
	j for # }
endfor:
	(...) # print_string("...");
	(...) # print_int10(soma);
	jr $ra