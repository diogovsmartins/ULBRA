programa
{	/*Faça um programa que preencha um vetor com sete números inteiros, calcule e mostre:
	■■ os números múltiplos de 2;
	■■ os números múltiplos de 3;
	■■ os números múltiplos de 2 e de 3.*/
	
	funcao inicio()
	{
		inteiro vetor[7], m2[7], m3[7], mtodos[7], i

		para(i=0;i<7;i++){
			escreva("Digite um número"+i+": ")
			leia(vetor[i])

			se(vetor[i]%2==0){
				se(vetor[i]%3==0){
					mtodos[i]=vetor[i]
				}senao{
					m2[i]=vetor[i]
				}
				
			}senao se(vetor[i]%3==0){
				se(vetor[i]%2==0){
					mtodos[i]=vetor[i]
				}senao{
					m3[i]=vetor[i]
				}
			}
			
		}
		para(i=0;i<7;i++){
			escreva("\nOs números do vetor são: "+vetor[i]+"")
			escreva("\nOs multiplos de 2 são: "+m2[i]+" ")
			escreva("\nOs multiplos de 3 são: "+m3[i]+" ")
			escreva("\nOs multiplos de 2 e 3 são: "+mtodos[i]+" ")
			escreva("\n______________________________________")
		}
		
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 810; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetor, 9, 10, 5}-{m2, 9, 20, 2}-{m3, 9, 27, 2}-{mtodos, 9, 34, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */