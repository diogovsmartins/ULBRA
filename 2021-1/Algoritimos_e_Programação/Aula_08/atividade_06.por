programa
{	//FUP que lê dois valores e escreve cada um juntamente com a mensagem:
	//“É múltiplo de 2” ou “Não é múltiplo de dois”.

	
	funcao inicio()
	{
		inteiro n1, n2

		escreva("Digite um número: ")
		leia(n1)
		escreva("Digite outro número: ")
		leia(n2)

		se (n1%2==0){
			escreva("Seu primeiro número é multiplo de 2.")
		}senao{
			 escreva("\nSeu primeiro número não é multiplo de 2.")
		}

		se (n2%2==0){
			escreva("\nSeu segundo número é multiplo de 2.")
		}senao{
			escreva("\nSeu segundo número não é multiplo de 2.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 344; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */