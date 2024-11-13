#p:	$t0
#lista:	$t1
#lista + i:	$t2
	.data
	.eqv SIZE,10
	.eqv print_string,4
	.eqv print_int,1
str:	.asciiz "\nConteudo do array:\n"
str1:	.asciiz ":"

	
	.word 8,-4,3,5,124,-15,87,9,27,15
lista:	
	.text
	.globl main
	
main:
	la $a0,str
	li $v0,print_string
	syscall 	# PRINT_STRING
	
	la $t0,lista
	
	addiu $t4,$t0,40

while:	bge $t0,$t4,endw
	lw $a0,0($t0)
	li $v0,print_int
	syscall
	la $a0,str1
	li $v0,print_string
	syscall
	
	
	addiu $t0,$t0,4
	
	j while
	


endw:
	jr $ra
	
	