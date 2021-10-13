programa
{	//Escrever um programa, que leia valores inteiros até ser lido o valor-99. 
	//Quando isso acontecer o programa deverá escrever a soma e a média dos valores lidos 

	
	funcao inicio()
	{	inteiro valor=0, soma=0, i=0

			

		enquanto(valor!=99){
			i++
			escreva("\nDigite um valor"+i+":")
			leia(valor)
			soma=valor+soma
			escreva("Digite o número 99 quando quiser parar.\n")
		}se(soma>99){
			escreva("\nA soma dos números que você digitou é: ", soma," e a media deles é: ", soma/i)	
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 388; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */