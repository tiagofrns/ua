# num = $t0
# i = $t1
#inicial da string = $t2
#endereço string[i] = $t3
#valor string[i] = $t4



	.data
	
	.eqv SIZE,20
	.eqv read_string,8
	.eqv print_int,1
str:	.space 20
	
	.text
	.globl main
	
main:
	li $t1,0 # i = 0
	li $t0,0 #num = 0
	
	la $a0, str
	li $v0,read_string
	syscall
	
	move $t2,$a0 
	
while:
	add $t3,$t2,$t1 # t3 = &string[i]
	lb $t4,0($t3) # t4 = *string[i]
	beq $t4,'\0',endw
	
if:	
	blt $t4,'0',endif
	bgt $t4,'9',endif
	
	addiu $t0,$t0,1 #num++
	
endif:
	addiu $t1,$t1,1 # i++
	j while
	
endw:
	li $v0,print_int
	move $a0, $t0
	syscall
	jr $ra

	
	
	
