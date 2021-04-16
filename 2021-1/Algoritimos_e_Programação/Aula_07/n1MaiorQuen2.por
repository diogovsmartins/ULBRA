programa
{ 	//faça um programa que leia 2 numeros 
    //e mostre o maior e se forem iguais avise que são iguais.
	
	funcao inicio()
	{
		inteiro num1, num2
		escreva("Digite um numero: ")
		leia(num1)
		escreva("Digite outro numero: ")
		leia(num2)

		se(num1>num2)
		{
			escreva("O primeiro número é maior que o segundo.")
		}
		senao se(num1==num2)
		{
			escreva("Os numeros são iguais.")
		}
			senao
			{
				escreva("O segundo numero é maior que o primeiro numero.")
			}
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 57; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */