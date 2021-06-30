programa
{	/*1 -Faça um programa que receba a quantidade de funcionários de uma empresa, 
	e para cada funcionário leia  o salário do funcionário, 
	calcule e mostre o novo salário, acrescido de bonificação e de auxílio escola.
	Aumento no salário:
	
	se salario até 500R$ aumentar em 5%
	entre 500 e 1200 R$ aumentar em 12%
	acima de 1200 sem aumento.
	Auxilio escola:
	até 600R$ o auxilio é 150R$
	acima de 600R$ o auxilio é 100R$
	*/
	
	funcao inicio()
	{
		/*Criar uma confirmação para finalizar o código. Utilizar enquanto já que o
		número de funcionários é indeterminado; um contador,uma variável para salário, uma varável 
		para nome do funcionário, salarioFinal para somar o total*/

		cadeia nomeFunc, confirmacao=""
		real salario, salarioFinal
		inteiro i=0

		faca{
			i++
			//declarar nome do funcionario e salario
			escreva("\nDigite o nome do funcionário "+i+" : ")
			leia(nomeFunc)
			escreva("Digite o salário do funcionário "+nomeFunc+" : ")
			leia(salario)
			//desvios condicionais para calcular os salários
			se(salario<500){
				salarioFinal=(salario*1.05)+150
				escreva("O salário do funcionário "+nomeFunc+" é : "+salarioFinal)
			}senao se((salario>=500)e(salario<=1200)){
				salarioFinal=(salario*1.12)+100
				escreva("O salário do funcionário "+nomeFunc+" é : "+salarioFinal)
			}senao{
				salarioFinal=salario+100
				escreva("O salário do funcionário "+nomeFunc+" é : "+salarioFinal)
			}
			//variavel para confirmar se o usuário deseja continuar cadastrando funcionarios
			escreva("\nDeseja continuar cadastrando funcionários? (Digite 'sim' ou 'nao' :")
			leia(confirmacao)
		}enquanto(confirmacao=="sim")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1518; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */