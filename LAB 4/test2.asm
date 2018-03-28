.data
.text
.globl main
main:
li $t0, 0x1100
li $t1, 0x1010
sub $t1,$t1,$t0
li $v0,10
syscall