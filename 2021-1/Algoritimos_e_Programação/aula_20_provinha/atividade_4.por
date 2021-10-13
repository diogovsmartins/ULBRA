programa
{	/*4. Leia um conjunto de valores inteiros e em seguida 
	os exiba-os na ordem inversa do que foram digitados.
	*/
	
	funcao inicio()
	/*criar constante para o tamanho dos vetores, um vetor que será preenchido de acordo
	com o indíce de i e um vetor que será preenchido com o vetor no índice de j que 
	será o tamanho de size mas indexará os valores da forma inversa utilizando j--*/
	{	const inteiro size=10
		inteiro vetor[size], i, j=size, vetorInverso[size]
		//preencher o vetor principal e o vetor inverso
		para(i=0;i<size;i++){
			j--
			escreva("Digite um número para posição "+i+" : ")
			leia(vetor[i])
			vetorInverso[j]=vetor[i]
			
		}
		//mostrar o vetore inverso
		escreva("\nO vetor inverso é: ")
		para(i=0;i<size;i++){
			escreva(vetorInverso[i]+".")
		}
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 600; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetor, 11, 10, 5}-{vetorInverso, 11, 34, 12};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */