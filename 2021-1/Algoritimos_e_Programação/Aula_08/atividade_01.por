programa
{	
	//José trabalha no departamento de recursos humanos de uma empresa. 
	//A empresa de José definiu que os salários dos empregados serão aumentados seguindo a seguinte regra: 
	//caso o salário seja menor que R$ 1.000,00, o aumento será de 10%; caso contrário, será de 8%. José
    //recebeu uma lista contendo os nomes e salários de todos os funcionários da empresa 
    //e foi solicitado que calculasse o novo salário desses funcionários. 
    //Assim, escreva um algoritmo para que José calcule corretamente os novos salários.

	
	funcao inicio()
	{
	real  salario1, salario2, salario3
	cadeia funcionario1, funcionario2, funcionario3

	escreva("Digite o nome do primeiro funcionário: ")
	leia(funcionario1)
	escreva("Digite o nome do segundo funcionário: ")
	leia(funcionario2)
	escreva("Digite o nome do terceiro funcionário: ")
	leia(funcionario3)
	escreva("Digite o salario do o primeiro funcionário: ")
	leia(salario1)
	escreva("Digite o salario do segundo funcionário: ")
	leia(salario2)
	escreva("Digite o salario do terceiro funcionário: ")
	leia(salario3)

	se(salario1>=1000){
			escreva("\nO novo salário do funcionário"+ funcionario1+ "é de: "+salario1*1.08)
	}senao{
			escreva("\nO novo salário do funcionário "+ funcionario1 + "é de: "+salario1*1.10)
	}
	se(salario2>=1000){
			escreva("\nO novo salário do funcionário"+ funcionario2+ "é de: "+salario2*1.08)
	}senao{
			escreva("\nO novo salário do funcionário "+ funcionario2 + "é de: "+salario2*1.10)
	}
	se(salario3>=1000){
			escreva("\nO novo salário do funcionário"+ funcionario3+ "é de: "+salario3*1.08)
	}senao{
			escreva("\nO novo salário do funcionário "+ funcionario3 + "é de: "+salario3*1.10)
	}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1609; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */