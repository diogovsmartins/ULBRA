programa
{	//Solicitar a idade de um número indefinido de  pessoas e imprimir a média de idade lidas. 
//	O programa se encerra quando a média de idade for superior a 20 anos.

	funcao inicio()
	{
		inteiro numero, i=0, soma=0, media=0, idade

		enquanto(media <= 20){
			i++
			escreva("\nDigite a idade da pessoa "+i+":")
			leia(idade)
			soma=idade+soma
			media=soma/i
			escreva("a media é:"+ media)
		}se(media>20){
			escreva("\nA media das idades está superior a 20.", media)
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 105; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */