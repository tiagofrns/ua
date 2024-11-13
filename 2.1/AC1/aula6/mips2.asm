# SIZE = $t0
# p = $t1
# *p = $t2
# **p = $t3
# pultimo = $t4
#*pultimo = $t5
#**pultimo = $t5


	.data
	.eqv SIZE,3
	.eqv print_string,4
	.eqv print_char,11
str1:	.asciiz "Array"
str2:	.asciiz "de"
str3:	.asciiz "ponteiros"
	
array:	.word str1,str2,str3
	.text
	.globl main

main:
	la $t1,array # t1 = array
	li $t0, SIZE # t0 = SIZE
	or $t4, $t1, $t0 # pultimo = array + SIZE;
	mul $t4,$t4,4
while:	
	bge $t1,$t4,endw # for(; p < pultimo; p++) {
	
	lw $t2, 0($t1) # t2 = *p
	
	move $a0,$t2  		#print_string(*p);
	li $v0, print_string
	syscall
	
	addi $t1,$t1,4 # p++

	j while
endw:
	jr $ra

	
	
