programa
{	/*Faça um programa que preencha um vetor com oito números inteiros, calcule e mostre dois vetores
	resultantes. O primeiro vetor resultante deve conter os números positivos e o segundo, os números ne-
	gativos. Cada vetor resultante vai ter, no máximo, oito posições, que não poderão ser completamente
	utilizadas.*/
	
	funcao inicio()
	{
		inteiro vetor[8], positivos[8], negativos[8], i, vetPos=0, vetNeg=0

		para(i=0;i<8;i++){
			escreva("Digite um número para a posição",i," :")
			leia(vetor[i])
				se(vetor[i]>0){
					positivos[vetPos]=vetor[i]
					vetPos++
				}
				senao se(vetor[i]<0){
					negativos[vetNeg]=vetor[i]
					vetNeg++
				}
		}
		para(i=0;i<vetPos;i++){
			escreva("\nVetor positivos é: "+positivos[i])
		}
		para(i=0;i<vetNeg;i++){
			escreva("\nVetor negativos é: "+negativos[i])
		}

		
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 765; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */