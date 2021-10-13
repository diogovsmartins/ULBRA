programa
{
	
	funcao inicio()
	{	
		inteiro idade
		inteiro somaDasIdades=0
		inteiro contador

		para(contador=0; contador <5; contador++){
			escreva("\nDigite a idade da pessoas"+contador+1+":")
			leia(idade)
			somaDasIdades+=idade
		}


		escreva("\nMedia das idades é: "+somaDasIdades/contador)
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