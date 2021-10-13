programa
{
	funcao inicio()
	{
		inteiro numero

		enquanto(verdadeiro){
			escreva("Digite um número entre 1 e 4: ")
			leia(numero)

			escolha(numero){
				caso 1:
					escreva("Digitou o número 1 ")
					pare

				caso 2:
					escreva("Digitou o número 2 ")
					pare

				caso 3:
					escreva("Digitou o número 3 ")
					pare

				caso 4:
					escreva("Digitu o número 4 ")
					pare

				caso contrario:
				escreva("\n Opção Inválida. Talvez queira tentar novamente.\n ")
			}

			se(numero>= 1 e numero <= 4){
				pare
			}
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 543; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */