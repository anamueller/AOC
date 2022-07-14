.data
#strings para serem utilizadas
strdia: 	.asciiz "Entre com o dia (DD): \n"
strmes:     .asciiz "Entre com  o mes (MM): \n"
strano: 	.asciiz "Entre com o ano (AAAA): \n"
strbarra:   .asciiz "/"
strnasc:    .asciiz "Data de Nascimento: "
strdinv:	.asciiz "Dia invalido.\n"
strminv:	.asciiz "Mes invalido.\n"
strainv:	.asciiz "Ano invalido.\n"
zero:		.asciiz "0"

.text
.globl main


main:	li $t3, 31 #para utilizar na comparação
	dia:
		li $v0, 4	# code to print string
		la $a0, strdia
		syscall
		li $v0, 5	# code to read integer
		syscall
		move $t0, $v0	#movendo o valor pra t0
		bgt $t0, $0, maiorq0
		ble $t0, $0, diainv
	maiorq0:
		ble $t0, $t3, mes
		bgt $t0, $t3, diainv
	diainv:
		li $v0, 4	# code to print string
		la $a0, strdinv
		syscall
		j dia
	
	
	mes:
		li $t4, 12 #para utilizar na comparação
		li $v0, 4	# code to print string
		la $a0, strmes
		syscall
		li $v0, 5	# code to read integer
		syscall
		move $t1, $v0	#movendo o valor pra t1
		bgt $t1, $0, maiorq02
		ble $t1, $0, mesinv
	maiorq02:
		ble $t1, $t4, ano
		bgt $t1, $t4, mesinv
	mesinv:
		li $v0, 4	# code to print string
		la $a0, strminv
		syscall
		j mes

	
	ano:
		li $t5, 1900
		li $t6, 2021
		li $v0, 4	# code to print string
		la $a0, strano
		syscall
		li $v0, 5	# code to read integer
		syscall
		move $t2, $v0	#movendo o valor pra t2
	
    #bloco para o print final
	li $v0, 4	# code to print string
	la $a0, strnasc
	syscall
	li $v0, 1	#codigo pra printar numero dia
	move $a0, $t0	#movendo pra $a0
	syscall
	li $v0, 4	#codigo pra printar a /
	la $a0, strbarra #movendo pra $a0
	syscall
	li $v0, 1	#codigo pra printar numero mes
	move $a0, $t1	#movendo pra $a0
	syscall
	li $v0, 4	#codigo pra printar a /
	la $a0, strbarra
	syscall
	li $v0, 1	#codigo pra printar numero ano
	move $a0, $t2	#movendo pra $a0
	syscall