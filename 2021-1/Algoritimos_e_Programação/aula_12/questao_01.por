programa
{
		
		// Ler um número do teclado e imprimir todos os números de 1 até o número lido. 
		// Imprimir a soma dos números.

	
	funcao inicio()
	{
		inteiro numero, somaDosNumeros = 0, contador = 0
		
		escreva("Digite um número: ")
		leia (numero)

		para(contador; contador <= numero; contador ++){		
			escreva("\n O número é: ", contador)
		
		somaDosNumeros = contador + somaDosNumeros
		}
		escreva("\n A soma dos números é: ", somaDosNumeros)
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 463; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */