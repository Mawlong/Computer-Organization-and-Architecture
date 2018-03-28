#unsigned numbers

.data
.text
.globl main

main:

	li $t1, 1
	li $t2, 2
	
	sltu $t0, $t1, $t2 #u stands for unsigned
	
	li $t2, 0xF1000000   
	li $t3, 0x00000001
	
	sltu $t0, $t2, $t3 #u stands for unsigned

	li $v0, 10
	syscall
