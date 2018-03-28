.data
msg1:.asciiz "The number read is:\n"
msg2:.asciiz "\nThe string read is:\n"
msg3:.asciiz "Please enter the number to be read:\n"
msg4:.asciiz "Please enter the string to be read:\n"


.text
.globl main
main:

li $v0, 4		#to disp msg3
la $a0, msg3
syscall

li $v0 ,5		#to read number
syscall
move $t0, $v0


li $v0, 4		#to display msg4
la $a0, msg4
syscall

li $v0 ,8		#to read string
move $t1, $v0
syscall


li $v0, 4		#to display msg1
la $a0, msg1
syscall


li $v0, 1		#to display integer read
move $a0,$t0
syscall

li $v0, 4		#to display msg2
la $a0, msg2
syscall

			#to display string read
move $a0, $t1
li $v0,4
syscall

li $v0, 10
syscall


