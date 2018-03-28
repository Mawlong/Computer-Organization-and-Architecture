.data
first :.ascii "AA"
second :.ascii "BB"

.text
.globl main
main:

li $v0,10
syscall


#program to illustrate the fact that on the data tab what we can see is the very first address 10010000
#User data segment [10000000]..[10040000] the range shows how much memeory is given to QTspim
#every instructiuon in QTSpim is of 4 bytes
#the first 41 has 1000000 seond 41 has +1 bytes with word = 4bytes
#this program correspopnds to 42424141 which is the equivalent to AABB where 41 is A and 42 is B
#note the difference between ascii and asciiz where for asciiz end of string is \0 is shown as 00 and b is 42 and a is 41