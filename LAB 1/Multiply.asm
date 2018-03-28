.data
num1:.word 100
num2:.word 9
msg1:.asciiz "The result is"

.text
.globl main
main:

lw $t1, num1
lw $t2, num2
mul $t3,$t1,$t2

li $v0, 4
la $a0, msg1
syscall

li $v0, 1
move $a0,$t3
syscall

li $v0, 10
syscall