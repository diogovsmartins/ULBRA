programa
{	/*Faça um programa que preencha um vetor com seis elementos numéricos inteiros. Calcule e mostre:
■■ todos os números pares;
■■ a quantidade de números pares;
■■ todos os números ímpares;
■■ a quantidade de números ímpares.*/
	
	funcao inicio()
	{
		inteiro vetor[6], vetorPares[6], vetorImpares[6], i, k = 0, j = 0

		para(i = 0; i < 6; i++){
			escreva("digite um número: ")
			leia(vetor[i])

			se(vetor[i] % 2 == 0){
				vetorPares[k] = vetor[i]
				k++
			}
			senao{
				vetorImpares[j] = vetor[i]
				j++
			}
		}

		escreva("a quantidade de números pares são: ", k)
		escreva("\nNúmeros pares: ")
		para(k = 0; k < 6; k++) {
			escreva(vetorPares[k] + " ")
		}

		escreva("a quantidade de números ímpares são: ", j)
		escreva("\nNúmeros impares: ")
		para(j = 0; j < 6; j++) {
			escreva(vetorImpares[j] + " ")
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 234; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */