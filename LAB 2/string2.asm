.data
name: .asciiz "CS ECE\n"
address: .asciiz "hello are you fine?\n"
abc: .asciiz "hello\n"
def: .asciiz "fine\n"
.text
.globl main
main:
li $v0, 4
la $a0, name
syscall
li $v0, 4
la $a0, address
syscall
li $v0,4
la $a0,def
syscall
li $v0, 10
syscall


#note the difference betwenn ascii and asciiz
#when we use ascii it is analogous to switch when no break is seen and fall through happens
#when asciiz is used, it terminates the end of the string with \0 and forces it to stop printing
