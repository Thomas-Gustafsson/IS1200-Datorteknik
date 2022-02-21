# n = $a0
# return = $v0
# product = $a1
# i = $a2
# j = $a3
# k = $v1


addi $a0, $0, 3		# $a0 = n = 0,3,8
addi $v0, $0, 1		# returvärde = 1 för att börja med (!0 == 1)
addi $v1, $a0, 1	# k = n + 1
addi $a2, $0, 1		# initialisera yttre loop variabel i till 1

loop:
	beq $a2, $v1, stop	# i != k, om i(a2) == k(v1) klar
	addi $a2, $a2, 1	# i++, inkrementera loop-räknare
	addi $a1, $0, 0		# initialisera produkten till 0
	
	addi $a3,$0, 1		# initialisera inre loop variabel j till 1
	
	multi:
		beq $a3, $a2, done	# om j == i, om a3 == a2 klar "multiadding"
		addi $a3, $a3, 1	# j++, inkrementera inre loop variabel
		add $a1, $a1, $v0	# produkt == produkt + retur
		beq $0, $0, multi	# hoppa tillbaka till multi
		
	done:
		addi $v0, $a1, 0		# sätt returvärde till produkten av "multiadding"
		beq $0, $0, loop		# hoppa tillbaka till yttre loopen
	
stop:
	beq $0, $0, stop		# oändlig ovillkorlig branch loop
