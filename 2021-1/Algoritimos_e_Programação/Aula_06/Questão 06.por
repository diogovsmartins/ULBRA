programa
{	//Ler um número e informar se ele está na faixa de números entre 100 e 1000.

	
	funcao inicio()
	{
		inteiro num

		escreva("Digite um número: ")
		leia(num)

		se((num<100) ou (num>1000))
		{
			escreva("Seu número escolhido não está entre 100 e 1000.")
		}
		senao
		{
			escreva("Seu número esta entre 100 e 1000.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 346; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */