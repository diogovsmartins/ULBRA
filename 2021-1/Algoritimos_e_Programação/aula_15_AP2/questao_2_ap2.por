programa
{	/*2- Analise os algoritmos abaixo que melhor atende a seguinte situação:(0.8)
	Faça um algoritmo que leia um conjunto indeterminado de valores. 
	O programa deve mostrar se o valor informado é par ou ímpar. 
	O programa encerra ao ser digitado o valor 0 dando a mensagem de valor inválido.
	*/
	//Resposta certa: letra D
	
	funcao inicio()
	{
		inteiro valor, i=0

		faca{
			escreva("digite o valor")
			leia(valor)
			se (valor!=0){
				se(valor%2==0){
					escreva("par")
				}senao{
					escreva("Impar")
				}
			}senao{
				escreva("valor inválido")
			}
		}enquanto(valor!=0)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 306; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */