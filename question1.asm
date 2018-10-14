#Write a program (question1.asm) to enter a series of 5 arbitrary strings 
#and then print them out.
#Store the strings in memory.
      
	.text
main:
      la $a0, input # load the addr of input into $a0.
      li $v0, 4 # 4 is the print_string syscall.
      syscall # do the syscall.
      
      li $v0,8 #take in input
            la $a0, first #load byte space into address
            li $a1, 20 # allot the byte space for string
            move $t0,$a0 #save string to t0
            syscall
            
            li $v0,8 #take in input
            la $a0, second #load byte space into address
            li $a1, 20 # allot the byte space for string
            move $t1,$a0 #save string to t0
            syscall
            
            li $v0,8 #take in input
            la $a0, third #load byte space into address
            li $a1, 20 # allot the byte space for string
            move $t2,$a0 #save string to t0
            syscall
            
            li $v0,8 #take in input
            la $a0, fourth #load byte space into address
            li $a1, 20 # allot the byte space for string
            move $t3,$a0 #save string to t0
            syscall
            
            li $v0,8 #take in input
            la $a0, fifth #load byte space into address
            li $a1, 20 # allot the byte space for string
            move $t4,$a0 #save string to t0
            syscall
      
      la $a0, values # load the addr of hello_msg into $a0.
      li $v0, 4 # 4 is the print_string syscall.
      syscall # do the syscall.
      
      la $a0, first #reload byte space to primary address
            move $a0,$t0 # primary address = t0 address (load pointer)
            li $v0,4 # print string
            syscall
      
      la $a0, second #reload byte space to primary address
            move $a0,$t1 # primary address = t0 address (load pointer)
            li $v0,4 # print string
            syscall
      
      la $a0, third #reload byte space to primary address
            move $a0,$t2 # primary address = t0 address (load pointer)
            li $v0,4 # print string
            syscall
            
            la $a0, fourth #reload byte space to primary address
            move $a0,$t3 # primary address = t0 address (load pointer)
            li $v0,4 # print string
            syscall
            
            la $a0, fifth #reload byte space to primary address
            move $a0,$t4 # primary address = t0 address (load pointer)
            li $v0,4 # print string
            syscall
            
        li $v0, 10 # 10 is the exit syscall.
      	syscall # do the syscall.
      
      	.data
input:  .asciiz "Enter a series of 5 formulae:\n"
values: .asciiz "The values are:\n"
first:  .space 20
second: .space 20
third:  .space 20
fourth: .space 20
fifth:  .space 20