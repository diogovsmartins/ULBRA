programa
{	//FUP para ler três valores quaisquer e escrever o maior dos 3.

	funcao inicio()
	{
		inteiro n1, n2, n3

		escreva("Digite o primeiro número: ")
		leia(n1)
		escreva("Digite o segundo número: ")
		leia(n2)
		escreva("Digite o terceiro número: ")
		leia(n3)

		se((n1>=n2)e (n1>=n3)){
			escreva("O maior dentre os seus números é o: ",n1)
		}senao se((n2>=n1)e(n2>=n3)){
			escreva("O maior dentre os seus números é o: ", n2)
		}senao se((n3>=n1)e(n3>=n2)){
			escreva("O maior dentre os seus números é o: ", n3)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 335; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */