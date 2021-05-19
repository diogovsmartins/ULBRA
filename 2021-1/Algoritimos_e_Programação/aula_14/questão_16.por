programa
{	/*16.Faça um programa que receba várias idades, calcule e mostre a média das idades digitadas. Finalize di-
	*gitando idade igual a zero.*/
	
	funcao inicio()
	{
		inteiro idade=0, soma=0, i=0, media=0
		cadeia continuar

		
		faca{
			i++
			escreva("\n"+i+" Digite a idade: ")
			leia(idade)
			soma=soma+idade
			media=soma/i
			escreva("A media das idades digitadas até o momento é: "+media)
			escreva("\nDeseja continuar digitando idades? (sim ou não): ")
			leia(continuar)
			
		}enquanto(continuar=="sim")

		escreva("\n\nFim do programa. O usuário digitou não.")
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 577; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */