#void main(void)
#{
#    int num, i;
#    int order = -1;
#
#    num = read_int();
#    i = 0;
#    do {
#        if ((num & 1) == 1)		num: 	$t0
#            order = i;			i:   	$t1
#        num = num >> 1;		order:	$t2
#        i++;
#    } while (i < 32);

#    if (order != -1)
#        print_int10(order);
#    else
#        print_string("No set bits\n");
#}


	.data
	.eqv read_int,5
	.eqv print_int,1
	.eqv print_string,4
str:	.asciiz "Enter a number: "
str1:	.asciiz "No set bits\n"
	.text
	.globl main

main:	li $t2,-1 #  int order = -1;
	li $v0, read_int
	syscall
	move $t0,$v0 # num = read_int();
	li $t1,0  # i = 0;
	
do:
	andi $t3, $t0,1 # (num & 1)
if: 	
	bne $t3,1,endif
	move $t2,$t1 # order = i;
	j if1
	

endif:
	srl $t0,$t0,1 	 # num = num >> 1
	addi $t1,$t1,1 #  i++;
	blt $t1,32,do
	


if1:	beq $t2,-1,endif1 
	move $a0,$t2 
	li $v0,print_int
	syscall 
	jr $ra
endif1:
	la $a0, str1
	li $v0, print_string
	syscall
	jr $ra
