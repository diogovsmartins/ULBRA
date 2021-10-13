programa
{



	funcao inicio()
	{
	cadeia funcionario
	real base, imposto, salario
	inteiro gratificacao
	
	escreva("Qual é o nome do seu funcionário? ")
	leia(funcionario)
	escreva("Qual é o salario base do funcionário ",funcionario, "? ")
	leia(base)
	gratificacao=50
	imposto= base * 0.10
	salario=base -imposto + gratificacao
	
	escreva("O salário que o funcionário ",funcionario, " receberá com o bonus de gratificação de 50R$ e o desconto de 10% de imposto é de: ",salario)

	
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 108; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */