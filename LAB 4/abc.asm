.data
first :.asciiz "ABCDEFGHIJKLMNOPQ"

.text
.globl main
main:

li $t0, 0x10010000
lw $t1,0($t0)
lw $t2,4($t0)
lw $t3,8($t0)
lw $t4,12($t0)

li $v0,10
syscall