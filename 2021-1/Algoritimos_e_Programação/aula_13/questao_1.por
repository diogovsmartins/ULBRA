programa
{	 //Faça um programa que leia cinco valores reais e imprima o quadrado de cada um deles. 
	//Ao fim, imprima também o somatório dos cinco
	
	inclua biblioteca Matematica-->math
	
	funcao inicio()
	{
		inteiro i
		real num, soma=0

		para(i=0; i < 5; i++){
			escreva("\nDigite um número:")
			leia(num)
			soma+=num*num
			escreva(math.potencia(num, 2))
		}
		escreva("\nA soma é: "+soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 329; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */