programa	
{	//Faça uma algoritmo (FUA) que lê o número de um funcionário, 
	//seu número de horas trabalhadas e o valor que recebe por hora. 
	//O algoritmo deve calcular e mostrar o salário deste funcionário.//

	
	funcao inicio()
	{
		inteiro nfuncionario
		real horas, valHora, salario

		escreva("Digite o número do funcionário: ")
		leia(nfuncionario)
		escreva("Digite o número de horas que o funcionário de número "+nfuncionario+" trabalhou: ")
		leia(horas)
		escreva("Digite quanto o funcionário de número "+nfuncionario+" recebe por hora:")
		leia(valHora)
		salario=valHora*horas
		escreva("O funcionário de numero "+nfuncionario+" recebe um salario de "+salario+" com base nas horas trabalhadas.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 713; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */