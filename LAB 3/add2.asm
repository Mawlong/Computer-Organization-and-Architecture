#calculating the sum of two numbers stored in memory and displaying it 

.data

	abc :.word 5
	def :.word 7
	ghi :.word 0
	line :.asciiz "The sum of the nos is: \n"

.text
.globl main
main:

	lw $t0, abc
	lw $t1, def
	
	add $t2, $t0, $t1	
	sw $t2, ghi
	
	li $v0, 4
	la $a0, line
	syscall
	
	li $v0, 1
	lw $a0, ghi	
	syscall
	
	li $v0, 10 
	syscall