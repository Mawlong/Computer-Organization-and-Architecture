.data

.text
.globl main
main:
li $t0,0x5
li $t1, 0x10010000
sw $t0,0($t1)
li $t0, 0xABCD
sw $t0, 4($t1)
li $t0 , 0x1234
sw $t0, 12($t1)

li $v0, 10
syscall