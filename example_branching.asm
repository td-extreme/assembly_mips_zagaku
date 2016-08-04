#Tyler Decker
# 3 aug 2016
# branching on if example

	.text
	.globl main
	
main:

	li 	$v0, 4			#print promt 1
	la 	$a0, promt
	syscall
	
	li 	$v0, 5			#input first number
	syscall
	
	move 	$t0, $v0		#move return value to temp reg 1

	li 	$v0, 4			#print promt 2
	la 	$a0, promt2
	syscall

	li 	$v0, 5			#input second number
	syscall

	move 	$t1, $v0		#move return value to temp reg 2
	
	addi	$a1, $a1, 5
	
	ble	$t0, $t1, lessthan	#  branch to lessthan if  $t0 <= $t1
					
					# this code runs for false
	la 	$a0, promt4		# load promt 4
	j	endif			# jumpt to endif to skip code for lessthan
		
lessthan:				# jump to here for true
	la 	$a0, promt3		# load promt 3
	
endif:

	li	$v0, 4			# print the promt loaded during the if branch
	syscall
	
	li	$v0, 10			# exit the program
	syscall
	

	.data
promt:	.asciiz	"Enter a number: "
promt2: .asciiz "Enter a second number: "
promt3: .asciiz "The 1st number is less than or equal to the second\n"
promt4: .asciiz "The 1st number is greater than the second\n"
