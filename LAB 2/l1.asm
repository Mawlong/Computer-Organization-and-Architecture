.data

length:.word 12
breath:.word 15
newline:.asciiz "\n"
area:.word 0

.text
.globl main
main:

lw $t0, length
lw $t1, breath

mul $t2,$t0,$t1

sw $t2, area
move $v0,$t2
li $v0,4
la $a0, newline
syscall

li $v0, 10
syscall