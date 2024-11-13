#i:	$t0
#lista:	$t1
#lista + i:	$t2
	.data
	.eqv SIZE,5
	.eqv print_string,4
	.eqv read_int,5
	.eqv print_int, 1
str:	.asciiz "\nIntroduza um numero: "
	.align 2
lista:	.space 20
	.text
	.globl main
main:
	la $a0,str #  t2 = str
	li $t0, 0  #  i = 0

while:	
	bge $t0, SIZE, endw  # for(i=0; i < SIZE; i++){
	

	li $v0, print_string
	syscall 	# print_string(str);
	la $t1, lista
	
	
	li $v0, read_int
	syscall
	add $t2,$t1,$t0 # t2 = lista[i]
	sb $v0, 0($t2) # lista[i] = read_int();
	addi $t0, $t0, 1 # i++;	
	j while
	
endw:	li $t0, 0  #  i = 0
while1:
	bge $t0, SIZE, endw1  # for(i=0; i < SIZE; i++){
	
	add $t2,$t1,$t0 # t2 = lista[i]
	lb $a0, 0($t2)
	li $v0,print_int
	syscall
	addi $t0, $t0, 1 # i++;
	j while1
endw1:
	jr $ra
	
	
	