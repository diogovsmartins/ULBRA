programa
{	//Escreva um algoritmo que leia um número inteiro e diga: 
 	//Se ele é par ou ímpar. Dica: utilize o operador % (resto da divisão inteira). 
 	//Se ele é positivo, negativo ou nulo (zero).


	
	funcao inicio()
	{
		inteiro numero

		escreva("Digite um número: ")
		leia(numero)

		se((numero % 2>0) ou (numero % 2<0)){
			escreva("\nSeu número é impar.")
		}senao{
			escreva("\nSeu número é par.")
		}
		se(numero>0){
			escreva("\nSeu número é positivo.")
		}
		senao se(numero==0){
			escreva("\nSeu número é nulo.")
		}
		senao{
			escreva("\nSeu número é negativo.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 472; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */