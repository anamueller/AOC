.data
#strings para serem utilizadas
strentr: 	.asciiz "Insira a mensagem: "
strcara:     .asciiz "Numero total de caracteres: "
strcrip: 	.asciiz "\nMensagem Criptografada: "
strsenha:   .asciiz "\nInsira a senha: "
senhaerr:   .asciiz "Senha incorreta. "
original:   .asciiz "Mensagem Original: "
mensagem: 
    .align 2
    .space 1000000000 

.text
.globl main


main:
    move $t0, $zero #indice do array
    move $t1, $zero #valor q sera colocado
    li $v0, 4	# imprimindo primeira mensagem
    la $a0, strentr
    syscall
    li $t2, 10 #comparar no loop
    li $t4, 0 #contar a quantidade de caracter
    loop:
        li $v0, 12	#lendo caracter
        syscall
        move $t1, $v0
        beq $t1,$t2, printar  #enter eh 10, sai do loop e printa a mensagem
        li $t3, 32 
        beq $t1, $t3, space #caracter eh espaco ascii 32
        li $t3, 65 
        beq $t1, $t3, A #caracter eh A ascii 65
        li $t3, 97 
        beq $t1, $t3, A #caracter eh a ascii 97
        li $t3, 82 
        beq $t1, $t3, R #caracter eh R ascii 82
        li $t3, 114 
        beq $t1, $t3, R #caracter eh r ascii 114
        li $t3, 69
        beq $t1, $t3, E #caracter eh E ascii 69
        li $t3, 101
        beq $t1, $t3, E #caracter eh e ascii 101
        li $t3, 79 
        beq $t1, $t3, O #caracter eh O ascii 79
        li $t3, 111 
        beq $t1, $t3, O #caracter eh o ascii 111
        li $t3, 77 
        beq $t1, $t3, M #caracter eh M ascii 77
        li $t3, 109 
        beq $t1, $t3, M #caracter eh m ascii 109
        li $t3, 72 
        beq $t1, $t3, H #caracter eh H ascii 72
        li $t3, 104 
        beq $v0, $t3, H #caracter eh h ascii 104
        li $t3, 76 
        beq $t1, $t3, L #caracter eh L ascii 76
        li $t3, 108 
        beq $t1, $t3, L #caracter eh l ascii 108
        li $t3, 83 
        beq $t1, $t3, S #caracter eh S ascii 83
        li $t3, 115 
        beq $t1, $t3, S #caracter eh s ascii 115
        li $t3, 80 
        beq $t1, $t3, P #caracter eh P ascii 80
        li $t3, 112 
        beq $t1, $t3, P #caracter eh p ascii 112
        li $t3, 48 
        beq $t1, $t3, zero #caracter eh 0 ascii 48
        li $t3, 49 
        beq $t1, $t3, um #caracter eh 1 ascii 49
        li $t3, 50 
        beq $t1, $t3, dois #caracter eh 2 ascii 50
        li $t3, 51 
        beq $t1, $t3, tres #caracter eh 3 ascii 51
        li $t3, 52 
        beq $t1, $t3, quatro #caracter eh 4 ascii 52
        li $t3, 53 
        beq $t1, $t3, cinco #caracter eh 5 ascii 53
        li $t3, 54 
        beq $t1, $t3, seis #caracter eh 6 ascii 54
        li $t3, 55 
        beq $t1, $t3, sete #caracter eh 7 ascii 55
        li $t3, 56 
        beq $t1, $t3, oito #caracter eh 8 ascii 56
        li $t3, 57 
        beq $t1, $t3, nove #caracter eh 9 ascii 57
        sw $t1, mensagem($t0) #n eh nenhum caso armazena normalmente
        addi $t0, $t0, 4    
        addi $t4, $t4, 1 #caracter
        j loop
    space:
        li $t1, 48
        sw $t1, mensagem($t0)
        addi $t0, $t0, 4 
        addi $t4, $t4, 1
        j loop
    A:
        li $t1, 49
        sw $t1, mensagem($t0)
        addi $t0, $t0, 4 
        addi $t4, $t4, 1
        j loop
    R:
        li $t1, 50
        sw $t1, mensagem($t0)
        addi $t0, $t0, 4
        addi $t4, $t4, 1
        j loop
    E:
        li $t1, 51
        sw $t1, mensagem($t0)
        sw $t1, mensagem($t0)
        addi $t0, $t0, 4
        addi $t4, $t4, 1
        j loop
    O:
        li $t1, 52
        sw $t1, mensagem($t0)
        addi $t0, $t0, 4
        addi $t4, $t4, 1
        j loop
    M:
        li $t1, 53
        sw $t1, mensagem($t0)
        addi $t0, $t0, 4
        addi $t4, $t4, 1
        j loop
    H:
        li $t1, 54
        sw $t1, mensagem($t0)
        addi $t0, $t0, 4
        addi $t4, $t4, 1
        j loop
    L:
        li $t1, 55
        sw $t1, mensagem($t0)
        addi $t0, $t0, 4
        addi $t4, $t4, 1
        j loop
    S:
        li $t1, 56
        sw $t1, mensagem($t0)
        addi $t0, $t0, 4
        addi $t4, $t4, 1
        j loop
    P:
        li $t1, 57
        sw $t1, mensagem($t0)
        addi $t0, $t0, 4
        addi $t4, $t4, 1
        j loop
    zero:
        li $t1, 32
        sw $t1, mensagem($t0)
        addi $t0, $t0, 4
        addi $t4, $t4, 1
        j loop
    um:
        li $t1, 65
        sw $t1, mensagem($t0)
        addi $t0, $t0, 4
        addi $t4, $t4, 1
        j loop
    dois:
        li $t1, 82
        sw $t1, mensagem($t0)
        addi $t0, $t0, 4
        addi $t4, $t4, 1
        j loop
    tres:   
        li $t1, 69
        sw $t1, mensagem($t0)
        addi $t0, $t0, 4
        addi $t4, $t4, 1
        j loop
    quatro:
        li $t1, 79
        sw $t1, mensagem($t0)
        addi $t0, $t0, 4
        addi $t4, $t4, 1
        j loop
    cinco:
        li $t1, 77
        sw $t1, mensagem($t0)
        addi $t0, $t0, 4
        addi $t4, $t4, 1
        j loop
    seis:
        li $t1, 72
        sw $t1, mensagem($t0)
        addi $t0, $t0, 4
        addi $t4, $t4, 1
        j loop
    sete:
        li $t1, 76
        sw $t1, mensagem($t0)
        addi $t0, $t0, 4
        addi $t4, $t4, 1
        j loop
    oito:
        li $t1, 83
        sw $t1, mensagem($t0)
        addi $t0, $t0, 4
        addi $t4, $t4, 1
        j loop
    nove:
        li $t1, 80
        sw $t1, mensagem($t0)
        addi $t0, $t0, 4
        addi $t4, $t4, 1
        j loop
    printar:
        move $t0, $zero
        li $v0, 4	# imprimindo primeira mensagem
        la $a0, strcara
        syscall
        li $v0, 1
        move $a0, $t4 #qntd de caracteres
        syscall
        li $v0, 4
        la $a0, strcrip
        syscall
        mul $t4, $t4, 4
    imprimindo:
        beq $t0, $t4, senha
        li $v0, 11
        lw $a0, mensagem($t0)
        syscall
        addi $t0, $t0, 4
        j imprimindo
    senha:
        li $v0, 4	# imprimindo senha
        la $a0, strsenha
        syscall
        li $v0, 5	# code to read integer
		syscall
		move $t5, $v0
        li $t3, 159753
        move $t0, $zero
        beq $t5, $t3, correct
        bne $t5, $t3, incorreta
    correct:
        li $v0, 4	# mensagem
        la $a0, original
        syscall
        correta:
            beq $t0, $t4, exit
            lw $t1, mensagem($t0)
            li $t3, 48 
            beq $t1, $t3, zero2 #caracter eh 0 ascii 48
            li $t3, 49 
            beq $t1, $t3, um2 #caracter eh 1 ascii 49
            li $t3, 50 
            beq $t1, $t3, dois2 #caracter eh 2 ascii 50
            li $t3, 51 
            beq $t1, $t3, tres2 #caracter eh 3 ascii 51
            li $t3, 52 
            beq $t1, $t3, quatro2 #caracter eh 4 ascii 52
            li $t3, 53 
            beq $t1, $t3, cinco2 #caracter eh 5 ascii 53
            li $t3, 54 
            beq $t1, $t3, seis2 #caracter eh 6 ascii 54
            li $t3, 55 
            beq $t1, $t3, sete2 #caracter eh 7 ascii 55
            li $t3, 56 
            beq $t1, $t3, oito2 #caracter eh 8 ascii 56
            li $t3, 57 
            beq $t1, $t3, nove2 #caracter eh 9 ascii 57
            li $t3, 65 
            beq $t1, $t3, A2 #caracter eh A ascii 65
            li $t3, 82 
            beq $t1, $t3, R2 #caracter eh R ascii 82
            li $t3, 69 
            beq $t1, $t3, E2 #caracter eh E ascii 69
            li $t3, 79 
            beq $t1, $t3, O2 #caracter eh O ascii 79
            li $t3, 77 
            beq $t1, $t3, M2 #caracter eh M ascii 77
            li $t3, 72 
            beq $t1, $t3, H2 #caracter eh H ascii 72
            li $t3, 76 
            beq $t1, $t3, L2 #caracter eh L ascii 76
            li $t3, 83 
            beq $t1, $t3, S2 #caracter eh S ascii 83
            li $t3, 80 
            beq $t1, $t3, P2 #caracter eh P ascii 80
            li $v0, 11
            lw $a0, mensagem($t0)
            syscall
            addi $t0, $t0, 4 
            j correta
    A2:
        li $t1, 49
        sw $t1, mensagem($t0)
        li $v0, 11
        lw $a0, mensagem($t0)
        syscall
        addi $t0, $t0, 4 
        j correta
    R2:
        li $t1, 50
        sw $t1, mensagem($t0)
        li $v0, 11
        lw $a0, mensagem($t0)
        syscall
        addi $t0, $t0, 4
        j correta
    E2:
        li $t1, 51
        sw $t1, mensagem($t0)
        li $v0, 11
        lw $a0, mensagem($t0)
        syscall
        addi $t0, $t0, 4
        j correta
    O2:
        li $t1, 52
        sw $t1, mensagem($t0)
        li $v0, 11
        lw $a0, mensagem($t0)
        syscall
        addi $t0, $t0, 4
        j correta
    M2:
        li $t1, 53
        sw $t1, mensagem($t0)
        li $v0, 11
        lw $a0, mensagem($t0)
        syscall
        addi $t0, $t0, 4
        j correta
    H2:
        li $t1, 54
        sw $t1, mensagem($t0)
        li $v0, 11
        lw $a0, mensagem($t0)
        syscall
        addi $t0, $t0, 4
        j correta
    L2:
        li $t1, 55
        sw $t1, mensagem($t0)
        li $v0, 11
        lw $a0, mensagem($t0)
        syscall
        addi $t0, $t0, 4
        j correta
    S2:
        li $t1, 56
        sw $t1, mensagem($t0)
        li $v0, 11
        lw $a0, mensagem($t0)
        syscall
        addi $t0, $t0, 4
        j correta
    P2:
        li $t1, 57
        sw $t1, mensagem($t0)
        li $v0, 11
        lw $a0, mensagem($t0)
        syscall
        addi $t0, $t0, 4
        j correta
    zero2:
        li $t1, 32
        sw $t1, mensagem($t0)
        li $v0, 11
        lw $a0, mensagem($t0)
        syscall
        addi $t0, $t0, 4
        j correta
    um2:
        li $t1, 65
        sw $t1, mensagem($t0)
        li $v0, 11
        lw $a0, mensagem($t0)
        syscall
        addi $t0, $t0, 4
        j correta
    dois2:
        li $t1, 82
        sw $t1, mensagem($t0)
        li $v0, 11
        lw $a0, mensagem($t0)
        syscall
        addi $t0, $t0, 4
        j correta
    tres2:   
        li $t1, 69
        sw $t1, mensagem($t0)
        li $v0, 11
        lw $a0, mensagem($t0)
        syscall
        addi $t0, $t0, 4
        j correta
    quatro2:
        li $t1, 79
        sw $t1, mensagem($t0)
        li $v0, 11
        lw $a0, mensagem($t0)
        syscall
        addi $t0, $t0, 4
        j correta
    cinco2:
        li $t1, 77
        sw $t1, mensagem($t0)
        li $v0, 11
        lw $a0, mensagem($t0)
        syscall
        addi $t0, $t0, 4
        j correta
    seis2:
        li $t1, 72
        sw $t1, mensagem($t0)
        li $v0, 11
        lw $a0, mensagem($t0)
        syscall
        addi $t0, $t0, 4
        j correta
    sete2:
        li $t1, 76
        sw $t1, mensagem($t0)
        li $v0, 11
        lw $a0, mensagem($t0)
        syscall
        addi $t0, $t0, 4
        j correta
    oito2:
        li $t1, 83
        sw $t1, mensagem($t0)
        li $v0, 11
        lw $a0, mensagem($t0)
        syscall
        addi $t0, $t0, 4
        j correta
    nove2:
        li $t1, 80
        sw $t1, mensagem($t0)
        li $v0, 11
        lw $a0, mensagem($t0)
        syscall
        addi $t0, $t0, 4
        j correta
    incorreta:
        li $v0, 4	# imprimindo senha
        la $a0, senhaerr
        syscall
        j exit
    exit:
	    li $v0, 10
	    syscall 