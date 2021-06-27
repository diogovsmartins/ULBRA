programa
{	/*Faça um programa que preencha um vetor com dez números reais, 
	calcule e mostre a quantidade de números
	negativos e a soma dos números positivos desse vetor.*/
	
	funcao inicio()
	{
		inteiro vetor[10], negativos=0, soma=0

		para(inteiro i=0; i<10;i++){
			escreva("Digite um número positivo ou negativo: ")
			leia(vetor[i])

			se(vetor[i]<0){
				negativos++
			}
			se(vetor[i]>=0){
				soma+=vetor[i]
			}
		}
		escreva("\nO número total de números negativos dentro do vetor é: "+negativos)
		escreva("\nE a soma dos números positivos do vetor é: "+soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 217; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetor, 8, 10, 5}-{negativos, 8, 21, 9}-{soma, 8, 34, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */