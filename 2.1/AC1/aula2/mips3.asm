	.data
str1: .asciiz "Uma string qualquer"
str2: .asciiz "AC1 – P"
	.eqv print_string,4
	.text
	.globl main
	
main:  	la $a0,str1 # instrução virtual, decomposta pelo
		# assembler em 2 instruções nativas
	ori $v0,$0,print_string # $v0 = 4
	syscall # print_string(str2); 

	jr $ra