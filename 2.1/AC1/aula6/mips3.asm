# i = $t0
# j = $t1
# array = $t2
# *array[i] = $t3
# &array[i] = $t4
# *array[i][j] = $t5
# &array[i][j] = $t6

	.data
	.eqv SIZE,3
	.eqv print_string,4
	.eqv print_char,11
	.eqv print_int,1
	
str1:	.asciiz "Array"
str2:	.asciiz "de"
str3:	.asciiz "ponteiros"
str4:	.asciiz "\nString #"
str5:	.asciiz  ": " 

array:	.word str1,str2,str3
	
	
	.text
	.globl main

	
main:	
	li $t0,0 # i = 0
	la $t2,array # t2 = array

while:	bge $t0, SIZE, endw #	for(i=0; i < SIZE; i++){
	sll $t7, $t0, 2

	la $a0,str4 
	li $v0, print_string #print_string( "\nString #" );
	syscall
	
	
	move $a0, $t0 # a0 = i
	li $v0, print_int #print_int10( i );
	syscall 
	
	la $a0,str5 
	li $v0, print_string # print_string( ": " );
	syscall
	
	li $t1,0  # j = 0;
	
	
while1:	
	
	addu $t4, $t2, $t7 #  	t4 = &array[i] = array + i
	lw $t3, 0($t4) # 	t3 = *array[i] =  &array[i][0]
	addu $t6, $t3,$t1 # 	t6 = &array[i][j] = array + i + j
	lb $t5, 0($t6) # 	t5 = *array[i][j]
	beq $t5, '\0', endw1	
	
	move $a0,$t5 		#
	li $v0, print_char 	#	
	syscall
	
	li $a0, '-'
	syscall
	addi $t1, $t1 ,1 # i++;
	j while1
	

endw1:	
	addi $t0, $t0 ,1 # i++;
	j while



endw:
	jr $ra
	
