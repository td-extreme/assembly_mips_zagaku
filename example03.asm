#Tyler Decker
# 3 Aug 2016
# example showing Jump 

	.globl main

	.text

addition:
add $v0, $a0, $a1
jr $ra

subtraction:
sub $v0, $a0, $a1
jr $ra

main:
li $a0, 4
li $a1, 3

jal addition

move $s0, $v0

jal subtraction

move $s1, $v0

li $v0, 10
syscall






