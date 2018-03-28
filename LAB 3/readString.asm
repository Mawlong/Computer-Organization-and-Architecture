# to read a string from user and display it

.data

string1 :.asciiz " "
string2 :.asciiz "the entered string is : \n"

.text
.globl main
main:

li $v0, 8
syscall
move $t0, $v0
la $t0, string1

li $v0,4
la $a0, string1
syscall

li $v0, 10
syscall