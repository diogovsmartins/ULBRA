programa
{	/*Faça um programa que receba dez números inteiros e armazene-os em um vetor. Calcule e mostre dois
	vetores resultantes: o primeiro com os números pares e o segundo, com os números ímpares.*/
	
	funcao inicio()
	{
		const inteiro size=10
		inteiro even=0, odd=0, v1[size], vEven[size], vOdds[size]


		para(inteiro i=0;i<size;i++){
			escreva("Digite um número positivo para - "+i+": ")
			leia(v1[i])
			se(v1[i]%2==0){
				vEven[even]=v1[i]
				even++
				//testa os numeros pares e determina o tamanho que será o vetor final com os even 
			}
			senao se(v1[i]%2==1){
				vOdds[odd]=v1[i]
				odd++
				//testa os numeros impares e determina o tamanho que será o vetor final com os odds
			}
		}
		escreva("\nO vetor com os números pares resultantes do primeiro vetor é: ")
		/*laço de repetição para mostrar os números de dentro do vetor even (par)
		utilizando o contador de números pares como limitador do tamanho do vetor para
		garantir que não serão mostrados posições inexistentes no vetor.*/
		para(inteiro i=0;i<even;i++){
			escreva(vEven[i]+".")
		}
		escreva("\nO vetor com os números impares resultantes do primeiro vetor é: ")
		para(inteiro i=0;i<odd;i++){
			escreva(vOdds[i]+".")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 701; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {v1, 8, 25, 2}-{vEven, 8, 35, 5}-{vOdds, 8, 48, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */