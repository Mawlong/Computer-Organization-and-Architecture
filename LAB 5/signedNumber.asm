#signed numbers
#refer to unsigned program

.data
.text
.globl main

main:

	li $t1, 1
	li $t2, 2
	
	slt $t0, $t1, $t2
	
	li $t2, 0xF1000000   #when MSB is F it is -ve
	li $t3, 0x00000001
	
	slt $t0, $t3, $t2	# but since slt w/o u therefore signed

	li $v0, 10
	syscall
