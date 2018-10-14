#Write a program (question1.asm) to enter a series of 5 arbitrary strings 
#and then print them out.
#Store the strings in memory.
		
		.text
main:
		la $a0, input # load the addr of input into $a0.
		li $v0, 4 # 4 is the print_string syscall.
		syscall # do the syscall.
		
		li $v0,8 #take in input
         	la $a0, stri #load byte space into address
         	li $a1, 20 # specify the length of the string
         	move $t0,$a0 #save string to t0
         	syscall
         	
         	la $a0, values # load the addr of input into $a0.
		li $v0, 4 # 4 is the print_string syscall.
		syscall # do the syscall.
         	
         	la $t0, stri #reload byte space to primary address
         	lb $t1, ($t0) # primary address = t0 address (load pointer)
         	bne $t1, '=', positive
         	add $t0, $t0, 1 #skip over the sign
         	#lb $t3, ($t0) # primary address = t0 address (load pointer)
         	#sb $t3 ($t0)
         	#move $a0, $t0
         	#li $v0, 11 # print CharacterS
         	#syscall
         	#move $t2,$t0 # primary address = t0 address (load pointer)
         	#li $t3,5
         	#add $t2, $t2, $t3
         	lw $t5, ($t0)
         	#add $t5, $t5, 5
         	move $a0, $t5
         	li $v0, 4 # print string
         	syscall
         	
         	li $v0, 10 # print string
         	syscall
         	
         	
positive:
		la $t8, stri #reload byte space to primary address
		move $a0, $t8
		li $v0, 4 # print string
         	syscall
		
         	.data
input: 	.asciiz "Enter a a string:\n"
values: .asciiz "The value +5 is:\n"
stri:	.space 20
