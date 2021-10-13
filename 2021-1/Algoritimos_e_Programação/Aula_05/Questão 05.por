programa
{



	funcao inicio()
	{
	cadeia funcionario
	real salantigo, percentual, aumento, novosala

	escreva("Qual é o nome do seu funcionário? ")
	leia(funcionario)
	escreva("Quanta recebe o funcionário ",funcionario," atualmente? ")
	leia(salantigo)
	escreva("digite em quantos porcento você irá aumentar o salário do funcionário, por exemplo:1.25, 1.50,3 etc... ", funcionario, ":")
	leia(percentual)
	novosala= salantigo * percentual
	aumento= novosala - salantigo
	escreva("O novo salário do funcionário ",funcionario," será de: ", novosala," ele recebeu um aumento de: ", aumento)

	
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 591; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */