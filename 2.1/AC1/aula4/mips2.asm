# Mapa de registos
# num: $t0
# p: $t1
# *p: $t2 

	.data
	.eqv SIZE, 20
	.eqv read_string,8
	.eqv print_int10,1
str: .space 21
	.text
	.globl main

main:

	li $t0,0 # num = 0
	
	la $a0,str
	li $a1,SIZE
	li $v0,read_string #read_string(str,SIZE)
	syscall 
	
	
	move $t1,$a0 # p = str;
	
while:	lb $t2,0($t1)     
	beq $t2,'\0',endw  # while( *p != '\0' ) {
if:	blt $t2,'0',endif # if( (*p >= '0') && (*p <= '9') {
	bgt $t2,'9',endif
	addi $t0,$t0,1		#num++;
	#		}
endif:	
	addi $t1,$t1,1 		#p++;
	j while
			# }
endw:	
	move $a0,$t0
	li $v0, print_int10  #print_int10(num);
	syscall		
	 