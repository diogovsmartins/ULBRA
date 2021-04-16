programa
{	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{	real numero ,nsegunda, ncubico ,raizquadrada, raizcubica

		escreva("Digite um número: ")
		leia(numero)
		nsegunda=mat.potencia(numero, 2.0)
		ncubico=mat.potencia(numero, 3.0)
		raizquadrada= mat.raiz(numero, 2.0)
		raizcubica=mat.raiz(numero, 3.0)
		escreva("\nSeu numero escolhido elevado à segunda potência é: ", nsegunda)
		escreva("\nSeu numero escolhido elevado à a terceira potência é: ", ncubico)
		escreva("\nA raiz quadrada do seu número é: ", raizquadrada)
		escreva("\nA raiz cubíca do seu numero é: ", raizcubica)

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 607; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */