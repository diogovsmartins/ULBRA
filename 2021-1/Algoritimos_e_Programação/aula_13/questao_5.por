programa
{	/*4
	Na matemática, o fatorial de um número natural n é dado pelo produto de todos os números inteiros 
	e positivos menores ou iguais a n. Por exemplo, o fatorial de 5 é dado por 5*4*3*2*1. 
	Desenvolva um programa que calcule o fatorial de um número dado como entrada.
	*/
	
	funcao inicio()
	{
		inteiro num, i, fatorial


		escreva("Digite um numero para descobrir a fatorial: ")
		leia(num)
		fatorial=num

		para(i=1; i!=num; i++){

			fatorial=fatorial*(num-i)
		}
		escreva("A fatorial de ",num ,"é: ", fatorial) 
	}
} 
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 426; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */