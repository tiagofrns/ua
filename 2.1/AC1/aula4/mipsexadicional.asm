
# Mapa de registos
# num: $t0
# p: $t1
# *p: $t2 

    .data
    .eqv SIZE, 20            
    .eqv read_string, 8       
    .eqv print_string, 4      
str: .space 21             
str1: .asciiz "Introduza uma string:"
     .text 
    .globl main

main:
	la $a0,str1
	li $v0, print_string #print_string("Introduza uma string: ");
	syscall
	
	la $a0, str
	li $a1, SIZE 		# read_string(str, SIZE);
	li $v0,read_string
	syscall 
	
	move $t1,$a0 	# p = str;
	
while:	lb $t2, 0($t1) # t2 = *p
	beq $t2, '\0', endw  # while (*p != '\0')  {
	  
	li $t5, 0x20 # t5 = a - A
	sub $t3, $t2, $t5 # t3 = *p- t5
	sb $t3, 0($t1)
	addi $t1, $t1, 1 #p++;
	j while 	# }
endw:	
	li $v0, print_string
	la $a0, str
	syscall
	
	
	
