programa
{	//F.U.A para reajustar o salário de acordo com a função.
	//Se for técnico, aumentar o salário 50%, se for gerente, 
	//aumentar 30% e se for outro cargo, aumentar 20%. 
	//Utilize os códigos 1, para técnico, 2 para gerente.

	
	funcao inicio()
	{
		real salario
		inteiro gerente, tecnico, funcionario
		tecnico=1
		gerente=2
		salario=1500
		escreva("Digite o número 1,2 ou 3: ")
		leia(funcionario)
		se(funcionario<=1)
		{
			escreva("O salario do funcionário escolhido é de: "+(salario*1.5)+" e ele é um tecnico.")
		}
		se(funcionario<=2)
		{
			escreva("O salario do funcionário escolhido é de: "+(salario*1.3)+" e ele é gerente.")
		}
		se(funcionario>2)
		{
			escreva("O salario do funcionario escolhido é de: "+(salario*1.2)+" e ele não é tecnico nem gerente.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 792; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */