#calculate the volume of a cuboid

.data

volume :.word 0
breadth :.word 0
length :.word 0
height :.word 0

line :.asciiz "\nThe volume is: "
len :.asciiz "enter the length: \n"
bre :.asciiz "enter the breadth: \n"
hgt :.asciiz "enter the height: \n"
multi :.asciiz " * "
equal :.asciiz " = "

.text
.globl main
main:

li $v0, 4
la $a0, len
syscall

li $v0, 5
syscall
move $t0, $v0
sw $t0, length


li $v0, 4
la $a0, bre
syscall

li $v0, 5
syscall
move $t1, $v0
sw $t1, breadth

li $v0, 4
la $a0, hgt
syscall

li $v0, 5
syscall
move $t2,$v0
sw $t2, height

mul $t3, $t0,$t1
mul $t4, $t3,$t2
sw $t4, volume

li $v0, 4
la $a0, line
syscall

li $v0, 1
lw $a0, length
syscall

li $v0, 4
la $a0, multi
syscall

li $v0, 1
lw $a0, breadth	
syscall


li $v0, 4
la $a0, multi
syscall

li $v0, 1
lw $a0, height	
syscall

li $v0, 4
la $a0, equal
syscall


li $v0, 1
lw $a0, volume	
syscall

li $v0, 10 
syscall

