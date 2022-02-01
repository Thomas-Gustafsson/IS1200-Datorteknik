  # analyze.asm
  # This file written 2015 by F Lundevall
  # Copyright abandoned - this file is in the public domain.
  # Edited 2022 by T Gustafsson

	.text
main:
	li	$s0,0x30	# ASCII 0x30 = 0. Char 0 loads into s0
loop:				# loop starts here
	move	$a0,$s0		# copy from s0 to a0
	
	li	$v0,11		# syscall with v0 = 11 will print out
	syscall			# one byte from a0 to the Run I/O window

	addi	$s0,$s0,3	# s0 is set to s0 but with overflow 3, every third char
				# will print after code below
	
	li	$t0,0x5d	# 0x5b ([) changed to 0x5d (]). Load ] into t0.
	bne	$s0,$t0,loop	# If s0 not equal to t0 0x5d (]), loop. Else stop.
	
	nop			# delay slot filler (just in case)

stop:	j	stop		# loop forever here
	nop			# delay slot filler (just in case)
