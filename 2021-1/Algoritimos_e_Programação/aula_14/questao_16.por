programa
{	/*16.Faça um programa que receba várias idades, calcule e mostre a média das idades digitadas. Finalize di-
	*gitando idade igual a zero.*/
	
	funcao inicio()
	{
		inteiro idade=0, soma=0, i=0, media=0
		cadeia continuar

		
		faca{
			
			i++
			escreva("\n Digite a idade: ")
			leia(idade)
			
			se(idade!=0){
				soma=soma+idade
				media=soma/i
				i++
				escreva("A media das idades digitadas até o momento é: "+media)
			}
			
		}enquanto(idade != 0)

		
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 474; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */