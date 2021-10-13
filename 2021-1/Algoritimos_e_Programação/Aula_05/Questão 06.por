programa
{



	funcao inicio()
	{
	cadeia funcionario
	real base, gratificacao, imposto, salario

	escreva("Qual é o nome do seu funcionário? ")
	leia(funcionario)
	escreva("Qual é o salario base do funcionário ",funcionario, "? ")
	leia(base)
	gratificacao=base *0.05
	imposto= base * 0.07
	salario=base -imposto + gratificacao
	
	escreva("O salário que o funcionário ",funcionario, " receberá com o bonus de gratificação e os descontos do imposto é de: ",salario)

	
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 468; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */