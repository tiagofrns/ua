# i = $t0
# array = $t1
# &array[0] = $t2
# k = $t3 = 4
# j = $t4

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
	
	
	li $t0,0 # i = 0
	
while:	bge $t0, 12,endw #for(i=0; i < SIZE; i++)



	la $t1, array # t1 = array
	add $t2, $t1, $t0 # t2 = array[i]
	lw $a0, 0($t2)
	li $v0, print_string
	syscall
	
	li $a0,'\n'
	li $v0, print_char
	syscall


	addi $t0,$t0,4 # i++;
	j while

endw:
	jr $ra

	
	
