programa
{	/*Faça um programa que receba dez números inteiros e armazene-os em um vetor. Calcule e mostre dois
	vetores resultantes: o primeiro com os números pares e o segundo, com os números ímpares.*/
	
	funcao inicio()
	{
		const inteiro size=10
		inteiro even=0, odd=0, v1[size], vEven[size], vOdds[size]


		para(inteiro i=0;i<size;i++){
			escreva("Digite um número positivo para - "+i+": ")
			leia(v1[i])
			se(v1[i]%2==0){
				even++
				vEven[even]=v1[i]
			}
			senao se(v1[i]%2==1){
				odd++
				vOdds[odd]=v1[i]
			}
		}
		escreva("\nO vetor com os números pares resultantes do primeiro vetor é: ")
		para(inteiro i=0;i<even;i++){
			escreva(vEven[i]+".")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 644; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */