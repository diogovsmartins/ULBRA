programa	
{	//Ler três números e verificar se a soma deles é maior que 50. 
	//Se for, escrever uma mensagem informando.


	
	funcao inicio()
	{
		inteiro n1, n2, n3, soma
		escreva("Digite um número para n1: ")
		leia(n1)
		escreva("Digite um número para n2: ")
		leia(n2)
		escreva("Digite um número para n3: ")
		leia(n3)
		soma=n1+n2+n3

		se((soma>50))
		{
			escreva("A soma dos seus números é maior que 50.")
		}
		senao
		{
			escreva("A soma dos seus números é: "+soma)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 482; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */