.data
.text
.globl main
main:

li $t0,5
li $t1,4
add $t2,$t1,$t0
li $v0, 10
syscall