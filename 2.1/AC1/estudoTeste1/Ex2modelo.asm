
# i: $t0
# v. $t1
# &(val[0]): $t2
	# *(val[0]) : $t3
	# &(val[i]) : $t4
	# *(val[i]) : $t5




	.data
	.eqv read_int,5
	.eqv print_int,1
	.eqv print_char,11
	.eqv print_string,4
	.eqv SIZE,8
	.align 2
val:	.word 	8,4,15,-1987,327,-9,27,16
	
str:	.asciiz "Result is: "

	.text
	.globl main
	
main:	li $t0,0 # i= 0
	li $t9, SIZE
	

do:	la $t2, val # t2 = &val[0]
	add $t4,$t2,$t0 # t4 = val + i = val[i]
	move $t1,$t4 # v = val[i]
	div $t6,$t9,2 #t6 = SIZE/2
	or $t7,$t0,$t6 # t7 = i + SIZE/2
	add $t5, $t2, $t7 # t5 = val[i + SIZE/2]
	move $t4, $t5 # val[i] = val[i + SIZE/2]
	move $t5,$t1 # val[i + SIZE/2] = v
	addi $t0,$t0,1 # i++
	blt $t0,$t6,do
	
	la $a0,str
	li $v0,print_string
	syscall
	li $t0,0 # i = 0
do1:
	
	
	
	
	
	
